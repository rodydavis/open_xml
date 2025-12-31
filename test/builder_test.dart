import 'package:test/test.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/wml/wml_builder.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';

void main() {
  group('Builder Pattern', () {
    test('Can build a Word Paragraph with Run and Text', () {
      final builder = XmlBuilder();
      builder.processing('xml', 'version="1.0"');
      builder.namespace(
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        'w',
      );

      // <root>
      builder.element(
        'root',
        nest: () {
          builder.w_ct_p(
            tagName: 'p',
            children: (b) {
              // <w:pPr>
              b.w_ct_ppr(
                tagName: 'pPr',
                children: (b) {
                  // <w:jc w:val="center"/>
                  b.w_ct_jc(tagName: 'jc', val: W_ST_Jc.center);
                },
              );

              // <w:r>
              b.w_ct_r(
                tagName: 'r',
                children: (b) {
                  // <w:t>Hello World</w:t>
                  b.w_ct_text(
                    tagName: 't',
                    children: (b) => b.text('Hello World'),
                  );
                },
              );
            },
          );
        },
      );

      final xml = builder.buildDocument();
      final expected =
          '<?xml version="1.0"?><root><w:p><w:pPr><w:jc w:val="center"/></w:pPr><w:r><w:t>Hello World</w:t></w:r></w:p></root>';

      expect(xml.toXmlString(), equals(expected));
    });
  });
}
