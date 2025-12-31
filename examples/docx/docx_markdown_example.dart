import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'package:markdown/markdown.dart' as md;

Future<void> main() async {
  final markdown = '''
# OpenXML Markdown Example (Package)

This is a **bold** statement.
This is an *italic* statement.
This has **bold and *italic* nested**.

## List Example

- Item 1
- Item 2 which is **bold**
- Item 3

## Conclusion

This document was generated using `package:markdown` AST properties.
''';

  const fs = LocalFileSystem();
  final doc = await WordDocument.create(fs);
  _parseMarkdownToDocx(doc, markdown);
  await doc.save(fs.file('out/markdown_example.docx'));
  print('Created markdown_example.docx');
}

void _parseMarkdownToDocx(WordDocument doc, String markdown) {
  // Parse markdown to AST nodes
  final nodes = md.Document().parse(markdown);

  // Visit nodes to build DOCX
  final visitor = DocxVisitor(doc);
  for (final node in nodes) {
    node.accept(visitor);
  }
}

class DocxVisitor implements md.NodeVisitor {
  final WordDocument doc;
  Paragraph? _currentParagraph;

  // Style state
  bool _isBold = false;
  bool _isItalic = false;

  DocxVisitor(this.doc);

  @override
  bool visitElementBefore(md.Element element) {
    switch (element.tag) {
      case 'h1':
        _currentParagraph = Paragraph();
        doc.addParagraph(_currentParagraph!);
        // H1 styling could go here if we supported styles
        // For now, let's just make it bold and generic size (if supported)
        // or effectively just bold.
        _isBold = true;
        break;
      case 'h2':
        _currentParagraph = Paragraph();
        doc.addParagraph(_currentParagraph!);
        _isBold = true;
        break;
      case 'p':
        _currentParagraph = Paragraph();
        doc.addParagraph(_currentParagraph!);
        break;
      case 'ul':
        // Unordered list container - nothing specific for DOCX paragraph structure
        // unless we want to indent.
        break;
      case 'li':
        _currentParagraph = Paragraph();
        doc.addParagraph(_currentParagraph!);
        _currentParagraph!.addText('• '); // Manual bullet
        break;
      case 'strong':
        _isBold = true;
        break;
      case 'em':
        _isItalic = true;
        break;
    }
    return true; // Visit children
  }

  @override
  void visitText(md.Text text) {
    if (_currentParagraph != null) {
      _currentParagraph!.addText(text.text, bold: _isBold, italic: _isItalic);
    }
  }

  @override
  void visitElementAfter(md.Element element) {
    switch (element.tag) {
      case 'h1':
      case 'h2':
        _isBold = false;
        _currentParagraph = null;
        break;
      case 'p':
      case 'li':
        _currentParagraph = null;
        break;
      case 'strong':
        _isBold = false;
        break;
      case 'em':
        _isItalic = false;
        break;
    }
  }
}
