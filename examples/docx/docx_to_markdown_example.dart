import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputPath = 'out/markdown_source.docx';
  final outputFile = fs.file(outputPath);

  // Ensure output directory exists
  if (!outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }

  // 1. Generate a DOCX file with styles and formatting
  print('Generating $outputPath...');
  final doc = await WordDocument.create(fs);

  // Heading 1
  doc.addParagraph(
    Paragraph(styleId: 'Heading1')..addText('My Markdown Document'),
  );

  // Normal text with formatting
  doc.addParagraph(
    Paragraph()
      ..addText('This is a paragraph with ')
      ..addText('bold', bold: true)
      ..addText(' and ')
      ..addText('italic', italic: true)
      ..addText(' text.'),
  );

  // Heading 2
  doc.addParagraph(Paragraph(styleId: 'Heading2')..addText('Features'));

  // List Items (simulated with bullets for now as Paragraph doesn't fully support numbering properties yet)
  doc.addParagraph(Paragraph()..addText('• Parser support'));
  doc.addParagraph(Paragraph()..addText('• Builder support'));
  doc.addParagraph(Paragraph()..addText('• Styles support'));

  await doc.save(outputFile);
  print('Generated.');

  // 2. Parse the DOCX file and convert to Markdown
  print('\nConverting DOCX to Markdown...');

  if (!outputFile.existsSync()) {
    print('Error: File was not created.');
    return;
  }

  final parsedDoc = await WordDocument.open(outputFile);
  final markdown = _convertToMarkdown(parsedDoc);

  print('--- Markdown Output ---');
  print(markdown);
  print('-----------------------');
}

String _convertToMarkdown(WordDocument doc) {
  final buffer = StringBuffer();

  for (final paragraph in doc.paragraphs) {
    // Handle Headings based on styleId
    final styleId = paragraph.styleId;
    if (styleId == 'Heading1') {
      buffer.write('# ');
    } else if (styleId == 'Heading2') {
      buffer.write('## ');
    } else if (styleId == 'Heading3') {
      buffer.write('### ');
    }

    // Handle Text and Formatting
    for (final element in paragraph.elements) {
      if (element is Run) {
        final run = element;
        if (run.bold) buffer.write('**');
        if (run.italic) buffer.write('*');

        buffer.write(run.text);

        if (run.italic) buffer.write('*');
        if (run.bold) buffer.write('**');
      }
    }

    // Newline after each paragraph
    buffer.writeln();
    buffer.writeln(); // Blank line between paragraphs
  }

  // Post-process to fix simulated list items if needed
  // (e.g. replace "• " with "- ")
  // logic can be improved here
  return buffer.toString().replaceAll('\n• ', '\n- ').replaceAll('^• ', '- ');
}
