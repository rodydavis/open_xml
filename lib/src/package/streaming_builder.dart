import 'package:xml/xml.dart';

class StreamingXmlBuilder implements XmlBuilder {
  final StringSink _sink;
  final List<String> _stack = [];
  bool _attributeTarget = false;
  @override
  bool optimizeNamespaces = false;

  StreamingXmlBuilder(this._sink);

  @override
  void attribute(
    String name,
    Object? value, {
    String? namespace,
    XmlAttributeType? attributeType,
  }) {
    if (!_attributeTarget) {
      throw StateError('Attributes can only be added when an element is open.');
    }
    _sink.write(' $name="');
    _writeEscaped(value.toString());
    _sink.write('"');
    if (namespace != null) {
      // Basic namespace handling
    }
  }

  @override
  void cdata(Object text) {
    _closeAttributeTarget();
    _sink.write('<![CDATA[');
    _sink.write(text);
    _sink.write(']]>');
  }

  @override
  void comment(Object text) {
    _closeAttributeTarget();
    _sink.write('<!--');
    _sink.write(text);
    _sink.write('-->');
  }

  @override
  void declaration({
    String version = '1.0',
    String? encoding,
    Map<String, String> attributes = const {},
  }) {
    _sink.write('<?xml version="$version"');
    if (encoding != null) _sink.write(' encoding="$encoding"');
    attributes.forEach((key, value) {
      _sink.write(' $key="$value"');
    });
    _sink.write('?>');
  }

  @override
  void doctype(
    String text, {
    String? systemId,
    String? publicId,
    String? internalSubset,
  }) {
    _closeAttributeTarget();
    _sink.write('<!DOCTYPE $text');
    if (publicId != null) _sink.write(' PUBLIC "$publicId"');
    if (systemId != null) _sink.write(' SYSTEM "$systemId"');
    if (internalSubset != null) _sink.write(' [$internalSubset]');
    _sink.write('>');
  }

  @override
  void element(
    String name, {
    String? namespace,
    Map<String, String?> namespaces = const {},
    Map<String, String> attributes = const {},
    bool isSelfClosing = true,
    Object? nest,
  }) {
    _closeAttributeTarget();

    _sink.write('<$name');

    // Namespaces
    namespaces.forEach((uri, prefix) {
      if (prefix != null) {
        _sink.write(' xmlns:$prefix="$uri"');
      } else {
        _sink.write(' xmlns="$uri"');
      }
    });
    if (namespace != null && !name.contains(':')) {
      _sink.write(' xmlns="$namespace"');
    }

    // Attributes
    attributes.forEach((key, value) {
      _sink.write(' $key="');
      _writeEscaped(value);
      _sink.write('"');
    });

    _stack.add(name);
    _attributeTarget = true;

    // Nest
    if (nest != null) {
      if (nest is Function) {
        if (nest is void Function()) {
          nest();
        } else if (nest is void Function(XmlBuilder)) {
          nest(this);
        }
      } else if (nest is String) {
        text(nest);
      } else if (nest is Iterable) {
        for (var e in nest) {
          if (e is String) text(e);
        }
      }
    }

    if (_attributeTarget && isSelfClosing) {
      _sink.write('/>');
      _stack.removeLast();
      _attributeTarget = false;
    } else {
      _closeAttributeTarget();
      _sink.write('</$name>');
      _stack.removeLast();
    }
  }

  @override
  void processing(String target, Object text) {
    _closeAttributeTarget();
    _sink.write('<?$target $text?>');
  }

  @override
  void text(Object text) {
    _closeAttributeTarget();
    _writeEscaped(text.toString());
  }

  void _closeAttributeTarget() {
    if (_attributeTarget) {
      _sink.write('>');
      _attributeTarget = false;
    }
  }

  void _writeEscaped(String text) {
    _sink.write(
      text
          .replaceAll('&', '&amp;')
          .replaceAll('<', '&lt;')
          .replaceAll('>', '&gt;')
          .replaceAll('"', '&quot;')
          .replaceAll("'", '&apos;'),
    );
  }

  @override
  XmlDocument buildDocument() {
    throw UnsupportedError('Streaming builder does not build a DOM.');
  }

  @override
  XmlDocumentFragment buildFragment() {
    throw UnsupportedError('Streaming builder does not build a DOM.');
  }

  @override
  void xml(String input, {XmlEntityMapping? entityMapping}) {
    _closeAttributeTarget();
    _sink.write(input);
  }

  @override
  void namespace(String uri, [String? prefix]) {
    // No-op or track for auto-prefixing
  }

  void import(XmlBuilder other) {
    throw UnsupportedError('Streaming builder does not support import.');
  }
}
