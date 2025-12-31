/// Support for Open XML (OOXML) formatted documents.
///
/// This package provides strongly-typed Dart classes for ECMA-376 (Office Open XML)
/// derived directly from the official XML Schemas (XSD).
library;

export 'package:xml/xml.dart'; // Re-export xml package
export 'src/word/document.dart';
export 'src/word/paragraph.dart';
export 'src/word/run.dart';
export 'src/spreadsheet/workbook.dart';
export 'src/spreadsheet/worksheet.dart';
export 'src/spreadsheet/row.dart';
export 'src/presentation/presentation.dart';
export 'src/presentation/slide.dart';
export 'src/shared/comment.dart';
