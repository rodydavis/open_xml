import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';
import 'package:jaspr_test/jaspr_test.dart';

void main() {
  group('Live Document Exporters & Dynamic Config Tests', () {
    
    group('Word Document Exporters (.docx)', () {
      test('Dynamic Corporate Report generation', () async {
        final fs = MemoryFileSystem();
        final doc = await WordDocument.create(fs);
        
        final testTitle = 'Quarterly Strategy Review';
        final testColor = 'FF0000'; // Crimson Red Accent
        final testBody = 'Custom corporate metrics showed outstanding organic growth under high-performance in-memory compiling.';
        
        doc.addParagraph(
          Paragraph()
            ..addRun(Run(
              text: testTitle,
              bold: true,
              fontSize: 36,
              color: testColor,
            )),
        );
        doc.addParagraph(Paragraph()..addRun(Run(text: ''))); // Spacing
        doc.addParagraph(
          Paragraph()
            ..addRun(Run(text: 'Author: ', bold: true))
            ..addRun(Run(text: 'OpenXML Test Suite'))
        );
        doc.addParagraph(Paragraph()..addRun(Run(text: ''))); // Spacing
        doc.addParagraph(
          Paragraph()
            ..addRun(Run(text: testBody))
        );

        final file = fs.file('test_corporate_report.docx');
        await doc.save(file);

        expect(file.existsSync(), isTrue);
        expect(file.lengthSync(), greaterThan(0));

        // Read back and parse
        final parsedDoc = await WordDocument.open(file);
        
        expect(parsedDoc.text, contains(testTitle));
        expect(parsedDoc.text, contains(testBody));
      });

      test('Developer Welcome Guide generation', () async {
        final fs = MemoryFileSystem();
        final doc = await WordDocument.create(fs);
        
        doc.addParagraph(
          Paragraph()
            ..addRun(Run(
              text: 'Developer Guide: client-side OOXML',
              bold: true,
              fontSize: 28,
              color: '0F766E',
            )),
        );
        doc.addParagraph(Paragraph()..addRun(Run(text: '• Core package: open_xml')));
        doc.addParagraph(Paragraph()..addRun(Run(text: '• IO Abstraction: package:file/memory.dart')));

        final file = fs.file('test_dev_guide.docx');
        await doc.save(file);

        expect(file.existsSync(), isTrue);
        
        final parsedDoc = await WordDocument.open(file);
        
        expect(parsedDoc.text, contains('Developer Guide: client-side OOXML'));
        expect(parsedDoc.text, contains('• Core package: open_xml'));
      });
    });

    group('Excel Spreadsheet Exporters (.xlsx)', () {
      test('Inventory & Expenses with Dynamic Tab Name and SUM formulas', () async {
        final fs = MemoryFileSystem();
        final wb = await Workbook.create(fs);
        
        final testSheetName = 'Financial Audit';
        final testItemHeader = 'Asset ID / Name';
        
        final sheet = wb.addSheet(testSheetName);
        
        sheet.addRow()
          ..addCell(testItemHeader)
          ..addCell('Rate (\$)')
          ..addCell('Quantity')
          ..addCell('Calculated Cost (\$)');

        sheet.addRow()
          ..addCell('Developer Workstation')
          ..addCell(3999.00)
          ..addCell(3)
          ..addCell('', formula: 'B2*C2');

        sheet.addRow()
          ..addCell('Grand Total Sum')
          ..addCell('')
          ..addCell('')
          ..addCell('', formula: 'SUM(D2:D2)');

        final file = fs.file('test_audit.xlsx');
        await wb.save(file);

        expect(file.existsSync(), isTrue);

        // Read back workbook
        final parsedWb = await Workbook.open(file);
        expect(parsedWb.worksheets.length, 1);
        
        final parsedSheet = parsedWb.worksheets.first;
        expect(parsedSheet.name, testSheetName);
        expect(parsedSheet.rows.length, 3);
        
        // Check cell values
        expect(parsedSheet.rows[0].cells[0].value, testItemHeader);
        expect(parsedSheet.rows[1].cells[3].formula, 'B2*C2');
        expect(parsedSheet.rows[2].cells[3].formula, 'SUM(D2:D2)');
      });

      test('Student Performance Tracker with Class AVERAGE formulas', () async {
        final fs = MemoryFileSystem();
        final wb = await Workbook.create(fs);
        
        final sheet = wb.addSheet('Grades Matrix');
        
        sheet.addRow()
          ..addCell('Student Name')
          ..addCell('Homework (40%)')
          ..addCell('Exams (60%)')
          ..addCell('Final Grade');

        sheet.addRow()
          ..addCell('Alice Vance')
          ..addCell(95)
          ..addCell(88)
          ..addCell('', formula: 'B2*0.4+C2*0.6');

        sheet.addRow()
          ..addCell('Class Average')
          ..addCell('', formula: 'AVERAGE(B2:B2)')
          ..addCell('', formula: 'AVERAGE(C2:C2)')
          ..addCell('', formula: 'AVERAGE(D2:D2)');

        final file = fs.file('test_grades.xlsx');
        await wb.save(file);

        expect(file.existsSync(), isTrue);

        final parsedWb = await Workbook.open(file);
        final parsedSheet = parsedWb.worksheets.first;
        
        expect(parsedSheet.name, 'Grades Matrix');
        expect(parsedSheet.rows[1].cells[3].formula, 'B2*0.4+C2*0.6');
        expect(parsedSheet.rows[2].cells[1].formula, 'AVERAGE(B2:B2)');
      });
    });

    group('PowerPoint Presentation Exporters (.pptx)', () {
      test('Slide Aspect Ratio Dimensions Configs (16:9, 4:3, 16:10)', () async {
        final fs = MemoryFileSystem();

        // 1. Widescreen 16:9 Test
        final pres169 = await Presentation.create(fs);
        pres169.setAspectRatio(PresentationAspectRatio.widescreen_16_9);
        pres169.addSlide()
          ..addTitle('16:9 Aspect Title')
          ..addText('16:9 Content Details');

        final file169 = fs.file('test_169.pptx');
        await pres169.save(file169);
        expect(file169.existsSync(), isTrue);

        final parsed169 = await Presentation.open(file169);
        expect(parsed169.slideWidth, 12192000);
        expect(parsed169.slideHeight, 6858000);

        // 2. Standard 4:3 Test
        final pres43 = await Presentation.create(fs);
        pres43.setAspectRatio(PresentationAspectRatio.standard_4_3);
        pres43.addSlide()
          .addTitle('4:3 Title');

        final file43 = fs.file('test_43.pptx');
        await pres43.save(file43);

        final parsed43 = await Presentation.open(file43);
        expect(parsed43.slideWidth, 9144000);
        expect(parsed43.slideHeight, 6858000);

        // 3. Developer Widescreen 16:10 Test
        final pres1610 = await Presentation.create(fs);
        pres1610.setAspectRatio(PresentationAspectRatio.widescreen_16_10);
        pres1610.addSlide()
          .addTitle('16:10 Title');

        final file1610 = fs.file('test_1610.pptx');
        await pres1610.save(file1610);

        final parsed1610 = await Presentation.open(file1610);
        expect(parsed1610.slideWidth, 10972800);
        expect(parsed1610.slideHeight, 6858000);
      });

      test('Dynamic Presentation Content generation', () async {
        final fs = MemoryFileSystem();
        final pres = await Presentation.create(fs);
        pres.setAspectRatio(PresentationAspectRatio.widescreen_16_9);
        
        final testTitle = 'Quantum Native Computing';
        final testSubtitle = 'High-fidelity dynamic presentation decks compiled on-the-fly.';
        
        final slide = pres.addSlide();
        slide.addTitle(testTitle);
        slide.addText(testSubtitle);

        final file = fs.file('test_presentation.pptx');
        await pres.save(file);
        
        expect(file.existsSync(), isTrue);

        final parsedPres = await Presentation.open(file);
        expect(parsedPres.slides.length, 1);
        
        final parsedSlide = parsedPres.slides.first;
        final titleElem = parsedSlide.elements.whereType<SlideTextBox>().firstWhere(
          (e) => e.placeholderType == 'ctrTitle' || e.placeholderType == 'title',
        );
        expect(titleElem.runs.map((r) => r.text).join(''), testTitle);
      });
    });
  });
}
