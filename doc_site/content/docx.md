---
title: Word Documents (.docx)
description: Learn how to generate, style, parse, and convert Word Documents using the open_xml package.
---

# Word Documents (.docx)

The `open_xml` package allows for generating, editing, and parsing `.docx` documents. 

---

## Creating a Document

To create a new Word Document:

```dart
import 'package:open_xml/open_xml.dart';
import 'package:file/local.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final doc = await WordDocument.create(fs);
  
  // Save the document to local disk
  await doc.save(fs.file('example.docx'));
}
```

---

## Adding Paragraphs and Text Runs

A `WordDocument` contains a sequence of elements, most commonly `Paragraph`s. A `Paragraph` contains a sequence of `Run`s.

```dart
  // Add a simple paragraph
  doc.addParagraph(
    Paragraph()
      ..addRun(Run(text: 'Hello, '))
      ..addRun(Run(
        text: 'World!', 
        bold: true, 
        color: 'FF0000', 
        fontSize: 24,
      )),
  );
```

### Run Formatting Options
- `bold`: Boolean (`true` / `false`)
- `italic`: Boolean (`true` / `false`)
- `underline`: Boolean (`true` / `false`)
- `color`: Hex color string (e.g. `'00FF00'`)
- `fontSize`: Integer representing half-points (e.g., `24` is 12pt).
- `fontFamily`: String representing font face (e.g. `'Arial'`).

---

## Hyperlinks

Hyperlinks can be added to paragraphs easily:

```dart
doc.addParagraph(
  Paragraph()
    ..addHyperlink(
      'Visit Google',
      'https://google.com',
    ),
);
```

---

## Comments

You can insert comments targeting a specific text range:

```dart
doc.addParagraph(
  Paragraph()
    ..addComment(
      author: 'Author Name',
      text: 'This is a comment on the text',
      initials: 'AN',
      run: Run(text: 'commented text'),
    ),
);
```

---

## Markdown Conversion

You can generate a `.docx` document directly from Markdown, or extract Markdown from an existing `.docx`.

### 1. Markdown to Docx
```dart
final markdown = '''
# Heading 1
This is a paragraph with **bold** and *italic* text.
''';

await doc.addMarkdown(markdown);
```

### 2. Docx to Markdown
```dart
final existingDoc = await WordDocument.open(fs.file('my_doc.docx'));
final markdownText = existingDoc.toMarkdown();
print(markdownText);
```

---

## Parsing Docx Files

You can extract text nodes or navigate through paragraphs in existing documents:

```dart
final existingDoc = await WordDocument.open(fs.file('my_doc.docx'));

// Iterate over text runs
for (final text in existingDoc.parseText()) {
  print(text);
}
```
