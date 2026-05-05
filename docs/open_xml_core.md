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
- [Word Documents (.docx)](open_xml_docx.md)
- [Spreadsheets (.xlsx)](open_xml_xlsx.md)
- [Presentations (.pptx)](open_xml_pptx.md)
