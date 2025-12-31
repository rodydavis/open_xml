import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputDir = fs.directory('out');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  final wb = await Workbook.create(fs);
  final sheet = wb.addSheet('Links');

  final row1 = sheet.addRow();
  row1.addCell('Google');
  sheet.addHyperlink('A1', url: 'https://google.com');

  sheet.addRow();
  sheet.addRow().addCell('Link via generic addCell');
  sheet.addHyperlink('A3', url: 'https://example.com');

  final outputPath = 'out/xlsx_hyperlinks.xlsx';
  await wb.save(fs.file(outputPath));
  print('Created $outputPath');
}
