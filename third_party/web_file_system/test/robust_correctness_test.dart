@TestOn('browser')
import 'dart:async';
import 'dart:typed_data';
import 'package:test/test.dart';
import 'package:web_file_system/web_file_system.dart';

void main() {
  late WebFileSystem fs;

  setUp(() async {
    fs = WebFileSystem();
  });

  group('Robust Correctness Tests', () {
    test('Multiple files in a directory stress test', () async {
      final uniqueId = DateTime.now().millisecondsSinceEpoch;
      final dirPath = '/stress_$uniqueId';
      final dir = fs.directory(dirPath);
      await dir.create();

      final fileCount = 50;
      final futures = <Future>[];

      for (var i = 0; i < fileCount; i++) {
        futures.add(
          fs.file('$dirPath/file_$i.txt').writeAsString('Content of file $i'),
        );
      }
      await Future.wait(futures);

      final entities = await dir.list().toList();
      expect(entities.length, equals(fileCount));

      final names = entities.map((e) => fs.path.basename(e.path)).toSet();
      for (var i = 0; i < fileCount; i++) {
        expect(names, contains('file_$i.txt'));
        final content = await fs.file('$dirPath/file_$i.txt').readAsString();
        expect(content, equals('Content of file $i'));
      }
    });

    test('Temporary directory usage', () async {
      final tempDir = await fs.systemTempDirectory.createTemp('my_prefix_');
      expect(tempDir.path, startsWith('/tmp/my_prefix_'));
      expect(await tempDir.exists(), isTrue);

      final file = fs.file(fs.path.join(tempDir.path, 'test.txt'));
      await file.writeAsString('temp content');
      expect(await file.readAsString(), equals('temp content'));

      await tempDir.delete(recursive: true);
      expect(await tempDir.exists(), isFalse);
      expect(await file.exists(), isFalse);
    });

    test('Different files with the same bytes (deduplication/collision check)', () async {
      final uniqueId = DateTime.now().millisecondsSinceEpoch;
      final data = Uint8List.fromList([1, 2, 3, 4, 5]);

      final file1 = fs.file('/file1_$uniqueId.bin');
      final file2 = fs.file('/file2_$uniqueId.bin');

      await file1.writeAsBytes(data);
      await file2.writeAsBytes(data);

      expect(await file1.readAsBytes(), equals(data));
      expect(await file2.readAsBytes(), equals(data));

      // Update one, ensure other is unchanged
      final newData = Uint8List.fromList([6, 7, 8]);
      await file1.writeAsBytes(newData);

      expect(await file1.readAsBytes(), equals(newData));
      expect(await file2.readAsBytes(), equals(data));

      // Cleanup
      await file1.delete();
      await file2.delete();

      expect(await file1.exists(), isFalse);
      expect(await file2.exists(), isFalse);
    });

    test('Resource cleanup verification (Blob leak check)', () async {
      final uniqueId = DateTime.now().millisecondsSinceEpoch;
      final filePath = '/leak_test_$uniqueId.bin';
      final data = Uint8List.fromList(List.generate(100, (i) => i));

      final file = fs.file(filePath);
      await file.writeAsBytes(data);

      final inode = await fs.resolvepath(filePath);
      final blobId = inode.blobId;
      expect(blobId, isNotNull);

      // Verify blob exists in store
      if (inode.storageType == 1) {
        expect(await fs.idbStore.getBlob(blobId!), isNotNull);
      } else {
        expect(await fs.opfs.getBlob(blobId!), isNotNull);
      }

      await file.delete();

      // Verify blob is gone
      if (inode.storageType == 1) {
        expect(() => fs.idbStore.getBlob(blobId!), throwsA(anything));
      } else {
        expect(() => fs.opfs.getBlob(blobId!), throwsA(anything));
      }
    });
  });
}
