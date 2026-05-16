import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'package:web/web.dart' as web;

extension type InodeJS._(JSObject _) implements JSObject {
  factory InodeJS({
    required String id,
    required String parentId,
    required String name,
    required int nodeType,
    String? blobId,
    int size = 0,
    required int modified,
    int storageType = 0,
  }) {
    final obj = JSObject();
    obj.setProperty('id'.toJS, id.toJS);
    obj.setProperty('parentId'.toJS, parentId.toJS);
    obj.setProperty('name'.toJS, name.toJS);
    obj.setProperty('nodeType'.toJS, nodeType.toJS);
    if (blobId != null) obj.setProperty('blobId'.toJS, blobId.toJS);
    obj.setProperty('size'.toJS, size.toJS);
    obj.setProperty('modified'.toJS, modified.toJS);
    obj.setProperty('storageType'.toJS, storageType.toJS);
    return obj as InodeJS;
  }
}

class Inode {
  final String id;
  final String parentId;
  final String name;
  final int nodeType;
  final String? blobId;
  final int size;
  final int modified;
  final int storageType; // 0: OPFS, 1: IDB

  Inode({
    required this.id,
    required this.parentId,
    required this.name,
    required this.nodeType,
    this.blobId,
    this.size = 0,
    required this.modified,
    this.storageType = 0,
  });

  InodeJS toJS() {
    return InodeJS(
      id: id,
      parentId: parentId,
      name: name,
      nodeType: nodeType,
      blobId: blobId,
      size: size,
      modified: modified,
      storageType: storageType,
    );
  }

  static Inode fromJS(InodeJS js) {
    final obj = js as JSObject;
    final id = obj.getProperty('id'.toJS);
    final parentId = obj.getProperty('parentId'.toJS);
    final name = obj.getProperty('name'.toJS);
    final nodeType = obj.getProperty('nodeType'.toJS);
    final blobId = obj.getProperty('blobId'.toJS);
    final size = obj.getProperty('size'.toJS);
    final modified = obj.getProperty('modified'.toJS);
    final storageType = obj.getProperty('storageType'.toJS);

    return Inode(
      id: id != null && !id.isUndefinedOrNull ? (id as JSString).toDart : '',
      parentId: parentId != null && !parentId.isUndefinedOrNull ? (parentId as JSString).toDart : '',
      name: name != null && !name.isUndefinedOrNull ? (name as JSString).toDart : '',
      nodeType: nodeType != null && !nodeType.isUndefinedOrNull ? (nodeType as JSNumber).toDartInt : 0,
      blobId: blobId != null && !blobId.isUndefinedOrNull ? (blobId as JSString).toDart : null,
      size: size != null && !size.isUndefinedOrNull ? (size as JSNumber).toDartInt : 0,
      modified: modified != null && !modified.isUndefinedOrNull ? (modified as JSNumber).toDartInt : 0,
      storageType: storageType != null && !storageType.isUndefinedOrNull ? (storageType as JSNumber).toDartInt : 0,
    );
  }
}

class IdbInodeService {
  static const String _dbName = 'WebFileSystemDB';
  static const int _version = 1;
  static const String _storeName = 'inodes';

  web.IDBDatabase? _db;
  final Completer<void> _initCompleter = Completer<void>();
  static const String rootId = '00000000-0000-0000-0000-000000000000';

  Future<void> _ensureReady() async {
    if (_db != null) return;
    if (_initCompleter.isCompleted) return _initCompleter.future;

    final request = web.window.indexedDB.open(_dbName, _version);

    request.onupgradeneeded = (web.IDBVersionChangeEvent event) {
      final db =
          (event.target as web.IDBOpenDBRequest).result as web.IDBDatabase;
      if (!db.objectStoreNames.contains(_storeName)) {
        final store = db.createObjectStore(
          _storeName,
          web.IDBObjectStoreParameters(keyPath: 'id'.toJS),
        );
        store.createIndex(
          'parentId',
          'parentId'.toJS,
          web.IDBIndexParameters(unique: false),
        );
        store.createIndex(
          'parent_name',
          ['parentId'.toJS, 'name'.toJS].toJS,
          web.IDBIndexParameters(unique: true),
        );
      }
    }.toJS;

    final completer = Completer<void>();

    request.onsuccess = (web.Event event) {
      _db = (event.target as web.IDBOpenDBRequest).result as web.IDBDatabase;
      _ensureRootExists()
          .then((_) {
            if (!_initCompleter.isCompleted) completer.complete();
          })
          .catchError((e) {
            if (!_initCompleter.isCompleted) completer.completeError(e);
          });
    }.toJS;

    request.onerror = (web.Event event) {
      if (!_initCompleter.isCompleted) {
        completer.completeError(Exception('Failed to open IDB'));
      }
    }.toJS;

    return completer.future;
  }

  Future<void> _ensureRootExists() async {
    try {
      await getInode(rootId);
    } catch (_) {
      await createInode(
        Inode(
          id: rootId,
          parentId: 'null',
          name: '',
          nodeType: 1,
          modified: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
  }

  Future<void> createInode(Inode inode) async {
    if (_db == null) await _ensureReady();
    final transaction = _db!.transaction(
      _storeName.toJS,
      'readwrite',
    );
    final store = transaction.objectStore(_storeName);
    final request = store.put(inode.toJS());
    await _requestToFuture(request);
  }

  Future<void> updateInode(Inode inode) async {
    await createInode(inode);
  }

  Future<void> deleteInode(String id) async {
    await _ensureReady();
    final transaction = _db!.transaction(
      _storeName.toJS,
      'readwrite',
    );
    final store = transaction.objectStore(_storeName);
    final request = store.delete(id.toJS);
    await _requestToFuture(request);
  }

  Future<Inode> getInode(String id) async {
    if (_db == null) await _ensureReady();

    final transaction = _db!.transaction(
      _storeName.toJS,
      'readonly',
    );
    final store = transaction.objectStore(_storeName);
    final request = store.get(id.toJS);
    final result = await _requestToFuture(request);
    if (result == null) throw Exception('Inode $id not found');

    return Inode.fromJS(result as InodeJS);
  }

  Future<Inode?> getChild(String parentId, String name) async {
    await _ensureReady();
    final transaction = _db!.transaction(
      _storeName.toJS,
      'readonly',
    );
    final store = transaction.objectStore(_storeName);
    final index = store.index('parent_name');
    final key = JSArray();
    key.add(parentId.toJS);
    key.add(name.toJS);

    final request = index.get(key);

    try {
      final result = await _requestToFuture(request);
      if (result == null) return null;
      return Inode.fromJS(result as InodeJS);
    } catch (e) {
      return null;
    }
  }

  Future<List<Inode>> listChildren(String parentId) async {
    await _ensureReady();
    final transaction = _db!.transaction(
      _storeName.toJS,
      'readonly',
    );
    final store = transaction.objectStore(_storeName);
    final index = store.index('parentId');
    final request = index.getAll(parentId.toJS);

    final result = await _requestToFuture(request);
    final list = (result as JSArray).toDart;
    return list.map((item) => Inode.fromJS(item as InodeJS)).toList();
  }

  Future<dynamic> _requestToFuture(web.IDBRequest request) {
    final completer = Completer<dynamic>();
    request.onsuccess = (web.Event e) {
      completer.complete((e.target as web.IDBRequest).result);
    }.toJS;
    request.onerror = (web.Event e) {
      completer.completeError(Exception('IDB Error'));
    }.toJS;
    return completer.future;
  }
}
