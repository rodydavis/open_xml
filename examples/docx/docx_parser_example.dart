import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputPath = 'out/generated_for_parsing.docx';
  final outputFile = fs.file(outputPath);

  // Ensure output directory exists
  if (!outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }

  // 1. Generate a DOCX file
  print('Generating $outputPath...');
  final doc = await WordDocument.create(fs);

  doc.addParagraph(
    Paragraph()
      ..addText('Hello, World!')
      ..addText(' This is a generated document.', bold: true),
  );

  doc.addParagraph(Paragraph()..addText('It contains multiple paragraphs.'));

  doc.addParagraph(
    Paragraph()
      ..addText('And some ')
      ..addText('formatted', italic: true)
      ..addText(' text too.'),
  );

  await doc.save(outputFile);
  print('Generated.');

  // 2. Parse the generated DOCX file
  print('\nParsing $outputPath...');

  // Verify file exists
  if (!outputFile.existsSync()) {
    print('Error: File was not created.');
    return;
  }

  final parsedDoc = await WordDocument.open(outputFile);

  print('Full Document Text:');
  print('---');
  print(parsedDoc.text);
  print('---');
  print('');

  print('Found ${parsedDoc.paragraphs.length} paragraphs:');
  for (final (i, paragraph) in parsedDoc.paragraphs.indexed) {
    print('Paragraph ${i + 1}: "${paragraph.text}"');

    // detailed info
    for (final element in paragraph.elements) {
      if (element is Run) {
        final style = <String>[];
        if (element.bold) style.add('bold');
        if (element.italic) style.add('italic');
        final styleStr = style.isEmpty ? '' : ' [${style.join(', ')}]';
        print('  - Run: "${element.text}"$styleStr');
      } else {
        print('  - Other element: ${element.runtimeType}');
      }
    }
  }
}
