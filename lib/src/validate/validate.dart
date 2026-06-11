import 'package:file/file.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';

/// Validates an Office document directory using generated XSD validators.
Future<(bool, List<String>)> validateDirectory(
  Directory directory, {
  bool autoRepair = false,
  String author = 'OpenXML',
}) async {
  final messages = <String>[];
  bool isValid = true;

  messages.add('Full XSD validation running for directory...');

  Future<void> validateXmlFile(File file) async {
    try {
      final doc = XmlDocument.parse(await file.readAsString());
      final root = doc.rootElement;
      List<String> errors = [];

      final ns = root.namespaceUri;
      final name = root.name.local;

      if (name == 'document' &&
          ns ==
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main') {
        errors = W_CT_Document(root).validate();
      } else if (name == 'workbook' &&
          ns == 'http://schemas.openxmlformats.org/spreadsheetml/2006/main') {
        errors = S_CT_Workbook(root).validate();
      } else if (name == 'presentation' &&
          ns == 'http://schemas.openxmlformats.org/presentationml/2006/main') {
        errors = P_CT_Presentation(root).validate();
      } else if (name == 'Relationships' &&
          ns ==
              'http://schemas.openxmlformats.org/package/2006/relationships') {
        errors = Opc_CT_Relationships(root).validate();
      }

      if (errors.isNotEmpty) {
        isValid = false;
        messages.add('Validation errors in ${file.path}:');
        messages.addAll(errors.map((e) => '  - $e'));
      }
    } catch (e) {
      isValid = false;
      messages.add('XML parse error in ${file.path}: $e');
    }
  }

  Future<void> scanDirectory(Directory dir) async {
    await for (final entity in dir.list()) {
      if (entity is Directory) {
        await scanDirectory(entity);
      } else if (entity is File &&
          (entity.path.endsWith('.xml') || entity.path.endsWith('.rels'))) {
        await validateXmlFile(entity);
      }
    }
  }

  await scanDirectory(directory);

  if (isValid) {
    messages.add('All validations PASSED!');
  } else {
    messages.add('Validation FAILED.');
  }

  return (isValid, messages);
}
