import 'dart:io';
import 'dart:async';
import 'package:dart_console/dart_console.dart';

abstract class BaseViewer {
  final File file;
  final Console console;

  BaseViewer(this.file, this.console);

  Future<void> start();

  StreamSubscription<ProcessSignal>? _resizeSub;
  StreamSubscription<List<int>>? _stdinSub;

  void listenForResize(void Function() onResize) {
    if (!Platform.isWindows) {
      _resizeSub = ProcessSignal.sigwinch.watch().listen((_) {
        onResize();
      });
    }
  }

  void stopListeningForResize() {
    _resizeSub?.cancel();
  }

  void startAsyncKeyLoop(void Function(Key key) onKey) {
    console.rawMode = true;
    _stdinSub = stdin.listen((bytes) {
      if (bytes.length == 1) {
        int b = bytes[0];
        if (b == 3) {
          onKey(Key.control(ControlCharacter.ctrlC));
        } else if (b == 127 || b == 8) {
          onKey(Key.control(ControlCharacter.backspace));
        } else {
          onKey(Key.printable(String.fromCharCode(b)));
        }
      } else if (bytes.length == 3 && bytes[0] == 27 && bytes[1] == 91) {
        switch (bytes[2]) {
          case 65:
            onKey(Key.control(ControlCharacter.arrowUp));
            break;
          case 66:
            onKey(Key.control(ControlCharacter.arrowDown));
            break;
          case 67:
            onKey(Key.control(ControlCharacter.arrowRight));
            break;
          case 68:
            onKey(Key.control(ControlCharacter.arrowLeft));
            break;
        }
      } else if (bytes.length == 4 &&
          bytes[0] == 27 &&
          bytes[1] == 91 &&
          bytes[3] == 126) {
        if (bytes[2] == 51) {
          onKey(Key.control(ControlCharacter.delete));
        }
      }
    });
  }

  void stopAsyncKeyLoop() {
    _stdinSub?.cancel();
    console.rawMode = false;
  }

  void pauseAsyncKeyLoop() {
    _stdinSub?.pause();
    console.rawMode = false;
  }

  void resumeAsyncKeyLoop() {
    console.rawMode = true;
    _stdinSub?.resume();
  }

  void drawHeader(String title) {
    console.setBackgroundColor(ConsoleColor.blue);
    console.setForegroundColor(ConsoleColor.white);

    final width = console.windowWidth;
    final paddedTitle = ' $title '.padRight(width);

    console.cursorPosition = Coordinate(0, 0);
    console.write(paddedTitle);

    console.resetColorAttributes();
  }

  void drawFooter(String footerText) {
    console.setBackgroundColor(ConsoleColor.white);
    console.setForegroundColor(ConsoleColor.black);

    final width = console.windowWidth;
    final height = console.windowHeight;
    final paddedFooter = ' $footerText '.padRight(width);

    console.cursorPosition = Coordinate(height - 1, 0);
    console.write(paddedFooter);

    console.resetColorAttributes();
  }

  void clearContentArea() {
    final width = console.windowWidth;
    final height = console.windowHeight;
    for (var i = 1; i < height - 1; i++) {
      console.cursorPosition = Coordinate(i, 0);
      console.write(' ' * width);
    }
  }
}
