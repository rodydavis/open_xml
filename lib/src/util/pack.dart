import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

/// Pack a directory into a DOCX, PPTX, or XLSX file.
///
/// Condenses XML formatting and creates the Office file.
/// Note: XSD Schema validation is not fully supported natively in Dart
/// without external tools, so validation is basic.
///
/// Usage:
///     dart pack.dart <input_directory> <output_file>
(int?, String) pack(String inputDirectory, String outputFile) {
  final inputDir = Directory(inputDirectory);
  final outputPath = File(outputFile);
  final suffix = p.extension(outputFile).toLowerCase();

  if (!inputDir.existsSync()) {
    return (null, 'Error: $inputDirectory is not a directory');
  }

  if (!const {'.docx', '.pptx', '.xlsx'}.contains(suffix)) {
    return (null, 'Error: $outputFile must be a .docx, .pptx, or .xlsx file');
  }

  try {
    final tempDir = Directory.systemTemp.createTempSync('office_pack_');
    final tempContentDir = Directory(p.join(tempDir.path, 'content'));
    _copyDirectorySync(inputDir, tempContentDir);

    final filesToCondense = <File>[];
    for (var entity in tempContentDir.listSync(recursive: true)) {
      if (entity is File) {
        final ext = p.extension(entity.path).toLowerCase();
        if (ext == '.xml' || ext == '.rels') {
          filesToCondense.add(entity);
        }
      }
    }

    for (var xmlFile in filesToCondense) {
      _condenseXml(xmlFile);
    }

    outputPath.parent.createSync(recursive: true);

    final archive = Archive();
    for (var entity in tempContentDir.listSync(recursive: true)) {
      if (entity is File) {
        final relativePath = p.relative(entity.path, from: tempContentDir.path);
        // Ensure forward slashes for zip internal paths
        final zipPath = relativePath.replaceAll('\\', '/');
        final bytes = entity.readAsBytesSync();
        archive.addFile(ArchiveFile(zipPath, bytes.length, bytes));
      }
    }

    final zipData = ZipEncoder().encode(archive);

    outputPath.writeAsBytesSync(zipData);
    tempDir.deleteSync(recursive: true);

    return (null, 'Successfully packed ${inputDir.path} to $outputFile');
  } catch (e) {
    return (null, 'Error packing: $e');
  }
}

void _copyDirectorySync(Directory source, Directory destination) {
  destination.createSync(recursive: true);
  for (var entity in source.listSync(recursive: false)) {
    if (entity is Directory) {
      var newDirectory = Directory(
        p.join(destination.absolute.path, p.basename(entity.path)),
      );
      newDirectory.createSync();
      _copyDirectorySync(entity.absolute, newDirectory);
    } else if (entity is File) {
      entity.copySync(p.join(destination.path, p.basename(entity.path)));
    }
  }
}

void _condenseXml(File xmlFile) {
  try {
    final content = xmlFile.readAsStringSync();
    final document = XmlDocument.parse(content);

    for (var element in document.findAllElements('*')) {
      if (element.name.local == 't') {
        continue;
      }

      final childrenToRemove = <XmlNode>[];
      for (var child in element.children) {
        if (child is XmlText && child.value.trim().isEmpty) {
          childrenToRemove.add(child);
        } else if (child is XmlComment) {
          childrenToRemove.add(child);
        }
      }

      for (var child in childrenToRemove) {
        element.children.remove(child);
      }
    }

    xmlFile.writeAsStringSync(document.toXmlString(pretty: false));
  } catch (e) {
    stderr.writeln('ERROR: Failed to parse ${p.basename(xmlFile.path)}: $e');
    rethrow;
  }
}

/// Command-line entry point for packing a directory.
void main(List<String> args) {
  if (args.length < 2) {
    print('Usage: dart pack.dart <input_directory> <output_file>');
    exit(1);
  }

  final result = pack(args[0], args[1]);
  print(result.$2);

  if (result.$2.startsWith('Error')) {
    exit(1);
  }
}
