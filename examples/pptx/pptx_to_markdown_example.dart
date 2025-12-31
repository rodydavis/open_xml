import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  // 1. Generate a source PPTX
  final pptxPath = 'out/markdown_source.pptx';
  await _generateSamplePptx(pptxPath, fs);

  // 2. Open the PPTX
  print('Opening $pptxPath...');
  final pres = await Presentation.open(fs.file(pptxPath));

  // 3. Convert to Markdown
  print('Converting PPTX to Markdown...');
  final markdown = _convertToMarkdown(pres);

  // 4. Output
  print('\n--- Markdown Output ---');
  print(markdown);
  print('-----------------------');

  // Save to file
  final mdFile = fs.file('out/converted_slides.md');
  await mdFile.writeAsString(markdown);
  print('Saved markdown to ${mdFile.path}');
}

String _convertToMarkdown(Presentation pres) {
  final buffer = StringBuffer();

  for (var i = 0; i < pres.slides.length; i++) {
    final slide = pres.slides[i];

    // Slide Separator (except for first slide if we want clean start,
    // but md2googleslides uses initial --- usually? No, usually start is implicit.
    // The example showed --- at top. Let's add it for all.)
    buffer.writeln('---');
    buffer.writeln();

    // Titles (H1)
    for (final title in slide.titles) {
      buffer.writeln('# $title');
      buffer.writeln();
    }

    // Texts (Paragraphs)
    for (final text in slide.texts) {
      buffer.writeln(text);
      buffer.writeln();
    }

    // Images
    for (final element in slide.elements) {
      if (element is SlideImage) {
        // We use the path as is. In a real export, we might want to copy
        // the image to a strictly relative assets folder.
        buffer.writeln('![Image](${element.path})');
        buffer.writeln();
      }
    }

    // Background
    if (slide.background is ImageBackground) {
      final bg = slide.background as ImageBackground;
      buffer.writeln('![Background](${bg.imagePath}){.background}');
      buffer.writeln();
    }
  }

  return buffer.toString();
}

Future<void> _generateSamplePptx(String path, FileSystem fs) async {
  print('Generating source PPTX...');
  final pres = await Presentation.create(fs);

  // Slide 1: Title
  final s1 = pres.addSlide();
  s1.addTitle('Presentation Title');
  s1.addText('Subtitle or Author Name');

  // Slide 2: Content
  final s2 = pres.addSlide();
  s2.addTitle('Slide 2 Header');
  s2.addText('This is a paragraph of text.');
  s2.addText('Another point.');

  // Slide 3: Image (using local file if available, or just skip if no image easily available)
  // We'll skip adding actual image file to keep example simple and dependency-free
  // unless we download one. Let's download one small placeholder.
  final s3 = pres.addSlide();
  s3.addTitle('Slide with Image');
  // We can't easily add image without a valid path because Presentation.save checks for explicit file existence to copy bytes?
  // Our Presentation implementation copies files.
  // So we won't add an image to avoid runtime errors if we don't have internet or file.
  // Actually, let's create a dummy text file as "image" just to prove the point?
  // No, that might fail image parsers if we added validation.
  // We'll skip image generation for stability, or user existing one if known.
  s3.addText('(Image would be here)');

  final file = fs.file(path);
  if (!file.parent.existsSync()) {
    await file.parent.create(recursive: true);
  }
  await pres.save(file);
}
