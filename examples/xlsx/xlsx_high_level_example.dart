import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final workbook = await Workbook.create(fs);

  final sheet1 = workbook.addSheet('Sales Data');

  // Header
  final header = sheet1.addRow();
  header.addCell('Item');
  header.addCell('Cost');
  header.addCell('Sold');
  header.addCell('Total');

  // Data
  final row1 = sheet1.addRow();
  row1.addCell('Widget A');
  row1.addCell(10.50);
  row1.addCell(5);
  row1.addCell(52.50);

  final row2 = sheet1.addRow();
  row2.addCell('Widget B');
  row2.addCell(20.00);
  row2.addCell(3);
  row2.addCell(60.00);

  final row3 = sheet1.addRow();
  row3.addCell('Total');
  row3.addCell('', formula: 'SUM(B2:B3)');
  row3.addCell('', formula: 'SUM(C2:C3)');
  row3.addCell('', formula: 'SUM(D2:D3)');

  final sheet2 = workbook.addSheet('Notes');
  sheet2.addRow().addCell('Some notes on a second sheet.');

  await workbook.save(fs.file('out/high_level_example.xlsx'));
  print('Created high_level_example.xlsx');
}
