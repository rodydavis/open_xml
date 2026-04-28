import 'package:dart_console/dart_console.dart';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'base_viewer.dart';

class XlsxViewer extends BaseViewer {
  XlsxViewer(super.file, super.console);

  Workbook? workbook;
  int currentSheetIndex = 0;

  // Viewport offset
  int scrollRowOffset = 0;
  int scrollColOffset = 0;

  // Cursor selection
  int selectedRow = 0;
  int selectedCol = 0;

  @override
  Future<void> start() async {
    drawHeader('Loading Workbook...');
    workbook = await Workbook.open(const LocalFileSystem().file(file.path));

    if (workbook!.worksheets.isEmpty) {
      drawHeader('Workbook is empty.');
      console.readKey();
      return;
    }

    listenForResize(_render);
    _render();

    while (true) {
      final key = console.readKey();

      if (key.controlChar == ControlCharacter.ctrlC || key.char == 'q') {
        break;
      } else if (key.controlChar == ControlCharacter.arrowDown) {
        selectedRow++;
        _render();
      } else if (key.controlChar == ControlCharacter.arrowUp) {
        if (selectedRow > 0) {
          selectedRow--;
          _render();
        }
      } else if (key.controlChar == ControlCharacter.arrowRight) {
        selectedCol++;
        _render();
      } else if (key.controlChar == ControlCharacter.arrowLeft) {
        if (selectedCol > 0) {
          selectedCol--;
          _render();
        }
      } else if (key.char == ']') {
        // Next sheet
        if (currentSheetIndex < workbook!.worksheets.length - 1) {
          currentSheetIndex++;
          selectedRow = 0;
          selectedCol = 0;
          _render();
        }
      } else if (key.char == '[') {
        // Prev sheet
        if (currentSheetIndex > 0) {
          currentSheetIndex--;
          selectedRow = 0;
          selectedCol = 0;
          _render();
        }
      } else if (key.char == 'e') {
        _enterEditMode();
        _render();
      } else if (key.char == '+') {
        _addRow();
        _render();
      } else if (key.char == 'S') {
        _addSheet();
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

    final sheet = workbook!.worksheets[currentSheetIndex];
    final title =
        'View Mode: ${file.path.split('/').last} - Sheet: ${sheet.name} (${currentSheetIndex + 1}/${workbook!.worksheets.length})';
    drawHeader(title);

    int maxRows = console.windowHeight - 4;
    int colWidth = 15; // Fixed column width for display
    int maxCols = (console.windowWidth - 4) ~/ colWidth;

    // Adjust scroll offsets
    if (selectedRow < scrollRowOffset) {
      scrollRowOffset = selectedRow;
    } else if (selectedRow >= scrollRowOffset + maxRows) {
      scrollRowOffset = selectedRow - maxRows + 1;
    }

    if (selectedCol < scrollColOffset) {
      scrollColOffset = selectedCol;
    } else if (selectedCol >= scrollColOffset + maxCols) {
      scrollColOffset = selectedCol - maxCols + 1;
    }

    int printRow = 2;

    for (
      var r = scrollRowOffset;
      r < scrollRowOffset + maxRows && r < sheet.rows.length + 1;
      r++
    ) {
      console.cursorPosition = Coordinate(printRow, 2);

      // If we are past the end, break (unless we want to show empty rows, but let's just show existing)
      if (r >= sheet.rows.length) break;

      final row = sheet.rows[r];

      for (var c = scrollColOffset; c < scrollColOffset + maxCols; c++) {
        String cellText = '';
        if (c < row.cells.length) {
          final cell = row.cells[c];
          if (cell.formula != null) {
            cellText = '=${cell.formula}';
          } else {
            cellText = cell.value?.toString() ?? '';
          }
        }

        // Truncate
        if (cellText.length > colWidth - 2) {
          cellText = '${cellText.substring(0, colWidth - 5)}...';
        }

        // Highlight selected
        if (r == selectedRow && c == selectedCol) {
          console.setBackgroundColor(ConsoleColor.white);
          console.setForegroundColor(ConsoleColor.black);
        } else {
          console.resetColorAttributes();
        }

        console.write('${cellText.padRight(colWidth - 1)}|');
      }
      console.resetColorAttributes();
      printRow++;
    }

    final footer =
        '[^ v < >] Navigate | [ [ ] ] Sheet | [e] Edit Cell | [+] Add Row | [S] Add Sheet | [r] Redraw | [q] Quit';
    drawFooter(footer);
  }

  void _enterEditMode() {
    final sheet = workbook!.worksheets[currentSheetIndex];

    // Ensure row exists
    while (sheet.rows.length <= selectedRow) {
      sheet.addRow();
    }
    final row = sheet.rows[selectedRow];

    // Ensure cell exists
    while (row.cells.length <= selectedCol) {
      row.addCell('');
    }

    clearContentArea();
    drawHeader('Edit Mode - Edit Cell');

    console.cursorPosition = Coordinate(2, 2);
    final currentCell = row.cells[selectedCol];
    final oldVal = currentCell.formula != null
        ? '=${currentCell.formula}'
        : currentCell.value?.toString() ?? '';
    console.write('Current: $oldVal');
    console.cursorPosition = Coordinate(3, 2);
    console.write('New value (press Enter to save): ');

    console.showCursor();
    final newVal = console.readLine();
    console.hideCursor();

    if (newVal != null) {
      if (newVal.startsWith('=')) {
        row.cells[selectedCol] = CellData(
          '',
          formula: newVal.substring(1).trim(),
        );
      } else {
        // Try to parse as number if possible
        dynamic finalVal = double.tryParse(newVal) ?? newVal;
        if (newVal.isEmpty) finalVal = '';

        row.cells[selectedCol] = CellData(finalVal);
      }

      drawFooter('Saving...');
      workbook!.save(const LocalFileSystem().file(file.path));
    }
  }

  void _addRow() {
    final sheet = workbook!.worksheets[currentSheetIndex];
    // Insert a new row after selectedRow
    final newRow = Row(selectedRow + 2); // 1-based index roughly
    if (selectedRow + 1 >= sheet.rows.length) {
      sheet.addRow();
    } else {
      sheet.rows.insert(selectedRow + 1, newRow);
    }

    selectedRow++;
    drawFooter('Saving...');
    workbook!.save(const LocalFileSystem().file(file.path));
  }

  void _addSheet() {
    clearContentArea();
    drawHeader('Edit Mode - Add Sheet');

    console.cursorPosition = Coordinate(2, 2);
    console.write('Enter new sheet name: ');

    console.showCursor();
    final sheetName = console.readLine();
    console.hideCursor();

    if (sheetName != null && sheetName.isNotEmpty) {
      workbook!.addSheet(sheetName);
      currentSheetIndex = workbook!.worksheets.length - 1;
      selectedRow = 0;
      selectedCol = 0;

      drawFooter('Saving...');
      workbook!.save(const LocalFileSystem().file(file.path));
    }
  }
}
