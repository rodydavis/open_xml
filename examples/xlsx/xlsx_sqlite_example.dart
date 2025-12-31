import 'package:file/local.dart';
import 'package:file/file.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:open_xml/open_xml.dart';

class ExportConfig {
  final String tableName;
  final List<String>? columns;
  final String? whereClause;

  ExportConfig({required this.tableName, this.columns, this.whereClause});
}

Future<void> main() async {
  print('Using sqlite3 version ${sqlite3.version}');
  const fs = LocalFileSystem();

  // 1. Setup Database
  final db = sqlite3.openInMemory();

  // Create sample tables
  db.execute('''
    CREATE TABLE users (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      email TEXT
    );
  ''');

  db.execute('''
    CREATE TABLE products (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      price REAL,
      stock INTEGER
    );
  ''');

  // Insert sample data
  final stmt = db.prepare('INSERT INTO users (name, email) VALUES (?, ?)');
  stmt.execute(['Alice', 'alice@example.com']);
  stmt.execute(['Bob', 'bob@example.com']);
  stmt.execute(['Charlie', 'charlie@example.com']);
  stmt.dispose();

  final pStmt = db.prepare(
    'INSERT INTO products (name, price, stock) VALUES (?, ?, ?)',
  );
  pStmt.execute(['Laptop', 999.99, 10]);
  pStmt.execute(['Mouse', 25.50, 100]);
  pStmt.execute(['Monitor', 200.00, 50]);
  pStmt.execute(['Keyboard', 45.00, 0]); // Out of stock
  pStmt.dispose();

  // Define exports
  final exports = [
    ExportConfig(tableName: 'users'), // Export all users
    ExportConfig(
      tableName: 'products',
      columns: ['name', 'price'],
      whereClause: 'stock > 0',
    ), // Export available products (name and price only)
  ];

  await exportSqliteToXlsx(db, fs.file('out/sqlite_example.xlsx'), exports, fs);

  db.dispose();
  print('Created sqlite_example.xlsx');
}

Future<void> exportSqliteToXlsx(
  Database db,
  File file,
  List<ExportConfig> configs,
  FileSystem fs,
) async {
  final workbook = await Workbook.create(fs);

  for (final config in configs) {
    final sheetName = config.tableName; // Simple naming
    final sheet = workbook.addSheet(sheetName);

    final columns = config.columns?.join(', ') ?? '*';
    var query = 'SELECT $columns FROM ${config.tableName}';
    if (config.whereClause != null) {
      query += ' WHERE ${config.whereClause}';
    }

    print('Executing: $query');
    final resultSet = db.select(query);

    if (resultSet.isNotEmpty) {
      // Headers
      final headerRow = sheet.addRow();
      for (final col in resultSet.columnNames) {
        headerRow.addCell(col);
      }

      // Rows
      for (final row in resultSet) {
        final sheetRow = sheet.addRow();
        // Iterate values in row
        for (var i = 0; i < row.length; i++) {
          sheetRow.addCell(row[resultSet.columnNames[i]]!);
        }
      }
    } else {
      // Add header only if empty result set (needs pragma table_info if wildcard)
      // For simplicity, just skip or add note.
      sheet.addRow().addCell('No data found for query: $query');
    }
  }

  await workbook.save(file);
}
