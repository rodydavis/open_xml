import 'package:xml/xml.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

/// Represents a parsed XSD schema.
class Schema {
  final Uri uri;
  final XmlDocument document;
  final String? targetNamespace;
  final String location;

  Schema(this.uri, this.document, this.location)
    : targetNamespace = document.rootElement.getAttribute('targetNamespace');

  @override
  String toString() => 'Schema(uri: $uri, targetNamespace: $targetNamespace)';
}

/// Holds the context of all parsed schemas and resolves types.
class SchemaContext {
  final Map<String, Schema> _schemasByNamespace = {};
  final Map<Uri, Schema> _schemasByUri = {};
  final Set<Uri> _visitedUris = {};

  /// Loads and parses a schema from a file path.
  /// Recursively parses imports and includes.
  Future<void> load(String path) async {
    final file = File(path);
    if (!file.existsSync()) {
      print('Warning: Schema file not found: $path');
      return;
    }

    final uri = file.uri;
    if (_visitedUris.contains(uri)) return;
    _visitedUris.add(uri);

    print('Parsing schema: $path');
    final content = await file.readAsString();
    final document = XmlDocument.parse(content);
    final schema = Schema(uri, document, path);

    if (schema.targetNamespace != null) {
      _schemasByNamespace[schema.targetNamespace!] = schema;
    }
    _schemasByUri[uri] = schema;

    // Process imports and includes
    final root = document.rootElement;
    final parentDir = p.dirname(path);

    // <xsd:import namespace="..." schemaLocation="..." />
    for (final element in root.findAllElements('xsd:import')) {
      final location = element.getAttribute('schemaLocation');
      if (location != null) {
        final importPath = p.normalize(p.join(parentDir, location));
        await load(importPath);
      }
    }

    // <xsd:include schemaLocation="..." />
    for (final element in root.findAllElements('xsd:include')) {
      final location = element.getAttribute('schemaLocation');
      if (location != null) {
        final includePath = p.normalize(p.join(parentDir, location));
        await load(includePath);
      }
    }
    // Also handle xs: prefix
    for (final element in root.findAllElements('xs:import')) {
      final location = element.getAttribute('schemaLocation');
      if (location != null) {
        final importPath = p.normalize(p.join(parentDir, location));
        await load(importPath);
      }
    }
    for (final element in root.findAllElements('xs:include')) {
      final location = element.getAttribute('schemaLocation');
      if (location != null) {
        final includePath = p.normalize(p.join(parentDir, location));
        await load(includePath);
      }
    }
  }

  Schema? getSchema(String namespace) => _schemasByNamespace[namespace];

  Map<String, Schema> get schemas => _schemasByNamespace;
}
