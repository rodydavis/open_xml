import 'dart:io';
import 'package:path/path.dart' as p;

void main() {
  final examplesDir = Directory('examples');
  final testFile = File('examples/test/examples_test.dart');
  
  if (!examplesDir.existsSync()) {
    print('examples directory not found');
    return;
  }

  final files = examplesDir.listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'))
      .toList();

  final buffer = StringBuffer();
  buffer.writeln("import 'package:test/test.dart';");
  
  final aliases = <String>[];
  int i = 0;
  for (final file in files) {
    // Relative path from examples/test/ to the example file
    final relativePath = p.relative(file.path, from: 'examples/test');
    final alias = 'example_$i';
    aliases.add(alias);
    buffer.writeln("import '${relativePath.replaceAll('\\\\', '/')}' as $alias;");
    i++;
  }

  buffer.writeln();
  buffer.writeln("void main() {");
  buffer.writeln("  group('Examples Integration Tests', () {");
  
  for (int j = 0; j < files.length; j++) {
    final file = files[j];
    final testName = p.basenameWithoutExtension(file.path);
    final alias = aliases[j];
    
    buffer.writeln("    test('$testName', () async {");
    // Ensure all print statements inside the examples don't pollute test output too much? Let them be.
    buffer.writeln("      await $alias.main();");
    buffer.writeln("    });");
  }

  buffer.writeln("  });");
  buffer.writeln("}");

  testFile.writeAsStringSync(buffer.toString());
  print('Generated ${testFile.path} with ${files.length} example tests.');
}
