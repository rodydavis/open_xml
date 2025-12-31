import 'dart:io';
import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';

Future<void> main() async {
  final file = File('out/remote_media_example.pptx');
  // Ensure output directory exists
  if (!file.parent.existsSync()) {
    file.parent.createSync(recursive: true);
  }

  // Create new presentation using LocalFileSystem
  final pptx = await Presentation.create(const LocalFileSystem());

  // Slide 1: Remote Media
  final slide1 = pptx.addSlide();
  slide1.addTitle('Remote Images');

  // Valid Remote Image (Flutter Logo)
  slide1.addImage(
    path:
        'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
    x: 1000000,
    y: 2000000,
    width: 3000000,
    height: 1000000, // Roughly correct aspect ratio
  );
  slide1.addText('Above: Flutter Logo from Google Storage.');

  // Slide 2: Remote Video (Mock)
  final slide2 = pptx.addSlide();
  slide2.addTitle('Remote / Local Media');
  slide2.addText(
    'Video support logic is implemented but requires actual video files to function fully.',
  );
  // slide2.addVideo(path: 'https://www.w3schools.com/html/mov_bbb.mp4');

  // Pass the IO File object to save
  await pptx.save(const LocalFileSystem().file(file.path));
  print('Saved ${file.path}');
}
