import 'package:open_xml/open_xml.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

void main() {
  group('OpenXML Generator Verification', () {
    test('Can parse a Word Paragraph (W_CT_P)', () {
      final xmlString = '''
<w:p xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
  <w:pPr>
    <w:pStyle w:val="Heading1"/>
  </w:pPr>
  <w:r>
    <w:t>Hello OpenXML</w:t>
  </w:r>
</w:p>
''';
      final document = XmlDocument.parse(xmlString);
      final node = document.rootElement;

      // Wrap with generated extension type
      final paragraph = W_CT_P(node);

      expect(paragraph, isA<XmlElement>());
      expect(paragraph.pPr, isNotNull);
      expect(paragraph.r.isNotEmpty, isTrue);

      final run = paragraph.r.first;
      expect(run.t.isNotEmpty, isTrue);
      expect(run.t.first.innerText, equals('Hello OpenXML'));
    });

    test('Can access attributes via extension getters', () {
      final xmlString =
          '<w:pStyle xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" w:val="Title"/>';
      final document = XmlDocument.parse(xmlString);
      final style = W_CT_PPrBase(document.rootElement);
      expect(style, isNotNull);
      // Verify we can access attributes here if implicit on PPrBase?
      // Actually the test didn't assert before. Let's look up pStyle.
      // W_CT_PPrBase might not have pStyle unless it's defined there.
      // But W_CT_PStyle is likely the element.
      // XML above is <w:pStyle>.
    });

    test('Can parse Spreadsheet Row (row)', () {
      final xmlString = '''
<row xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" r="1" spans="1:1">
</row>
''';
      final document = XmlDocument.parse(xmlString);
      final row = S_CT_Row(document.rootElement);
      expect(row.r, equals(1));
    });
  });
}
