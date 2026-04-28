import 'package:xml/xml.dart';
import '../../package/package.dart';

Future<void> generateNotesMasterRelationships(OoxmlPackage package) async {
  final rels = await package.createPart(
    'ppt/notesMasters/_rels/notesMaster1.xml.rels',
  );
  final builder = XmlBuilder();
  builder.processing(
    'xml',
    'version="1.0" encoding="UTF-8" ',
  );
  builder.element(
    'Relationships',
    namespaces: {
      'http://schemas.openxmlformats.org/package/2006/relationships': '',
    },
    nest: () {
      builder.element(
        'Relationship',
        nest: () {
          builder.attribute('Id', 'rId1');
          builder.attribute(
            'Type',
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme',
          );
          builder.attribute('Target', '../theme/theme1.xml');
        },
      );
    },
  );
  rels.write(builder.buildDocument().toXmlString());
  await rels.close();
}
