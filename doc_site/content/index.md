---
title: OpenXML for Dart
description: A comprehensive Dart package for generating, parsing, and verifying Office Open XML (OOXML) documents.
---

# Welcome to OpenXML

`open_xml` is a comprehensive, production-ready Dart package designed to generate, parse, and verify **Office Open XML (OOXML)** documents including:
- **Word Documents (.docx)**
- **Excel Spreadsheets (.xlsx)**
- **PowerPoint Presentations (.pptx)**

It abstracts away the complexity of OOXML schemas, internal zip archiving, and XML relationships, giving you a clean, elegant, and type-safe Dart API.

<Info>
  **Cross-Platform File System Abstraction:** 
  The package uses `package:file` to abstract the underlying file system. This allows you to generate files directly on the local disk, in memory (perfect for web environments or unit testing), or any custom backend!
</Info>

---

## High-Level Features

*   **Word Processing (.docx)**: Styling text, paragraphs, adding hyperlinks, inserting comments, converting Markdown to Word, and parsing existing files.
*   **Spreadsheets (.xlsx)**: Multiple worksheets, typed cell values (numbers, dates, text), dynamic cell formulas, CSV/JSON/SQLite data loaders, and parsing.
*   **PowerPoint (.pptx)**: Custom slides, titles, body content, speaker notes, solid/image backgrounds, Markdown parsing, and **type-safe binding generation from corporate templates**.

---

## Getting Started

Add `open_xml` to your `pubspec.yaml`:

```dart
dependencies:
  open_xml: ^0.3.0
```

And check out the guides below to get started with each document type:

- [Core Concepts & File System](/core)
- [Word Documents (.docx) Guide](/docx)
- [Spreadsheets (.xlsx) Guide](/xlsx)
- [Presentations (.pptx) Guide](/pptx)
