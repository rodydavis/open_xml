import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

Future<void> generateCoreProps(
  OoxmlPackage package, {
  String title = 'Presentation',
  String creator = 'OpenXML',
  String? lastModifiedBy,
  int revision = 1,
  DateTime? created,
  DateTime? modified,
}) async {
  final now = DateTime.now().toUtc();
  final createdStr =
      '${(created ?? now).toUtc().toIso8601String().split('.').first}Z';
  final modifiedStr =
      '${(modified ?? created ?? now).toUtc().toIso8601String().split('.').first}Z';

  final core = await package.createPart('docProps/core.xml');
  final builder = XmlBuilder();
  builder.processing('xml', 'version="1.0" encoding="UTF-8" standalone="yes"');
  builder.element(
    'cp:coreProperties',
    namespaces: {
      'http://schemas.openxmlformats.org/package/2006/metadata/core-properties':
          'cp',
      'http://purl.org/dc/elements/1.1/': 'dc',
      'http://purl.org/dc/terms/': 'dcterms',
      'http://purl.org/dc/dcmitype/': 'dcmitype',
      'http://www.w3.org/2001/XMLSchema-instance': 'xsi',
    },
    nest: () {
      builder.element('dc:title', nest: title);
      builder.element('dc:creator', nest: creator);
      builder.element('cp:lastModifiedBy', nest: lastModifiedBy ?? creator);
      builder.element('cp:revision', nest: revision.toString());
      builder.element(
        'dcterms:created',
        attributes: {'xsi:type': 'dcterms:W3CDTF'},
        nest: createdStr,
      );
      builder.element(
        'dcterms:modified',
        attributes: {'xsi:type': 'dcterms:W3CDTF'},
        nest: modifiedStr,
      );
    },
  );
  core.write(builder.buildDocument().toXmlString());
  await core.close();
}
