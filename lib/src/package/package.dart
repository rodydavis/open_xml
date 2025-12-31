import 'package:archive/archive.dart';
import 'package:file/file.dart';
import 'package:logging/logging.dart';
import 'package:open_xml/src/util/archive_utils.dart';
import 'package:path/path.dart' as p;

class OoxmlPackage {
  final Directory _tempDir;
  final FileSystem _fs;
  FileSystem get fileSystem => _fs;
  final List<String> _parts = [];
  final _log = Logger('OoxmlPackage');

  OoxmlPackage._(this._tempDir, this._fs);

  static Future<OoxmlPackage> create(FileSystem fs) async {
    final tempDir = await fs.systemTempDirectory.createTemp('ooxml_');
    Logger('OoxmlPackage').fine('Created new package in ${tempDir.path}');
    return OoxmlPackage._(tempDir, fs);
  }

  /// Opens an existing OpenXML file effectively unzipping it to a temp directory.
  static Future<OoxmlPackage> open(File file, {FileSystem? fs}) async {
    final fileSystem = fs ?? file.fileSystem;
    final tempDir = await fileSystem.systemTempDirectory.createTemp('ooxml_');
    final bytes = await file.readAsBytes();
    final archive = ZipDecoder().decodeBytes(bytes);

    for (final archiveFile in archive) {
      final filename = archiveFile.name;
      if (archiveFile.isFile) {
        final data = archiveFile.content as List<int>;
        final extractedFile = fileSystem.file(p.join(tempDir.path, filename));
        await extractedFile.parent.create(recursive: true);
        await extractedFile.writeAsBytes(data);
      }
    }
    Logger(
      'OoxmlPackage',
    ).fine('Opened existing package at ${file.path} into ${tempDir.path}');
    return OoxmlPackage._(tempDir, fileSystem);
  }

  /// Creates a new part in the package at [path] (e.g., 'word/document.xml').
  /// Returns an [IOSink] that can be used to write the content.
  Future<IOSink> createPart(String path) async {
    final file = _fs.file(p.join(_tempDir.path, path));
    if (!file.parent.existsSync()) {
      await file.parent.create(recursive: true);
    }
    _parts.add(path);
    _log.finer('Creating part: $path');
    return file.openWrite();
  }

  /// Adds an existing file to the package.
  Future<void> addFile(String path, File source) async {
    final dest = _fs.file(p.join(_tempDir.path, path));
    if (!dest.parent.existsSync()) {
      await dest.parent.create(recursive: true);
    }
    // We can't use source.copy(dest.path) if they are on different file systems.
    // So we read and write.
    await dest.writeAsBytes(await source.readAsBytes());
    _parts.add(path);
    _log.finer('Added file $path from ${source.path}');
  }

  /// Checks if a part exists in the package.
  Future<bool> hasPart(String path) async {
    final file = _fs.file(p.join(_tempDir.path, path));
    return file.exists();
  }

  /// Reads a part as bytes.
  Future<List<int>> readPartAsBytes(String path) async {
    final file = _fs.file(p.join(_tempDir.path, path));
    if (!await file.exists()) {
      throw FileSystemException('Part not found', path);
    }
    return file.readAsBytes();
  }

  /// Reads a part as string.
  Future<String> readPartAsString(String path) async {
    final file = _fs.file(p.join(_tempDir.path, path));
    if (!await file.exists()) {
      throw FileSystemException('Part not found', path);
    }
    return file.readAsString();
  }

  /// Compresses the package to a single [.docx/.xlsx/.pptx] file at [outputPath].
  /// [outputFile] should be a File from the target FileSystem.
  Future<void> save(File outputFile) async {
    _log.info('Saving package to ${outputFile.path}');
    final sink = outputFile.openWrite();
    final writer = ZipPackageWriter(sink);

    await _addRecursively(writer, _tempDir, '');

    await writer.close();
    _log.fine('Package saved successfully');
  }

  /// Lists all parts (files) in the package under the given [path].
  /// Returns relative paths, e.g. 'ppt/media/image1.png'.
  Future<List<String>> listParts(String path) async {
    final dir = _fs.directory(p.join(_tempDir.path, path));
    if (!await dir.exists()) return [];

    final files = <String>[];
    await for (final entity in dir.list(recursive: true)) {
      if (entity is File) {
        files.add(p.relative(entity.path, from: _tempDir.path));
      }
    }
    return files;
  }

  /// Deletes the temporary resources.
  Future<void> close() async {
    _log.fine('Closing package and cleaning up temp dir ${_tempDir.path}');
    if (await _tempDir.exists()) {
      await _tempDir.delete(recursive: true);
    }
  }

  Future<void> _addRecursively(
    ZipPackageWriter writer,
    Directory dir,
    String relativePath,
  ) async {
    await for (final entity in dir.list(recursive: false)) {
      await Future.delayed(Duration.zero);
      final name = p.basename(entity.path);
      print('DEBUG: Visiting $name in $relativePath');
      // Skip .DS_Store
      if (name == '.DS_Store') continue;

      final nextPath = relativePath.isEmpty ? name : '$relativePath/$name';

      if (entity is File) {
        print('DEBUG: Adding file $nextPath');
        await writer.addFile(entity, nextPath);
      } else if (entity is Directory) {
        print('DEBUG: Recursing into $nextPath');
        await _addRecursively(writer, entity, nextPath);
      }
    }
  }
}
