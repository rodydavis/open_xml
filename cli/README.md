# open_xml_cli

A powerful, interactive terminal-based viewer and editor for Office Open XML (`.pptx`, `.docx`, `.xlsx`) files. Built using Dart and the `open_xml` package.

## Features

- **TUI (Text User Interface):** Navigate and edit your documents directly from your terminal.
- **Cross-Format Support:**
  - **PPTX:** View slide presentations with accurate aspect ratios, browse speaker notes, edit text boxes, add new slides, and navigate in a full-screen "Presentation Mode".
  - **DOCX:** Read documents with intelligent paragraph wrapping, select paragraphs to edit, delete paragraphs, and insert new ones.
  - **XLSX:** View spreadsheet grids, switch between worksheets, view evaluated formulas, add new rows or sheets, and edit individual cell values or formulas.
- **Dynamic Resizing:** Supports manual redrawing (`r`) to dynamically fit terminal window adjustments.

## Usage

Run the CLI and pass the path to an Office file. The viewer will automatically detect the file format based on the extension.

```bash
dart run bin/open_xml_cli.dart path/to/document.docx
dart run bin/open_xml_cli.dart path/to/presentation.pptx
dart run bin/open_xml_cli.dart path/to/spreadsheet.xlsx
```

### Global Hotkeys
- `r`: Redraw the interface (useful after manually resizing your terminal window)
- `q`: Quit

### PPTX Viewer Hotkeys
- `p`: Toggle Presentation Mode (full screen)
- `^ v < >`: Navigate elements / slides
- `e`: Edit selected element
- `N`: Edit speaker notes for the current slide
- `n`: Toggle visibility of speaker notes
- `+`: Add a new slide

### DOCX Viewer Hotkeys
- `^ v`: Select paragraphs
- `e`: Edit the currently selected paragraph
- `+` or `a`: Add a new paragraph below the current selection
- `d` or `Del` or `Backspace`: Delete the selected paragraph

### XLSX Viewer Hotkeys
- `^ v < >`: Navigate grid cells
- `[` and `]`: Switch between worksheets
- `e`: Edit the selected cell (start with `=` to save as a formula)
- `+`: Add a new row to the current sheet
- `S`: Add a new worksheet

## Dependencies

- `open_xml` - Core parsing and generation engine.
- `dart_console` - Terminal UI rendering.
