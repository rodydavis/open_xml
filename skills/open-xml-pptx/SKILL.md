---
name: open-xml-pptx
description: Guide and examples for using OpenXML Pptx features in the open_xml package.
---

# OpenXML Presentations (.pptx)

The `open_xml` package provides tools to generate, modify, and parse PowerPoint presentations.

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

## Template Type Generation

One of the most powerful features of `open_xml` is using an existing `.pptx` template (like a corporate theme) to generate type-safe Dart bindings.

**1. Generate Bindings:**
```bash
dart run open_xml:pptx_type_generator --input templates/theme.pptx --output lib/theme_bindings.dart --class-name ThemePresentation
```

**2. Use Bindings in Code:**
```dart
import 'package:open_xml/open_xml.dart';
import 'lib/theme_bindings.dart';

void main() async {
  final pres = await Presentation.open(fs.file('templates/theme.pptx'));
  final myPres = ThemePresentation(pres);

  // The generated method perfectly matches the 'Title and Content' layout
  myPres.addTitleAndContentSlide(
    title: 'Q1 Review'.toTextRun(),
    content: 'All goals met!'.toTextRun(),
  );

  await pres.save(fs.file('generated_theme.pptx'));
}
```

## Markdown to PPTX

Convert markdown structure (Headers denote new slides) into presentations:

```dart
final markdown = '''
# Slide 1
This is the first slide.

# Slide 2
This is the second slide with some details.
''';

await pres.addMarkdown(markdown);
```


## Examples

- [pptx_example](examples/pptx_example.md)
- [test_gen_example](examples/test_gen_example.md)
- [pptx_images_example](examples/pptx_images_example.md)
- [basic_bindings](examples/basic_bindings.md)
- [pptx_comments_example](examples/pptx_comments_example.md)
- [pptx_to_markdown_example](examples/pptx_to_markdown_example.md)
- [markdown_to_pptx_example](examples/markdown_to_pptx_example.md)
- [pptx_media_parsing_example](examples/pptx_media_parsing_example.md)
- [pptx_hyperlinks_example](examples/pptx_hyperlinks_example.md)
- [backgrounds_example](examples/backgrounds_example.md)
- [images_example](examples/images_example.md)
- [pptx_notes_example](examples/pptx_notes_example.md)
- [remote_media_example](examples/remote_media_example.md)
- [pptx_high_level_example](examples/pptx_high_level_example.md)

