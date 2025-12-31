import 'package:open_xml/open_xml.dart';

extension type BasicPresentation(Presentation presentation) {
  Slide addTitleSlide({
    required List<TextRun> bullets,
    required TextRun title,
    required List<TextRun> bullets2,
  }) {
    final slide = presentation.addSlide(layout: 'Title');
    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    return slide;
  }

  Slide addTitleAmpPhotoSlide({
    required ImageReference image,
    required TextRun title,
    required List<TextRun> bullets,
    required List<TextRun> bullets2,
  }) {
    final slide = presentation.addSlide(layout: 'Title &amp; Photo');
    slide.elements.add(
      SlideImage(path: image.path, placeholderType: 'pic', placeholderIdx: 21),
    );

    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 22,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    return slide;
  }

  Slide addTitleAmpPhotoAltSlide({
    required ImageReference image,
    required TextRun title,
    required List<TextRun> bullets,
  }) {
    final slide = presentation.addSlide(layout: 'Title &amp; Photo Alt');
    slide.elements.add(
      SlideImage(path: image.path, placeholderType: 'pic', placeholderIdx: 21),
    );

    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    return slide;
  }

  Slide addTitleAmpBulletsSlide({
    required TextRun title,
    required List<TextRun> bullets,
    required List<TextRun> bullets2,
  }) {
    final slide = presentation.addSlide(layout: 'Title &amp; Bullets');
    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    return slide;
  }

  Slide addBulletsSlide({required List<TextRun> bullets}) {
    final slide = presentation.addSlide(layout: 'Bullets');
    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    return slide;
  }

  Slide addTitleBulletsAmpPhotoSlide({
    required List<TextRun> bullets,
    required List<TextRun> bullets2,
    required ImageReference image,
    required TextRun title,
  }) {
    final slide = presentation.addSlide(layout: 'Title, Bullets &amp; Photo');
    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    slide.elements.add(
      SlideImage(path: image.path, placeholderType: 'pic', placeholderIdx: 22),
    );

    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    return slide;
  }

  Slide addTitleBulletsAmpLiveVideoSmallSlide({
    required List<TextRun> bullets,
    required List<TextRun> bullets2,
    required TextRun title,
  }) {
    final slide = presentation.addSlide(
      layout: 'Title, Bullets &amp; Live Video Small',
    );
    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    return slide;
  }

  Slide addTitleBulletsAmpLiveVideoLargeSlide({
    required List<TextRun> bullets,
    required List<TextRun> bullets2,
    required TextRun title,
  }) {
    final slide = presentation.addSlide(
      layout: 'Title, Bullets &amp; Live Video Large',
    );
    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    return slide;
  }

  Slide addSectionSlide({required TextRun title}) {
    final slide = presentation.addSlide(layout: 'Section');
    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    return slide;
  }

  Slide addTitleOnlySlide({
    required TextRun title,
    required List<TextRun> bullets,
  }) {
    final slide = presentation.addSlide(layout: 'Title Only');
    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    return slide;
  }

  Slide addAgendaSlide({
    required TextRun title,
    required List<TextRun> bullets,
    required List<TextRun> bullets2,
  }) {
    final slide = presentation.addSlide(layout: 'Agenda');
    final titleBox_title = SlideTextBox(placeholderType: 'title');
    titleBox_title.addRun(title);
    slide.elements.add(titleBox_title);

    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    return slide;
  }

  Slide addStatementSlide({required List<TextRun> bullets}) {
    final slide = presentation.addSlide(layout: 'Statement');
    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    return slide;
  }

  Slide addBigFactSlide({
    required List<TextRun> bullets,
    required List<TextRun> bullets2,
  }) {
    final slide = presentation.addSlide(layout: 'Big Fact');
    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    return slide;
  }

  Slide addQuoteSlide({
    required List<TextRun> bullets,
    required List<TextRun> bullets2,
  }) {
    final slide = presentation.addSlide(layout: 'Quote');
    final bodyBox_bullets = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 21,
    );
    for (final val in bullets) {
      bodyBox_bullets.addRun(val);
    }
    slide.elements.add(bodyBox_bullets);

    final bodyBox_bullets2 = SlideTextBox(
      placeholderType: 'body',
      placeholderIdx: 1,
    );
    for (final val in bullets2) {
      bodyBox_bullets2.addRun(val);
    }
    slide.elements.add(bodyBox_bullets2);

    return slide;
  }

  Slide addPhoto3UpSlide({
    required ImageReference image,
    required ImageReference image2,
    required ImageReference image3,
  }) {
    final slide = presentation.addSlide(layout: 'Photo - 3 Up');
    slide.elements.add(
      SlideImage(path: image.path, placeholderType: 'pic', placeholderIdx: 21),
    );

    slide.elements.add(
      SlideImage(path: image2.path, placeholderType: 'pic', placeholderIdx: 22),
    );

    slide.elements.add(
      SlideImage(path: image3.path, placeholderType: 'pic', placeholderIdx: 23),
    );

    return slide;
  }

  Slide addPhotoSlide({required ImageReference image}) {
    final slide = presentation.addSlide(layout: 'Photo');
    slide.elements.add(
      SlideImage(path: image.path, placeholderType: 'pic', placeholderIdx: 21),
    );

    return slide;
  }

  Slide addBlankSlide() {
    final slide = presentation.addSlide(layout: 'Blank');
    return slide;
  }
}

class ImageReference {
  ImageReference(this.path);

  final String path;
}

extension StringToImageRef on String {
  ImageReference toImageReference() {
    return ImageReference(this);
  }
}

extension StringToTextRun on String {
  TextRun toTextRun() {
    return TextRun(text: this);
  }
}
