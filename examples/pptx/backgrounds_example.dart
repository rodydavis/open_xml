import 'dart:io' as io;
import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';
import 'package:open_xml/src/dml/dml.g.dart';

Future<void> main() async {
  const fs = LocalFileSystem();

  // Clean previous output
  if (await fs.file('out/advanced_bg.pptx').exists()) {
    await fs.file('out/advanced_bg.pptx').delete();
  }

  // Download test image (4:3 aspect ratio)
  final imagePath = 'out/test_image.png';
  final imageFile = fs.file(imagePath);
  if (!await imageFile.exists()) {
    if (!await imageFile.parent.exists()) {
      await imageFile.parent.create(recursive: true);
    }
    final client = io.HttpClient();
    final req = await client.getUrl(
      Uri.parse(
        'https://placehold.co/800x600/007AFF/FFFFFF/png?text=Test+Image',
      ),
    );
    final res = await req.close();
    await res.pipe(imageFile.openWrite());
  }

  print('Creating advanced background presentation...');
  final pres = await Presentation.create(fs);

  // 1. Gradient Background (Linear 45deg)
  final slide1 = pres.addSlide();
  slide1.setBackground(
    LinearGradientBackground(
      angle: 45,
      scaled: false, // Fixed file has scaled="0"
      stops: [
        GradientStop(OpenXmlColor.red, 0), // Red at 0%
        GradientStop(OpenXmlColor.green, 50000), // Green at 50%
        GradientStop(OpenXmlColor.blue, 100000), // Blue at 100%
      ],
    ),
  );
  slide1.addTitle('Gradient Fill (45 deg)');

  // 2. Image: Original (Centered, No Scale)
  // FIXED FILE XML: <a:stretch>
  // User Observation: "Mode was set to tile and not original size" (My previous output was Tile)
  // Matches Fixed File: Stretch
  final slide2 = pres.addSlide();
  slide2.setBackground(ImageBackground(imagePath, mode: ImageStretchMode()));
  slide2.addTitle('Image: Original Size (Stretch)');

  // 3. Image: Tile
  // FIXED FILE XML: <a:tile tx="0" ty="0" sx="100000" sy="100000" flip="none" algn="tl"/>
  final slide3 = pres.addSlide();
  slide3.setBackground(
    ImageBackground(
      imagePath,
      mode: ImageTileMode(align: D_ST_RectAlignment.tl),
    ),
  );
  slide3.addTitle('Image: Tiled');

  // 4. Image: Scale to Fill (Cover)
  // FIXED FILE XML: <a:stretch>
  final slide4 = pres.addSlide();
  slide4.setBackground(ImageBackground(imagePath, mode: ImageStretchMode()));
  slide4.addTitle('Image: Cover (Manual/Stretch)');

  // 5. Image: Scale to Fit (Contain)
  // FIXED FILE XML: <a:stretch>
  // User Observation: "Should be scale to fit" (My previous output was Tile 50%)
  // Matches Fixed File: Stretch
  final slide5 = pres.addSlide();
  slide5.setBackground(ImageBackground(imagePath, mode: ImageStretchMode()));
  slide5.addTitle('Image: Contain (Fixed=Stretch)');

  // 6. Image: Stretch (Fill)
  // FIXED FILE XML: <a:stretch>
  final slide6 = pres.addSlide();
  slide6.setBackground(ImageBackground(imagePath, mode: ImageStretchMode()));
  slide6.addTitle('Image: Fill (Stretch)');

  // 7. Image: Color Overlay (Duotone Red)
  // FIXED FILE XML: <a:stretch> (Effects missing in fixed file?)
  // We keep effects as they are correct per spec, but ensure Stretch mode based on pattern.
  final slide7 = pres.addSlide();
  slide7.setBackground(
    ImageBackground(
      imagePath,
      mode: ImageStretchMode(),
      duotoneColor: OpenXmlColor.red,
    ),
  );
  slide7.addTitle('Image: Color Overlay (Red)');

  // 8. Image: Transparency (50%)
  // FIXED FILE XML: <a:stretch>
  final slide8 = pres.addSlide();
  slide8.setBackground(
    ImageBackground(
      imagePath,
      mode: ImageStretchMode(),
      alpha: 0.5, // 50% opacity
    ),
  );
  slide8.addTitle('Image: Transparency (50%)');

  await pres.save(fs.file('out/advanced_bg.pptx'));
  print('Created out/advanced_bg.pptx');
}
