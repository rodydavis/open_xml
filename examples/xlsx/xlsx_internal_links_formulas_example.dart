import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final wb = await Workbook.create(fs);

  // Sheet 1
  final sheet1 = wb.addSheet('Summary');
  final row1 = sheet1.addRow();
  row1.addCell('Link to Data');
  row1.addCell('Value from Data');

  // Link to Sheet 2 (Data!A1)
  sheet1.addHyperlink('A2', location: "'Data'!A1");
  // Formula referencing Sheet 2 (Data!B2 * 2)
  final row2 = sheet1.addRow();
  row2.addCell('Go to Data');
  row2.addCell(0, formula: "'Data'!B2*2");

  // Sheet 2
  final sheet2 = wb.addSheet('Data');
  final s2r1 = sheet2.addRow();
  s2r1.addCell('Header');
  s2r1.addCell('Value');

  final s2r2 = sheet2.addRow();
  s2r2.addCell('Item 1');
  s2r2.addCell(100);

  // Link back to Sheet 1 (Summary!A1)
  sheet2.addHyperlink('A5', location: "'Summary'!A1");
  // sheet2.addRow(); // Row 3
  // sheet2.addRow(); // Row 4
  // Skip rows visually by adding empty ones or just setting index if supported (not yet)
  sheet2.addRow(); // 3
  sheet2.addRow(); // 4
  final s2r7 = sheet2.addRow(); // Row 5 (Where the link is)
  s2r7.addCell('Back to Summary');

  final outputPath = 'out/xlsx_internal_links_formulas.xlsx';
  await wb.save(fs.file(outputPath));
  print('Created $outputPath');
}
