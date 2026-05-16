import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

import 'package:open_xml/src/word/helpers/merge_runs.dart';
import 'package:open_xml/src/word/helpers/simplify_redlines.dart';

/// Mapping of typographic quotes to XML character entities.
const Map<String, String> _smartQuoteReplacements = {
  '\u201c': '&#x201C;',
  '\u201d': '&#x201D;',
  '\u2018': '&#x2018;',
  '\u2019': '&#x2019;',
};

/// Unpack Office files (DOCX, PPTX, XLSX) for editing.
(int?, String) unpack(
  String inputFile,
  String outputDirectory, {
  bool mergeRunsOpt = true,
  bool simplifyRedlinesOpt = true,
}) {
  final inputPath = File(inputFile);
  final outputPath = Directory(outputDirectory);
  final suffix = p.extension(inputFile).toLowerCase();

  if (!inputPath.existsSync()) {
    return (null, 'Error: $inputFile does not exist');
  }

  if (!const {'.docx', '.pptx', '.xlsx'}.contains(suffix)) {
    return (null, 'Error: $inputFile must be a .docx, .pptx, or .xlsx file');
  }

  try {
    if (!outputPath.existsSync()) {
      outputPath.createSync(recursive: true);
    }

    final bytes = inputPath.readAsBytesSync();
    final archive = ZipDecoder().decodeBytes(bytes);
    extractArchiveToDisk(archive, outputPath.path);

    final xmlFiles = <File>[];
    for (var entity in outputPath.listSync(recursive: true)) {
      if (entity is File) {
        final ext = p.extension(entity.path).toLowerCase();
        if (ext == '.xml' || ext == '.rels') {
          xmlFiles.add(entity);
        }
      }
    }

    for (var xmlFile in xmlFiles) {
      _prettyPrintXml(xmlFile);
    }

    String message = 'Unpacked $inputFile (${xmlFiles.length} XML files)';

    if (suffix == '.docx') {
      final docXmlFile = File(p.join(outputPath.path, 'word', 'document.xml'));
      if (docXmlFile.existsSync()) {
        try {
          final docXmlString = docXmlFile.readAsStringSync();
          final document = XmlDocument.parse(docXmlString);

          if (simplifyRedlinesOpt) {
            final simplifyCount = simplifyRedlines(document);
            message += ', simplified $simplifyCount tracked changes';
          }

          if (mergeRunsOpt) {
            final mergeCount = mergeRuns(document);
            message += ', merged $mergeCount runs';
          }

          docXmlFile.writeAsStringSync(document.toXmlString(pretty: false));
        } catch (e) {
          message += ' (Failed to simplify/merge runs: $e)';
        }
      }
    }

    for (var xmlFile in xmlFiles) {
      _escapeSmartQuotes(xmlFile);
    }

    return (null, message);
  } catch (e) {
    if (e is ArchiveException) {
      return (null, 'Error: $inputFile is not a valid Office file');
    }
    return (null, 'Error unpacking: $e');
  }
}

void _prettyPrintXml(File xmlFile) {
  try {
    final content = xmlFile.readAsStringSync();
    final document = XmlDocument.parse(content);
    xmlFile.writeAsStringSync(document.toXmlString(pretty: true, indent: '  '));
  } catch (_) {
    // Ignore parse errors
  }
}

void _escapeSmartQuotes(File xmlFile) {
  try {
    String content = xmlFile.readAsStringSync();
    for (var entry in _smartQuoteReplacements.entries) {
      content = content.replaceAll(entry.key, entry.value);
    }
    xmlFile.writeAsStringSync(content);
  } catch (_) {
    // Ignore errors
  }
}

void main(List<String> args) {
  if (args.length < 2) {
    print(
      'Usage: dart run open_xml:unpack <input_file> <output_directory> [--merge-runs false] [--simplify-redlines false]',
    );
    exit(1);
  }

  String inputFile = args[0];
  String outputDirectory = args[1];
  bool mergeRunsFlag = true;
  bool simplifyRedlinesFlag = true;

  for (int i = 2; i < args.length; i++) {
    if (args[i] == '--merge-runs' && i + 1 < args.length) {
      mergeRunsFlag = args[++i].toLowerCase() == 'true';
    } else if (args[i] == '--simplify-redlines' && i + 1 < args.length) {
      simplifyRedlinesFlag = args[++i].toLowerCase() == 'true';
    }
  }

  final result = unpack(
    inputFile,
    outputDirectory,
    mergeRunsOpt: mergeRunsFlag,
    simplifyRedlinesOpt: simplifyRedlinesFlag,
  );

  print(result.$2);

  if (result.$2.startsWith('Error')) {
    exit(1);
  }
}
