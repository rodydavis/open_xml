import 'dart:io' show exit, stderr;
import 'package:archive/archive.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:path/path.dart' as p;
import 'package:open_xml/src/validate/validate.dart';

/// Command line tool to validate Office document XML files.
void main(List<String> args) {
  if (args.isEmpty) {
    print(
      'Usage: dart run open_xml:validate <path> [--original <original_file>] [--auto-repair] [--author NAME]',
    );
    exit(1);
  }

  const fs = LocalFileSystem();
  final pathStr = args[0];
  String? originalFile;
  bool autoRepair = false;
  String author = 'OpenXML';

  for (int i = 1; i < args.length; i++) {
    if (args[i] == '--original' && i + 1 < args.length) {
      originalFile = args[++i];
    } else if (args[i] == '--auto-repair') {
      autoRepair = true;
    } else if (args[i] == '--author' && i + 1 < args.length) {
      author = args[++i];
    }
  }

  final isDir = fs.directory(pathStr).existsSync();
  final path = isDir ? fs.directory(pathStr) : fs.file(pathStr);

  if (!path.existsSync()) {
    stderr.writeln('Error: $pathStr does not exist');
    exit(1);
  }

  String fileExtension = '';
  if (originalFile != null) {
    fileExtension = p.extension(originalFile).toLowerCase();
  } else if (path is File) {
    fileExtension = p.extension(path.path).toLowerCase();
  }

  if (!const {'.docx', '.pptx', '.xlsx'}.contains(fileExtension)) {
    stderr.writeln(
      'Error: Cannot determine file type or unsupported type: $fileExtension',
    );
    exit(1);
  }

  Directory targetDir;
  Directory? tempDir;
  if (path is File) {
    tempDir = fs.systemTempDirectory.createTempSync('office_validate_');
    final bytes = path.readAsBytesSync();
    final archive = ZipDecoder().decodeBytes(bytes);
    for (final archiveFile in archive) {
      if (archiveFile.isFile) {
        final data = archiveFile.content as List<int>;
        final extractedFile = fs.file(p.join(tempDir.path, archiveFile.name));
        extractedFile.parent.createSync(recursive: true);
        extractedFile.writeAsBytesSync(data);
      }
    }
    targetDir = tempDir;
  } else {
    targetDir = path as Directory;
  }

  final (success, messages) = validateDirectory(
    targetDir,
    autoRepair: autoRepair,
    author: author,
  );

  for (final message in messages) {
    print(message);
  }

  if (tempDir != null) {
    tempDir.deleteSync(recursive: true);
  }

  exit(success ? 0 : 1);
}
