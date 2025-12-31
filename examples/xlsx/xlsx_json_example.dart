import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  // Sample JSON data
  final data = [
    {'Name': 'Alice', 'Age': 25, 'Role': 'Engineer', 'Salary': 90000},
    {'Name': 'Bob', 'Age': 30, 'Role': 'Manager', 'Salary': 120000},
    {'Name': 'Charlie', 'Age': 28, 'Role': 'Designer', 'Salary': 85000},
    {'Name': 'David', 'Age': 32, 'Role': 'Engineer', 'Salary': 95000},
  ];

  const fs = LocalFileSystem();
  final workbook = await Workbook.create(fs);
  final sheet = workbook.addSheet('Employees');

  if (data.isNotEmpty) {
    // 1. Create Headers
    final headers = data.first.keys.toList();
    final headerRow = sheet.addRow();
    for (final header in headers) {
      headerRow.addCell(header);
    }

    // 2. Add Data Rows
    for (final item in data) {
      final row = sheet.addRow();
      for (final header in headers) {
        row.addCell(item[header]);
      }
    }
  }

  await workbook.save(fs.file('out/json_example.xlsx'));
  print('Created json_example.xlsx');
}
