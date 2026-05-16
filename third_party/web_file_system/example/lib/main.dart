import 'package:flutter/material.dart';
import 'package:web_file_system/web_file_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web File System Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FileSystemDemo(),
    );
  }
}

class FileSystemDemo extends StatefulWidget {
  const FileSystemDemo({super.key});

  @override
  State<FileSystemDemo> createState() => _FileSystemDemoState();
}

class _FileSystemDemoState extends State<FileSystemDemo> {
  final WebFileSystem _fs = WebFileSystem();
  final List<String> _logs = [];
  String _currentPath = '/';
  List<FileSystemEntity> _files = [];

  @override
  void initState() {
    super.initState();
    _refreshFiles();
  }

  void _log(String message) {
    setState(() {
      _logs.add('${DateTime.now().toIso8601String()}: $message');
      // Keep last 50 logs
      if (_logs.length > 50) {
        _logs.removeAt(0);
      }
    });
  }

  Future<void> _refreshFiles() async {
    try {
      final dir = _fs.directory(_currentPath);
      if (await dir.exists()) {
        final files = await dir.list().toList();
        setState(() {
          _files = files;
        });
      } else {
        // Create root if missing (should be auto-created by service but just in case)
        if (_currentPath == '/') {
          // Root always exists virtually in our logic, but let's Ensure
        }
      }
    } catch (e) {
      _log('Error listing: $e');
    }
  }

  Future<void> _createFile() async {
    try {
      final name = 'test_${DateTime.now().millisecondsSinceEpoch}.txt';
      final file = _fs.file('$_currentPath/$name');
      await file.writeAsString('Hello Web FS at ${DateTime.now()}');
      _log('Created file: $name');
      await _refreshFiles();
    } catch (e) {
      _log('Error creating file: $e');
    }
  }

  Future<void> _createDir() async {
    try {
      final name = 'dir_${DateTime.now().millisecondsSinceEpoch}';
      await _fs.directory('$_currentPath/$name').create();
      _log('Created dir: $name');
      await _refreshFiles();
    } catch (e) {
      _log('Error creating dir: $e');
    }
  }

  Future<void> _delete(FileSystemEntity entity) async {
    try {
      await entity.delete(recursive: true);
      _log('Deleted: ${entity.basename}');
      await _refreshFiles();
    } catch (e) {
      _log('Error deleting: $e');
    }
  }

  Future<int> _getSize(FileSystemEntity entity) async {
    if (entity is File) {
      return await entity.length();
    } else if (entity is Directory) {
      int total = 0;
      try {
        await for (final child in entity.list(recursive: true)) {
          if (child is File) {
            total += await child.length();
          }
        }
      } catch (e) {
        // ignore errors
      }
      return total;
    }
    return 0;
  }

  String _formatBytes(int bytes) {
    const suffixes = ['B', 'KB', 'MB', 'GB'];
    var i = 0;
    double size = bytes.toDouble();
    while (size > 1024 && i < suffixes.length - 1) {
      size /= 1024;
      i++;
    }
    return '${size.toStringAsFixed(1)} ${suffixes[i]}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web File System ($_currentPath)'),
        actions: [
          // Refresh icon
          IconButton(
            tooltip: 'Refresh',
            icon: const Icon(Icons.refresh),
            onPressed: _refreshFiles,
          ),
        ],
      ),
      body: Column(
        children: [
          Wrap(
            spacing: 8,
            children: [
              ElevatedButton(
                onPressed: _createFile,
                child: const Text('New File'),
              ),
              ElevatedButton(
                onPressed: _createDir,
                child: const Text('New Directory'),
              ),
              if (_currentPath != '/')
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentPath = _fs.path.dirname(_currentPath);
                    });
                    _refreshFiles();
                  },
                  child: const Text('Go Up'),
                ),
            ],
          ),
          const Divider(),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: _files.length,
              itemBuilder: (context, index) {
                final entity = _files[index];
                return ListTile(
                  leading: Icon(
                    entity is Directory ? Icons.folder : Icons.description,
                    color: entity is Directory ? Colors.amber : Colors.blue,
                  ),
                  title: Text(entity.basename),
                  subtitle: FutureBuilder<int>(
                    future: _getSize(entity),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(_formatBytes(snapshot.data!));
                      }
                      return const Text('Loading...');
                    },
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _delete(entity),
                  ),
                  onTap: () {
                    if (entity is Directory) {
                      setState(() {
                        _currentPath = entity.path;
                      });
                      _refreshFiles();
                    } else if (entity is File) {
                      entity.readAsString().then((content) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(entity.basename),
                            content: SingleChildScrollView(
                              child: Text(content),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        );
                      });
                    }
                  },
                );
              },
            ),
          ),
          const Divider(),
          const Text('Logs:', style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black12,
              child: ListView.builder(
                itemCount: _logs.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    _logs[_logs.length - 1 - index],
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'monospace',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
