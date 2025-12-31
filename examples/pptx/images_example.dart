import 'dart:io' as io;
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'package:uuid/uuid.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  // 1. Download real placeholder images
  // Using placehold.co to get specific colors for verification
  final imageUrls = [
    'https://placehold.co/800x600/FF0000/FFFFFF/png', // Red (4:3)
    'https://placehold.co/800x600/00FF00/FFFFFF/png', // Green (4:3)
    'https://placehold.co/800x800/0000FF/FFFFFF/png', // Blue (1:1 - Should crop)
  ];

  final httpClient = io.HttpClient();

  // 2. Create Presentation
  print('Creating presentation...');
  final pres = await Presentation.create(fs);

  final images = <String>[];
  try {
    for (var i = 0; i < imageUrls.length; i++) {
      final id = Uuid().v4();
      final path = 'out/image$id.png';
      print('Downloading ${imageUrls[i]} to $path...');
      await _downloadImage(httpClient, imageUrls[i], path, fs);
      images.add(path);
      final slide = pres.addSlide();
      slide.setBackground(
        ImageBackground(
          path,
          mode: ImageStretchMode(), // Default is stretch
        ),
      );
      slide.addTitle(path);
    }
  } finally {
    httpClient.close();
  }

  // 4. Save
  await pres.save(fs.file('out/images.pptx'));
  print('Created images.pptx');

  // Cleanup downloaded images
  for (final path in images) {
    if (await fs.file(path).exists()) {
      await fs.file(path).delete();
    }
  }
}

Future<void> _downloadImage(
  io.HttpClient client,
  String url,
  String path,
  LocalFileSystem fs,
) async {
  final request = await client.getUrl(Uri.parse(url));
  final response = await request.close();
  if (response.statusCode != 200) {
    throw Exception('Failed to download image: ${response.statusCode}');
  }
  final file = fs.file(path);
  if (!file.parent.existsSync()) {
    await file.parent.create(recursive: true);
  }
  await response.pipe(file.openWrite());
}
