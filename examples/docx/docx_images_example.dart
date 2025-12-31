import 'dart:typed_data';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputDir = fs.directory('out');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  // Create a dummy image file
  final imagePath = 'out/test_image.png';
  final imageFile = fs.file(imagePath);
  await imageFile.writeAsBytes(_createDummyPng());

  final doc = await WordDocument.create(fs);

  // Paragraph with Image
  final p1 = Paragraph();
  p1.addText('Here is an inline image: ');
  p1.addImage(
    imagePath,
    width: 1000000,
    height: 1000000,
  ); // 1000000 EMUs ~ 2.7cm
  p1.addText(' followed by more text.');
  doc.addParagraph(p1);

  // Another paragraph
  doc.addParagraph(Paragraph()..addText('End of document.'));

  final outputPath = 'out/docx_images.docx';
  await doc.save(fs.file(outputPath));
  print('Created $outputPath');
}

Uint8List _createDummyPng() {
  // 1x1 pixel red png
  return Uint8List.fromList([
    0x89,
    0x50,
    0x4E,
    0x47,
    0x0D,
    0x0A,
    0x1A,
    0x0A,
    0x00,
    0x00,
    0x00,
    0x0D,
    0x49,
    0x48,
    0x44,
    0x52,
    0x00,
    0x00,
    0x00,
    0x01,
    0x00,
    0x00,
    0x00,
    0x01,
    0x08,
    0x02,
    0x00,
    0x00,
    0x00,
    0x90,
    0x77,
    0x53,
    0xDE,
    0x00,
    0x00,
    0x00,
    0x0C,
    0x49,
    0x44,
    0x41,
    0x54,
    0x08,
    0xD7,
    0x63,
    0xF8,
    0xCF,
    0xC0,
    0x00,
    0x00,
    0x03,
    0x01,
    0x01,
    0x00,
    0x18,
    0xDD,
    0x8D,
    0xB0,
    0x00,
    0x00,
    0x00,
    0x00,
    0x49,
    0x45,
    0x4E,
    0x44,
    0xAE,
    0x42,
    0x60,
    0x82,
  ]);
}
