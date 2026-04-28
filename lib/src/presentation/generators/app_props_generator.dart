import 'package:open_xml/src/package/package.dart';

Future<void> generateAppProps(OoxmlPackage package) async {
  final app = await package.createPart('docProps/app.xml');
  // Minimal app.xml as requested by user to fix QuickLook
  const xml =
      '<?xml version="1.0" encoding="UTF-8"?><Properties xmlns="http://schemas.openxmlformats.org/officeDocument/2006/extended-properties" xmlns:vt="http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes"/>';
  app.add(xml.codeUnits);
  await app.close();
}
