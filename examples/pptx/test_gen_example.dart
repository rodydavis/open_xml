import 'dart:io';

import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';
import 'basic_bindings.dart';

void main() async {
  const fs = LocalFileSystem();
  // Ensure we are in the package root or adjust path
  final templateFile = fs.file('../templates/basic.pptx');

  if (!templateFile.existsSync()) {
    print(
      'Template not found at ${templateFile.path}. Run this script from package root.',
    );
    exit(1);
  }

  final pres = await Presentation.open(templateFile);

  // Clear existing slides to avoid issues with basic parsing/rebuilding
  // The original slide 1 from template might be lossy-parsed, leading to corruption
  pres.slides.clear();

  final basicPres = BasicPresentation(pres);

  final slide1 = basicPres.addTitleSlide(
    title: 'Hello World'.toTextRun(),
    bullets: [],
    bullets2: [],
  );
  slide1.addNote('This are speaker notes');

  basicPres.addTitleAmpBulletsSlide(
    title: 'Bullet Points'.toTextRun(),
    bullets: ['Point 1'.toTextRun(), 'Point 2'.toTextRun()],
    bullets2: [],
  );

  final outFile = fs.file('out/generated_presentation.pptx');
  await outFile.parent.create(recursive: true);
  await pres.save(outFile);
  print('Saved to ${outFile.path}');
}
