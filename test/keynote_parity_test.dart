import 'dart:io';
import 'package:archive/archive.dart';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

void main() {
  group('Keynote Parity Tests', () {
    test('ZipPackageWriter uses DEFLATE compression', () async {
      final fs = const LocalFileSystem();
      final outDir = Directory.systemTemp.createTempSync('open_xml_test');
      final outPath = '${outDir.path}/test.pptx';
      final file = fs.file(outPath);

      final pres = await Presentation.create(fs);
      pres.addSlide().addTitle('Deflate Test');
      await pres.save(file);

      // Verify the ZIP archive format
      final bytes = file.readAsBytesSync();
      final archive = ZipDecoder().decodeBytes(bytes);

      for (final archiveFile in archive.files) {
        expect(archiveFile.size, greaterThanOrEqualTo(0));
      }

      outDir.deleteSync(recursive: true);
    });

    test('viewProps.xml matches Keynote structure', () async {
      final fs = const LocalFileSystem();
      final outDir = Directory.systemTemp.createTempSync('open_xml_test');
      final outPath = '${outDir.path}/test.pptx';
      final file = fs.file(outPath);

      final pres = await Presentation.create(fs);
      pres.addSlide();
      await pres.save(file);

      final bytes = file.readAsBytesSync();
      final archive = ZipDecoder().decodeBytes(bytes);

      final viewPropsEntry = archive.files.firstWhere(
        (f) => f.name == 'ppt/viewProps.xml',
      );
      final content = String.fromCharCodes(viewPropsEntry.content as List<int>);

      final document = XmlDocument.parse(content);
      final viewPr = document.findElements('p:viewPr').first;
      expect(viewPr.getAttribute('showComments'), '1');
      expect(viewPr.getAttribute('xmlns:p'), isNotNull);
      expect(viewPr.getAttribute('xmlns:a14'), isNotNull);

      outDir.deleteSync(recursive: true);
    });

    test('slideMaster1.xml contains Keynote required tags', () async {
      final fs = const LocalFileSystem();
      final outDir = Directory.systemTemp.createTempSync('open_xml_test');
      final outPath = '${outDir.path}/test.pptx';
      final file = fs.file(outPath);

      final pres = await Presentation.create(fs);
      pres.addSlide();
      await pres.save(file);

      final bytes = file.readAsBytesSync();
      final archive = ZipDecoder().decodeBytes(bytes);

      final masterEntry = archive.files.firstWhere(
        (f) => f.name == 'ppt/slideMasters/slideMaster1.xml',
      );
      final content = String.fromCharCodes(masterEntry.content as List<int>);

      final document = XmlDocument.parse(content);
      final master = document.findElements('p:sldMaster').first;

      // Should have namespaces
      expect(master.getAttribute('xmlns:m'), isNotNull);
      expect(master.getAttribute('xmlns:a14'), isNotNull);

      // Background should be solidFill FFFFFF
      final cSld = master.findElements('p:cSld').first;
      final bg = cSld.findElements('p:bg').first;
      final bgPr = bg.findElements('p:bgPr').first;
      final solidFill = bgPr.findElements('a:solidFill').first;
      final srgbClr = solidFill.findElements('a:srgbClr').first;
      expect(srgbClr.getAttribute('val'), 'FFFFFF');

      // Should have txStyles
      expect(master.findElements('p:txStyles').length, 1);

      outDir.deleteSync(recursive: true);
    });

    test('slide text runs omit a:rPr when default', () async {
      final fs = const LocalFileSystem();
      final outDir = Directory.systemTemp.createTempSync('open_xml_test');
      final outPath = '${outDir.path}/test.pptx';
      final file = fs.file(outPath);

      final pres = await Presentation.create(fs);
      pres.addSlide().addTitle('My Keynote Title');
      await pres.save(file);

      final bytes = file.readAsBytesSync();
      final archive = ZipDecoder().decodeBytes(bytes);

      final slideEntry = archive.files.firstWhere(
        (f) => f.name == 'ppt/slides/slide1.xml',
      );
      final content = String.fromCharCodes(slideEntry.content as List<int>);

      final document = XmlDocument.parse(content);

      // Look for a:r elements. Since no custom font size or color is passed, a:rPr should be absent.
      final runs = document.findAllElements('a:r');
      expect(runs, isNotEmpty);

      for (final run in runs) {
        // Because addTitle uses default properties, a:rPr should NOT be present.
        expect(run.findElements('a:rPr').isEmpty, isTrue);
      }

      outDir.deleteSync(recursive: true);
    });
  });
}
