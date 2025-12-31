import 'dart:convert';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputPath = 'out/json_source.xlsx';
  final outputFile = fs.file(outputPath);

  // Ensure output directory exists (if running standalone)
  if (!outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }

  // 1. Generate a sample XLSX file
  print('Generating $outputPath...');
  final workbook = await Workbook.create(fs);
  final sheet = workbook.addSheet('Users');

  // Headers
  final headerRow = sheet.addRow();
  headerRow.addCell('id');
  headerRow.addCell('name');
  headerRow.addCell('email');
  headerRow.addCell('is_active');
  headerRow.addCell('score');

  // Data
  final row1 = sheet.addRow();
  row1.addCell(1);
  row1.addCell('John Doe');
  row1.addCell('john@example.com');
  row1.addCell(
    'true',
  ); // Storing boolean as string for now as typed bool support might vary
  row1.addCell(95.5);

  final row2 = sheet.addRow();
  row2.addCell(2);
  row2.addCell('Jane Smith');
  row2.addCell('jane@example.com');
  row2.addCell('false');
  row2.addCell(88.0);

  await workbook.save(outputFile);
  print('Generated.');

  // 2. Parse XLSX to JSON
  print('\nConverting XLSX to JSON...');

  if (!outputFile.existsSync()) {
    print('Error: File was not created.');
    return;
  }

  final parsedWorkbook = await Workbook.open(outputFile);
  final parsedSheet = parsedWorkbook.worksheets.first;

  final jsonList = <Map<String, dynamic>>[];

  // Assume first row is headers
  final headers = <String>[];
  if (parsedSheet.rows.isNotEmpty) {
    for (final cell in parsedSheet.rows.first.cells) {
      headers.add(cell.value.toString());
    }
  }

  // Iterate subsequent rows
  for (var i = 1; i < parsedSheet.rows.length; i++) {
    final row = parsedSheet.rows[i];
    final rowMap = <String, dynamic>{};

    for (var j = 0; j < row.cells.length && j < headers.length; j++) {
      final key = headers[j];
      final value = row.cells[j].value;

      // Attempt some basic type conversion if needed,
      // though the parser tries to give numbers as double/int/String
      rowMap[key] = value;
    }
    jsonList.add(rowMap);
  }

  final jsonString = JsonEncoder.withIndent('  ').convert(jsonList);
  print('--- JSON Output ---');
  print(jsonString);
  print('-------------------');
}
