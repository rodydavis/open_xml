import 'dart:io';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'resolver.dart';
import 'semantic_model.dart';
// import 'package:recase/recase.dart'; // We'll need this for casing

class Emitter {
  final TypeResolver resolver;
  final DartFormatter _formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );

  Emitter(this.resolver);

  Future<void> generate(String outputDir) async {
    print('Generating Dart code to $outputDir...');

    // Group types by library folder (e.g. wml, sml)
    final typesByFolder = <String, List<SemanticType>>{};

    resolver.resolvedTypes.forEach((name, type) {
      final folder = _getFolderName(type.namespaceUri);
      typesByFolder.putIfAbsent(folder, () => []).add(type);
    });

    for (final folder in typesByFolder.keys) {
      await _generateLibrary(outputDir, folder, typesByFolder[folder]!);
      await _generateBuilderLibrary(outputDir, folder, typesByFolder[folder]!);
    }
  }

  Future<void> _generateLibrary(
    String outputDir,
    String folderName,
    List<SemanticType> types,
  ) async {
    try {
      // Determine folder name from namespace
      // final folderName = _getFolderName(namespace); // Already grouped by folder
      final libDir = Directory(p.join(outputDir, folderName));
      if (!libDir.existsSync()) await libDir.create(recursive: true);

      final library = Library((b) {
        b.directives.add(Directive.import('package:xml/xml.dart'));
        // Import other generated libraries (naive approach: import all)
        b.directives.add(
          Directive.import('package:open_xml/src/wml/wml.g.dart'),
        );
        b.directives.add(
          Directive.import('package:open_xml/src/sml/sml.g.dart'),
        );
        b.directives.add(
          Directive.import('package:open_xml/src/pml/pml.g.dart'),
        );
        b.directives.add(
          Directive.import('package:open_xml/src/dml/dml.g.dart'),
        );
        b.directives.add(
          Directive.import('package:open_xml/src/opc/opc.g.dart'),
        );
        b.directives.add(
          Directive.import('package:open_xml/src/shared/shared.g.dart'),
        );

        for (final type in types) {
          if (type is ComplexType) {
            _emitComplexType(b, type);
          } else if (type is SimpleType && type.isEnum) {
            _emitEnum(b, type);
          }
        }
      });

      var source = library
          .accept(DartEmitter(allocator: Allocator.simplePrefixing()))
          .toString();
      source =
          '// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import\n$source';

      final content = _formatter.format(source);
      final file = File(p.join(libDir.path, '$folderName.g.dart'));
      await file.writeAsString(content);
      print('Generated: ${file.path}');
    } catch (e, stack) {
      print('Error generating $folderName: $e\n$stack');
      rethrow;
    }
  }

  Future<void> _generateBuilderLibrary(
    String outputDir,
    String folderName,
    List<SemanticType> types,
  ) async {
    try {
      final libDir = Directory(p.join(outputDir, folderName));
      if (!libDir.existsSync()) await libDir.create(recursive: true);

      final library = Library((b) {
        b.directives.add(Directive.import('package:xml/xml.dart'));
        b.directives.add(
          Directive.import(
            'package:open_xml/src/$folderName/$folderName.g.dart',
          ),
        );
        b.directives.add(
          Directive.import('package:open_xml/src/shared/shared.g.dart'),
        );
        b.directives.add(
          Directive.import('package:open_xml/src/dml/dml.g.dart'),
        );
        b.directives.add(
          Directive.import('package:open_xml/src/wml/wml.g.dart'),
        );

        for (final type in types) {
          if (type is ComplexType) {
            _emitBuilder(b, type);
          }
        }
      });

      var source = library
          .accept(DartEmitter(allocator: Allocator.simplePrefixing()))
          .toString();
      source =
          '// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides\n$source';

      final content = _formatter.format(source);
      final file = File(p.join(libDir.path, '${folderName}_builder.g.dart'));
      await file.writeAsString(content);
      print('Generated: ${file.path}');
    } catch (e, stack) {
      print('Error generating builder for $folderName: $e\n$stack');
      rethrow;
    }
  }

  void _emitComplexType(LibraryBuilder b, ComplexType type) {
    // extension type Name(XmlElement node) implements XmlElement
    b.body.add(
      ExtensionType((e) {
        e.name = type.name; // Assumes sanitized name
        e.name = type.name; // Assumes sanitized name
        e.representationDeclaration = RepresentationDeclaration((r) {
          r.name = 'node';
          r.declaredRepresentationType = refer(
            'XmlElement',
            'package:xml/xml.dart',
          );
        });
        e.implements.add(refer('XmlElement', 'package:xml/xml.dart'));

        final generatedMembers = <String>{};

        // Attributes
        for (final attr in type.attributes) {
          _emitAttribute(e, attr, generatedMembers);
        }

        // Children
        for (final child in type.children) {
          _emitChild(e, child, generatedMembers);
        }
      }),
    );
  }

  void _emitAttribute(
    ExtensionTypeBuilder e,
    Attribute attr,
    Set<String> generatedMembers,
  ) {
    final name = _sanitizeMemberName(attr.name);
    if (generatedMembers.contains(name)) return;
    generatedMembers.add(name);

    final typeRef = _referType(attr.type);

    // Getter
    e.methods.add(
      Method((m) {
        m.name = name;
        m.type = MethodType.getter;
        m.returns = attr.isRequired
            ? typeRef
            : refer('${typeRef.symbol}?', typeRef.url);
        m.body = _buildAttributeBody(attr, typeRef);
      }),
    );
  }

  Code _buildAttributeBody(Attribute attr, Reference typeRef) {
    final attrName = attr.xmlName;
    final ns = attr.namespace;
    // node.getAttribute returns String?
    final raw = "node.getAttribute('$attrName', namespace: '$ns')";
    String conversion = raw;

    final symbol = typeRef.symbol;
    if (symbol == 'bool') {
      conversion = "$raw == '1' || $raw == 'true' || $raw == 'on'";
    } else if (symbol == 'int') {
      if (attr.isRequired) {
        conversion = "int.parse($raw!)";
      } else {
        conversion = "$raw != null ? int.tryParse($raw!) : null";
      }
    } else if (symbol == 'double') {
      if (attr.isRequired) {
        conversion = "double.parse($raw!)";
      } else {
        conversion = "$raw != null ? double.tryParse($raw!) : null";
      }
    } else {
      final type = attr.type;
      if (type is SimpleType && type.isEnum) {
        final symbol = typeRef.symbol;
        if (attr.isRequired) {
          conversion = "$symbol.fromValue($raw!)!";
        } else {
          conversion = "$raw != null ? $symbol.fromValue($raw!) : null";
        }
      } else {
        // String
        if (attr.isRequired) {
          conversion = "$raw!";
        }
      }
    }

    // print('DEBUG: Final conversion for $attrName: $conversion');
    return Code('return $conversion;');
  }

  void _emitChild(
    ExtensionTypeBuilder e,
    ChildElement child,
    Set<String> generatedMembers,
  ) {
    final name = _sanitizeMemberName(child.name);
    if (generatedMembers.contains(name)) return;
    generatedMembers.add(name);

    final typeRef = _referType(child.type);

    e.methods.add(
      Method((m) {
        m.name = name; // e.g. "paragraphs"
        m.type = MethodType.getter;

        if (child.isMultiple) {
          m.returns = TypeReference((t) {
            t.symbol = 'Iterable';
            t.types.add(typeRef);
          });

          if (child.type is ComplexType) {
            m.body = Code(
              "return node.findElements('${child.xmlName}', namespace: '${child.namespace}').map(${typeRef.symbol}.new);",
            );
          } else {
            // Simple Type List (e.g. List<String>)
            final type = child.type;
            String map = "e.innerText";
            if (type is SimpleType && type.isEnum) {
              map = "${typeRef.symbol}.fromValue(e.innerText)";
            } else if (typeRef.symbol == 'int') {
              map = "int.parse(e.innerText)";
            } else if (typeRef.symbol == 'double') {
              map = "double.parse(e.innerText)";
            }

            // For nullable conversions in map, we might need whereType or where((e) => e != null).
            // Simpler to assume valid for now or just return generic string if complex.
            // But valid OpenXML usually matches schema. Only Enum might fail.
            if (type is SimpleType && type.isEnum) {
              m.body = Code(
                "return node.findElements('${child.xmlName}', namespace: '${child.namespace}').map((e) => $map).whereType<${typeRef.symbol}>();",
              );
            } else {
              m.body = Code(
                "return node.findElements('${child.xmlName}', namespace: '${child.namespace}').map((e) => $map);",
              );
            }
          }
        } else {
          m.returns = refer('${typeRef.symbol}?', typeRef.url);

          if (child.type is ComplexType) {
            m.body = Code('''
                final e = node.getElement('${child.xmlName}', namespace: '${child.namespace}');
                return e != null ? ${typeRef.symbol}(e) : null;
              ''');
          } else {
            // Simple Type Child
            final type = child.type;
            String extract = "e.innerText";
            if (type is SimpleType && type.isEnum) {
              extract = "${typeRef.symbol}.fromValue(e.innerText)";
            } else if (typeRef.symbol == 'int') {
              extract = "int.tryParse(e.innerText)";
            } else if (typeRef.symbol == 'double') {
              extract = "double.tryParse(e.innerText)";
            } else if (typeRef.symbol == 'bool') {
              extract =
                  "(e.innerText == '1' || e.innerText == 'true' || e.innerText == 'on')";
            }

            m.body = Code('''
                 final e = node.getElement('${child.xmlName}', namespace: '${child.namespace}');
                 return e != null ? $extract : null;
               ''');
          }
        }
      }),
    );
  }

  void _emitEnum(LibraryBuilder b, SimpleType type) {
    b.body.add(
      Enum((e) {
        e.name = type.name;

        // Add value field
        e.fields.add(
          Field((f) {
            f.name = 'value';
            f.type = refer('String');
            f.modifier = FieldModifier.final$;
          }),
        );

        // Add const constructor
        e.constructors.add(
          Constructor((c) {
            c.constant = true;
            c.requiredParameters.add(
              Parameter((p) {
                p.name = 'value';
                p.toThis = true;
              }),
            );
          }),
        );

        // Add values with arguments
        for (final val in type.enumerations) {
          e.values.add(
            EnumValue((v) {
              v.name = _sanitizeEnumName(val);
              v.arguments.add(literalString(val));
            }),
          );
        }

        // Add fromValue static method
        e.methods.add(
          Method((m) {
            m.name = 'fromValue';
            m.static = true;
            m.returns = refer('${type.name}?');
            m.requiredParameters.add(
              Parameter((p) {
                p.name = 's';
                p.type = refer('String');
              }),
            );
            m.body = Code('''
            for (final val in values) {
              if (val.value == s) return val;
            }
            return null;
          ''');
          }),
        );
      }),
    );
  }

  void _emitBuilder(LibraryBuilder b, ComplexType type) {
    b.body.add(
      Extension((e) {
        e.name = '${type.name}_Builder';
        e.on = refer('XmlBuilder', 'package:xml/xml.dart');

        final methodName = type.name.toLowerCase();

        e.methods.add(
          Method((m) {
            m.name = methodName;
            m.returns = refer('void');

            m.optionalParameters.add(
              Parameter((p) {
                p.name = 'tagName';
                p.type = refer('String?');
              }),
            );

            m.optionalParameters.add(
              Parameter((p) {
                p.name = 'namespace';
                p.type = refer('String?');
                p.defaultTo = literalString(type.namespaceUri).code;
              }),
            );

            for (final attr in type.attributes) {
              m.optionalParameters.add(
                Parameter((p) {
                  p.name = _sanitizeMemberName(attr.name);
                  p.named = true;
                  p.type = _referType(attr.type, nullable: true);
                }),
              );
            }

            m.optionalParameters.add(
              Parameter((p) {
                p.name = 'children';
                p.named = true;
                p.type = refer('void Function(XmlBuilder)?');
              }),
            );

            m.body = Code('''
            if (tagName != null) {
              this.element(tagName, namespace: namespace, nest: () {
                 _buildBody(children, ${type.attributes.map((a) => _sanitizeMemberName(a.name)).join(', ')});
              });
            } else {
               _buildBody(children, ${type.attributes.map((a) => _sanitizeMemberName(a.name)).join(', ')});
            }
          ''');
          }),
        );

        e.methods.add(
          Method((m) {
            m.name = '_buildBody';
            m.returns = refer('void');
            m.requiredParameters.add(
              Parameter((p) {
                p.name = 'children';
                p.type = refer('void Function(XmlBuilder)?');
              }),
            );

            for (final attr in type.attributes) {
              m.requiredParameters.add(
                Parameter((p) {
                  p.name = _sanitizeMemberName(attr.name);
                  p.type = _referType(attr.type, nullable: true);
                }),
              );
            }

            final bodyBuffer = StringBuffer();
            for (final attr in type.attributes) {
              final paramName = _sanitizeMemberName(attr.name);
              final attrName = attr.xmlName;
              final attrNs = attr.namespace;

              String valueExp = paramName;
              final symbol = _referType(attr.type).symbol;

              if (symbol == 'bool') {
                valueExp = "$paramName == true ? 'true' : 'false'";
              } else if (symbol == 'int' || symbol == 'double') {
                valueExp = "$paramName.toString()";
              } else {
                final type = attr.type;
                if (type is SimpleType && type.isEnum) {
                  valueExp = "$paramName!.value";
                }
              }

              bodyBuffer.writeln(
                "if ($paramName != null) this.attribute('$attrName', $valueExp, namespace: '$attrNs');",
              );
            }

            bodyBuffer.writeln("children?.call(this);");
            m.body = Code(bodyBuffer.toString());
          }),
        );
      }),
    );
  }

  Reference _referType(SemanticType type, {bool nullable = false}) {
    if (type is SimpleType && !type.isEnum) {
      if (type.baseType == 'string') {
        return refer('String${nullable ? '?' : ''}');
      }
      if ([
        'int',
        'integer',
        'long',
        'short',
        'byte',
        'unsignedInt',
        'unsignedLong',
        'unsignedShort',
        'unsignedByte',
      ].contains(type.baseType)) {
        return refer('int${nullable ? '?' : ''}');
      }
      if (['decimal', 'float', 'double'].contains(type.baseType)) {
        return refer('double${nullable ? '?' : ''}');
      }
      if (type.baseType == 'boolean') {
        return refer('bool${nullable ? '?' : ''}');
      }
      return refer('String${nullable ? '?' : ''}');
    }
    return refer('${type.name}${nullable ? '?' : ''}');
  }

  String _getFolderName(String namespace) {
    if (namespace.contains('wordprocessingml')) return 'wml';
    if (namespace.contains('spreadsheetml')) return 'sml';
    if (namespace.contains('presentationml')) return 'pml';
    if (namespace.contains('drawingml')) return 'dml';
    if (namespace.contains('relationship')) return 'opc';
    return 'shared';
  }

  String _sanitizeEnumName(String value) {
    if (value.isEmpty) return 'empty';
    var sanitized = value;
    sanitized = sanitized.replaceAll('+', '_plus');
    sanitized = sanitized.replaceAll('-', '_minus');
    sanitized = sanitized.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_');

    if (int.tryParse(sanitized[0]) != null) return 'v$sanitized';
    if (_dartKeywords.contains(sanitized)) {
      return '${sanitized}_';
    }
    return sanitized;
  }

  String _sanitizeMemberName(String value) {
    var sanitized = value;
    if (_dartKeywords.contains(sanitized)) {
      sanitized = '${sanitized}_';
    }
    return sanitized;
  }

  static const _dartKeywords = {
    'abstract',
    'as',
    'assert',
    'async',
    'await',
    'break',
    'case',
    'catch',
    'class',
    'const',
    'continue',
    'covariant',
    'default',
    'deferred',
    'do',
    'dynamic',
    'else',
    'enum',
    'export',
    'extends',
    'extension',
    'external',
    'factory',
    'false',
    'final',
    'finally',
    'for',
    'function',
    'get',
    'hide',
    'if',
    'implements',
    'import',
    'in',
    'interface',
    'is',
    'library',
    'mixin',
    'new',
    'null',
    'on',
    'operator',
    'part',
    'rethrow',
    'return',
    'set',
    'show',
    'static',
    'super',
    'switch',
    'sync',
    'this',
    'throw',
    'true',
    'try',
    'typedef',
    'var',
    'void',
    'while',
    'with',
    'yield',
    'value',
    'index',
    'double',
    'int',
    'bool',
    'String',
    'num',
  };
}
