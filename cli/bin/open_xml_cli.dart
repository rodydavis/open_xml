import 'dart:io';
import 'package:args/args.dart';
import 'package:cli/tui_app.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print this usage information.',
    );

  ArgResults argResults;
  try {
    argResults = parser.parse(arguments);
  } catch (e) {
    print(e);
    printUsage(parser);
    exit(1);
  }

  if (argResults['help'] as bool) {
    printUsage(parser);
    exit(0);
  }

  if (argResults.rest.isEmpty) {
    print('Error: Missing file path.');
    printUsage(parser);
    exit(1);
  }

  final filePath = argResults.rest.first;
  final file = File(filePath);

  if (!file.existsSync()) {
    print('Error: File "$filePath" does not exist.');
    exit(1);
  }

  try {
    final app = TuiApp(file);
    await app.run();
  } catch (e) {
    print('An error occurred: $e');
    exit(1);
  }
}

void printUsage(ArgParser parser) {
  print('Usage: open_xml_cli <file.pptx | file.docx | file.xlsx> [options]');
  print(parser.usage);
}
