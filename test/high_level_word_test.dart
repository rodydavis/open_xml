import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';
import 'package:test/test.dart';

void main() {
  group('WordDocument High-Level API', () {
    test('create and save word document', () async {
      final fs = MemoryFileSystem();
      final doc = await WordDocument.create(fs);
      doc.addParagraph(Paragraph()..addText('Hello Test'));

      final file = fs.file('test_output.docx');
      if (file.existsSync()) file.deleteSync();

      await doc.save(file);

      expect(file.existsSync(), isTrue);
      expect(file.lengthSync(), greaterThan(0));

      // Cleanup
      if (file.existsSync()) file.deleteSync();
    });

    test('document content structure', () async {
      final fs = MemoryFileSystem();
      final doc = await WordDocument.create(fs);
      final p = Paragraph(styleId: 'Heading1');
      p.addRun(Run(text: 'Title', bold: true, fontSize: 14));
      doc.addParagraph(p);

      // Ideally we would inspect the internal structure here,
      // but for now we just check if it builds without error.
    });
  });
}
