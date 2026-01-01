import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';
import 'package:open_xml/src/package/package.dart';
import 'package:open_xml/src/presentation/presentation.dart';
import 'package:test/test.dart';

void main() {
  group('Presentation Aspect Ratio', () {
    test('default aspect ratio is 4:3 (9144000x6858000)', () async {
      final fs = MemoryFileSystem();
      final pres = await Presentation.create(fs);

      expect(pres.slideWidth, 9144000);
      expect(pres.slideHeight, 6858000);
    });

    test('set aspect ratio to 16:9', () async {
      final fs = MemoryFileSystem();
      final pres = await Presentation.create(fs);

      pres.setAspectRatio(PresentationAspectRatio.widescreen_16_9);

      expect(pres.slideWidth, 12192000);
      expect(pres.slideHeight, 6858000);

      final file = fs.file('test_16_9.pptx');
      await pres.save(file);

      // Verify XML content
      final package = await OoxmlPackage.open(file);
      final xml = await package.readPartAsString('ppt/presentation.xml');
      expect(xml, contains('cx="12192000"'));
      expect(xml, contains('cy="6858000"'));
    });

    test('set custom dimensions', () async {
      final fs = MemoryFileSystem();
      final pres = await Presentation.create(fs);

      pres.setDimensions(1000000, 2000000);

      expect(pres.slideWidth, 1000000);
      expect(pres.slideHeight, 2000000);

      final file = fs.file('test_custom.pptx');
      await pres.save(file);

      // Verify XML content
      final package = await OoxmlPackage.open(file);
      final xml = await package.readPartAsString('ppt/presentation.xml');
      expect(xml, contains('cx="1000000"'));
      expect(xml, contains('cy="2000000"'));
    });

    test('16:10 aspect ratio', () async {
      final fs = MemoryFileSystem();
      final pres = await Presentation.create(fs);

      pres.setAspectRatio(PresentationAspectRatio.widescreen_16_10);

      expect(pres.slideWidth, 10972800);
      expect(pres.slideHeight, 6858000);
    });
  });
}
