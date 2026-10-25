import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

Future<void> generateAppProps(
  OoxmlPackage package, {
  int slides = 0,
  int notes = 0,
  String presentationFormat = 'On-screen Show (4:3)',
}) async {
  final app = await package.createPart('docProps/app.xml');
  final builder = XmlBuilder();
  builder.processing('xml', 'version="1.0" encoding="UTF-8" standalone="yes"');
  builder.element(
    'Properties',
    namespaces: {
      'http://schemas.openxmlformats.org/officeDocument/2006/extended-properties':
          '',
      'http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes':
          'vt',
    },
    nest: () {
      builder.element('TotalTime', nest: '0');
      builder.element('Words', nest: '0');
      builder.element('Application', nest: 'Microsoft Office PowerPoint');
      builder.element('PresentationFormat', nest: presentationFormat);
      builder.element('Paragraphs', nest: '0');
      builder.element('Slides', nest: slides.toString());
      builder.element('Notes', nest: notes.toString());
      builder.element('HiddenSlides', nest: '0');
      builder.element('MMClips', nest: '0');
      builder.element('ScaleCrop', nest: 'false');
      builder.element('LinksUpToDate', nest: 'false');
      builder.element('SharedDoc', nest: 'false');
      builder.element('HyperlinksChanged', nest: 'false');
      builder.element('AppVersion', nest: '16.0000');
    },
  );
  app.write(builder.buildDocument().toXmlString());
  await app.close();
}
