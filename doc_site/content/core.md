---
title: Core Concepts
description: File system abstraction, opening existing files, and the underlying architecture of open_xml.
---

# Core Concepts

The `open_xml` package is designed to be highly modular and abstract. It uses `package:file` extensively to ensure your document-generation logic is completely independent of where the files are stored or executed.

---

## File System Abstraction

All core document types (`WordDocument`, `Workbook`, and `Presentation`) require a `FileSystem` instance from `package:file` to interact with files. This abstraction is incredibly powerful because it decouples your application logic from local storage.

### 1. Local File System
For CLI tools, server backends, or desktop applications where you want to write directly to the local disk:

```dart
import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  
  // Create Documents using local file system
  final doc = await WordDocument.create(fs);
  final wb = await Workbook.create(fs);
  final pres = await Presentation.create(fs);
}
```

### 2. Memory File System
For flutter web apps, testing suites, or serverless functions where you want to generate files purely in-memory:

```dart
import 'package:file/memory.dart';
import 'package:open_xml/open_xml.dart';

Future<void> main() async {
  final fs = MemoryFileSystem();
  
  // Creates files entirely in memory (no disk usage)
  final doc = await WordDocument.create(fs);
  await doc.save(fs.file('in_memory.docx'));
  
  // Retrieve raw bytes of the generated file
  final bytes = await fs.file('in_memory.docx').readAsBytes();
  print('Generated file of size: ${bytes.length} bytes');
}
```

---

## Opening Existing Files

The API allows you to open and modify existing Office documents in-place:

```dart
final existingDoc = await WordDocument.open(fs.file('path/to/existing.docx'));
```

<Info>
  **Modifying existing archives:**
  When you open an existing file, `open_xml` unpacks the XML structures inside, allowing you to manipulate elements programmatically, and then packages them back into a valid ZIP archive upon save.
</Info>

---

## High Level Architecture

Under the hood, `open_xml` manages three major parts of the Open Packaging Conventions:

1. **Archive/ZIP**: All office documents are zipped collections of XML files.
2. **Relationships (.rels)**: Internal connections between different XML parts (such as linking a slide to its layout, or a document paragraph to a custom image).
3. **Namespaces**: Properly mapping and applying the verbose OOXML XML namespaces so MS Office, Google Docs, and LibreOffice can open them correctly.
4. **Validation**: The package enforces internal structure schema checks, preventing the generation of corrupted or unreadable documents.
