import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

Future<void> generateViewProps(OoxmlPackage package) async {
  final viewProps = await package.createPart('ppt/viewProps.xml');
  final builder = XmlBuilder();
  builder.processing('xml', 'version="1.0" encoding="UTF-8"');
  builder.element(
    'p:viewPr',
    namespaces: {
      'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
      'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
          'r',
      'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
      'http://schemas.openxmlformats.org/officeDocument/2006/math': 'm',
      'http://schemas.microsoft.com/office/drawing/2010/main': 'a14',
    },
    nest: () {
      builder.attribute('showComments', '1');
    },
  );
  viewProps.write(builder.buildDocument().toXmlString());
  await viewProps.close();
}
