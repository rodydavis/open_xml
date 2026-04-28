import 'package:dart_console/dart_console.dart';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'base_viewer.dart';

class DocxViewer extends BaseViewer {
  DocxViewer(super.file, super.console);

  WordDocument? document;
  int scrollOffset = 0;
  int selectedIndex = 0;

  @override
  Future<void> start() async {
    drawHeader('Loading Document...');
    document = await WordDocument.open(const LocalFileSystem().file(file.path));

    listenForResize(_render);
    _render();

    while (true) {
      final key = console.readKey();

      if (key.controlChar == ControlCharacter.ctrlC || key.char == 'q') {
        break;
      } else if (key.controlChar == ControlCharacter.arrowDown) {
        if (selectedIndex < document!.paragraphs.length - 1) {
          selectedIndex++;
          _render();
        }
      } else if (key.controlChar == ControlCharacter.arrowUp) {
        if (selectedIndex > 0) {
          selectedIndex--;
          _render();
        }
      } else if (key.char == 'e') {
        _enterEditMode();
        _render();
      } else if (key.char == 'a' || key.char == '+') {
        _enterInsertMode();
        _render();
      } else if (key.char == 'd' ||
          key.controlChar == ControlCharacter.delete ||
          key.controlChar == ControlCharacter.backspace) {
        _deleteSelected();
        _render();
      } else if (key.char == 'r') {
        console.clearScreen();
        _render();
      }
    }

    stopListeningForResize();
  }

  void _render() {
    clearContentArea();

    final title = 'View Mode: ${file.path.split('/').last}';
    drawHeader(title);

    final termWidth = console.windowWidth;
    final termHeight = console.windowHeight;

    final maxCanvasWidth = termWidth - 4; // leave margin
    final maxCanvasHeight = termHeight - 4; // leave header/footer

    if (maxCanvasWidth <= 0 || maxCanvasHeight <= 0) return;

    final double docAspect = 8.5 / 11.0;
    int canvasWidth = (maxCanvasHeight * docAspect * 2).round();
    int canvasHeight = maxCanvasHeight;

    if (canvasWidth > maxCanvasWidth) {
      canvasWidth = maxCanvasWidth;
      canvasHeight = (canvasWidth / (docAspect * 2)).round();
    }

    if (canvasWidth <= 0 || canvasHeight <= 0) return;

    final int startColOffset = (termWidth - canvasWidth) ~/ 2;
    final int effectiveStartRow = 2 + (maxCanvasHeight - canvasHeight) ~/ 2;

    // Draw Document Border
    console.cursorPosition = Coordinate(effectiveStartRow, startColOffset);
    console.write('┌${'─' * canvasWidth}┐');
    for (int r = 1; r <= canvasHeight; r++) {
      console.cursorPosition = Coordinate(
        effectiveStartRow + r,
        startColOffset,
      );
      console.write('│${' ' * canvasWidth}│');
    }
    console.cursorPosition = Coordinate(
      effectiveStartRow + canvasHeight + 1,
      startColOffset,
    );
    console.write('└${'─' * canvasWidth}┘');

    // Precalculate wrapped lines
    final List<String> wrappedLines = [];
    final List<int> lineToParagraph = [];

    for (int i = 0; i < document!.paragraphs.length; i++) {
      final text = document!.paragraphs[i].text;
      if (text.isEmpty) {
        wrappedLines.add('(Empty Paragraph)');
        lineToParagraph.add(i);
        continue;
      }

      final words = text.split(' ');
      String currentLine = '';
      for (final word in words) {
        String w = word;
        if (w.length > canvasWidth - 2) {
          w = '${w.substring(0, canvasWidth - 5)}...';
        }
        if (currentLine.isEmpty) {
          currentLine = w;
        } else if (currentLine.length + 1 + w.length <= canvasWidth - 2) {
          currentLine += ' $w';
        } else {
          wrappedLines.add(currentLine);
          lineToParagraph.add(i);
          currentLine = w;
        }
      }
      if (currentLine.isNotEmpty) {
        wrappedLines.add(currentLine);
        lineToParagraph.add(i);
      }
    }

    // Adjust scrollOffset (now tracking line index)
    if (document!.paragraphs.isNotEmpty) {
      int selectedStartLine = lineToParagraph.indexOf(selectedIndex);
      int selectedEndLine = lineToParagraph.lastIndexOf(selectedIndex);

      if (selectedStartLine == -1) {
        selectedStartLine = 0;
        selectedEndLine = 0;
      }

      if (selectedStartLine < scrollOffset) {
        scrollOffset = selectedStartLine;
      } else if (selectedEndLine >= scrollOffset + canvasHeight) {
        scrollOffset = selectedEndLine - canvasHeight + 1;
      }
    }

    for (
      var i = scrollOffset;
      i < wrappedLines.length && i < scrollOffset + canvasHeight;
      i++
    ) {
      final displayLine = wrappedLines[i];
      final pIndex = lineToParagraph[i];

      console.cursorPosition = Coordinate(
        effectiveStartRow + 1 + (i - scrollOffset),
        startColOffset + 2,
      );

      if (pIndex == selectedIndex) {
        console.setBackgroundColor(ConsoleColor.white);
        console.setForegroundColor(ConsoleColor.black);
      } else {
        console.resetColorAttributes();
      }

      console.write(displayLine.padRight(canvasWidth - 2));
      console.resetColorAttributes();
    }

    final footer =
        '[^ v] Select | [e] Edit | [a/+] Add | [d/Del] Delete | [r] Redraw | [q] Quit';
    drawFooter(footer);
  }

  void _enterEditMode() {
    if (document!.paragraphs.isEmpty) return;

    clearContentArea();
    drawHeader('Edit Mode - Edit Paragraph');

    console.cursorPosition = Coordinate(2, 2);
    final oldText = document!.paragraphs[selectedIndex].text;
    console.write('Current: $oldText');
    console.cursorPosition = Coordinate(3, 2);
    console.write('New text (press Enter to save): ');

    console.showCursor();
    final newText = console.readLine();
    console.hideCursor();

    if (newText != null && newText.isNotEmpty) {
      final p = Paragraph();
      p.addRun(Run(text: newText));
      document!.paragraphs[selectedIndex] = p;

      drawFooter('Saving...');
      document!.save(const LocalFileSystem().file(file.path));
    }
  }

  void _enterInsertMode() {
    clearContentArea();
    drawHeader('Edit Mode - Insert Paragraph');

    console.cursorPosition = Coordinate(2, 2);
    console.write('Enter new paragraph text (press Enter to save): ');

    console.showCursor();
    final newText = console.readLine();
    console.hideCursor();

    if (newText != null && newText.isNotEmpty) {
      final p = Paragraph();
      p.addRun(Run(text: newText));

      if (document!.paragraphs.isEmpty) {
        document!.addParagraph(p);
      } else {
        document!.paragraphs.insert(selectedIndex + 1, p);
        selectedIndex++;
      }

      drawFooter('Saving...');
      document!.save(const LocalFileSystem().file(file.path));
    }
  }

  void _deleteSelected() {
    if (document!.paragraphs.isEmpty) return;

    document!.paragraphs.removeAt(selectedIndex);
    if (selectedIndex >= document!.paragraphs.length && selectedIndex > 0) {
      selectedIndex--;
    }

    drawFooter('Saving...');
    document!.save(const LocalFileSystem().file(file.path));
  }
}
