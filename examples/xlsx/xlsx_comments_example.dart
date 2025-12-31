import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  final fs = LocalFileSystem();
  final outputDir = fs.directory('out');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  final wb = await Workbook.create(fs);

  final sheet = wb.addSheet('Comments Sheet');
  sheet.addRow().addCell('Cell A1 with Comment');

  // Add comment to Row 1, Col 1 (A1)
  sheet.addComment(
    1,
    1,
    'This cell has a legacy comment.',
    author: 'Rody Davis',
    initials: 'RD',
  );

  sheet.addRow(); // Row 2
  final row3 = sheet.addRow(); // Row 3
  row3.addCell('Cell A3');
  row3.addCell('Cell B3 with Comment');
  // Add comment to Row 3, Col 2 (B3)
  sheet.addComment(3, 2, 'Another comment here.', author: 'Rody Davis');

  final outputFile = fs.file('out/xlsx_comments_example.xlsx');
  await outputFile.parent.create(recursive: true);
  await wb.save(outputFile);
  print('Saved to ${outputFile.path}');
}
