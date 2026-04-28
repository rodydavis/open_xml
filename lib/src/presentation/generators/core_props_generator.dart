import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

Future<void> generateCoreProps(OoxmlPackage package) async {
  final core = await package.createPart('docProps/core.xml');
  final builder = XmlBuilder();
  builder.processing(
    'xml',
    'version="1.0" encoding="UTF-8"',
  );
  builder.element(
    'cp:coreProperties',
    namespaces: {
      'http://schemas.openxmlformats.org/package/2006/metadata/core-properties':
          'cp',
      'http://purl.org/dc/elements/1.1/': 'dc',
      'http://purl.org/dc/terms/': 'dcterms',
      'http://www.w3.org/2001/XMLSchema-instance': 'xsi',
    },
  );
  core.write(builder.buildDocument().toXmlString());
  await core.close();
}
