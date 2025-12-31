import 'dart:io' as io;
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:open_xml/open_xml.dart';

// The full markdown content from md2googleslides/examples/example.md
const String exampleMarkdown = r'''
---

# This is a title slide

## Your name here

<!--
This only appears as a speaker note.
-->

---

# Section title slide

---

# Title & body slide

This is the slide body.

Text can be styled for:

* *emphasis*
* **strong emphasis**
* ~~strikethrough~~
* `fixed width code fonts`

Slides :heart: [links](https://developers.google.com/slides) too!

---

# Section title & body slide

## This is a subtitle

This is the body

---

# This is the main point {.big}

---

# 100% {.big}

This is the body

---

# Two column layout

This is the *left* column

{.column}

This is the *right* column

---

# Columns can have images

This is the *left* column

{.column}

![](https://picsum.photos/g/1600/900)

---

# Slides can have background images

![](https://picsum.photos/g/1600/900){.background}

---

# Slides can have an inline image

![](https://picsum.photos/1600/900)

---
# Slides can have inline images with custom parameters

![](https://picsum.photos/1600/900){pad=30 offset-y=30 offset-x=30}

---
# Slides can have many images

![](https://www.gstatic.com/images/branding/product/2x/drive_36dp.png){pad=10}
![](https://www.gstatic.com/images/branding/product/2x/docs_36dp.png){pad=10}
![](https://www.gstatic.com/images/branding/product/2x/sheets_36dp.png){pad=10}
![](https://www.gstatic.com/images/branding/product/2x/slides_36dp.png){pad=10}
![](https://www.gstatic.com/images/branding/product/2x/forms_36dp.png){pad=10}

---
# Slides can have local images 

![](image_slide.png)

---

# Slides can have videos

@[youtube](QBcHT0XJRP8)


---
# Slides can have code

```javascript
// Print hello
function hello() {
  console.log('Hello world');
}
```

---
# Code can be big...

```javascript {style="font-size: 36pt"}
// Print hello
function hello() {
  console.log('Hello big world');
}
```

---
# ... or small

```javascript {style="font-size: 8pt}
// Print hello
function hello() {
  console.log('Hello little world');
}
```

---
# Slides can have tables

Animal | Number
-------|--------
Fish   | 142 million
Cats   | 88 million
Dogs   | 75 million
Birds  | 16 million

---
# Some inline HTML and CSS is supported

Use <span style="color:red">span</span> to color text.

Use <sup>superscript</sup> and <sub>subscript</sub>, <span style="text-decoration: line-through">strikethrough</span>
or <span style="text-decoration: underline">underline</span>, even <span style="font-variant: small-caps">small <span style="color:green">caps</span>.</span>

---
# How about some math?

$$$ math
\cos (2\theta) = \cos^2 \theta - \sin^2 \theta
$$$

---
# Or some SVG?

$$$ svg
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 48 48"><defs><path id="a" d="M44.5 20H24v8.5h11.8C34.7 33.9 30.1 37 24 37c-7.2 0-13-5.8-13-13s5.8-13 13-13c3.1 0 5.9 1.1 8.1 2.9l6.4-6.4C34.6 4.1 29.6 2 24 2 11.8 2 2 11.8 2 24s9.8 22 22 22c11 0 21-8 21-22 0-1.3-.2-2.7-.5-4z"/></defs><clipPath id="b"><use xlink:href="#a" overflow="visible"/></clipPath><path clip-path="url(#b)" fill="#FBBC05" d="M0 37V11l17 13z"/><path clip-path="url(#b)" fill="#EA4335" d="M0 11l17 13 7-6.1L48 14V0H0z"/><path clip-path="url(#b)" fill="#34A853" d="M0 37l30-23 7.9 1L48 0v48H0z"/><path clip-path="url(#b)" fill="#4285F4" d="M48 48L17 24l-4-3 35-10z"/></svg>
$$$

---
{layout="Title and body"}

# Slides can use custom master slides

Custom master slides can be selected by adding the attribute `{layout="Title and body"}`, rather than auto detect the layout 
the slide layout will be chosen from the available master slides by the name.

This can be used with the flag `--copy=[presentation id]` to copy and use an existing presentation as the source rather than a blank slide.

---
''';

Future<void> main() async {
  const fs = LocalFileSystem();
  final outputPath = 'out/markdown_to_pptx_output.pptx';
  final outputFile = fs.file(outputPath);

  if (!outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }

  print('Parsing markdown and generating PPTX...');

  final converter = MarkdownToPptxConverter(fs);
  await converter.convert(exampleMarkdown, outputFile);

  print('Generated $outputPath');
  print('Done.');
}

class MarkdownToPptxConverter {
  final FileSystem _fs;
  final Directory _tempDir;
  final io.HttpClient _httpClient = io.HttpClient();

  MarkdownToPptxConverter(this._fs)
    : _tempDir = _fs.systemTempDirectory.createTempSync('openxml_md_example_');

  Future<void> convert(String markdown, File outFile) async {
    final pres = await Presentation.create(_fs);

    // Parse Markdown using GitHub flavor to support tables, etc.
    final document = md.Document(
      extensionSet: md.ExtensionSet.gitHubWeb,
      encodeHtml: false, // We want raw HTML if present to strip or handle
    );

    // 1. Split by '---' (Horizontal Rule) manually or using AST.
    // md2googleslides uses '---' to separate slides.
    // In AST, '---' becomes an Element('hr').
    final nodes = document.parse(markdown);

    // Group nodes into slides
    final slideNodesList = <List<md.Node>>[];
    var currentSlideNodes = <md.Node>[];

    for (final node in nodes) {
      if (node is md.Element && node.tag == 'hr') {
        if (currentSlideNodes.isNotEmpty) {
          slideNodesList.add(currentSlideNodes);
          currentSlideNodes = [];
        }
      } else {
        currentSlideNodes.add(node);
      }
    }
    // Add last slide
    if (currentSlideNodes.isNotEmpty) {
      slideNodesList.add(currentSlideNodes);
    }

    // 2. Process each slide
    for (final slideNodes in slideNodesList) {
      final slide = pres.addSlide();
      await _processSlide(slide, slideNodes);
    }

    try {
      await pres.save(outFile);
    } finally {
      // Cleanup temp files
      if (_tempDir.existsSync()) {
        _tempDir.deleteSync(recursive: true);
      }
    }
  }

