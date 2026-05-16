import 'dart:async';
import 'package:file/file.dart';
import '../backend/idb_inode_service.dart';
import '../web_file_system.dart';
import 'web_file.dart';

class WebDirectory extends FileSystemEntity implements Directory {
  final WebFileSystem _fs;
  @override
  final String path;

  WebDirectory(this._fs, this.path);

  @override
  FileSystem get fileSystem => _fs;

  @override
  Uri get uri => Uri.parse(path);

  @override
  Future<Directory> create({bool recursive = false}) async {
    if (await exists()) return this;

    final parentPath = _fs.path.dirname(path);
    final name = _fs.path.basename(path);

    if (recursive) {
      await _createRecursiveSafe(path);
      return this;
    }

    // Validate parent exists (handled by resolvepath usually throwing, or we must check)
    // We assume parent must exist if not recursive.
    final parentInode = await _fs.resolvepath(parentPath); // throws if missing

    try {
      await _fs.idb.createInode(
        Inode(
          id: _fs.uuid.v4(),
          parentId: parentInode.id,
          name: name,
          nodeType: 1, // Directory
          modified: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    } catch (_) {
      if (!await exists()) rethrow;
    }

    return this;
  }

  Future<void> _createRecursiveSafe(String p) async {
    if (p == '/' || p == '.') return;
    if (await _fs.type(p) != FileSystemEntityType.notFound) return;

    await _createRecursiveSafe(_fs.path.dirname(p));
    final parentVal = await _fs.resolvepath(_fs.path.dirname(p));
    try {
      await _fs.idb.createInode(
        Inode(
          id: _fs.uuid.v4(),
          parentId: parentVal.id,
          name: _fs.path.basename(p),
          nodeType: 1,
          modified: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    } catch (_) {
      if (await _fs.type(p) == FileSystemEntityType.notFound) rethrow;
    }
  }

  @override
  void createSync({bool recursive = false}) {
    throw UnsupportedError('Sync create not supported');
  }

  @override
  Future<Directory> createTemp([String? prefix]) async {
    final name = (prefix ?? 'temp') + _fs.uuid.v4();
    final tempDir = _fs.path.join(path, name);
    // Ensure path exists
    if (!await exists()) {
      if (path == '/tmp') {
        await create();
      } else {
        throw FileSystemException(
          'Directory does not exist',
          path,
          const OSError('ENOENT', 2),
        );
      }
    }
    final dir = WebDirectory(_fs, tempDir);
    await dir.create();
    return dir;
  }

  @override
  Directory createTempSync([String? prefix]) {
    throw UnsupportedError('Sync not supported');
  }

  @override
  Future<FileSystemEntity> delete({bool recursive = false}) async {
    final inode = await _fs.resolvepath(path);

    final children = await _fs.idb.listChildren(inode.id);
    if (children.isNotEmpty && !recursive) {
      throw FileSystemException(
        'Directory not empty',
        path,
        const OSError('ENOTEMPTY', 39),
      );
    }

    if (recursive) {
      for (final child in children) {
        final childPath = _fs.path.join(path, child.name);
        if (child.nodeType == 1) {
          await _fs.directory(childPath).delete(recursive: true);
        } else {
          await _fs.file(childPath).delete();
        }
      }
    }

    await _fs.idb.deleteInode(inode.id);
    return this;
  }

  @override
  void deleteSync({bool recursive = false}) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<bool> exists() async {
    try {
      final inode = await _fs.resolvepath(path);
      return inode.nodeType == 1;
    } catch (_) {
      return false;
    }
  }

  @override
  bool existsSync() => throw UnsupportedError('Sync not supported');

  @override
  Stream<FileSystemEntity> list({
    bool recursive = false,
    bool followLinks = true,
  }) async* {
    if (!await exists()) {
      throw FileSystemException(
        'Directory not found',
        path,
        const OSError('ENOENT', 2),
      );
    }

    final inode = await _fs.resolvepath(path);
    final children = await _fs.idb.listChildren(inode.id);

    for (final child in children) {
      final childPath = _fs.path.join(path, child.name);
      if (child.nodeType == 1) {
        final dir = WebDirectory(_fs, childPath);
        yield dir;
        if (recursive) {
          yield* dir.list(recursive: true, followLinks: followLinks);
        }
      } else {
        yield WebFile(_fs, childPath);
      }
    }
  }

  @override
  List<FileSystemEntity> listSync({
    bool recursive = false,
    bool followLinks = true,
  }) {
    throw UnsupportedError('Sync list not supported');
  }

  @override
  Future<Directory> rename(String newPath) async {
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
    return WebDirectory(_fs, newPath);
  }

  @override
  Directory renameSync(String newPath) =>
      throw UnsupportedError('Sync not supported');

  @override
  String get basename => _fs.path.basename(path);

  @override
  String get dirname => _fs.path.dirname(path);

  @override
  Directory get parent => _fs.directory(dirname);

  @override
  bool get isAbsolute => _fs.path.isAbsolute(path);

  @override
  Directory get absolute => WebDirectory(_fs, _fs.path.absolute(path));

  @override
  Future<FileStat> stat() => _fs.stat(path);

  @override
  FileStat statSync() => throw UnsupportedError('Sync not supported');

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

  @override
  Directory childDirectory(String basename) =>
      _fs.directory(_fs.path.join(path, basename));

  @override
  File childFile(String basename) => _fs.file(_fs.path.join(path, basename));

  @override
  Link childLink(String basename) => _fs.link(_fs.path.join(path, basename));
}
