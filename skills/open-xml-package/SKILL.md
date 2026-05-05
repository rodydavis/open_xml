---
name: open-xml-package
description: Guide and examples for using OpenXML Package features in the open_xml package.
---

# OpenXML Core Guide

The `open_xml` package is a comprehensive Dart library for generating, parsing, and verifying Office Open XML (OOXML) documents (.docx, .xlsx, .pptx). It uses `package:file` extensively to abstract away the file system, ensuring compatibility across different platforms (e.g. mobile, desktop, web, or memory-based file systems).

## File System Abstraction

All core document types in `open_xml` (`WordDocument`, `Workbook`, and `Presentation`) require a `FileSystem` instance from `package:file` to interact with files.

### Usage Example (Local File System)

```dart
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  
  // Create Documents using fs
  final doc = await WordDocument.create(fs);
  final wb = await Workbook.create(fs);
  final pres = await Presentation.create(fs);
}
```

### Usage Example (Memory File System)

For environments like tests or the web, you can use the memory file system:

```dart
import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  final fs = MemoryFileSystem();
  
  // Creates files entirely in memory
  final doc = await WordDocument.create(fs);
  await doc.save(fs.file('in_memory.docx'));
}
```

## Opening Existing Files

The API allows you to open existing Office documents. 

```dart
final existingDoc = await WordDocument.open(fs.file('path/to/existing.docx'));
```

## High Level Architecture

The core of `open_xml` handles:
1. **Archive/ZIP**: All office documents are zipped archives of XML files.
2. **Relationships**: Managing internal connections between XML parts (e.g., slide to slide layout, document to images).
3. **Namespaces**: Handling verbose OOXML namespaces correctly.
4. **Validation**: The package integrates checks to ensure the generated structure conforms to valid OOXML standards.

For detailed usage, refer to the document-specific guides:
- [Word Documents (.docx)](guides/open_xml_docx.md)
- [Spreadsheets (.xlsx)](guides/open_xml_xlsx.md)
- [Presentations (.pptx)](guides/open_xml_pptx.md)


## Examples

### OUT Examples

### XLSX Examples
- [xlsx_to_json_example](examples/xlsx/xlsx_to_json_example.md)
- [xlsx_high_level_example](examples/xlsx/xlsx_high_level_example.md)
- [xlsx_comments_example](examples/xlsx/xlsx_comments_example.md)
- [csv_to_xlsx_example](examples/xlsx/csv_to_xlsx_example.md)
- [xlsx_json_example](examples/xlsx/xlsx_json_example.md)
- [xlsx_hyperlinks_example](examples/xlsx/xlsx_hyperlinks_example.md)
- [xlsx_example](examples/xlsx/xlsx_example.md)
- [xlsx_sqlite_example](examples/xlsx/xlsx_sqlite_example.md)
- [xlsx_to_csv_example](examples/xlsx/xlsx_to_csv_example.md)
- [xlsx_internal_links_formulas_example](examples/xlsx/xlsx_internal_links_formulas_example.md)

### PPTX Examples
- [pptx_example](examples/pptx/pptx_example.md)
- [test_gen_example](examples/pptx/test_gen_example.md)
- [pptx_images_example](examples/pptx/pptx_images_example.md)
- [basic_bindings](examples/pptx/basic_bindings.md)
- [pptx_comments_example](examples/pptx/pptx_comments_example.md)
- [pptx_to_markdown_example](examples/pptx/pptx_to_markdown_example.md)
- [markdown_to_pptx_example](examples/pptx/markdown_to_pptx_example.md)
- [pptx_media_parsing_example](examples/pptx/pptx_media_parsing_example.md)
- [pptx_hyperlinks_example](examples/pptx/pptx_hyperlinks_example.md)
- [backgrounds_example](examples/pptx/backgrounds_example.md)
- [images_example](examples/pptx/images_example.md)
- [pptx_notes_example](examples/pptx/pptx_notes_example.md)
- [remote_media_example](examples/pptx/remote_media_example.md)
- [pptx_high_level_example](examples/pptx/pptx_high_level_example.md)

### DOCX Examples
- [docx_to_markdown_example](examples/docx/docx_to_markdown_example.md)
- [docx_markdown_example](examples/docx/docx_markdown_example.md)
- [docx_images_example](examples/docx/docx_images_example.md)
- [docx_comments_example](examples/docx/docx_comments_example.md)
- [docx_example](examples/docx/docx_example.md)
- [docx_hyperlinks_example](examples/docx/docx_hyperlinks_example.md)
- [docx_parser_example](examples/docx/docx_parser_example.md)
- [docx_high_level_example](examples/docx/docx_high_level_example.md)


