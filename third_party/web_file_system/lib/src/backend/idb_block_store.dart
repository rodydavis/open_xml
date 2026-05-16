import 'dart:async';
import 'dart:js_interop';
import 'dart:typed_data';
import 'package:web/web.dart' as web;
import 'package:uuid/uuid.dart';

class IdbBlockStore {
  static const String _dbName = 'WebFileSystemBlobs';
  static const int _version = 1;
  static const String _storeName = 'blobs';

  web.IDBDatabase? _db;
  final Completer<void> _initCompleter = Completer<void>();
  final Uuid _uuid = Uuid();

  Future<void> _ensureReady() async {
    if (_db != null) return;
    if (_initCompleter.isCompleted) return _initCompleter.future;

    final request = web.window.indexedDB.open(_dbName, _version);

    request.onupgradeneeded = (web.IDBVersionChangeEvent event) {
      final db =
          (event.target as web.IDBOpenDBRequest).result as web.IDBDatabase;
      if (!db.objectStoreNames.contains(_storeName)) {
        db.createObjectStore(_storeName);
      }
    }.toJS;

    final completer = Completer<void>();

    request.onsuccess = (web.Event event) {
      _db = (event.target as web.IDBOpenDBRequest).result as web.IDBDatabase;
      if (!_initCompleter.isCompleted) completer.complete();
    }.toJS;

    request.onerror = (web.Event event) {
      if (!_initCompleter.isCompleted) {
        completer.completeError(Exception('Failed to open Blob IDB'));
      }
    }.toJS;

    return completer.future;
  }

  Future<String> writeBlob(Stream<List<int>> stream) async {
    await _ensureReady();
    final blockId = _uuid.v4();

    // Read all bytes into memory to store in IDB (IDB requires complete blob/buffer usually)
    // For streams, we must materialize them.
    final chunks = await stream.toList();
    final allBytes = chunks.expand((x) => x).toList();
    final uint8Array = Uint8List.fromList(allBytes).toJS;

    final transaction = _db!.transaction(
      _storeName.toJS,
      'readwrite',
    );
    final store = transaction.objectStore(_storeName);

    // Using put(value, key) since we didn't specify keyPath/autoIncrement
    final request = store.put(uint8Array, blockId.toJS);
    await _requestToFuture(request);

    return blockId;
  }

  Stream<List<int>> readBlob(String blockId) async* {
    await _ensureReady();
    final transaction = _db!.transaction(
      _storeName.toJS,
      'readonly',
    );
    final store = transaction.objectStore(_storeName);
    final request = store.get(blockId.toJS);

    final result = await _requestToFuture(request);
    if (result == null) throw Exception('Blob $blockId not found');

    // result is JSUint8Array or ArrayBuffer
    final uint8Array = result as JSUint8Array;
    yield uint8Array.toDart;
  }

  Future<void> deleteBlob(String blockId) async {
    await _ensureReady();
    final transaction = _db!.transaction(
      _storeName.toJS,
      'readwrite',
    );
    final store = transaction.objectStore(_storeName);
    final request = store.delete(blockId.toJS);
    await _requestToFuture(request);
  }

  Future<web.Blob> getBlob(String blockId) async {
    await _ensureReady();
    final transaction = _db!.transaction(
      _storeName.toJS,
      'readonly',
    );
    final store = transaction.objectStore(_storeName);
    final request = store.get(blockId.toJS);

    final result = await _requestToFuture(request);
    if (result == null) throw Exception('Blob $blockId not found');

    final uint8Array = result as JSUint8Array;
    return web.Blob([uint8Array].toJS);
  }

  Future<dynamic> _requestToFuture(web.IDBRequest request) {
    final completer = Completer<dynamic>();
    request.onsuccess = (web.Event e) {
      completer.complete((e.target as web.IDBRequest).result);
    }.toJS;
    request.onerror = (web.Event e) {
      completer.completeError(Exception('IDB Blob Error'));
    }.toJS;
    return completer.future;
  }
}
