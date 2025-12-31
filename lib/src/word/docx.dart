import 'package:file/file.dart';
import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

class WordprocessingDocument {
  final OoxmlPackage _package;
  final bool _isNew;

  WordprocessingDocument._(this._package, {bool isNew = false})
    : _isNew = isNew;

  static Future<WordprocessingDocument> create(FileSystem fs) async {
    final pkg = await OoxmlPackage.create(fs);
    return WordprocessingDocument._(pkg, isNew: true);
  }

  static Future<WordprocessingDocument> fromFile(File file) async {
    final pkg = await OoxmlPackage.open(file);
    return WordprocessingDocument._(pkg);
  }

  /// Adds a paragraph with text to the document.
  /// This is a high-level helper. For more control, use lower-level APIs.
  ///
  /// Note: This currently only supports appending to the end of the document body
  /// in a naive way if strictly streaming, but for a true high-level API we might
  /// want to operate on the DOM usually.
  ///
  /// However, since we have the `OoxmlPackage`, we can decide how to implement.
  /// If we are building from scratch, we can stream.
  /// If we are modifying, we likely need to parse `document.xml` into a DOM, modify it, and save it back.
  Future<void> addParagraph(String text) async {
    // TODO: maintain an in-memory DOM of document.xml or just append if it's new.
    // For now, let's assume we are building a new document or appending to the body.
    if (_documentDom == null) {
      if (_isNew) {
        _initializeNewDocument();
      } else {
        await _loadDocument();
      }
    }

    final body = _documentDom!.findAllElements('w:body').firstOrNull;
    if (body != null) {
      final p = XmlElement(XmlName('w:p'), [], [
        XmlElement(XmlName('w:r'), [], [
          XmlElement(XmlName('w:t'), [], [XmlText(text)]),
        ]),
      ]);
      body.children.add(p);
    }
  }

  Future<void> save(File outputFile) async {
    // Write back the DOM to the package part if modified
    if (_documentDom != null) {
      final sink = await _package.createPart('word/document.xml');
      sink.write(_documentDom!.toXmlString());
      await sink.close();

      if (_isNew) {
        // Add relationships and content types if new
        await _addDefaultRelationships();
        await _addContentTypes();
      }
    }
    await _package.save(outputFile);
  }

  XmlDocument? _documentDom;

  void _initializeNewDocument() {
    _documentDom = XmlDocument.parse(
      '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
      '<w:document xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">'
      '<w:body/>'
      '</w:document>',
    );
  }

  Future<void> _loadDocument() async {
    if (await _package.hasPart('word/document.xml')) {
      final content = await _package.readPartAsString('word/document.xml');
      _documentDom = XmlDocument.parse(content);
    } else {
      // Fallback or error?
      _initializeNewDocument();
    }
  }

  Future<void> _addDefaultRelationships() async {
    final rels =
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
        '<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">'
        '<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="word/document.xml"/>'
        '</Relationships>';

    final sink = await _package.createPart('_rels/.rels');
    sink.write(rels);
    await sink.close();
  }

  Future<void> _addContentTypes() async {
    final contentTypes =
        '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>'
        '<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">'
        '<Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>'
        '<Default Extension="xml" ContentType="application/xml"/>'
        '<Override PartName="/word/document.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"/>'
        '</Types>';

    final sink = await _package.createPart('[Content_Types].xml');
    sink.write(contentTypes);
    await sink.close();
  }
}
