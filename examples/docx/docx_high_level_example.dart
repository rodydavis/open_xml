import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final doc = await WordDocument.create(fs);

  doc.addParagraph(
    Paragraph()
      ..addRun(Run(text: 'Hello, '))
      ..addRun(Run(text: 'World!', bold: true, color: 'FF0000')),
  );

  doc.addParagraph(
    Paragraph()..addRun(
      Run(text: 'This is a high-level API for OpenXML.', italic: true),
    ),
  );

  await doc.save(fs.file('out/high_level_example.docx'));
  print('Created high_level_example.docx');
}
