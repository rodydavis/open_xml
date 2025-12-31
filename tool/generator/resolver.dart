import 'package:xml/xml.dart';
import 'schema_context.dart';
import 'semantic_model.dart';

class TypeResolver {
  final SchemaContext context;
  final Map<String, SemanticType> _resolvedTypes = {};
  final Map<String, XmlElement> _globalGroups = {};

  Map<String, SemanticType> get resolvedTypes => _resolvedTypes;
  Map<String, XmlElement> get globalGroups => _globalGroups;

  TypeResolver(this.context);

  Future<void> resolve() async {
    print('Resolving types from ${context.schemas.length} schemas...');

    // 1. First pass: Identify all global types
    for (final schema in context.schemas.values) {
      _scanGlobalTypes(schema);
    }

    // 2. Second pass: Resolve details (attributes, children, inheritance)
    // We defer this so we can link types that might be defined later
    final typeNames = _resolvedTypes.keys.toList();
    for (final name in typeNames) {
      final type = _resolvedTypes[name];
      if (type is ComplexType) {
        _resolveComplexTypeDetails(type);
      }
    }

    print('Resolved ${_resolvedTypes.length} types.');
  }

  void _scanGlobalTypes(Schema schema) {
    if (schema.targetNamespace == null) return;
    final ns = schema.targetNamespace!;

    // Find all global groups
    for (final element in schema.document.findAllElements('xsd:group')) {
      final name = element.getAttribute('name');
      if (name != null) {
        _globalGroups[name] = element;
      }
    }

    // Find all complexTypes
    for (final element in schema.document.findAllElements('xsd:complexType')) {
      final name = element.getAttribute('name');
      if (name != null) {
        final dartName = _getDartName(name, ns);
        _resolvedTypes[dartName] = ComplexType(
          dartName,
          ns,
          _getDocumentation(element),
          definitionNode: element,
        );
      }
    }

    // Find all simpleTypes (enums)
    for (final node in schema.document.findAllElements('xsd:simpleType')) {
      final name = node.getAttribute('name');
      if (name != null) {
        final dartName = _getDartName(name, ns);
        // Checking for enum
        final restriction = node.findAllElements('xsd:restriction').firstOrNull;
        if (restriction != null) {
          final enums = restriction
              .findAllElements('xsd:enumeration')
              .map((e) => e.getAttribute('value'))
              .whereType<String>()
              .toList();

          final base = restriction.getAttribute('base') ?? 'string';

          _resolvedTypes[dartName] = SimpleType(
            dartName,
            ns,
            _getDocumentation(node),
            base,
            enumerations: enums,
            definitionNode: node,
          );
        }
      }
    }
  }

  void _resolveComplexTypeDetails(ComplexType type) {
    final node = type.definitionNode;
    if (node == null) return;

    // Attributes
    for (final attr in node.findAllElements('xsd:attribute')) {
      final name = attr.getAttribute('name');
      final typeName = attr.getAttribute('type');
      final use = attr.getAttribute('use');

      if (name != null) {
        // If typeName is null, it might be an inline simpleType. Skipping for now.
        if (typeName != null) {
          final resolvedType = _lookupType(typeName, attr);
          if (resolvedType != null) {
            type.attributes.add(
              Attribute(
                name,
                name,
                type.namespaceUri,
                resolvedType,
                use == 'required',
              ),
            );
          }
        }
      }
    }

    // Children (sequence, choice, all, group)
    // We search locally for elements.
    // Note: handling nested sequences/choices strictly requires a more complex model (Tree of Content).
    // For now, we flatten children into a list for the "fields" of the class.

    void collectChildren(XmlElement parent, {bool parentIsMultiple = false}) {
      for (final child in parent.children) {
        if (child is! XmlElement) continue;

        if (child.name.local == 'element') {
          final name = child.getAttribute('name');
          final ref = child.getAttribute('ref');
          final typeName = child.getAttribute('type');
          final maxOccurs = child.getAttribute('maxOccurs');
          final isMultiple =
              parentIsMultiple ||
              maxOccurs == 'unbounded' ||
              (int.tryParse(maxOccurs ?? '1') ?? 1) > 1;

          if (name != null && typeName != null) {
            final resolvedType = _lookupType(typeName, child);
            if (resolvedType != null) {
              type.children.add(
                ChildElement(
                  name,
                  name,
                  type.namespaceUri,
                  resolvedType,
                  isMultiple,
                ),
              );
            }
          } else if (ref != null) {
            // TODO: Handle element references (look up global element)
          }
        } else if (child.name.local == 'group') {
          final ref = child.getAttribute('ref');
          final maxOccurs = child.getAttribute('maxOccurs');
          final isMultiple =
              parentIsMultiple ||
              maxOccurs == 'unbounded' ||
              (int.tryParse(maxOccurs ?? '1') ?? 1) > 1;

          if (ref != null) {
            final parts = ref.split(':');
            final localRef = parts.length > 1 ? parts.last : ref;
            // Note: Namespace lookup for groups is needed for full correctness.
            // Assuming local schema or unique names for now.
            // Search in global groups
            final groupNode = _globalGroups[localRef];
            if (groupNode != null) {
              collectChildren(groupNode, parentIsMultiple: isMultiple);
            }
          } else {
            collectChildren(child, parentIsMultiple: isMultiple);
          }
        } else if (['sequence', 'choice', 'all'].contains(child.name.local)) {
          final maxOccurs = child.getAttribute('maxOccurs');
          final isMultiple =
              parentIsMultiple ||
              maxOccurs == 'unbounded' ||
              (int.tryParse(maxOccurs ?? '1') ?? 1) > 1;
          collectChildren(child, parentIsMultiple: isMultiple);
        }
      }
    }

    collectChildren(node);
  }

