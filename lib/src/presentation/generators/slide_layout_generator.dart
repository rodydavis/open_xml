import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

Future<void> generateSlideLayout(OoxmlPackage package) async {
  final layout = await package.createPart('ppt/slideLayouts/slideLayout1.xml');
  final lBuilder = XmlBuilder();
  lBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
  lBuilder.element(
    'p:sldLayout',
    namespaces: {
      'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
      'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
      'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
          'r',
    },
    nest: () {
      lBuilder.element(
        'p:cSld',
        nest: () {
          lBuilder.element(
            'p:spTree',
            nest: () {
              lBuilder.element(
                'p:nvGrpSpPr',
                nest: () {
                  lBuilder.element(
                    'p:cNvPr',
                    nest: () {
                      lBuilder.attribute('id', '1');
                      lBuilder.attribute('name', '');
                    },
                  );
                  lBuilder.element('p:cNvGrpSpPr');
                  lBuilder.element('p:nvPr');
                },
              );
              lBuilder.element('p:grpSpPr');
            },
          );
        },
      );
    },
  );
  layout.write(lBuilder.buildDocument().toXmlString());
  await layout.close();

  // Layout Rels
  final lRels = await package.createPart(
    'ppt/slideLayouts/_rels/slideLayout1.xml.rels',
  );
  final lRelsBuilder = XmlBuilder();
  lRelsBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
  lRelsBuilder.element(
    'Relationships',
    namespaces: {
      'http://schemas.openxmlformats.org/package/2006/relationships': '',
    },
    nest: () {
      lRelsBuilder.element(
        'Relationship',
        nest: () {
          lRelsBuilder.attribute('Id', 'rId1');
          lRelsBuilder.attribute(
            'Type',
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster',
          );
          lRelsBuilder.attribute('Target', '../slideMasters/slideMaster1.xml');
        },
      );
    },
  );
  lRels.write(lRelsBuilder.buildDocument().toXmlString());
  await lRels.close();
}
