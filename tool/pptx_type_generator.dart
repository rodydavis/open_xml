import 'dart:io';
import 'package:args/args.dart';
import 'package:archive/archive.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:recase/recase.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption('input', abbr: 'i', help: 'Path to the input .pptx file')
    ..addOption('output', abbr: 'o', help: 'Path to the output .dart file')
    ..addOption('class-name', abbr: 'c', help: 'Name of the generated class');

  final argResults = parser.parse(arguments);

  if (!argResults.wasParsed('input') || !argResults.wasParsed('output')) {
    print(
      'Usage: dart tool/pptx_type_generator.dart --input <path> --output <path>',
    );
    exit(1);
  }

  final inputPath = argResults['input'] as String;
  final outputPath = argResults['output'] as String;
  String className;

  if (argResults.wasParsed('class-name')) {
    className = argResults['class-name'] as String;
  } else {
    final basename = p.basenameWithoutExtension(inputPath);
    className = '${ReCase(basename).pascalCase}Presentation';
  }

  final inputFile = File(inputPath);
  if (!inputFile.existsSync()) {
    print('Error: Input file does not exist: $inputPath');
    exit(1);
  }

  print('Generating PPTX types...');
  print('  Input: $inputPath');
  print('  Output: $outputPath');

  final bytes = inputFile.readAsBytesSync();
  final archive = ZipDecoder().decodeBytes(bytes);

  final layouts = <LayoutInfo>[];

  for (final file in archive) {
    if (file.name.startsWith('ppt/slideLayouts/slideLayout') &&
        file.name.endsWith('.xml')) {
      final content = String.fromCharCodes(file.content as List<int>);

      final nameMatch = RegExp(
        r'<p:cSld[^>]*name="([^"]+)"',
      ).firstMatch(content);
      var layoutName = nameMatch?.group(1);

      if (layoutName == null || layoutName.isEmpty) {
        layoutName = p.basenameWithoutExtension(file.name);
      }

      final placeholders = <PlaceholderInfo>[];
      final phMatches = RegExp(r'<p:ph[^>]*>').allMatches(content);

      for (final match in phMatches) {
        final tag = match.group(0)!;
        final type = _getAttribute(tag, 'type');
        final idx = _getAttribute(tag, 'idx');

        if (type != null) {
          placeholders.add(
            PlaceholderInfo(
              type: type,
              idx: idx != null ? int.tryParse(idx) : null,
            ),
          );
        }
      }

      print('  Found Layout: "$layoutName" (${file.name})');
      layouts.add(
        LayoutInfo(
          filename: p.basename(file.name),
          name: layoutName,
          placeholders: placeholders,
        ),
      );
    }
  }

  final library = Library((b) {
    b.directives.add(Directive.import('package:open_xml/open_xml.dart'));

    // Add extension type
    b.body.add(
      ExtensionType((e) {
        e.name = className;
        e.representationDeclaration = RepresentationDeclaration((r) {
          r.name = 'presentation';
          r.declaredRepresentationType = refer('Presentation');
        });

        // Generate methods for each layout
        for (final layout in layouts) {
          final sanitizedDataName = layout.name.replaceAll(
            RegExp(r'[^a-zA-Z0-9 ]'),
            '',
          );
          final methodName = 'add${ReCase(sanitizedDataName).pascalCase}Slide';

          e.methods.add(
            Method((m) {
              m.name = methodName;
              m.returns = refer('Slide');

              final usedParamNames = <String>{};
              final bodyStatements = <Code>[];

              bodyStatements.add(
                Code(
                  "final slide = presentation.addSlide(layout: '${layout.name}');",
                ),
              );

              for (final ph in layout.placeholders) {
                String paramName;
                Reference paramType;

                switch (ph.type) {
                  case 'title':
                  case 'ctrTitle':
                  case 'subTitle':
                    paramName = ph.type == 'ctrTitle' ? 'title' : ph.type;
                    paramType = refer('TextRun');
                    break;
                  case 'body':
                    paramName = 'bullets';
                    paramType = refer('List<TextRun>');
                    break;
                  case 'pic':
                    paramName = 'image';
                    paramType = refer('ImageReference');
                    break;
                  case 'dt':
                  case 'sldNum':
                  case 'ftr':
                    continue;
                  default:
                    paramName = ph.type;
                    paramType = refer('TextRun');
                }

                if (usedParamNames.contains(paramName)) {
                  int counter = 2;
                  while (usedParamNames.contains('$paramName$counter')) {
                    counter++;
                  }
                  paramName = '$paramName$counter';
                }
                usedParamNames.add(paramName);

                m.optionalParameters.add(
                  Parameter((p) {
                    p.name = paramName;
                    p.type = paramType;
                    p.named = true;
                    p.required = true;
                  }),
                );

                // Body builder logic
                if (ph.type == 'title' ||
                    ph.type == 'ctrTitle' ||
                    ph.type == 'subTitle') {
                  final boxName = 'titleBox_$paramName';
                  bodyStatements.add(
                    Code('''
                    final $boxName = SlideTextBox(
                      placeholderType: '${ph.type}',
                      ${ph.idx != null ? 'placeholderIdx: ${ph.idx},' : ''}
                    );
                    $boxName.addRun($paramName);
                    slide.elements.add($boxName);
                  '''),
                  );
                } else if (ph.type == 'body') {
                  final boxName = 'bodyBox_$paramName';
                  bodyStatements.add(
                    Code('''
                   final $boxName = SlideTextBox(
                     placeholderType: 'body',
                     ${ph.idx != null ? 'placeholderIdx: ${ph.idx},' : ''}
                   );
                   for (final val in $paramName) {
                     $boxName.addRun(val);
                   }
                   slide.elements.add($boxName);
                 '''),
                  );
                } else if (ph.type == 'pic') {
                  bodyStatements.add(
                    Code('''
                   slide.elements.add(SlideImage(
                     path: $paramName.path,
                     placeholderType: 'pic',
                     ${ph.idx != null ? 'placeholderIdx: ${ph.idx},' : ''}
                   ));
                 '''),
                  );
                }
              }

              bodyStatements.add(Code('return slide;'));
              m.body = Block((b) => b.statements.addAll(bodyStatements));
            }),
          );
        }
      }),
    );

    // Helper classes
    b.body.add(
      Class((c) {
        c.name = 'ImageReference';
        c.fields.add(
          Field((f) {
            f.name = 'path';
            f.type = refer('String');
            f.modifier = FieldModifier.final$;
          }),
        );
        c.constructors.add(
          Constructor((ctor) {
            ctor.requiredParameters.add(
              Parameter((p) {
                p.name = 'path';
                p.toThis = true;
              }),
            );
          }),
        );
      }),
    );

    b.body.add(
      Extension((e) {
        e.name = 'StringToImageRef';
        e.on = refer('String');
        e.methods.add(
          Method((m) {
            m.name = 'toImageReference';
            m.returns = refer('ImageReference');
            m.body = Code('return ImageReference(this);');
          }),
        );
      }),
    );

    // Helper extension for TextRun
    b.body.add(
      Extension((e) {
        e.name = 'StringToTextRun';
        e.on = refer('String');
        e.methods.add(
          Method((m) {
            m.name = 'toTextRun';
            m.returns = refer('TextRun');
            m.body = Code('return TextRun(text: this);');
          }),
        );
      }),
    );
  });

  final emitter = DartEmitter(allocator: Allocator.simplePrefixing());
  final source = library.accept(emitter).toString();
  final formatted = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  ).format(source);

  File(outputPath).writeAsStringSync(formatted);
  print('Generated $outputPath');
}

String? _getAttribute(String tag, String attr) {
  final match = RegExp('$attr="([^"]+)"').firstMatch(tag);
  return match?.group(1);
}

class LayoutInfo {
  final String filename;
  final String name;
  final List<PlaceholderInfo> placeholders;

  LayoutInfo({
    required this.filename,
    required this.name,
    required this.placeholders,
  });
}

class PlaceholderInfo {
  final String type;
  final int? idx;

  PlaceholderInfo({required this.type, this.idx});
}
