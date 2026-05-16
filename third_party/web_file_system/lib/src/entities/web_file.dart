import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:file/file.dart';
import '../backend/idb_inode_service.dart';
import '../web_file_system.dart';

class WebFile extends FileSystemEntity implements File {
  final WebFileSystem _fs;
  @override
  final String path;

  WebFile(this._fs, this.path);

  @override
  FileSystem get fileSystem => _fs;

  @override
  Future<File> create({bool recursive = false, bool exclusive = false}) async {
    if (await exists()) {
      if (exclusive) {
        throw FileSystemException(
          'File already exists',
          path,
          const OSError('EEXIST', 17),
        );
      }
      return this;
    }

    if (recursive) {
      final parentDir = _fs.path.dirname(path);
      if (await _fs.type(parentDir) == FileSystemEntityType.notFound) {
        await _fs.directory(parentDir).create(recursive: true);
      }
    }

    final parentPath = _fs.path.dirname(path);
    final parentInode = await _fs.resolvepath(parentPath);

    await _fs.idb.createInode(
      Inode(
        id: _fs.uuid.v4(),
        parentId: parentInode.id,
        name: _fs.path.basename(path),
        nodeType: 0,
        modified: DateTime.now().millisecondsSinceEpoch,
      ),
    );

    return this;
  }

  @override
  void createSync({bool recursive = false, bool exclusive = false}) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<File> copy(String newPath) async {
    // Deep copy to ensure independence and correct storage type

    final newFile = WebFile(_fs, newPath);
    // Use writeAsBytes to handle creation and storage logic
    // We need to consume the stream to a list for now as writeAsBytes takes List<int>
    // Or we could use a stream API if available, but writeAsBytes expects List<int>.
    // Given these are images/slides, memory is likely okay.
    // To be safer with memory, we should really stream it, but writeAsBytes takes List<int>.
    // Let's use readAsBytes() helper.
    final bytes = await readAsBytes();
    await newFile.writeAsBytes(bytes);

    return newFile;
  }

  @override
  File copySync(String newPath) => throw UnsupportedError('Sync not supported');

  @override
  Future<int> length() async {
    final inode = await _fs.resolvepath(path);
    return inode.size;
  }

  @override
  int lengthSync() => throw UnsupportedError('Sync not supported');

  @override
  Future<DateTime> lastModified() async {
    final inode = await _fs.resolvepath(path);
    return DateTime.fromMillisecondsSinceEpoch(inode.modified);
  }

  @override
  DateTime lastModifiedSync() => throw UnsupportedError('Sync not supported');

  @override
  Future<DateTime> lastAccessed() async {
    return lastModified();
  }

  @override
  DateTime lastAccessedSync() => throw UnsupportedError('Sync not supported');

  @override
  Future<dynamic> setLastAccessed(DateTime time) async {}

  @override
  void setLastAccessedSync(DateTime time) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<dynamic> setLastModified(DateTime time) async {
    final inode = await _fs.resolvepath(path);
    await _fs.idb.updateInode(
      Inode(
        id: inode.id,
        parentId: inode.parentId,
        name: inode.name,
        nodeType: inode.nodeType,
        blobId: inode.blobId,
        size: inode.size,
        modified: time.millisecondsSinceEpoch,
      ),
    );
  }

  @override
  void setLastModifiedSync(DateTime time) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<RandomAccessFile> open({FileMode mode = FileMode.read}) async {
    throw UnsupportedError(
      'RandomAccessFile not supported on web (use streams)',
    );
  }

