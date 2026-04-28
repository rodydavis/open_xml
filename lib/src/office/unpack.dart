import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

import '../word/helpers/merge_runs.dart';
import '../word/helpers/simplify_redlines.dart';

/// Mapping of typographic quotes to XML character entities.
const Map<String, String> _smartQuoteReplacements = {
  '\u201c': '&#x201C;',
  '\u201d': '&#x201D;',
  '\u2018': '&#x2018;',
  '\u2019': '&#x2019;',
};

/// Unpack Office files (DOCX, PPTX, XLSX) for editing.
///
/// Extracts the ZIP archive, pretty-prints XML files, and optionally:
/// - Merges adjacent runs with identical formatting (DOCX only)
/// - Simplifies adjacent tracked changes from same author (DOCX only)
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
      if (simplifyRedlinesOpt) {
        final res = simplifyRedlines(outputPath.path);
        final simplifyCount = res.$1;
        message += ', simplified $simplifyCount tracked changes';
      }

      if (mergeRunsOpt) {
        final res = mergeRuns(outputPath.path);
        final mergeCount = res.$1;
        message += ', merged $mergeCount runs';
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
    // Ignore parse errors, file might not be standard XML
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

/// Command-line entry point for unpacking an Office file.
void main(List<String> args) {
  if (args.length < 2) {
    print('Usage: dart unpack.dart <input_file> <output_directory> [--merge-runs false] [--simplify-redlines false]');
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
