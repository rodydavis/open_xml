import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

void main(List<String> args) async {
  if (args.length != 2) {
    print('Usage: dart tool/diff_pptx.dart <file1.pptx> <file2.pptx>');
    exit(1);
  }

  final file1 = File(args[0]);
  final file2 = File(args[1]);

  if (!file1.existsSync() || !file2.existsSync()) {
    print('Error: Input files not found.');
    exit(1);
  }

  // final tempDir = Directory.systemTemp.createTempSync('pptx_diff_');
  final tempDir = Directory('temp');
  final dir1 = Directory(p.join(tempDir.path, 'file1'));
  final dir2 = Directory(p.join(tempDir.path, 'file2'));

  print('Unzipping and processing...');
  await _processPptx(file1, dir1);
  await _processPptx(file2, dir2);

  print('Diffing content...');
  final diffDir = Directory(p.join(tempDir.path, 'diffs'));
  await diffDir.create(recursive: true);

  print('Diffing content...');
  var differencesFound = false;

  // Walk through dir2 and compare with dir1
  await for (final entity in dir2.list(recursive: true)) {
    if (entity is File) {
      final relativePath = p.relative(entity.path, from: dir2.path);
      final file1Path = p.join(dir1.path, relativePath);
      final file1Entity = File(file1Path);

      if (!file1Entity.existsSync()) {
        print('Only in ${dir2.path}: $relativePath');
        differencesFound = true;
        continue;
      }

      // Read content as bytes for comparison to handle binary files too
      // Ideally for XML we want string comparison but let's see
      // Since we pretty-printed XMLs, string comparison or diff command is good.

      // We will use 'diff' command for each file to capture output
      final process = await Process.start('diff', [
        file1Entity.path,
        entity.path,
      ]);
      final exitCode = await process.exitCode;

      if (exitCode != 0) {
        differencesFound = true;
        print('Difference in: $relativePath');

        // Save diff
        final diffOutput = await process.stdout
            .transform(systemEncoding.decoder)
            .join();
        if (diffOutput.isNotEmpty) {
          final diffFile = File(p.join(diffDir.path, '$relativePath.diff'));
          await diffFile.parent.create(recursive: true);
          await diffFile.writeAsString(diffOutput);
        }
      }
    }
  }

  // Check for files only in dir1
  await for (final entity in dir1.list(recursive: true)) {
    if (entity is File) {
      final relativePath = p.relative(entity.path, from: dir1.path);
      final file2Path = p.join(dir2.path, relativePath);
      if (!File(file2Path).existsSync()) {
        print('Only in ${dir1.path}: $relativePath');
        differencesFound = true;
      }
    }
  }

  if (!differencesFound) {
    print('Files are identical!');
  } else {
    print('Files differ. Diffs saved to: ${diffDir.path}');
    exit(1);
  }

  // Cleanup
  // tempDir.deleteSync(recursive: true);
  print('Temp dir left for inspection: ${tempDir.path}');
}

Future<void> _processPptx(File zipFile, Directory outDir) async {
  await outDir.create(recursive: true);
  final bytes = await zipFile.readAsBytes();
  final archive = ZipDecoder().decodeBytes(bytes);

  for (final file in archive) {
    if (file.isFile) {
      final filename = file.name;
      final destPath = p.join(outDir.path, filename);
      final destFile = File(destPath);
      await destFile.parent.create(recursive: true);

      if (filename.endsWith('.xml') || filename.endsWith('.rels')) {
        try {
          final content = String.fromCharCodes(file.content as List<int>);
          final xmlDoc = XmlDocument.parse(content);
          await destFile.writeAsString(xmlDoc.toXmlString(pretty: true));
        } catch (e) {
          // If parse fails, write raw
          await destFile.writeAsBytes(file.content as List<int>);
        }
      } else {
        await destFile.writeAsBytes(file.content as List<int>);
      }
    }
  }
}
