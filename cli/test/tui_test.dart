import 'dart:typed_data';
import 'package:test/test.dart';
import 'package:image/image.dart' as img;
import 'package:cli/utils/ansi_image_renderer.dart';

void main() {
  group('AnsiImageRenderer', () {
    test('renders a basic image with ansi codes', () {
      // Create a simple 2x2 image
      // Top row: Red, Green
      // Bottom row: Blue, White
      final image = img.Image(width: 2, height: 2);
      image.setPixelRgb(0, 0, 255, 0, 0); // Red
      image.setPixelRgb(1, 0, 0, 255, 0); // Green
      image.setPixelRgb(0, 1, 0, 0, 255); // Blue
      image.setPixelRgb(1, 1, 255, 255, 255); // White

      final pngBytes = img.encodePng(image);
      final result = AnsiImageRenderer.render(pngBytes, 2, 1);

      // We expect 1 line since 2 pixels tall = 1 character high.
      // Column 0: Top Red (255,0,0), Bottom Blue (0,0,255)
      // Column 1: Top Green (0,255,0), Bottom White (255,255,255)

      expect(result.contains('38;2;255;0;0'), isTrue); // fg red
      expect(result.contains('48;2;0;0;255'), isTrue); // bg blue
      expect(result.contains('38;2;0;255;0'), isTrue); // fg green
      expect(result.contains('48;2;255;255;255'), isTrue); // bg white
      expect(result.contains('▀'), isTrue);
    });

    test('handles invalid image gracefully', () {
      final badBytes = Uint8List.fromList([1, 2, 3]);
      final result = AnsiImageRenderer.render(badBytes, 10, 10);
      expect(result, equals('Error decoding image'));
    });
  });
}
