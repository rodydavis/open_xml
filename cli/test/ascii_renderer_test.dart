import 'package:test/test.dart';
import 'package:open_xml/open_xml.dart';
import 'package:file/memory.dart';

void main() {
  group('SlideRect & resolveElementBounds', () {
    test('resolves to element coordinates when provided', () async {
      final fs = MemoryFileSystem();
      final presentation = await Presentation.create(fs);
      final slide = presentation.addSlide();

      final element = SlideTextBox(x: 100, y: 200, width: 300, height: 400);
      slide.elements.add(element);

      final rect = presentation.resolveElementBounds(slide, element);

      expect(rect.x, 100);
      expect(rect.y, 200);
      expect(rect.width, 300);
      expect(rect.height, 400);
    });

    test(
      'falls back to 0, 0, 1000000, 1000000 when no layout provided',
      () async {
        final fs = MemoryFileSystem();
        final presentation = await Presentation.create(fs);
        final slide = presentation.addSlide();

        // No explicit coordinates, relies on layout, but layout isn't loaded
        final element = SlideTextBox();
        slide.elements.add(element);

        final rect = presentation.resolveElementBounds(slide, element);

        expect(rect.x, 0);
        expect(rect.y, 0);
        expect(rect.width, 1000000);
        expect(rect.height, 1000000);
      },
    );
  });
}