  Future<void> _processSlide(Slide slide, List<md.Node> nodes) async {
    for (final node in nodes) {
      await _visitNode(slide, node);
    }
  }

  Future<void> _visitNode(Slide slide, md.Node node) async {
    if (node is md.Element) {
      switch (node.tag) {
        case 'h1':
          slide.addTitle(_extractText(node));
          break;
        case 'h2':
          // Sub-headers treated as body text or subtitles
          slide.addText(_extractText(node));
          break;
        case 'p':
          // Paragraph: Check for isolated image or column or text
          await _processParagraph(slide, node);
          break;
        case 'ul':
        case 'ol':
          for (final child in node.children ?? []) {
            if (child is md.Element && child.tag == 'li') {
              slide.addText('• ${_extractText(child)}');
            }
          }
          break;
        case 'pre':
          // Code block
          final code = _extractText(node);
          slide.addText(code); // Monospace not supported in addText yet
          break;
        case 'table':
          // Convert table to text representation
          final tableText = _renderTableAsText(node);
          slide.addText(tableText);
          break;
        // Ignore others like 'blockquote' for now
      }
    } else if (node is md.Text) {
      final text = cleanText(node.text);
      if (text.isNotEmpty) slide.addText(text);
    }
  }

  Future<void> _processParagraph(Slide slide, md.Element paragraph) async {
    final rawText = paragraph.textContent;

    // Check for column marker
    if (rawText.trim() == '{.column}') {
      // In a real implementation this would switch context.
      // For now, we ignore or add a visual separator.
      // slide.addText("--- Column Break ---");
      return;
    }

    // Process children to find images
    if (paragraph.children != null) {
      final children = paragraph.children!;
      for (var i = 0; i < children.length; i++) {
        final child = children[i];

        if (child is md.Element && child.tag == 'img') {
          final src = child.attributes['src'];
          if (src != null) {
            var isBackground = false;
            // Look ahead for attributes in the next text node
            if (i + 1 < children.length) {
              final next = children[i + 1];
              if (next is md.Text && next.text.trim().startsWith('{')) {
                if (next.text.contains('.background')) {
                  isBackground = true;
                }
              }
            }
            await _addImage(slide, src, isBackground: isBackground);
          }
        } else if (child is md.Text) {
          final text = cleanText(child.text);
          // Only add text if it's not just attributes
          if (text.isNotEmpty && !text.startsWith('{')) {
            slide.addText(text);
          }
        } else {
          // nested elements like bold/italic - just extract text
          final text = _extractText(child);
          if (text.isNotEmpty) slide.addText(text);
        }
      }
    }
  }

  Future<void> _addImage(
    Slide slide,
    String url, {
    bool isBackground = false,
  }) async {
    try {
      File? imageFile;
      if (url.startsWith('http')) {
        // Download remote image
        final request = await _httpClient.getUrl(Uri.parse(url));
        final response = await request.close();
        if (response.statusCode == 200) {
          final bytes = await response.toList();
          final flattened = bytes.expand((x) => x).toList();
          final filename = url.split('/').last.split('?').first;
          final validFilename = filename.isNotEmpty ? filename : 'image.png';
          final tempFile = _fs.file('${_tempDir.path}/$validFilename');
          await tempFile.writeAsBytes(flattened);
          imageFile = tempFile;
        }
      } else {
        // Local file
        final f = _fs.file(url);
        if (f.existsSync()) {
          imageFile = f;
        }
      }

      if (imageFile != null) {
        if (isBackground) {
          slide.setBackground(ImageBackground(imageFile.absolute.path));
        } else {
          slide.addImage(path: imageFile.absolute.path);
        }
      }
    } catch (e) {
      print('Failed to add image $url: $e');
    }
  }

  String _extractText(md.Node node) {
    if (node is md.Text) {
      return cleanText(node.text);
    } else if (node is md.Element) {
      return node.children?.map(_extractText).join('') ?? '';
    }
    return '';
  }

  String cleanText(String text) {
    // Basic cleaning of attributes like {.class} or {key=val}
    // md2googleslides uses loose text at end of lines for attributes
    var out = text.replaceAll(RegExp(r'\{[^\}]*\}'), '');
    return out.trim();
  }

  String _renderTableAsText(md.Element table) {
    // Simple rendering of table rows to text
    // Structure: table -> thead/tbody -> tr -> th/td
    final buffer = StringBuffer();
    // Helper to process row
    void processRow(md.Element tr) {
      final cells = tr.children
          ?.whereType<md.Element>()
          .map((e) => e.textContent.trim())
          .join(' | ');
      if (cells != null) buffer.writeln(cells);
    }

    for (final child in table.children ?? []) {
      if (child is md.Element) {
        if (child.tag == 'thead' || child.tag == 'tbody') {
          for (final row in child.children ?? []) {
            if (row is md.Element && row.tag == 'tr') {
              processRow(row);
            }
          }
        } else if (child.tag == 'tr') {
          processRow(child);
        }
      }
    }
    return buffer.toString();
  }
}
