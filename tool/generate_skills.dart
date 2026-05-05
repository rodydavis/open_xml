import 'dart:io';

void copyDirectory(Directory source, Directory destination) {
  source.listSync(recursive: false).forEach((var entity) {
    if (entity is Directory) {
      var newDirectory = Directory('${destination.path}/${entity.uri.pathSegments.lastWhere((e) => e.isNotEmpty)}');
      newDirectory.createSync(recursive: true);
      copyDirectory(entity.absolute, newDirectory);
    } else if (entity is File) {
      entity.copySync('${destination.path}/${entity.uri.pathSegments.last}');
    }
  });
}

void generateMarkdownExamples(Directory sourceExamplesDir, Directory destDocsExamplesDir) {
  if (destDocsExamplesDir.existsSync()) {
    destDocsExamplesDir.deleteSync(recursive: true);
  }
  destDocsExamplesDir.createSync(recursive: true);

  for (final typeDir in sourceExamplesDir.listSync().whereType<Directory>()) {
    final typeName = typeDir.uri.pathSegments.lastWhere((e) => e.isNotEmpty);
    // Ignore internal dart directories or build folders
    if (typeName.startsWith('.')) continue;

    final destTypeDir = Directory('${destDocsExamplesDir.path}/$typeName');
    destTypeDir.createSync(recursive: true);

    for (final file in typeDir.listSync().whereType<File>().where((f) => f.path.endsWith('.dart'))) {
      final fileName = file.uri.pathSegments.last;
      final basename = fileName.replaceAll('.dart', '');
      final titleParts = basename.split('_').map((s) => s.isNotEmpty ? '${s[0].toUpperCase()}${s.substring(1)}' : '').join(' ');
      
      final content = file.readAsStringSync();
      
      final mdContent = '''# $titleParts Example

This is the example implementation for $titleParts.

```dart
$content
```
''';
      
      final mdFile = File('${destTypeDir.path}/$basename.md');
      mdFile.writeAsStringSync(mdContent);
    }
  }
}

void main() {
  final docsDir = Directory('docs');
  final skillsDir = Directory('skills');
  final rootExamplesDir = Directory('examples');
  final docsExamplesDir = Directory('docs/examples');

  if (!docsDir.existsSync()) {
    print('No docs directory found.');
    return;
  }

  // Generate markdown examples first
  if (rootExamplesDir.existsSync()) {
    generateMarkdownExamples(rootExamplesDir, docsExamplesDir);
  }

  // Clear existing skills to ensure clean generation
  if (skillsDir.existsSync()) {
    skillsDir.deleteSync(recursive: true);
  }
  skillsDir.createSync(recursive: true);

  final files = docsDir.listSync().whereType<File>().where((f) => f.path.endsWith('.md')).toList();

  for (final file in files) {
    final fileName = file.uri.pathSegments.last;
    final basename = fileName.replaceAll('.md', '');
    
    final typeParts = basename.split('_');
    var type = typeParts.length > 2 ? typeParts.last : basename;
    
    if (type == 'core') {
      type = 'package';
    }
    
    final name = 'open-xml-$type';
    final title = 'OpenXML ${type[0].toUpperCase()}${type.substring(1)}';
    final description = 'Guide and examples for using $title features in the open_xml package.';
    
    var content = file.readAsStringSync();
    if (type == 'package') {
      content = content.replaceAll('(open_xml_docx.md)', '(guides/open_xml_docx.md)');
      content = content.replaceAll('(open_xml_xlsx.md)', '(guides/open_xml_xlsx.md)');
      content = content.replaceAll('(open_xml_pptx.md)', '(guides/open_xml_pptx.md)');
    }
    
    final skillFolder = Directory('${skillsDir.path}/$name');
    if (!skillFolder.existsSync()) {
      skillFolder.createSync(recursive: true);
    }

    final skillExamplesFolder = Directory('${skillFolder.path}/examples');
    
    if (type == 'package') {
      if (docsExamplesDir.existsSync()) {
        skillExamplesFolder.createSync(recursive: true);
        copyDirectory(docsExamplesDir, skillExamplesFolder);
        
        content += '\n\n## Examples\n\n';
        for (final dir in docsExamplesDir.listSync().whereType<Directory>()) {
          final dirName = dir.uri.pathSegments.lastWhere((e) => e.isNotEmpty);
          content += '### ${dirName.toUpperCase()} Examples\n';
          final exampleFiles = dir.listSync().whereType<File>().where((f) => f.path.endsWith('.md')).toList();
          for (final exFile in exampleFiles) {
            final exName = exFile.uri.pathSegments.last;
            content += '- [${exName.replaceAll('.md', '')}](examples/$dirName/$exName)\n';
          }
          content += '\n';
        }
      }
    } else {
      final specificExamplesDir = Directory('${docsExamplesDir.path}/$type');
      if (specificExamplesDir.existsSync()) {
        skillExamplesFolder.createSync(recursive: true);
        copyDirectory(specificExamplesDir, skillExamplesFolder);
        
        content += '\n\n## Examples\n\n';
        final exampleFiles = specificExamplesDir.listSync().whereType<File>().where((f) => f.path.endsWith('.md')).toList();
        for (final exFile in exampleFiles) {
          final exName = exFile.uri.pathSegments.last;
          content += '- [${exName.replaceAll('.md', '')}](examples/$exName)\n';
        }
      }
    }
    
    final skillFile = File('${skillFolder.path}/SKILL.md');
    
    final output = '''---
name: $name
description: $description
---

$content
''';

    skillFile.writeAsStringSync(output);
    print('Generated skill for $name at ${skillFile.path}');

    if (type == 'package') {
      final guidesFolder = Directory('${skillFolder.path}/guides');
      guidesFolder.createSync();
      
      for (final otherFile in files) {
        if (otherFile.path != file.path) {
          final otherFileName = otherFile.uri.pathSegments.last;
          otherFile.copySync('${guidesFolder.path}/$otherFileName');
        }
      }
      print('Copied guides to ${guidesFolder.path}');
    }
  }
}
