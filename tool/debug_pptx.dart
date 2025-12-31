import 'dart:io';
import 'package:archive/archive.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart tool/debug_pptx.dart <path/to/file.pptx>');
    return;
  }

  final file = File(args.first);
  if (!file.existsSync()) {
    print('File not found: ${file.path}');
    return;
  }

  final bytes = file.readAsBytesSync();
  final archive = ZipDecoder().decodeBytes(bytes);

  print('--- File Listing ---');
  for (final file in archive) {
    print(file.name);
  }
  print('--------------------');

  print('\n--- [Content_Types].xml ---');
  _printFile(archive, '[Content_Types].xml');

  print('\n--- _rels/.rels ---');
  _printFile(archive, '_rels/.rels');

  print('\n--- ppt/_rels/presentation.xml.rels ---');
  _printFile(archive, 'ppt/_rels/presentation.xml.rels');

  print('\n--- ppt/slides/slide2.xml ---');
  _printFile(archive, 'ppt/slides/slide2.xml');

  print('\n--- ppt/slides/slide3.xml ---');
  _printFile(archive, 'ppt/slides/slide3.xml');

  print('\n--- ppt/slides/_rels/slide2.xml.rels ---');
  _printFile(archive, 'ppt/slides/_rels/slide2.xml.rels');
}

void _printFile(Archive archive, String name) {
  final file = archive.findFile(name);
  if (file != null) {
    print(String.fromCharCodes(file.content as List<int>));
  } else {
    print('NOT FOUND');
  }
}
