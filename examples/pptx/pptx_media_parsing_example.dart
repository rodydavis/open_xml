import 'dart:io' as io;
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  // 1. Generate a sample PPTX (similar to images example)
  final pptxPath = 'out/media_parsing_source.pptx';
  await _generateSamplePptx(pptxPath, fs);

  // 2. Open the PPTX for parsing
  print('Opening $pptxPath for parsing...');
  final pres = await Presentation.open(fs.file(pptxPath));

  // 3. Get all media files
  final mediaFiles = await pres.getMediaFiles();
  print('Found ${mediaFiles.length} media files:');
  for (final file in mediaFiles) {
    print(' - $file');
  }

  // 4. (Optional) Read specific media content
  // Note: Presentation doesn't yet expose readPartAsBytes directly publicly,
  // but we access OoxmlPackage via hacks or assumption?
  // Wait, OoxmlPackage is internal to Presentation.
  // We can't easily extract bytes unless Presentation exposes it.
  // But wait, the user just asked for an array of media used.
  // "This could be useful for getting the images and videos used".
  // To actually GET them, we need to read bytes.
  // I should expose `readMedia(String path)` on Presentation.
  // But for now, listing is what was explicitly requested as "array of media used".
}

Future<void> _generateSamplePptx(String outputPath, FileSystem fs) async {
  print('Generating sample PPTX at $outputPath...');
  final httpClient = io.HttpClient();

  // Download some images
  final imageUrls = [
    'https://placehold.co/200x200/png',
    'https://placehold.co/300x300/jpg',
  ];

  final tempImages = <File>[];
  try {
    for (var i = 0; i < imageUrls.length; i++) {
      final request = await httpClient.getUrl(Uri.parse(imageUrls[i]));
      final response = await request.close();
      final bytes = await response.toList();
      final flattened = bytes.expand((x) => x).toList();
      final tempFile = fs.file(
        '${fs.systemTempDirectory.path}/temp_image_$i.png',
      );
      await tempFile.writeAsBytes(flattened);
      tempImages.add(tempFile);
    }
  } finally {
    httpClient.close();
  }

  final pres = await Presentation.create(fs);

  for (final img in tempImages) {
    final slide = pres.addSlide();
    slide.addImage(path: img.path);
  }

  // Also add a background image
  if (tempImages.isNotEmpty) {
    final slide = pres.addSlide();
    slide.setBackground(ImageBackground(tempImages.first.path));
  }

  final file = fs.file(outputPath);
  if (!file.parent.existsSync()) file.parent.createSync(recursive: true);

  await pres.save(file);

  // Cleanup
  for (final f in tempImages) {
    if (await f.exists()) await f.delete();
  }
}
