import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:test/test.dart';

void main() {
  group('PPTX Regression Test', () {
    test('Generate Presentation with all features', () async {
      final fs = MemoryFileSystem();
      final pres = await Presentation.create(fs);

      // Slide 1: Title and Text
      pres.addSlide()
        ..addTitle('Slide 1')
        ..addText('Content');

      // Slide 2: Transition + TextBox + Image (Mock)
      final slide2 = pres.addSlide();
      slide2.setTransition(
        PushTransition(direction: P_ST_TransitionSideDirectionType.r),
      );
      slide2.addTextBox(text: 'Floating Text', x: 100, y: 100);
      // We can't easily mock image adding without a real file or complex mocking of package.addFile
      // So checking transition and text box specifically.

      final outputFile = fs.file('test_full.pptx');
      await pres.save(outputFile);

      expect(outputFile.existsSync(), isTrue);
      expect(outputFile.lengthSync(), greaterThan(0));

      // We could unzip and verify contents if we had a ZipDecoder that worked with MemoryFileSystem bytes easily here
      // But checking it builds without error and produces a file is a good first step regression test.
    });

    // We can simulate image by writing a dummy file to MemoryFileSystem first
    test('Generate Presentation with Images', () async {
      final fs = MemoryFileSystem();
      final dummyImg = fs.file('dummy.png');
      dummyImg.writeAsBytesSync([1, 2, 3]); // Mock image data

      final pres = await Presentation.create(fs);
      final slide = pres.addSlide();
      slide.addImage(path: 'dummy.png');
      slide.setBackground(ImageBackground('dummy.png'));

      final outputFile = fs.file('test_images.pptx');
      await pres.save(outputFile);

      expect(outputFile.existsSync(), isTrue);
    });
  });
}
