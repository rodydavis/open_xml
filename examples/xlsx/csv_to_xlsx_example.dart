import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  // Sample CSV data
  final csvData = '''
Name,Age,Role,Department
John Doe,30,Developer,Engineering
Jane Smith,28,Designer,Design
Bob Wilson,35,Manager,Product
Alice Brown,32,DevOps,Engineering
''';

  const fs = LocalFileSystem();
  final outputPath = 'out/csv_export.xlsx';
  final outputFile = fs.file(outputPath);

  // Ensure output directory exists
  if (!outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }

  print('Converting CSV data to XLSX...');
  final workbook = await Workbook.create(fs);
  final sheet = workbook.addSheet('CSV Import');

  // Simple CSV parser
  final lines = csvData.trim().split('\n');
  for (final line in lines) {
    final row = sheet.addRow();
    // Assuming simple CSV (no quoted commas) for this example
    final values = line.split(',');

    for (final value in values) {
      // Try to parse numbers
      final number = double.tryParse(value.trim());
      if (number != null && !value.contains(RegExp(r'[a-zA-Z]'))) {
        row.addCell(number);
      } else {
        row.addCell(value.trim());
      }
    }
  }

  await workbook.save(outputFile);
  print('Created $outputPath');
}
