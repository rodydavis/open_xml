# OpenXML

A comprehensive Dart package for generating, parsing, and verifying Office Open XML (OOXML) documents (.docx, .xlsx, .pptx).

## Features

- **Word Processing (.docx)**
  - Create and edit documents with paragraphs and text runs.
  - Text styling (bold, italic, underline, color, font size/family).
  - Insert images and hyperlinks.
  - Add comments to text ranges.
  - **Convert Markdown to Docx**.
  - **Parse existing Docx files** to extract text and structure.

- **Spreadsheets (.xlsx)**
  - Create multi-sheet workbooks.
  - Add rows and cells with typed values (text, numbers, boolean, date).
  - Support for **Formulas** and shared strings.
  - Manage hyperlinks and internal navigation.
  - **Convert JSON, CSV, and SQLite data to Excel**.
  - **Parse existing Xlsx files** to read data.

- **Presentations (.pptx)**
  - Create presentations with custom slides.
  - Support for text, images, and shapes.
  - Edit slide background (solid colors, images).
  - Add **Speaker Notes**.
  - **Convert Markdown to PowerPoint slides**.
  - **Type-safe generation from Templates** (bind data to existing slide layouts).

## Getting Started

Add `open_xml` to your `pubspec.yaml`:

```yaml
dependencies:
  open_xml: ^0.1.0
```

## Usage

### Word (.docx)

Create a simple document with styled text, images, and hyperlinks.

```dart
import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final doc = await WordDocument.create(fs);

  // Add a paragraph with styled text
  doc.addParagraph(
    Paragraph()
      ..addRun(Run(text: 'Hello, '))
      ..addRun(Run(text: 'World!', bold: true, color: 'FF0000', fontSize: 24)),
  );

  // Add a hyperlink
  doc.addParagraph(
    Paragraph()
      ..addHyperlink(
        'Visit Pub.dev',
        'https://pub.dev',
        // Optional styling
        // bold: true,
      ),
  );

  await doc.save(fs.file('example.docx'));
}
```

### Spreadsheet (.xlsx)

Create a spreadsheet, add data, and use formulas.

```dart
import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final workbook = await Workbook.create(fs);
  final sheet = workbook.addSheet('Sales Report');

  // Header Row
  sheet.addRow()
    ..addCell('Product')
    ..addCell('Price')
    ..addCell('Quantity')
    ..addCell('Total');

  // Data Rows
  sheet.addRow()
    ..addCell('Apples')
    ..addCell(1.20)
    ..addCell(50)
    ..addCell('', formula: 'B2*C2'); // Formula

  sheet.addRow()
    ..addCell('Oranges')
    ..addCell(0.80)
    ..addCell(100)
    ..addCell('', formula: 'B3*C3');

  await workbook.save(fs.file('sales.xlsx'));
}
```

### PowerPoint (.pptx)

Create a presentation with slides, text, and notes.

```dart
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final pres = await Presentation.create(fs);

  // Title Slide
  final slide = pres.addSlide();
  slide.addTitle('OpenXML for Dart');
  slide.addText('Generate PowerPoint files programmatically.');
  slide.addNote('Do not forget to mention the robust API.');

  await pres.save(fs.file('presentation.pptx'));
}
```

## Advanced Features

### Type-Safe Slides from Templates

You can use an existing `.pptx` file as a template and generate type-safe Dart bindings for it. This allows you to fill in placeholders defined in your master slides (e.g., Title, Body, Date) without guessing generic indices.

**1. Create a binding generator script:**

```bash
dart run open_xml:pptx_type_generator --input templates/company_theme.pptx --output lib/theme_bindings.dart --class-name ThemePresentation
```

**2. Use the generated bindings:**

```dart
import 'package:open_xml/open_xml.dart';
import 'lib/theme_bindings.dart';

void main() async {
  final pres = await Presentation.open(fs.file('templates/company_theme.pptx'));
  final myPres = ThemePresentation(pres);

  // Typesafe method generated from the "Title and Content" layout in the template
  myPres.addTitleAndContentSlide(
    title: 'Quarterly Review'.toTextRun(),
    content: 'Revenue is up 20%'.toTextRun(),
  );

  await pres.save(fs.file('review.pptx'));
}
```

### Markdown conversion

The package supports converting Markdown content directly into office documents.

*   **Markdown to Docx**: Converts headers, lists, code blocks, and formatting to Word elements.
*   **Markdown to PPTX**: Splits content by headings into separate slides.

### Data Converters

Utility methods are available to integrate with common data sources:

*   `csv_to_xlsx_example.dart`: Import CSV data into worksheets.
*   `xlsx_json_example.dart`: Convert JSON lists to rows.
*   `xlsx_sqlite_example.dart`: Query a SQLite database and stream results directly to an Excel sheet.

## Examples

Check the `examples/` directory for detailed recipes:

*   [**Word Examples**](examples/docx): Images, Comments, Markdown import/export.
*   [**Excel Examples**](examples/xlsx): SQLite export, JSON export, Internal links.
*   [**PowerPoint Examples**](examples/pptx): Images, Backgrounds, Markdown import, Media parsing.

To run examples:

```bash
cd examples
./run_all.sh
```
