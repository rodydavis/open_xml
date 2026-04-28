import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

/// Cleans the XML by masking dynamic attributes and removing Keynote-specific extensions.
String cleanXml(String content) {
  try {
    final doc = XmlDocument.parse(content);
    for (final node in doc.descendants) {
      if (node is XmlElement) {
        for (final attr in node.attributes) {
          if ([
                'id',
                'r:id',
                'Id',
                'name',
                'Target',
              ].contains(attr.name.local) ||
              [
                'id',
                'r:id',
                'Id',
                'name',
                'Target',
              ].contains(attr.name.qualified)) {
            attr.value = 'X';
          }
          if (attr.name.local == 'created' ||
              attr.name.local == 'modified' ||
              attr.name.local == 'revision') {
            attr.value = 'X';
          }
        }

        if ([
          'created',
          'modified',
          'creator',
          'lastModifiedBy',
          'revision',
          'title',
        ].contains(node.name.local)) {
          node.children.clear();
        }
      }
    }

    final toRemove = <XmlNode>[];
    for (final node in doc.descendants) {
      if (node is XmlElement) {
        if (node.name.local == 'extLst' ||
            node.name.local == 'AlternateContent') {
          toRemove.add(node);
        }
      }
    }
    for (final n in toRemove) {
      if (n.parent != null) {
        final parent = n.parent as XmlElement;
        parent.children.remove(n);
      }
    }

    return doc
        .toXmlString(pretty: true, indent: '  ')
        .replaceAll(' standalone="yes"', '');
  } catch (e) {
    return content;
  }
}

/// Compares two PPTX files structurally.
///
/// Unzips both files, parses all XML and .rels files, and compares their elements,
/// optionally ignoring specific attributes like dynamic IDs or timestamps if needed.
void expectPptxMatches(
  String actualPath,
  String expectedPath, {
  bool ignoreIds = true,
}) {
  final actualBytes = File(actualPath).readAsBytesSync();
  final expectedBytes = File(expectedPath).readAsBytesSync();

  final actualArchive = ZipDecoder().decodeBytes(actualBytes);
  final expectedArchive = ZipDecoder().decodeBytes(expectedBytes);

  final expectedFiles = <String, ArchiveFile>{};
  for (final file in expectedArchive) {
    if (file.isFile) {
      expectedFiles[file.name] = file;
    }
  }

  for (final actualFile in actualArchive) {
    if (!actualFile.isFile) continue;
    final name = actualFile.name;

    // In a fuzzy match, we only verify that the files we generated match the expected file's counterpart structurally
    if (!expectedFiles.containsKey(name)) {
      print('Warning: File $name generated but not in expected PPTX');
      continue;
    }

    final expectedFile = expectedFiles[name]!;

    if (name.endsWith('.xml') || name.endsWith('.rels')) {
      final actualContent = String.fromCharCodes(
        actualFile.content as List<int>,
      );
      final expectedContent = String.fromCharCodes(
        expectedFile.content as List<int>,
      );

      final actualFormatted = cleanXml(actualContent);
      final expectedFormatted = cleanXml(expectedContent);

      expect(
        actualFormatted,
        equals(expectedFormatted),
        reason: 'Content mismatch in $name',
      );
    }
  }
}
