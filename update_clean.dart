import 'dart:io';

void main() {
  final file = File('lib/src/gen/pptx/clean.dart');
  var content = file.readAsStringSync();

  content = content.replaceAll("import 'dart:io';", "import 'package:file/file.dart';");

  // Remove main function
  final mainStart = content.indexOf('/// Command-line entry point for cleaning an unpacked PPTX directory.');
  if (mainStart != -1) {
    content = content.substring(0, mainStart);
  }

  // Define the methods we need to patch
  final methods = [
    'Set<String> _getSlidesInSldIdLst(Directory unpackedDir) {',
    'List<String> _removeOrphanedSlides(Directory unpackedDir) {',
    'List<String> _removeTrashDirectory(Directory unpackedDir) {',
    'Set<String> _getSlideReferencedFiles(Directory unpackedDir) {',
    'List<String> _removeOrphanedRelsFiles(Directory unpackedDir) {',
    'Set<String> _getReferencedFiles(Directory unpackedDir) {',
    'List<String> _removeOrphanedFiles(Directory unpackedDir, Set<String> referenced) {',
    'void _updateContentTypes(Directory unpackedDir, List<String> removedFiles) {',
  ];

  for (var method in methods) {
    if (content.contains(method)) {
      content = content.replaceFirst(method, method + '\n  final fs = unpackedDir.fileSystem;');
    }
  }

  // Special case for cleanUnusedFiles, doesn't use File or Directory constructors inside it directly except maybe it does? No it calls other methods.
  // Actually we can just replace File( and Directory( with fs.file( and fs.directory( globally, but only after the imports.
  
  // Wait, what if there's `if (entity is File)`? 
  // replacing `File(` and `Directory(` handles constructors.
  content = content.replaceAll('File(', 'fs.file(');
  content = content.replaceAll('Directory(', 'fs.directory(');

  file.writeAsStringSync(content);
}
