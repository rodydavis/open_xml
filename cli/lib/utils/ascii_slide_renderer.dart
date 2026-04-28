import 'dart:typed_data';
import 'package:dart_console/dart_console.dart';
import 'package:open_xml/open_xml.dart';
import 'ansi_image_renderer.dart';

class AsciiSlideRenderer {
  static Future<void> render({
    required Console console,
    required Presentation presentation,
    required Slide slide,
    required int termWidth,
    required int termHeight,
    required int startRowOffset,
    required int selectedIndex,
  }) async {
    // Determine EMU bounds
    final slideWidth = presentation.slideWidth;
    final slideHeight = presentation.slideHeight;

    // We constrain the drawing area to terminal bounds
    // termHeight is the available rows for the slide canvas
    // We leave space for the borders
    final maxCanvasWidth = termWidth - 4; // leave margin
    final maxCanvasHeight = termHeight - 2;

    if (maxCanvasWidth <= 0 || maxCanvasHeight <= 0) return;

    // A standard terminal character is approx twice as tall as it is wide.
    final double slideAspect = slideWidth / slideHeight;
    int canvasWidth = (maxCanvasHeight * slideAspect * 2).round();
    int canvasHeight = maxCanvasHeight;

    if (canvasWidth > maxCanvasWidth) {
      canvasWidth = maxCanvasWidth;
      canvasHeight = (canvasWidth / (slideAspect * 2)).round();
    }

    if (canvasWidth <= 0 || canvasHeight <= 0) return;

    final int startColOffset = (termWidth - canvasWidth) ~/ 2;
    final int effectiveStartRow =
        startRowOffset + (maxCanvasHeight - canvasHeight) ~/ 2;

    // Draw Slide Border
    console.cursorPosition = Coordinate(effectiveStartRow, startColOffset);
    console.write('┌' + '─' * canvasWidth + '┐');
    for (int r = 1; r <= canvasHeight; r++) {
      console.cursorPosition = Coordinate(
        effectiveStartRow + r,
        startColOffset,
      );
      console.write('│' + ' ' * canvasWidth + '│');
    }
    console.cursorPosition = Coordinate(
      effectiveStartRow + canvasHeight + 1,
      startColOffset,
    );
    console.write('└' + '─' * canvasWidth + '┘');

    // Helper to map EMUs to terminal coordinates
    int mapX(int x) => (x * canvasWidth) ~/ slideWidth;
    int mapY(int y) => (y * canvasHeight) ~/ slideHeight;

    for (int i = 0; i < slide.elements.length; i++) {
      final element = slide.elements[i];
      final isSelected = i == selectedIndex;

      final bounds = presentation.resolveElementBounds(slide, element);

      int cX =
          mapX(bounds.x) +
          startColOffset +
          1; // +1 because border starts at startColOffset and takes 1 char
      int cY = mapY(bounds.y) + effectiveStartRow + 1; // +1 for top border
      int cW = mapX(bounds.width);
      int cH = mapY(bounds.height);

      // Clamp to canvas
      if (cX < startColOffset + 1) cX = startColOffset + 1;
      if (cY < effectiveStartRow + 1) cY = effectiveStartRow + 1;
      if (cW < 1) cW = 1;
      if (cH < 1) cH = 1;

      if (cX + cW > startColOffset + 1 + canvasWidth)
        cW = canvasWidth - (cX - (startColOffset + 1));
      if (cY + cH > effectiveStartRow + 1 + canvasHeight)
        cH = canvasHeight - (cY - (effectiveStartRow + 1));

      // Draw element border if selected
      if (isSelected) {
        console.setBackgroundColor(ConsoleColor.white);
        console.setForegroundColor(ConsoleColor.black);
      } else {
        console.resetColorAttributes();
      }

      if (element is SlideTextBox) {
        final text = element.runs.map((r) => r.text).join(' ');
        if (text.isEmpty) {
          console.cursorPosition = Coordinate(cY, cX);
          console.write('[Empty Text]');
        } else {
          // Word wrap text
          final words = text.split(' ');
          int curRow = cY;
          int curCol = cX;

          for (final word in words) {
            if (curRow >= cY + cH) break; // Exceeded height

            if (curCol + word.length > cX + cW) {
              curRow++;
              curCol = cX;
              if (curRow >= cY + cH) break;
            }
            console.cursorPosition = Coordinate(curRow, curCol);

            // If the word itself is longer than width, truncate it
            String w = word;
            if (w.length > cW) {
              w = w.substring(0, cW - 1) + '…';
            }
            console.write(w + ' ');
            curCol += w.length + 1;
          }
        }
      } else if (element is SlideImage) {
        // Draw image placeholder first
        console.cursorPosition = Coordinate(cY, cX);
        console.write('[Image: ${element.path}]');

        console.resetColorAttributes(); // ANSI renderer provides its own colors

        try {
          final bytes = await presentation.readMediaBytes(element.path);
          // AnsiImageRenderer uses half blocks (2 vertical pixels per char).
          // We provide cW and cH as constraints.
          final ansiStr = AnsiImageRenderer.render(
            Uint8List.fromList(bytes),
            cW,
            cH,
          );
          final lines = ansiStr.split('\n');
          int curRow = cY;
          for (final line in lines) {
            if (curRow >= cY + cH) break;
            console.cursorPosition = Coordinate(curRow, cX);
            console.write(line);
            curRow++;
          }
        } catch (e) {
          console.cursorPosition = Coordinate(cY + 1, cX);
          console.write('(Failed to render)');
        }
      }

      console.resetColorAttributes();
    }
  }
}
