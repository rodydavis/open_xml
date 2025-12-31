// examples/pptx/pptx_notes_example.dart
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final pres = await Presentation.create(fs);

  // Slide 1
  final slide1 = pres.addSlide();
  slide1.addTitle('Intro Slide');
  slide1.addText('This slide has speaker notes.');
  slide1.addNote(
    'Remember to welcome everyone and mention the safety protocols.',
  );

  // Slide 2
  final slide2 = pres.addSlide();
  slide2.addTitle('Agenda');
  slide2.addText('1. Review\n2. Plan\n3. Execute');
  slide2.addNote(
    'Keep this section brief. Typically 5 minutes. Mention that coffee is available.',
  );

  // Slide 3 - No notes
  final slide3 = pres.addSlide();
  slide3.addTitle('Conclusion');
  slide3.addText('Thank you!');

  final outputFile = fs.file('out/pptx_notes_example.pptx');
  await outputFile.parent.create(recursive: true);
  await pres.save(outputFile);
  print('Saved pptx_notes_example.pptx');
}
