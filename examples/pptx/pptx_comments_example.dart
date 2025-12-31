import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  final fs = LocalFileSystem();
  final outputDir = fs.directory('out');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }
  final pres = await Presentation.create(fs);

  final slide = pres.addSlide();
  slide.addTitle('Slide with Comments');

  slide.addComment(
    'This is a comment on the slide.',
    author: 'Rody Davis',
    initials: 'RD',
  );

  final outputFile = fs.file('out/pptx_comments_example.pptx');
  await outputFile.parent.create(recursive: true);
  await pres.save(outputFile);
  print('Saved to ${outputFile.path}');
}
