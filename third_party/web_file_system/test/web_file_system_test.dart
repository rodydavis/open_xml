@TestOn('browser')
import 'dart:async';
import 'dart:typed_data';
import 'package:test/test.dart';
import 'package:web_file_system/web_file_system.dart';

void main() {
  late WebFileSystem fs;

  setUp(() async {
    // For unit testing in a persistent browser environment, concurrent tests might conflict.
    // Ideally we would mock the backend or use unique DB names.
    // For NOW, we use the default SINGLE DB implementation but try to use unique paths.
    fs = WebFileSystem();
  });

  group('Functional Correctness', () {
    test('Create and read text file', () async {
      final file = fs.file(
        '/hello_${DateTime.now().millisecondsSinceEpoch}.txt',
      );
      await file.create(recursive: true);
      await file.writeAsString('Hello Hybrid FS');

      expect(await file.exists(), isTrue);
      expect(await file.readAsString(), equals('Hello Hybrid FS'));
    });

    test('Directory creation and listing', () async {
      final uniqueId = DateTime.now().millisecondsSinceEpoch;
      await fs.directory('/assets_$uniqueId/images').create(recursive: true);
      await fs
          .file('/assets_$uniqueId/images/logo.png')
          .writeAsString('png-data');
      await fs.file('/assets_$uniqueId/readme.md').writeAsString('read me');

      final dir = fs.directory('/assets_$uniqueId');
      final entities = await dir.list(recursive: true).toList();

      expect(entities.length, equals(3)); // images, logo.png, readme.md
      // Note: order is not guaranteed usually, but CoW VFS might map order
      // Paths checking
      final paths = entities.map((e) => e.path).toList();
      expect(paths, contains('/assets_$uniqueId/images'));
      expect(paths, contains('/assets_$uniqueId/images/logo.png'));
      expect(paths, contains('/assets_$uniqueId/readme.md'));
    });

    test('Rename directory updates child paths', () async {
      final uniqueId = DateTime.now().millisecondsSinceEpoch;
      final folder = '/folder_$uniqueId';
      final renamed = '/renamed_$uniqueId';

      await fs.directory(folder).create();
      await fs.file('$folder/file.txt').writeAsString('content');

      await fs.directory(folder).rename(renamed);

      expect(await fs.directory(folder).exists(), isFalse);
      expect(await fs.file('$folder/file.txt').exists(), isFalse);

      expect(await fs.directory(renamed).exists(), isTrue);
      expect(await fs.file('$renamed/file.txt').exists(), isTrue);

      expect(
        await fs.file('$renamed/file.txt').readAsString(),
        equals('content'),
      );
    });

    test('Symbolic Link creation and resolution', () async {
      final uniqueId = DateTime.now().millisecondsSinceEpoch;
      final targetPath = '/target_$uniqueId.txt';
      final linkPath = '/link_$uniqueId';

      // Create target
      await fs.file(targetPath).writeAsString('target-content');

      // Create link
      await fs.link(linkPath).create(targetPath);

      // Verify link exists
      expect(await fs.link(linkPath).exists(), isTrue);
      expect(
        await fs.type(linkPath, followLinks: false),
        equals(FileSystemEntityType.link),
      );

      // Verify link resolves to target content
      expect(await fs.file(linkPath).readAsString(), equals('target-content'));

      // Verify target()
      expect(await fs.link(linkPath).target(), equals(targetPath));

      // Verify traversing through link (directory)
      final targetDir = '/dir_$uniqueId';
      final linkDir = '/link_dir_$uniqueId';
      await fs.directory(targetDir).create();
      await fs.file('$targetDir/child.txt').writeAsString('child-content');
      await fs.link(linkDir).create(targetDir);

      expect(
        await fs.file('$linkDir/child.txt').readAsString(),
        equals('child-content'),
      );
    });
  });

  group('Benchmarks', () {
    test('BENCHMARK: Create 100 small files (Inode Stress)', () async {
      // Reduced from 1000 for CI stability in this environment
      final uniqueId = DateTime.now().millisecondsSinceEpoch;
      final count = 100;
      final futures = <Future>[];

      await fs.directory('/bulk_$uniqueId').create();

      final stopwatch = Stopwatch()..start();
      for (var i = 0; i < count; i++) {
        futures.add(
          fs.file('/bulk_$uniqueId/file_$i.txt').writeAsString('small data $i'),
        );
      }
      await Future.wait(futures);
      stopwatch.stop();

      print('Created $count files in ${stopwatch.elapsedMilliseconds}ms');

      final listWatch = Stopwatch()..start();
      final files = await fs.directory('/bulk_$uniqueId').list().length;
      listWatch.stop();

      expect(files, equals(count));
      print('Listed $count files in ${listWatch.elapsedMilliseconds}ms');
    });

    test('BENCHMARK: Read/Write 10MB file (Streaming)', () async {
      // Reduced from 50MB to 10MB for quicker test cycle
      final uniqueId = DateTime.now().millisecondsSinceEpoch;
      final chunkSize = 1024 * 1024;
      final chunk = Uint8List(chunkSize);
      for (int i = 0; i < chunkSize; i++) {
        chunk[i] = i % 256;
      }

      final file = fs.file('/video_$uniqueId.mp4');
      final sink = file.openWrite();

      final writeWatch = Stopwatch()..start();
      for (int i = 0; i < 10; i++) {
        // 10MB
        sink.add(chunk);
      }
      await sink.close();
      writeWatch.stop();

      print('Wrote 10MB in ${writeWatch.elapsedMilliseconds}ms');

      int totalBytes = 0;
      await for (final buffer in file.openRead()) {
        totalBytes += buffer.length;
      }

      expect(totalBytes, equals(10 * chunkSize));
    });
  });
}
