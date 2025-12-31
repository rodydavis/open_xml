import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputDir = fs.directory('out');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  final doc = await WordDocument.create(fs);

  // Paragraph with Hyperlink
  final p1 = Paragraph();
  p1.addText('Visit ');
  p1.addHyperlink('Google', 'https://www.google.com', bold: true);
  p1.addText(' for more info.');
  doc.addParagraph(p1);

  // Another link
  final p2 = Paragraph();
  p2.addHyperlink('OpenXML', 'https://en.wikipedia.org/wiki/Office_Open_XML');
  doc.addParagraph(p2);

  final outputPath = 'out/docx_hyperlinks.docx';
  await doc.save(fs.file(outputPath));
  print('Created $outputPath');
}
