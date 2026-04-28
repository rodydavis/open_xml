import 'dart:typed_data';
import 'package:image/image.dart' as img;

class AnsiImageRenderer {
  /// Renders an image to ANSI truecolor string using half-block characters.
  /// Each character represents 2 vertical pixels.
  static String render(Uint8List bytes, int maxWidth, int maxHeight) {
    img.Image? originalImage;
    try {
      originalImage = img.decodeImage(bytes);
    } catch (e) {
      return 'Error decoding image';
    }

    if (originalImage == null) return 'Error decoding image';

    // We want the image to fit in maxWidth characters wide, and maxHeight rows high.
    // Each row represents 2 pixels vertically.
    final targetPixelWidth = maxWidth;
    final targetPixelHeight = maxHeight * 2;

    var image = img.copyResize(
      originalImage,
      width: targetPixelWidth,
      height: targetPixelHeight,
      maintainAspect: true,
    );

    final buffer = StringBuffer();
    for (int y = 0; y < image.height; y += 2) {
      for (int x = 0; x < image.width; x++) {
        final topPixel = image.getPixel(x, y);

        int r1 = topPixel.r.toInt();
        int g1 = topPixel.g.toInt();
        int b1 = topPixel.b.toInt();

        // Handle odd height by assuming bottom pixel is same or transparent
        int r2 = 0;
        int g2 = 0;
        int b2 = 0;
        bool hasBottom = (y + 1 < image.height);

        if (hasBottom) {
          final bottomPixel = image.getPixel(x, y + 1);
          r2 = bottomPixel.r.toInt();
          g2 = bottomPixel.g.toInt();
          b2 = bottomPixel.b.toInt();
        }

        // Output foreground (top) and background (bottom) truecolor
        buffer.write('\x1b[38;2;$r1;$g1;${b1}m\x1b[48;2;$r2;$g2;${b2}m▀');
      }
      buffer.write('\x1b[0m\n');
    }

    return buffer.toString();
  }
}
