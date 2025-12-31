import 'dart:io' as io;
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'package:open_xml/src/dml/dml.g.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  // 1. Download real placeholder images
  // Using placehold.co to get specific colors for verification
  final imageUrls = [
    'https://placehold.co/800x600/FF0000/FFFFFF/png', // Red (4:3)
    'https://placehold.co/800x600/00FF00/FFFFFF/png', // Green (4:3)
    'https://placehold.co/800x800/0000FF/FFFFFF/png', // Blue (1:1 - Should crop)
  ];

  final images = <String>[];
  final httpClient = io.HttpClient();

  try {
    for (var i = 0; i < imageUrls.length; i++) {
      final path = 'out/image${i + 1}.png';
      print('Downloading ${imageUrls[i]} to $path...');
      await _downloadImage(httpClient, imageUrls[i], path, fs);
      images.add(path);
    }
  } finally {
    httpClient.close();
  }

  // 2. Create Presentation
  print('Creating presentation...');
  final pres = await Presentation.create(fs);

  // 3. Add Slides with Images
  if (images.isNotEmpty) {
    // Slide 1: Image Fill (Default)
    final slide1 = pres.addSlide();
    slide1.setBackground(
      ImageBackground(
        'out/image1.png',
        mode: ImageStretchMode(), // Default is stretch
      ),
    );
    slide1.addTitle('Image Fill (Default)');

    // Slide 2: Image Fill (Stretch)
    final slide2 = pres.addSlide();
    slide2.setBackground(
      ImageBackground('out/image2.png', mode: ImageStretchMode()),
    );
    slide2.addTitle('Image Fill (Stretch)');

    // Slide 3: Image Contain (Tile centered with scale?)
    // Previously "contain". Strict XML equivalent is Tile Centered Scaled,
    // or just stretch with crop if pre-calculated.
    // Using Tile Centered for "Contain-like" behavior without knowing ratios (which is 1:1 here anyway).
    final slide3 = pres.addSlide();
    slide3.setBackground(
      ImageBackground(
        'out/image3.png',
        mode: ImageTileMode(
          align: D_ST_RectAlignment.ctr,
          sx: 50000,
          sy: 50000,
        ), // Approx 50% scale
      ),
    );
    slide3.addTitle('Image Contain (Manual)');

    // Slide 4: Image Cover (Stretch)
    // Previously "cover".
    final slide4 = pres.addSlide();
    slide4.setBackground(
      ImageBackground('out/image3.png', mode: ImageStretchMode()),
    );
    slide4.addTitle('Image Cover (Stretch)');
  }

  // 4. Save
  await pres.save(fs.file('out/images_example.pptx'));
  print('Created images_example.pptx');

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
