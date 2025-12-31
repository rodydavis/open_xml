/// Base class for all elements that can be added to a slide.
sealed class SlideElement {
  int? x;
  int? y;
  int? width;
  int? height;
  String? placeholderType;
  int? placeholderIdx;

  SlideElement({
    this.x,
    this.y,
    this.width,
    this.height,
    this.placeholderType,
    this.placeholderIdx,
  });
}

/// Represents an image on a slide.
class SlideImage extends SlideElement {
  final String path;

  SlideImage({
    required this.path,
    super.x,
    super.y,
    // Default 2 inches approx (914400 EMUs per inch)
    super.width,
    super.height,
    super.placeholderType,
    super.placeholderIdx,
  });
}

/// Represents a text box on a slide.
/// Represents a text box on a slide.
class SlideTextBox extends SlideElement {
  final List<TextRun> runs = [];

  SlideTextBox({
    String text = '',
    super.x,
    super.y,
    super.width,
    super.height,
    int? fontSize,
    bool isBold = false,
    bool isItalic = false,
    String? color,
    super.placeholderType,
    super.placeholderIdx,
  }) {
    if (text.isNotEmpty) {
      runs.add(
        TextRun(
          text: text,
          fontSize: fontSize,
          isBold: isBold,
          isItalic: isItalic,
          color: color,
        ),
      );
    }
  }

  void addRun(TextRun run) {
    runs.add(run);
  }
}

class TextRun {
  final String text;
  final int? fontSize;
  final bool isBold;
  final bool isItalic;
  final String? color;
  final String? url;

  TextRun({
    required this.text,
    this.fontSize,
    this.isBold = false,
    this.isItalic = false,
    this.color,
    this.url,
  });
}

/// Represents a generic shape on a slide.
class SlideShape extends SlideElement {
  // Can be expanded later for specific shape types (rect, circle, etc.)
  SlideShape({super.x, super.y, super.width, super.height});
}

/// Represents a video on a slide.
class SlideVideo extends SlideElement {
  final String path;

  SlideVideo({required this.path, super.x, super.y, super.width, super.height});
}
