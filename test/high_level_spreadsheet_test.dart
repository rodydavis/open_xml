import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';
import 'package:test/test.dart';

void main() {
  group('Workbook High-Level API', () {
    test('create and save workbook', () async {
      final fs = MemoryFileSystem();
      final workbook = await Workbook.create(fs);
      workbook.addSheet('Sheet1').addRow().addCell('Test Cell');

      final file = fs.file('test_output.xlsx');
      if (file.existsSync()) file.deleteSync();

      await workbook.save(file);

      expect(file.existsSync(), isTrue);
      expect(file.lengthSync(), greaterThan(0));

      // Cleanup
      if (file.existsSync()) file.deleteSync();
    });

    test('open and parse workbook', () async {
      final fs = MemoryFileSystem();
      final workbook = await Workbook.create(fs);
      workbook.addSheet('Sheet1').addRow().addCell('Test Cell');

      final file = fs.file('test_parser.xlsx');
      await workbook.save(file);

      final parsedWorkbook = await Workbook.open(file);

      expect(parsedWorkbook.worksheets.length, 1);
      final sheet = parsedWorkbook.worksheets.first;
      expect(sheet.name, 'Sheet1');
      expect(sheet.rows.length, 1);
      expect(
        sheet.rows.first.cells.first.value,
        'Test Cell',
      ); // Corrected expectation for cell value

      expect(file.existsSync(), isTrue);
      // Cleanup
      if (file.existsSync()) file.deleteSync();
    });
    test('add cells, formulas, and hyperlinks', () async {
      final fs = MemoryFileSystem();
      final workbook = await Workbook.create(fs);
      final sheet = workbook.addSheet('Sheet1');
      sheet.addRow().addCell('Value', formula: 'SUM(1,2)');
      sheet.addHyperlink('A1', url: 'https://google.com'); // External
      sheet.addHyperlink('A2', location: 'Sheet2!A1'); // Internal

      final file = fs.file('test_details.xlsx');
      await workbook.save(file);

      // We can't easily parse back formulas/hyperlinks with current parser fully
      // without mocking low-level XML, but we verify it saves without error
      // and checking basic state before save.
      expect(sheet.rows.first.cells.first.formula, 'SUM(1,2)');
      expect(sheet.hyperlinks.length, 2);
      expect(sheet.hyperlinks.first.url, 'https://google.com');
      expect(sheet.hyperlinks.last.location, 'Sheet2!A1');
    });
  });
}
