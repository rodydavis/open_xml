import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  final fs = LocalFileSystem();
  final outputDir = fs.directory('out');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  final doc = await WordDocument.create(fs);

  final p1 = Paragraph();
  p1.addRun(Run(text: 'Document with Comments'));
  doc.addParagraph(p1);

  final comment = doc.addComment(
    'This is a sample comment.',
    author: 'Rody Davis',
    initials: 'RD',
  );

  final p2 = Paragraph();
  p2.addRun(Run(text: 'This text has a comment attached to it. '));
  p2.addComment(comment);
  doc.addParagraph(p2);

  final outputFile = fs.file('out/docx_comments_example.docx');
  await outputFile.parent.create(recursive: true);
  await doc.save(outputFile);
  print('Saved to ${outputFile.path}');
}
