import 'dart:io';
import 'package:path/path.dart' as p;

void main() {
  final examplesDir = Directory('examples');
  final testExamplesDir = Directory('test/examples');
  
  if (!examplesDir.existsSync()) {
    print('examples directory not found');
    return;
  }

  if (testExamplesDir.existsSync()) {
    testExamplesDir.deleteSync(recursive: true);
  }
  testExamplesDir.createSync(recursive: true);

  final files = examplesDir.listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'))
      .toList();

  for (final file in files) {
    var content = file.readAsStringSync();
    
    // Add test package import
    if (!content.contains("import 'package:test/test.dart';")) {
      content = "import 'package:test/test.dart';\n" + content;
    }

    // Fix paths
    content = content.replaceAll("'../templates/", "'templates/");
    content = content.replaceAll("'../../templates/", "'templates/");

    // Fix relative imports to point to _test.dart
    content = content.replaceAllMapped(RegExp(r"import '([^']+)\.dart'"), (m) {
      final path = m.group(1)!;
      if (!path.startsWith('package:') && !path.startsWith('dart:')) {
        return "import '${path}_test.dart'";
      }
      return m.group(0)!;
    });

    // Replace main function signature
    final mainRegex = RegExp(r'(Future<void>|void)\s+main\(\)\s*(async)?\s*\{');
    final match = mainRegex.firstMatch(content);
    
    if (match != null) {
      final isAsync = match.group(2) != null;
      final testName = p.basenameWithoutExtension(file.path);
      
      content = content.replaceFirst(
        mainRegex, 
        'Future<void> exampleMain() async {'
      );
      
      content += '''
void main() {
  test('$testName', () async {
    await exampleMain();
  });
}
''';
    } else {
      print('Warning: Could not find main function in ${file.path}. Adding dummy main.');
      content += '\n\nvoid main() {}\n';
    }

    // Determine output path
    final relativePath = p.relative(file.path, from: 'examples');
    final outPath = p.join(testExamplesDir.path, relativePath.replaceAll('.dart', '_test.dart'));
    final outFile = File(outPath);
    
    if (!outFile.parent.existsSync()) {
      outFile.parent.createSync(recursive: true);
    }
    
    outFile.writeAsStringSync(content);
    print('Ported ${file.path} to ${outFile.path}');
  }
}
