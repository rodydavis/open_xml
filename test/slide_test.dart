import 'package:open_xml/open_xml.dart';
import 'package:test/test.dart';
import 'package:open_xml/src/dml/dml.g.dart';

void main() {
  group('Slide', () {
    test('addTextBox adds SlideTextBox element', () {
      final slide = Slide(1);
      slide.addTextBox(
        text: 'Hello World',
        x: 0,
        y: 0,
        fontSize: 1800,
        isBold: false,
      );

      expect(slide.elements.length, 1);
      final element = slide.elements.first as SlideTextBox;
      expect(element.runs.first.text, equals('Hello World'));
      expect(element.x, equals(0));
      expect(element.y, equals(0));
      expect(element.runs.first.fontSize, equals(1800));
      expect(element.runs.first.isBold, isFalse);
    });

    test('addImage adds SlideImage element', () {
      final slide = Slide(1);
      slide.addImage(path: 'image.png', x: 50, y: 50);

      expect(slide.elements.length, 1);
      final element = slide.elements.first as SlideImage;
      expect(element.path, 'image.png');
      expect(element.x, 50);
      expect(element.y, 50);
    });

    test('setTransition sets transition property', () {
      final slide = Slide(1);
      final transition = FadeTransition();
      slide.setTransition(transition);

      expect(slide.transition, isNotNull);
      expect(slide.transition, equals(transition));
    });

    test('getAllReferencedImagePaths returns correct paths', () {
      final slide = Slide(1);
      slide.addImage(path: 'img1.png');
      slide.setBackground(ImageBackground('bg.jpg'));
      slide.addTextBox(text: 'text'); // No image

      final paths = slide.getAllReferencedMediaPaths();
      expect(paths, containsAll(['img1.png', 'bg.jpg']));
      expect(paths.length, 2);
    });
    test('getAllReferencedHyperlinks returns correct links', () {
      final slide = Slide(1);
      final box = SlideTextBox();
      box.addRun(TextRun(text: 'Google', url: 'https://google.com'));
      box.addRun(TextRun(text: 'Internal', url: '#slide2'));
      slide.elements.add(box);

      final links = slide.getAllReferencedHyperlinks();
      expect(links, containsAll(['https://google.com', '#slide2']));
      expect(links.length, 2);
      expect(links.length, 2);
    });
    test('image background with stretch mode', () {
      final slide = Slide(1);
      slide.setBackground(
        ImageBackground('image.png', mode: ImageStretchMode()),
      );
    });

    test('image background with tile mode', () {
      final slide = Slide(1);
      slide.setBackground(
        ImageBackground(
          'image.png',
          mode: ImageTileMode(align: D_ST_RectAlignment.ctr),
        ),
      );
    });

    test('image background with manual crop generates srcRect', () {
      final slide = Slide(1);
      slide.setBackground(
        ImageBackground(
          'img.png',
          mode: ImageStretchMode(),
          crop: const ImageCrop(l: 25000, r: 25000),
        ),
      );

      final builder = XmlBuilder();
      slide.build(
        builder,
        relIds: {'img.png': 'rId1'},
        slideWidth: 100,
        slideHeight: 100,
      );

      final xml = builder.buildDocument().toXmlString();
      expect(xml, contains('<a:srcRect l="25000" r="25000"/>'));
    });
  });
}
