# open_xml

A Dart package for generating and parsing Office Open XML documents (.docx, .xlsx, .pptx).

## Features

- **Word Processing (.docx)**
  - Create documents, add paragraphs, and styled text (bold, italic, color, size).
  - Parse existing documents to extract text and structure.

- **Spreadsheet (.xlsx)**
  - Create workbooks, sheets, rows, and cells.
  - Support for formulas and shared strings.
  - Parse existing spreadsheets to read data.

- **Presentation (.pptx)**
  - Create presentations, add slides with titles and body text.
  - Support for full-screen background images.
  - Parse existing presentations.

## Getting Started

Add `open_xml` to your `pubspec.yaml`:

```yaml
dependencies:
  open_xml: ^1.0.0
```

## Usage

### Word (.docx)

Create a Word document with styled text:

```dart
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  final doc = await WordDocument.create();

  doc.addParagraph(
    Paragraph()
      ..addRun(Run(text: 'Hello, '))
      ..addRun(Run(text: 'World!', bold: true, color: 'FF0000')),
  );

  await doc.save('example.docx');
}
```

### Excel (.xlsx)

Create a Spreadsheet with data and formulas:

```dart
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  final workbook = await Workbook.create();
  final sheet = workbook.addSheet('Sales');

  // Add Data
  sheet.addRow()
    ..addCell('Item')
    ..addCell('Price');
  
  sheet.addRow()
    ..addCell('Apple')
    ..addCell(1.50);

  sheet.addRow()
    ..addCell('Total')
    ..addCell('', formula: 'SUM(B2:B2)');

  await workbook.save('example.xlsx');
}
```

### PowerPoint (.pptx)

Create a Presentation with slides:

```dart
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  final pres = await Presentation.create();

  final slide = pres.addSlide();
  slide.addTitle('Hello OpenXML');
  slide.addText('This is a dynamically generated slide.');

  await pres.save('example.pptx');
}
```

### PowerPoint Generation from Template
    
Generate type-safe Dart bindings from a `.pptx` template file to easily create slides with specific layouts.

**1. Create a binding generator script:**

Run the generator tool provided in the package:

```bash
dart run open_xml:pptx_type_generator --input templates/mytemplate.pptx --output lib/my_bindings.dart --class-name MyPresentation
```

**2. Use the generated bindings:**

```dart
import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';
import 'lib/my_bindings.dart'; // Import generated bindings

void main() async {
  final fs = LocalFileSystem();
  final template = fs.file('templates/mytemplate.pptx');
  final pres = await Presentation.open(template);
  
  // Use the generated extension
  final myPres = MyPresentation(pres);

  // Add a slide using a layout from the template
  // The method arguments match the placeholders in the slide layout!
  myPres.addTitleSlide(
    title: 'Hello Generator'.toTextRun(),
    subTitle: 'Type-safe slides'.toTextRun(),
  );

  await pres.save(fs.file('output.pptx'));
}
```

## Advanced Examples

Check the `examples/` directory for more advanced use cases:

- **Markdown to Docx**: `examples/docx/docx_markdown_example.dart` (uses `package:markdown`)
- **JSON to Excel**: `examples/xlsx/xlsx_json_example.dart`
- **SQLite to Excel**: `examples/xlsx/xlsx_sqlite_example.dart` (uses `package:sqlite3`)
- **Images in PowerPoint**: `examples/pptx/pptx_images_example.dart`

> **Note**: To run these examples, you must execute them from the `examples/` directory context as they have their own dependencies.
>
> ```bash
> ./examples/run_all.sh
> ```
