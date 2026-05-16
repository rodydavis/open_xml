---
title: Spreadsheets (.xlsx)
description: Learn how to generate, format, parse, and use formulas in Excel spreadsheets with open_xml.
---

# Spreadsheets (.xlsx)

The `open_xml` package provides robust support for generating, editing, and parsing Excel Workbooks.

---

## Creating a Workbook

To create a new Workbook and add a Sheet:

```dart
import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final workbook = await Workbook.create(fs);
  
  // Add a new worksheet
  final sheet = workbook.addSheet('Sales Report');
  
  await workbook.save(fs.file('sales.xlsx'));
}
```

---

## Adding Data (Rows and Cells)

You can add rows to a sheet and insert cells of various types.

```dart
  // Header Row
  sheet.addRow()
    ..addCell('Product')
    ..addCell('Price')
    ..addCell('Quantity')
    ..addCell('Total');

  // Data Row (String, Double, Int)
  sheet.addRow()
    ..addCell('Apples')
    ..addCell(1.20)
    ..addCell(50)
    ..addCell('', formula: 'B2*C2'); 
```

### Formulas
The `formula` parameter on `addCell` computes values dynamically within Excel when the sheet is opened.

---

## Converting Data Formats to Xlsx

The package provides utilities commonly found in `examples/xlsx/` to convert standard data shapes to Excel sheets.

### 1. JSON to Excel
If you have a JSON list:
```dart
final List<Map<String, dynamic>> jsonData = [
  {"id": 1, "name": "Alice"},
  {"id": 2, "name": "Bob"}
];

final sheet = workbook.addSheet('Users');

// Add Header
sheet.addRow()
  ..addCell('ID')
  ..addCell('Name');

// Add Rows
for (final row in jsonData) {
  sheet.addRow()
    ..addCell(row['id'])
    ..addCell(row['name']);
}
```

### 2. CSV / SQLite to Excel
Similar looping mechanisms can be used to convert CSV arrays or SQLite streams directly into Excel cells dynamically. 

---

## Internal Links and Hyperlinks

You can add internal links (linking to other cells or sheets within the same workbook) and external hyperlinks.

```dart
// Internal Link to Cell A1 on another sheet
sheet.addRow().addCell(
  'Go to Sheet 2', 
  hyperlink: '#\'Sheet 2\'!A1'
);

// External Web Hyperlink
sheet.addRow().addCell(
  'Visit Website', 
  hyperlink: 'https://example.com'
);
```

---

## Parsing Xlsx Files

You can open existing Excel workbooks and read row/cell data.

```dart
final workbook = await Workbook.open(fs.file('data.xlsx'));

for (final sheet in workbook.sheets) {
  for (final row in sheet.rows) {
    for (final cell in row.cells) {
      print(cell.value);
    }
  }
}
```

