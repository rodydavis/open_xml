import 'dart:async';
import 'dart:convert';
import 'package:file/file.dart';
import '../backend/idb_inode_service.dart';
import '../web_file_system.dart';

class WebLink extends FileSystemEntity implements Link {
  final WebFileSystem _fs;
  @override
  final String path;

  WebLink(this._fs, this.path);

  @override
  FileSystem get fileSystem => _fs;

  @override
  Future<Link> create(String target, {bool recursive = false}) async {
    if (await exists()) {
      // Should throw if exists? Standard create throws if already exists usually unless overwrite logic applied?
      // create(recursive) usually implies ensuring parent exists.
      throw FileSystemException(
        'Link already exists',
        path,
        const OSError('EEXIST', 17),
      );
    }

    if (recursive) {
      final parentDir = _fs.path.dirname(path);
      if (await _fs.type(parentDir) == FileSystemEntityType.notFound) {
        await _fs.directory(parentDir).create(recursive: true);
      }
    }

    // Write target path string to OPFS blob
    final stream = Stream.value(utf8.encode(target));
    final blobId = await _fs.opfs.writeBlob(stream);

    final parentPath = _fs.path.dirname(path);
    final parentInode = await _fs.resolvepath(parentPath);

    await _fs.idb.createInode(
      Inode(
        id: _fs.uuid.v4(),
        parentId: parentInode.id,
        name: _fs.path.basename(path),
        nodeType: 2, // Link
        blobId: blobId,
        size: target.length,
        modified: DateTime.now().millisecondsSinceEpoch,
      ),
    );

    return this;
  }

  @override
  void createSync(String target, {bool recursive = false}) {
    throw UnsupportedError('Sync not supported');
  }

  @override
  Future<Link> update(String target) async {
    final inode = await _fs.resolvepath(path, followLinks: false);

    // Write new blob
    final stream = Stream.value(utf8.encode(target));
    final blobId = await _fs.opfs.writeBlob(stream);

    await _fs.idb.updateInode(
      Inode(
        id: inode.id,
        parentId: inode.parentId,
        name: inode.name,
        nodeType: 2,
        blobId: blobId,
        size: target.length,
        modified: DateTime.now().millisecondsSinceEpoch,
      ),
    );

    return this;
  }

  @override
  void updateSync(String target) {
    throw UnsupportedError('Sync not supported');
  }

  @override
  Future<String> target() async {
    final inode = await _fs.resolvepath(path, followLinks: false);
    if (inode.nodeType != 2) {
      throw FileSystemException(
        'Not a link',
        path,
        const OSError('EINVAL', 22),
      );
    }
    if (inode.blobId == null) return '';

    final bytesList = await _fs.opfs.readBlob(inode.blobId!).toList();
    final bytes = bytesList.expand((x) => x).toList();
    return utf8.decode(bytes);
  }

  @override
  String targetSync() {
    throw UnsupportedError('Sync not supported');
  }

  @override
  Future<Link> rename(String newPath) async {
    final inode = await _fs.resolvepath(path, followLinks: false);
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
    return WebLink(_fs, newPath);
  }

  @override
  Link renameSync(String newPath) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<FileSystemEntity> delete({bool recursive = false}) async {
    final inode = await _fs.resolvepath(path, followLinks: false);
    await _fs.idb.deleteInode(inode.id);
    return this;
  }

  @override
  void deleteSync({bool recursive = false}) =>
      throw UnsupportedError('Sync not supported');

  @override
  Future<bool> exists() async {
    try {
      final inode = await _fs.resolvepath(path, followLinks: false);
      return inode.nodeType == 2;
    } catch (_) {
      return false;
    }
  }

  @override
  bool existsSync() => throw UnsupportedError('Sync not supported');

  @override
  Future<FileStat> stat() async => (await _fs.stat(path));

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
  Link get absolute => WebLink(_fs, _fs.path.absolute(path));

  @override
  Future<String> resolveSymbolicLinks() async {
    // If we are a link, return target? No, resolveSymbolicLinks follows all the way to canonical path.
    // For now, simpler: resolve path logic.
    final targetPath = await target();
    // If target is relative, resolve against directory. This gets complex.
    // MVP: Return target path raw? No, contract says "path with all symbolic links resolved".
    // This requires full traversal logic.
    // For MVP just return the path as we stored it if it's absolute, or join if relative.
    if (_fs.path.isAbsolute(targetPath)) return targetPath;
    return _fs.path.normalize(_fs.path.join(dirname, targetPath));
  }

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
