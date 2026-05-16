import 'dart:async';
import 'dart:js_interop';
import 'dart:typed_data';
import 'package:web/web.dart' as web;
import 'package:uuid/uuid.dart';

class OpfsBlockStore {
  static const String _blocksDirName = '.blocks';
  web.FileSystemDirectoryHandle? _blocksDir;
  final Uuid _uuid = Uuid();

  Future<void> _ensureReady() async {
    if (_blocksDir != null) return;

    final web.StorageManager storage = web.window.navigator.storage;

    final root = await storage.getDirectory().toDart;
    _blocksDir = await root
        .getDirectoryHandle(
          _blocksDirName,
          web.FileSystemGetDirectoryOptions(create: true),
        )
        .toDart;
  }

  Future<String> writeBlob(Stream<List<int>> stream) async {
    await _ensureReady();
    final blockId = _uuid.v4();

    final fileHandle = await _blocksDir!
        .getFileHandle(blockId, web.FileSystemGetFileOptions(create: true))
        .toDart;

    final writable = await fileHandle.createWritable().toDart;

    try {
      await for (final chunk in stream) {
        final uint8 = Uint8List.fromList(chunk);
        await writable.write(uint8.toJS).toDart;
      }
      await writable.close().toDart;
    } catch (e) {
      try {
        await writable.abort().toDart;
        await _blocksDir!.removeEntry(blockId).toDart;
      } catch (_) {}
      print('OpfsBlockStore: writeBlob failed for $blockId: $e');
      rethrow;
    }

    return blockId;
  }

  Stream<List<int>> readBlob(String blockId) async* {
    await _ensureReady();
    try {
      final fileHandle = await _blocksDir!.getFileHandle(blockId).toDart;

      final file = await fileHandle.getFile().toDart;
      final web.Blob blob = file;
      final reader =
          blob.stream().getReader() as web.ReadableStreamDefaultReader;

      while (true) {
        final result = await reader.read().toDart;
        if (result.done) break;
        // Cast to JSUint8Array (via package:web assumption or direct JSObject)
        final chunk = result.value as JSUint8Array;
        yield chunk.toDart;
      }
    } catch (e) {
      print('OpfsBlockStore: readBlob failed for $blockId: $e');
      rethrow;
    }
  }

  Future<void> deleteBlob(String blockId) async {
    await _ensureReady();
    try {
      await _blocksDir!.removeEntry(blockId).toDart;
    } catch (e) {
      // Ignore if not found
    }
  }

  Future<web.Blob> getBlob(String blockId) async {
    await _ensureReady();
    final fileHandle = await _blocksDir!.getFileHandle(blockId).toDart;
    final file = await fileHandle.getFile().toDart;
    return file;
  }
}
