import 'package:xml/xml.dart';

/// Represents a resolvable type definition in the semantic graph.
abstract class SemanticType {
  final String name; // e.g., "WordParagraph"
  final String namespaceUri; // e.g., "http://..."
  final String? documentation;
  final XmlElement? definitionNode; // The original XSD node

  SemanticType(
    this.name,
    this.namespaceUri,
    this.documentation, {
    this.definitionNode,
  });
}

/// A complex type (class-like) with attributes and children.
class ComplexType extends SemanticType {
  final List<Attribute> attributes = [];
  final List<ChildElement> children = [];
  final SemanticType? parentType; // For inheritance (xsd:extension)

  ComplexType(
    super.name,
    super.namespaceUri,
    super.documentation, {
    this.parentType,
    super.definitionNode,
  });

  @override
  String toString() => 'ComplexType($name)';
}

/// A simple type (primitive-like) or enumeration.
class SimpleType extends SemanticType {
  final String baseType; // e.g., "string", "int"
  final List<String> enumerations; // Empty if not an enum

  SimpleType(
    super.name,
    super.namespaceUri,
    super.documentation,
    this.baseType, {
    this.enumerations = const [],
    super.definitionNode,
  });

  bool get isEnum => enumerations.isNotEmpty;

  @override
  String toString() =>
      'SimpleType($name, base: $baseType${isEnum ? ", enum" : ""})';
}

/// Represents an XML attribute field.
class Attribute {
  final String name; // e.g., "rsidR"
  final String xmlName; // e.g., "rsidR"
  final String namespace;
  final SemanticType type;
  final bool isRequired;

  Attribute(
    this.name,
    this.xmlName,
    this.namespace,
    this.type,
    this.isRequired,
  );
}

/// Represents a child element field.
class ChildElement {
  final String name; // e.g., "runs"
  final String xmlName; // e.g., "r"
  final String namespace;
  final SemanticType type;
  final bool isMultiple; // MaxOccurs > 1

  ChildElement(
    this.name,
    this.xmlName,
    this.namespace,
    this.type,
    this.isMultiple,
  );
}
