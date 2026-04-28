import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

Future<void> generatePresProps(OoxmlPackage package) async {
  final presProps = await package.createPart('ppt/presProps.xml');
  final builder = XmlBuilder();
  builder.processing('xml', 'version="1.0" encoding="UTF-8" ');
  builder.element(
    'p:presentationPr',
    namespaces: {
      'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
      'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
      'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
          'r',
    },
    nest: () {
      // Default empty props
    },
  );
  presProps.write(builder.buildDocument().toXmlString());
  await presProps.close();
}
