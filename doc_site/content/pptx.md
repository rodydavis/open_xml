---
title: Presentations (.pptx)
description: Generate presentations, slide layouts, notes, and utilize type-safe generators with open_xml.
---

# Presentations (.pptx)

The `open_xml` package provides tools to generate, modify, and parse PowerPoint presentations.

---

## Creating a Presentation

```dart
import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final pres = await Presentation.create(fs);
  
  // Add a slide
  final slide = pres.addSlide();
  
  await pres.save(fs.file('presentation.pptx'));
}
```

---

## Modifying Slides

You can add titles, body text, notes, and shapes to a slide.

```dart
final slide = pres.addSlide();

// Add Title
slide.addTitle('Company Overview');

// Add Text Content
slide.addText('We provide excellent services.');

// Add Speaker Notes
slide.addNote('Remember to smile when talking about services.');
```

### Backgrounds
Slides can have custom backgrounds:
```dart
// Solid color background
slide.addSolidBackground('FF0000'); // Red

// Image background
slide.addImageBackground(fs.file('assets/bg.jpg'));
```

---

## Template Type Generation

One of the most powerful features of `open_xml` is using an existing `.pptx` template (like a corporate theme) to generate type-safe Dart bindings.

### 1. Generate Bindings
Run the generator script in your terminal:
```dart
dart run open_xml:pptx_type_generator --input templates/theme.pptx --output lib/theme_bindings.dart --class-name ThemePresentation
```

### 2. Use Bindings in Code
```dart
import 'package:open_xml/open_xml.dart';
import 'lib/theme_bindings.dart';

void main() async {
  final pres = await Presentation.open(fs.file('templates/theme.pptx'));
  final myPres = ThemePresentation(pres);

  // The generated method perfectly matches the 'Title and Content' layout from your PowerPoint template
  myPres.addTitleAndContentSlide(
    title: 'Q1 Review'.toTextRun(),
    content: 'All goals met!'.toTextRun(),
  );

  await pres.save(fs.file('generated_theme.pptx'));
}
```

---

## Markdown to PPTX

Convert markdown structures (where Headers denote new slides) into presentations:

```dart
final markdown = '''
# Slide 1
This is the first slide.

# Slide 2
This is the second slide with some details.
''';

await pres.addMarkdown(markdown);
```

