import 'package:file/memory.dart';
import 'package:test/test.dart';
import 'package:open_xml/src/package/streaming_builder.dart';
import 'package:open_xml/src/package/package.dart';
import 'package:open_xml/src/wml/wml_builder.g.dart';
import 'package:archive/archive_io.dart';

void main() {
  group('Streaming Exporter', () {
    test('StreamingXmlBuilder works with generated builders', () {
      final buffer = StringBuffer();
      final builder = StreamingXmlBuilder(buffer);

      // <w:p>
      builder.w_ct_p(
        tagName: 'w:p',
        children: (b) {
          // <w:r>
          b.w_ct_r(
            tagName: 'w:r',
            children: (b) {
              b.text('Hello Stream');
            },
          );
        },
      );

      final xml = buffer.toString();
      // Expect: <w:p><w:r>Hello Stream</w:r></w:p>
      // Attributes? StreamingXmlBuilder output might differ slightly in spacing?
      // My implementation adds space before attributes.
      // But here no attributes.

      expect(xml, contains('<w:p>'));
      expect(xml, contains('<w:r>Hello Stream</w:r>'));
      expect(xml, endsWith('</w:p>'));
    });

    test('OoxmlPackage creates a valid zip', () async {
      final fs = MemoryFileSystem();
      final package = await OoxmlPackage.create(fs);
      final partPath = 'word/document.xml';

      final sink = await package.createPart(partPath);
      final builder = StreamingXmlBuilder(sink);

      builder.declaration();
      builder.element(
        'w:document',
        nest: () {
          builder.element(
            'w:body',
            nest: () {
              // Generate 100 paragraphs to test logic (not super large but enough)
              for (var i = 0; i < 100; i++) {
                builder.w_ct_p(
                  tagName: 'w:p',
                  children: (b) {
                    b.w_ct_r(
                      tagName: 'w:r',
                      children: (b) {
                        b.text('Paragraph $i');
                      },
                    );
                  },
                );
              }
            },
          );
        },
      );

      await sink.flush();
      await sink.close();

      final outFile = fs.file('test_output.docx'); // In CWD?
      // Use temp file for output test to avoid clutter
      final tempOut = await fs.systemTempDirectory.createTemp('out_');
      final outPath = '${tempOut.path}/test.docx';
      final file = fs.file(outPath);

      await package.save(file);

      expect(await file.exists(), isTrue);

      // Verify zip content
      final bytes = await file.readAsBytes();
      final archive = ZipDecoder().decodeBytes(bytes);

      final part = archive.findFile('word/document.xml');
      expect(part, isNotNull);

      final content = String.fromCharCodes(part!.content as List<int>);
      expect(content, contains('Paragraph 0'));
      expect(content, contains('Paragraph 99'));

      // Cleanup
      await tempOut.delete(recursive: true);
      if (await outFile.exists()) await outFile.delete();
    });
  });
}
