import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputPath = 'out/csv_source.xlsx';
  final outputFile = fs.file(outputPath);

  // Ensure output directory exists
  if (!outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }

  // 1. Generate a sample XLSX file
  print('Generating $outputPath...');
  final workbook = await Workbook.create(fs);
  final sheet = workbook.addSheet('ExportData');

  // Header
  final header = sheet.addRow();
  header.addCell('Product');
  header.addCell('Price');
  header.addCell('Quantity');

  // Data
  var r1 = sheet.addRow();
  r1.addCell('Apple');
  r1.addCell(1.20);
  r1.addCell(100);

  var r2 = sheet.addRow();
  r2.addCell('Banana');
  r2.addCell(0.80);
  r2.addCell(150);

  var r3 = sheet.addRow();
  r3.addCell('Cherry, Red'); // Contains comma to test quoting
  r3.addCell(5.00);
  r3.addCell(50);

  await workbook.save(outputFile);
  print('Generated.');

  // 2. Parse XLSX to CSV
  print('\nConverting XLSX to CSV...');

  if (!outputFile.existsSync()) {
    print('Error: File was not created.');
    return;
  }

  final parsedWorkbook = await Workbook.open(outputFile);
  final parsedSheet = parsedWorkbook.worksheets.first;

  final buffer = StringBuffer();

  for (final row in parsedSheet.rows) {
    final line = row.cells
        .map((cell) {
          var val = cell.value.toString();
          // Basic CSV escaping: if contains comma or quote, wrap in quotes and escape quotes
          if (val.contains(',') || val.contains('"') || val.contains('\n')) {
            val = val.replaceAll('"', '""');
            val = '"$val"';
          }
          return val;
        })
        .join(',');
    buffer.writeln(line);
  }

  print('--- CSV Output ---');
  print(buffer.toString());
  print('------------------');
}
