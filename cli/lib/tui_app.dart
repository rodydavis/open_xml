import 'dart:io';
import 'package:dart_console/dart_console.dart';
import 'package:path/path.dart' as p;

import 'viewers/base_viewer.dart';
import 'viewers/docx_viewer.dart';
import 'viewers/pptx_viewer.dart';
import 'viewers/xlsx_viewer.dart';

class TuiApp {
  final File file;
  final Console console = Console();

  TuiApp(this.file);

  Future<void> run() async {
    final ext = p.extension(file.path).toLowerCase();
    BaseViewer viewer;

    switch (ext) {
      case '.pptx':
        viewer = PptxViewer(file, console);
        break;
      case '.docx':
        viewer = DocxViewer(file, console);
        break;
      case '.xlsx':
        viewer = XlsxViewer(file, console);
        break;
      default:
        print('Unsupported file extension: $ext');
        return;
    }

    // Hide cursor and clear screen on start
    console.hideCursor();
    console.clearScreen();

    try {
      await viewer.start();
    } finally {
      // Restore cursor and clear screen on exit
      console.showCursor();
      console.clearScreen();
      console.resetColorAttributes();
    }
  }
}