  @override
  RandomAccessFile openSync({FileMode mode = FileMode.read}) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<File> writeAsBytes(
    List<int> bytes, {
    FileMode mode = FileMode.write,
    bool flush = false,
  }) async {
    final stream = Stream.value(bytes);
    String newBlobId;
    int usedStorageType = 0; // 0 = OPFS, 1 = IDB

    try {
      // Try OPFS first
      newBlobId = await _fs.opfs.writeBlob(stream);
    } catch (e) {
      // Fallback to IDB on ANY error (TypeError, NotFoundError, etc)
      try {
        newBlobId = await _fs.idbStore.writeBlob(Stream.value(bytes));
        usedStorageType = 1;
      } catch (e2) {
        throw FileSystemException(
          'Write failed on both OPFS ($e) and IDB: $e2',
          path,
        );
      }
    }

    Inode inode;
    try {
      inode = await _fs.resolvepath(path);
      if (mode == FileMode.append) {
        throw UnsupportedError('Append not yet optimized');
      }
    } catch (_) {
      await create(recursive: true);
      inode = await _fs.resolvepath(path);
    }

    await _fs.idb.updateInode(
      Inode(
        id: inode.id,
        parentId: inode.parentId,
        name: inode.name,
        nodeType: inode.nodeType,
        blobId: newBlobId,
        size: bytes.length,
        modified: DateTime.now().millisecondsSinceEpoch,
        storageType: usedStorageType,
      ),
    );

    return this;
  }

  @override
  void writeAsBytesSync(
    List<int> bytes, {
    FileMode mode = FileMode.write,
    bool flush = false,
  }) {
    throw UnsupportedError('Sync not supported');
  }

  @override
  Future<File> writeAsString(
    String contents, {
    FileMode mode = FileMode.write,
    Encoding encoding = utf8,
    bool flush = false,
  }) async {
    return writeAsBytes(encoding.encode(contents), mode: mode, flush: flush);
  }

  @override
  void writeAsStringSync(
    String contents, {
    FileMode mode = FileMode.write,
    Encoding encoding = utf8,
    bool flush = false,
  }) {
    throw UnsupportedError('Sync not supported');
  }

  @override
  Stream<List<int>> openRead([int? start, int? end]) async* {
    final inode = await _fs.resolvepath(path);
    if (inode.blobId == null) return;

    if (inode.storageType == 1) {
      try {
        yield* _fs.idbStore.readBlob(inode.blobId!);
      } catch (e) {
        // Fallback to OPFS if IDB fails (maybe metadata is wrong)
        print(
          'Using fallback to OPFS for reading ${inode.name} (blob: ${inode.blobId}). Error: $e',
        );
        try {
          yield* _fs.opfs.readBlob(inode.blobId!);
        } catch (e2) {
          print('OPFS fallback ALSO failed for ${inode.name}: $e2');
          rethrow;
        }
      }
    } else {
      try {
        yield* _fs.opfs.readBlob(inode.blobId!);
      } catch (e) {
        // Fallback to IDB if OPFS fails
        print(
          'Using fallback to IDB for reading ${inode.name} (blob: ${inode.blobId}). Error: $e',
        );
        try {
          yield* _fs.idbStore.readBlob(inode.blobId!);
        } catch (e2) {
          print('IDB fallback ALSO failed for ${inode.name}: $e2');
          rethrow;
        }
      }
    }
  }

  @override
  IOSink openWrite({FileMode mode = FileMode.write, Encoding encoding = utf8}) {
    final controller = StreamController<List<int>>();

    // Start background write but keep future to await in close()
    final writeFuture = _handleWrite(controller.stream, encoding, mode);

    final sink = _WebIOSink(
      controller,
      encoding,
      onDone: () async {
        await writeFuture;
      },
    );

    return sink;
  }

  Future<void> _handleWrite(
    Stream<List<int>> stream,
    Encoding encoding,
    FileMode mode,
  ) async {
    try {
      String newId;
      int usedStorageType = 0; // 0 = OPFS, 1 = IDB

      try {
        newId = await _fs.opfs.writeBlob(stream);
      } catch (e) {
        // Fallback to IDB on ANY error
        newId = await _fs.idbStore.writeBlob(stream);
        usedStorageType = 1;
      }

      Inode inode;
      try {
        inode = await _fs.resolvepath(path);
      } catch (_) {
        // Create if missing
        await create(recursive: true);
        inode = await _fs.resolvepath(path);
      }

      await _fs.idb.updateInode(
        Inode(
          id: inode.id,
          parentId: inode.parentId,
          name: inode.name,
          nodeType: 0,
          blobId: newId,
          size:
              0, // TODO: Size not returned by OPFS yet, so 0 for streamed content
          modified: DateTime.now().millisecondsSinceEpoch,
          storageType: usedStorageType,
        ),
      );
    } catch (e) {
      throw FileSystemException('Write failed: $e', path);
    }
  }

