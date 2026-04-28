import 'package:dart_console/dart_console.dart';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'package:cli/utils/ascii_slide_renderer.dart';
import 'base_viewer.dart';

class PptxViewer extends BaseViewer {
  PptxViewer(super.file, super.console);

  bool inPresentationMode = false;
  bool showNotes = false;
  int currentSlideIndex = 0;
  int selectedElementIndex = 0;
  Presentation? presentation;

  @override
  Future<void> start() async {
    drawHeader('Loading Presentation...');
    presentation = await Presentation.open(
      const LocalFileSystem().file(file.path),
    );

    if (presentation!.slides.isEmpty) {
      drawHeader('Presentation is empty.');
      console.readKey();
      return;
    }

    listenForResize(_render);
    await _render();

    while (true) {
      final key = console.readKey();

      if (key.controlChar == ControlCharacter.ctrlC || key.char == 'q') {
        break;
      } else if (key.char == 'n') {
        showNotes = !showNotes;
        await _render();
      } else if (key.char == 'p') {
        inPresentationMode = !inPresentationMode;
        await _render();
      } else if (key.controlChar == ControlCharacter.arrowRight) {
        if (currentSlideIndex < presentation!.slides.length - 1) {
          currentSlideIndex++;
          selectedElementIndex = 0;
          await _render();
        }
      } else if (key.controlChar == ControlCharacter.arrowLeft) {
        if (currentSlideIndex > 0) {
          currentSlideIndex--;
          selectedElementIndex = 0;
          await _render();
        }
      } else if (key.controlChar == ControlCharacter.arrowDown &&
          !inPresentationMode) {
        final slide = presentation!.slides[currentSlideIndex];
        if (selectedElementIndex < slide.elements.length - 1) {
          selectedElementIndex++;
          await _render();
        }
      } else if (key.controlChar == ControlCharacter.arrowUp &&
          !inPresentationMode) {
        if (selectedElementIndex > 0) {
          selectedElementIndex--;
          await _render();
        }
      } else if (key.char == 'e' && !inPresentationMode) {
        await _enterEditMode();
        await _render();
      } else if (key.char == 'N' && !inPresentationMode) {
        // Shift+N to edit notes
        await _editNotesMode();
        await _render();
      } else if (key.char == '+' && !inPresentationMode) {
        presentation!.addSlide();
        currentSlideIndex = presentation!.slides.length - 1;
        selectedElementIndex = 0;
        await _render();
      } else if (key.char == 'r') {
        console.clearScreen();
        await _render();
      }
    }

    stopListeningForResize();
  }

  Future<void> _render() async {
    clearContentArea();

    final slide = presentation!.slides[currentSlideIndex];
    final title = inPresentationMode
        ? 'Presentation Mode - Slide ${currentSlideIndex + 1} / ${presentation!.slides.length}'
        : 'View Mode: ${file.path.split('/').last} - Slide ${currentSlideIndex + 1} / ${presentation!.slides.length}';

    drawHeader(title);

    // Adjust selectedElementIndex if slide has changed or elements were removed
    if (slide.elements.isEmpty) {
      selectedElementIndex = -1;
    } else if (selectedElementIndex >= slide.elements.length) {
      selectedElementIndex = slide.elements.length - 1;
    } else if (selectedElementIndex < 0 && slide.elements.isNotEmpty) {
      selectedElementIndex = 0;
    }

    int startRowOffset = 2;
    int availableHeight = console.windowHeight - 3; // header + footer
    int notesHeight = 6;

    if (showNotes) {
      availableHeight -= notesHeight;
    }

    await AsciiSlideRenderer.render(
      console: console,
      presentation: presentation!,
      slide: slide,
      termWidth: console.windowWidth,
      termHeight: availableHeight,
      startRowOffset: startRowOffset,
      selectedIndex: inPresentationMode ? -1 : selectedElementIndex,
    );

    int bottomOffset = startRowOffset + availableHeight;

    if (showNotes) {
      console.cursorPosition = Coordinate(bottomOffset++, 2);
      console.setForegroundColor(ConsoleColor.yellow);
      console.write('--- Speaker Notes ---');
      console.resetColorAttributes();

      final notes = slide.notes;
      if (notes != null && notes.isNotEmpty) {
        console.cursorPosition = Coordinate(bottomOffset++, 2);
        console.write(notes);
      } else {
        console.cursorPosition = Coordinate(bottomOffset++, 2);
        console.write('(No speaker notes)');
      }
    }

    final footer = inPresentationMode
        ? '[<- ->] Navigate | [p] Exit Present | [n] Toggle Notes | [r] Redraw | [q] Quit'
        : '[^ v < >] Navigate | [p] Present | [e] Edit Element | [N] Edit Notes | [+] Add Slide | [n] Toggle Notes | [r] Redraw | [q] Quit';

    drawFooter(footer);
  }

  Future<void> _enterEditMode() async {
    final slide = presentation!.slides[currentSlideIndex];
    if (selectedElementIndex < 0 ||
        selectedElementIndex >= slide.elements.length) {
      // Create a textbox if none
      slide.addText('');
      selectedElementIndex = slide.elements.length - 1;
    }

    final element = slide.elements[selectedElementIndex];
    if (element is! SlideTextBox) {
      clearContentArea();
      drawHeader('Edit Element - Slide ${currentSlideIndex + 1}');
      console.cursorPosition = Coordinate(2, 2);
      console.write('Cannot edit this element type. Press any key to return.');
      console.readKey();
      return;
    }

    clearContentArea();
    drawHeader('Edit Text Box - Slide ${currentSlideIndex + 1}');

    console.cursorPosition = Coordinate(2, 2);
    final oldText = element.runs.map((r) => r.text).join(' ');
    console.write('Current: $oldText');
    console.cursorPosition = Coordinate(3, 2);
    console.write('New text (press Enter to save): ');

    console.showCursor();
    final newText = console.readLine();
    console.hideCursor();

    if (newText != null) {
      element.runs.clear();
      element.runs.add(TextRun(text: newText));

      drawFooter('Saving...');
      await presentation!.save(const LocalFileSystem().file(file.path));
    }
  }

  Future<void> _editNotesMode() async {
    clearContentArea();
    drawHeader('Edit Speaker Notes - Slide ${currentSlideIndex + 1}');

    console.cursorPosition = Coordinate(2, 2);
    console.write('Enter new speaker notes (press Enter to save): ');

    console.showCursor();
    final newNotes = console.readLine();
    console.hideCursor();

    if (newNotes != null) {
      final slide = presentation!.slides[currentSlideIndex];
      slide.addNote(newNotes);
      // Save it back to file
      drawFooter('Saving...');
      await presentation!.save(const LocalFileSystem().file(file.path));
    }
  }
}