  SemanticType? _lookupType(String prefixedName, XmlElement context) {
    if (_resolvedTypes.containsKey(prefixedName)) {
      return _resolvedTypes[prefixedName];
    }

    final parts = prefixedName.split(':');
    String localName = prefixedName;
    String? namespaceUri;

    if (parts.length > 1) {
      final prefix = parts.first;
      localName = parts.last;
      namespaceUri = _lookupNamespaceUri(context, prefix);
    } else {
      // Default namespace lookup
      namespaceUri = _lookupNamespaceUri(context, null);
    }

    // Try to construct Dart name
    if (namespaceUri != null) {
      final key = _getDartName(localName, namespaceUri);
      if (_resolvedTypes.containsKey(key)) return _resolvedTypes[key];
    }

    // Fallback: search values for exact match? Expensive.
    // Or maybe naive check.

    // Primitives
    if (prefixedName.startsWith('xsd:') ||
        prefixedName == 'int' ||
        prefixedName == 'string' ||
        namespaceUri == 'http://www.w3.org/2001/XMLSchema') {
      return SimpleType(
        localName,
        'http://www.w3.org/2001/XMLSchema',
        null,
        localName,
      );
    }

    // If finding fails, return null. Recursive scanning issues?
    return null;
  }

  String _getDartName(String original, String namespace) {
    var prefix = '';
    if (namespace.contains('wordprocessingml')) {
      prefix = 'W';
    } else if (namespace.contains('spreadsheetml')) {
      prefix = 'S';
    } else if (namespace.contains('presentationml')) {
      prefix = 'P';
    } else if (namespace.contains('drawingml')) {
      prefix = 'D'; // 'a' or 'd'?
    } else if (namespace.contains('officeDocument/2006/math')) {
      prefix = 'M';
    } else if (namespace.contains('relationship')) {
      prefix = 'Opc';
    } else if (namespace.contains('strict')) {
      prefix = 'Strict'; // Strict Part 1
    }
    // Shared common types often donkeys define specific enough names (ST_...) so maybe no prefix needed?
    // But uniqueness is key.

    // Check if original already has prefix like CT_ or ST_
    // e.g. CT_R -> W_CT_R
    if (prefix.isNotEmpty) return '${prefix}_$original';
    return original;
  }

  String? _lookupNamespaceUri(XmlElement node, String? prefix) {
    var p = node;
    while (true) {
      final attrName = prefix == null ? 'xmlns' : 'xmlns:$prefix';
      final attr = p.getAttribute(attrName);
      if (attr != null) return attr;
      if (p.parent is XmlElement) {
        p = p.parent as XmlElement;
      } else {
        break;
      }
    }
    return null;
  }

  String? _getDocumentation(XmlElement node) {
    // xsd:annotation -> xsd:documentation
    return node.findAllElements('xsd:documentation').firstOrNull?.innerText;
  }
}
