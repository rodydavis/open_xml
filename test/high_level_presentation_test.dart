import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';
import 'package:test/test.dart';

void main() {
  group('Presentation High-Level API', () {
    test('create and save presentation', () async {
      final fs = MemoryFileSystem();
      final pres = await Presentation.create(fs);
      pres.addSlide()
        ..addTitle('Test Slide')
        ..addText('Test Content');

      final file = fs.file('test_output.pptx');
      if (file.existsSync()) file.deleteSync();

      await pres.save(file);

      // Cleanup
      if (file.existsSync()) file.deleteSync();
    });

    test('open and parse presentation', () async {
      final fs = MemoryFileSystem();
      final pres = await Presentation.create(fs);
      pres.addSlide()
        ..addTitle('Test Slide')
        ..addText('Test Content');

      final file = fs.file('test_parser.pptx');
      await pres.save(file);

      final parsedPres = await Presentation.open(file);
      // Need getter to access slides
      // Assuming getter exists or will be added
      expect(parsedPres.slides.length, 1);
      final slide = parsedPres.slides.first;
      expect(slide.titles.first, 'Test Slide');
      expect(slide.texts.first, 'Test Content');

      // Cleanup
      if (file.existsSync()) file.deleteSync();
    });
  });
}
