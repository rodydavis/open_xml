import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';
import 'package:file/file.dart';
import 'package:web/web.dart' as web;
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

import 'backend/idb_inode_service.dart';
import 'backend/opfs_block_store.dart';
import 'backend/idb_block_store.dart';
import 'entities/web_directory.dart';
import 'entities/web_file.dart';
import 'entities/web_link.dart';

class WebFileSystem extends FileSystem {
  final IdbInodeService _idb = IdbInodeService();
  final OpfsBlockStore _opfs = OpfsBlockStore();
  final IdbBlockStore _idbStore = IdbBlockStore();
  final Uuid _uuid = Uuid();

  // Public matchers for internal use
  IdbInodeService get idb => _idb;
  OpfsBlockStore get opfs => _opfs;
  IdbBlockStore get idbStore => _idbStore;
  Uuid get uuid => _uuid;

  WebFileSystem();

  @override
  Directory directory(path) => WebDirectory(this, getPath(path));

  @override
  File file(path) => WebFile(this, getPath(path));

  @override
  Link link(path) => WebLink(this, getPath(path));

  @override
  p.Context get path => p.Context(style: p.Style.posix);

  @override
  Directory get currentDirectory => directory('/');

  @override
  set currentDirectory(dynamic path) {
    throw UnsupportedError('Changing CWD not supported on web');
  }

  @override
  Directory get systemTempDirectory => directory('/tmp');

  @override
  Future<FileSystemEntityType> type(
    String path, {
    bool followLinks = true,
  }) async {
    try {
      final inode = await resolvepath(path, followLinks: followLinks);
      if (inode.nodeType == 0) return FileSystemEntityType.file;
      if (inode.nodeType == 1) return FileSystemEntityType.directory;
      if (inode.nodeType == 2) return FileSystemEntityType.link;
      return FileSystemEntityType.notFound;
    } catch (e) {
      return FileSystemEntityType.notFound;
    }
  }

  @override
  FileSystemEntityType typeSync(String path, {bool followLinks = true}) {
    throw UnsupportedError('Sync type not supported');
  }

  // Internal Resolution Logic
  Future<Inode> resolvepath(String pathStr, {bool followLinks = true}) async {
    final normalized = path.normalize(pathStr);
    final parts = path.split(normalized);
    // Root is '/'
    String currentId = IdbInodeService.rootId;
    Inode currentInode = await _idb.getInode(currentId);

    // Common recursion guard
    int linkDepth = 0;
    const maxLinkDepth = 20;

    for (int i = 0; i < parts.length; i++) {
      final part = parts[i];
      if (part.isEmpty || part == '/' || part == '.') continue;

      // Lookup child
      final child = await _idb.getChild(currentId, part);
      if (child == null) {
        throw FileSystemException(
          'No such file or directory',
          pathStr,
          const OSError('ENOENT', 2),
        );
      }

      // If child is Link
      if (child.nodeType == 2) {
        // If we are at the last part, only follow if followLinks is true
        if (i == parts.length - 1 && !followLinks) {
          return child;
        }

        // Follow link
        if (child.blobId != null) {
          if (linkDepth++ > maxLinkDepth) {
            throw FileSystemException(
              'Too many levels of symbolic links',
              pathStr,
              const OSError('ELOOP', 40),
            );
          }

          // Read target
          final bytesList = await _opfs.readBlob(child.blobId!).toList();
          final bytes = bytesList.expand((x) => x).toList();
          final targetPath = utf8.decode(bytes);

          // Resolve target path
          // Standard: Relative to directory containing link if not absolute.
          String resolvedTarget;
          if (path.isAbsolute(targetPath)) {
            resolvedTarget = targetPath;
          } else {
            // Parent path relative to root
            final parentParts = parts.take(i).toList();
            // join behaves weirdly with context parts, ensure root if needed
            final parentStr = path.joinAll(['/', ...parentParts]);
            resolvedTarget = path.normalize(path.join(parentStr, targetPath));
          }

          // Resolve the target inode (ALWAYS follow links when resolving intermediate link targets)
          final targetInode = await resolvepath(
            resolvedTarget,
            followLinks: true,
          );

          // If we have more parts remaining in the original path, we must continue from this target
          if (i < parts.length - 1) {
            if (targetInode.nodeType != 1) {
              throw FileSystemException(
                'Not a directory',
                pathStr,
                const OSError('ENOTDIR', 20),
              );
            }
            currentId = targetInode.id;
            currentInode = targetInode;
            continue;
          } else {
            // End of path, return target
            return targetInode;
          }
        }
      }

      currentId = child.id;
      currentInode = child;
    }
    return currentInode;
  }

