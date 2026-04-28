import 'package:xml/xml.dart';
import '../../package/package.dart';

Future<void> generateNotesSlideRelationships(OoxmlPackage package, int index) async {
  final rels = await package.createPart(
    'ppt/notesSlides/_rels/notesSlide$index.xml.rels',
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
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesMaster',
          );
          builder.attribute('Target', '../notesMasters/notesMaster1.xml');
        },
      );
      builder.element(
        'Relationship',
        nest: () {
          builder.attribute('Id', 'rId2');
          builder.attribute(
            'Type',
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide',
          );
          builder.attribute('Target', '../slides/slide$index.xml');
        },
      );
    },
  );
  rels.write(builder.buildDocument().toXmlString());
  await rels.close();
}