  @override
  Future<Uint8List> readAsBytes() async {
    final chunks = await openRead().toList();
    return Uint8List.fromList(chunks.expand((x) => x).toList());
  }

  @override
  Uint8List readAsBytesSync() => throw UnsupportedError('Sync not supported');

  @override
  Future<String> readAsString({Encoding encoding = utf8}) async {
    final bytes = await readAsBytes();
    return encoding.decode(bytes);
  }

  @override
  String readAsStringSync({Encoding encoding = utf8}) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<List<String>> readAsLines({Encoding encoding = utf8}) async {
    final str = await readAsString(encoding: encoding);
    return str.split('\n');
  }

  @override
  List<String> readAsLinesSync({Encoding encoding = utf8}) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<bool> exists() async {
    try {
      final inode = await _fs.resolvepath(path);
      return inode.nodeType == 0;
    } catch (_) {
      return false;
    }
  }

  @override
  bool existsSync() => throw UnsupportedError('Sync not supported');

  @override
  Future<File> rename(String newPath) async {
    final inode = await _fs.resolvepath(path);
    final newParentDir = _fs.path.dirname(newPath);
    final newName = _fs.path.basename(newPath);
    final newParentInode = await _fs.resolvepath(newParentDir);

    final updated = Inode(
      id: inode.id,
      parentId: newParentInode.id,
      name: newName,
      nodeType: inode.nodeType,
      blobId: inode.blobId,
      size: inode.size,
      modified: DateTime.now().millisecondsSinceEpoch,
    );

    await _fs.idb.updateInode(updated);
    return WebFile(_fs, newPath);
  }

  @override
  File renameSync(String newPath) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<FileSystemEntity> delete({bool recursive = false}) async {
    final inode = await _fs.resolvepath(path);
    if (inode.blobId != null) {
      if (inode.storageType == 1) {
        await _fs.idbStore.deleteBlob(inode.blobId!);
      } else {
        await _fs.opfs.deleteBlob(inode.blobId!);
      }
    }
    await _fs.idb.deleteInode(inode.id);
    return this;
  }

  @override
  void deleteSync({bool recursive = false}) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<FileStat> stat() => _fs.stat(path);

  @override
  FileStat statSync() => throw UnsupportedError('Sync not supported');

  @override
  Uri get uri => Uri.parse(path);
  @override
  String get basename => _fs.path.basename(path);
  @override
  String get dirname => _fs.path.dirname(path);
  @override
  Directory get parent => _fs.directory(dirname);
  @override
  bool get isAbsolute => _fs.path.isAbsolute(path);
  @override
  File get absolute => WebFile(_fs, _fs.path.absolute(path));

  @override
  Future<String> resolveSymbolicLinks() async => path;

  @override
  String resolveSymbolicLinksSync() =>
      throw UnsupportedError('Sync not supported');

  @override
  Stream<FileSystemEvent> watch({
    int events = FileSystemEvent.all,
    bool recursive = false,
  }) {
    return const Stream.empty();
  }
}

class _WebIOSink implements IOSink {
  final StreamController<List<int>> _controller;
  final Future<void> Function()? onDone;
  Encoding _encoding;

  _WebIOSink(this._controller, this._encoding, {this.onDone});

  @override
  Encoding get encoding => _encoding;

  @override
  set encoding(Encoding value) => _encoding = value;

  @override
  void add(List<int> data) {
    _controller.add(data);
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    _controller.addError(error, stackTrace);
  }

  @override
  Future addStream(Stream<List<int>> stream) {
    return _controller.addStream(stream);
  }

  @override
  Future close() async {
    await _controller.close();
    if (onDone != null) await onDone!();
  }

  @override
  Future get done => _controller.done;

  @override
  Future flush() async {}

  @override
  void write(Object? object) {
    add(encoding.encode(object.toString()));
  }

  @override
  void writeAll(Iterable objects, [String separator = ""]) {
    write(objects.join(separator));
  }

  @override
  void writeCharCode(int charCode) {
    add([charCode]);
  }

  @override
  void writeln([Object? object = ""]) {
    write(object);
    write('\n');
  }
}