  @override
  String getPath(dynamic path) {
    if (path is String) return path;
    if (path is FileSystemEntity) return path.path;
    if (path is Uri) return path.toFilePath();
    throw ArgumentError('Path must be a String, Uri, or FileSystemEntity');
  }

  @override
  Future<FileStat> stat(String path) async {
    try {
      final inode = await resolvepath(path, followLinks: true);
      return FileStatImpl(inode.modified, inode.size, _getType(inode.nodeType));
    } catch (e) {
      return FileStatImpl(0, 0, FileSystemEntityType.notFound);
    }
  }

  @override
  FileStat statSync(String path) {
    throw UnsupportedError('Sync stat not supported');
  }

  FileSystemEntityType _getType(int nodeType) {
    if (nodeType == 0) return FileSystemEntityType.file;
    if (nodeType == 1) return FileSystemEntityType.directory;
    if (nodeType == 2) return FileSystemEntityType.link;
    return FileSystemEntityType.notFound;
  }

  @override
  bool isFileSync(String path) =>
      throw UnsupportedError('Sync isFile not supported');

  @override
  bool isDirectorySync(String path) =>
      throw UnsupportedError('Sync isDirectory not supported');

  @override
  bool isLinkSync(String path) =>
      throw UnsupportedError('Sync isLink not supported');

  @override
  Future<bool> isFile(String path) async =>
      (await type(path)) == FileSystemEntityType.file;

  @override
  Future<bool> isDirectory(String path) async =>
      (await type(path)) == FileSystemEntityType.directory;

  @override
  Future<bool> isLink(String path) async =>
      (await type(path, followLinks: false)) == FileSystemEntityType.link;

  @override
  bool get isWatchSupported => false;

  @override
  Future<bool> identical(String path1, String path2) async {
    final s1 = await stat(path1);
    final s2 = await stat(path2);
    if (s1.type == FileSystemEntityType.notFound ||
        s2.type == FileSystemEntityType.notFound) {
      return false;
    }

    final i1 = await resolvepath(path1);
    final i2 = await resolvepath(path2);
    return i1.id == i2.id;
  }

  @override
  @override
  bool identicalSync(String path1, String path2) =>
      throw UnsupportedError('Sync not supported');

  Future<web.Blob> getAsBlob(String path) async {
    final inode = await resolvepath(path);
    if (inode.nodeType != 0) throw FileSystemException('Not a file', path);
    if (inode.blobId == null) return web.Blob(<JSAny>[].toJS);

    if (inode.storageType == 1) {
      return _idbStore.getBlob(inode.blobId!);
    } else {
      return _opfs.getBlob(inode.blobId!);
    }
  }
}

class FileStatImpl implements FileStat {
  final int _modified;
  final int _size;
  final FileSystemEntityType _type;

  FileStatImpl(this._modified, this._size, this._type);

  @override
  DateTime get accessed => DateTime.fromMillisecondsSinceEpoch(_modified);

  @override
  DateTime get changed => DateTime.fromMillisecondsSinceEpoch(_modified);

  @override
  int get mode => 0;

  @override
  DateTime get modified => DateTime.fromMillisecondsSinceEpoch(_modified);

  @override
  int get size => _size;

  @override
  FileSystemEntityType get type => _type;

  @override
  String modeString() => 'rwxrwxrwx';
}
