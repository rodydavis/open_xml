@TestOn('browser')
import 'dart:convert';
import 'package:test/test.dart';
import 'package:web_file_system/web_file_system.dart';

void main() {
  late WebFileSystem fs;

  setUp(() async {
    // Tests run in parallel in browser often sharing context, so use unique paths.
    fs = WebFileSystem();
  });

  group('Troubleshooting NotFoundError', () {
    test('Temp directory creation and persistence', () async {
      print('DEBUG: creating temp dir');
      final tempDir = await fs.systemTempDirectory.createTemp('debug_test_');
      print('DEBUG: Created temp dir at ${tempDir.path}');

      expect(await tempDir.exists(), isTrue);

      final file = tempDir.childFile('test.txt');
      await file.writeAsString('Persistence Check');

      print('DEBUG: checking existence immediately');
      expect(await file.exists(), isTrue);
      expect(await file.readAsString(), equals('Persistence Check'));

      // Wait a bit to simulate pipeline delays
      await Future.delayed(const Duration(milliseconds: 500));

      print('DEBUG: checking existence after delay');
      expect(await file.readAsString(), equals('Persistence Check'));

      // Cleanup
      await tempDir.delete(recursive: true);
      print('DEBUG: deleted temp dir');
      expect(await file.exists(), isFalse);
    });

    test('Deep copy behavior verification', () async {
      final srcDir = await fs.systemTempDirectory.createTemp('src_');
      final destDir = await fs.systemTempDirectory.createTemp('dest_');

      final srcFile = srcDir.childFile('source.dat');
      // Write some substantial data
      final data = utf8.encode('Essential Data for Export');
      await srcFile.writeAsBytes(data);

      print('DEBUG: Source file written to ${srcFile.path}');

      final destPath = destDir.childFile('copy.dat').path;
      print('DEBUG: Copying to $destPath');

      final copiedFile = await srcFile.copy(destPath);

      print('DEBUG: Copy complete');
      expect(await copiedFile.exists(), isTrue);
      expect(await copiedFile.readAsBytes(), equals(data));

      // Now delete source
      print('DEBUG: Deleting source file');
      await srcFile.delete();
      expect(await srcFile.exists(), isFalse);

      // Verify copy still exists and is readable (Deep Copy Check)
      print('DEBUG: Verifying copy after source deletion');
      expect(await copiedFile.exists(), isTrue);
      try {
        final copyData = await copiedFile.readAsBytes();
        expect(copyData, equals(data));
        print('DEBUG: Deep copy verified!');
      } catch (e) {
        print('ERROR: Deep copy failed! Reading copy caused error: $e');
        rethrow;
      }
    });

    test('Concurrent Write/Read stress', () async {
      final dir = await fs.systemTempDirectory.createTemp('stress_');
      final file = dir.childFile('stress.txt');

      // Write
      await file.writeAsString('Initial');

      // Rapidly update
      for (int i = 0; i < 10; i++) {
        await file.writeAsString('Update $i');
        final content = await file.readAsString();
        expect(content, equals('Update $i'));
      }
    });
  });
}
