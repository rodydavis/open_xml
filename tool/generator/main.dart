import 'dart:io';
import 'package:path/path.dart' as p;
import 'schema_context.dart';
import 'resolver.dart';
import 'emitter.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: dart tool/generator/main.dart <path-to-open-xml-schemas>');
    exit(1);
  }

  final schemaRoot = args[0];
  final context = SchemaContext();

  // Load key schemas
  // Load key schemas
  // Part 4 Transitional (Main compliance)
  final part4Dir = p.join(schemaRoot, 'ISO-IEC29500-4_2016');
  await context.load(p.join(part4Dir, 'wml.xsd')); // Word
  await context.load(p.join(part4Dir, 'sml.xsd')); // Excel
  await context.load(p.join(part4Dir, 'pml.xsd')); // PowerPoint
  await context.load(p.join(part4Dir, 'dml-main.xsd')); // Drawing

  // Part 1 Strict (Shared types / OPC)
  await context.load(p.join(part4Dir, 'shared-commonSimpleTypes.xsd'));
  final opcDir = p.join(schemaRoot, 'ecma', 'fouth-edition');
  await context.load(p.join(opcDir, 'opc-relationships.xsd'));

  print('Loaded ${context.schemas.length} namespaces.');

  final resolver = TypeResolver(context);
  await resolver.resolve();

  final generator = Emitter(resolver);
  await generator.generate('lib/src');
}
