import 'package:file/file.dart';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

Future<Set<String>> _getSlidesInSldIdLst(Directory unpackedDir) async {
  final fs = unpackedDir.fileSystem;
  final presPath = fs.file(p.join(unpackedDir.path, 'ppt', 'presentation.xml'));
  final presRelsPath = fs.file(
    p.join(unpackedDir.path, 'ppt', '_rels', 'presentation.xml.rels'),
  );

  if (!await presPath.exists() || !await presRelsPath.exists()) {
    return {};
  }

  final relsDoc = XmlDocument.parse(await presRelsPath.readAsString());
  final ridToSlide = <String, String>{};

  for (var rel in relsDoc.findAllElements('Relationship')) {
    final rid = rel.getAttribute('Id');
    final target = rel.getAttribute('Target');
    final relType = rel.getAttribute('Type');

    if (rid != null &&
        target != null &&
        relType != null &&
        relType.contains('slide') &&
        target.startsWith('slides/')) {
      ridToSlide[rid] = target.replaceFirst('slides/', '');
    }
  }

  final presContent = await presPath.readAsString();
  final referencedRids = RegExp(
    r'<p:sldId[^>]*r:id="([^"]+)"',
  ).allMatches(presContent).map((m) => m.group(1)!).toSet();

  return {
    for (var rid in referencedRids)
      if (ridToSlide.containsKey(rid)) ridToSlide[rid]!,
  };
}

Future<List<String>> _removeOrphanedSlides(Directory unpackedDir) async {
  final fs = unpackedDir.fileSystem;
  final slidesDir = fs.directory(p.join(unpackedDir.path, 'ppt', 'slides'));
  final slidesRelsDir = fs.directory(p.join(slidesDir.path, '_rels'));
  final presRelsPath = fs.file(
    p.join(unpackedDir.path, 'ppt', '_rels', 'presentation.xml.rels'),
  );

  if (!await slidesDir.exists()) {
    return [];
  }

  final referencedSlides = await _getSlidesInSldIdLst(unpackedDir);
  final removed = <String>[];

  await for (var entity in slidesDir.list()) {
    if (entity is File &&
        p.extension(entity.path) == '.xml' &&
        p.basename(entity.path).startsWith('slide')) {
      if (!referencedSlides.contains(p.basename(entity.path))) {
        removed.add(p.relative(entity.path, from: unpackedDir.path));
        await entity.delete();

        final relsFile = fs.file(
          p.join(slidesRelsDir.path, '${p.basename(entity.path)}.rels'),
        );
        if (await relsFile.exists()) {
          removed.add(p.relative(relsFile.path, from: unpackedDir.path));
          await relsFile.delete();
        }
      }
    }
  }

  if (removed.isNotEmpty && await presRelsPath.exists()) {
    final relsDoc = XmlDocument.parse(await presRelsPath.readAsString());
    bool changed = false;

    final relationships = relsDoc.findAllElements('Relationship').toList();
    for (var rel in relationships) {
      final target = rel.getAttribute('Target');
      if (target != null && target.startsWith('slides/')) {
        final slideName = target.replaceFirst('slides/', '');
        if (!referencedSlides.contains(slideName)) {
          rel.parent?.children.remove(rel);
          changed = true;
        }
      }
    }

    if (changed) {
      await presRelsPath.writeAsString(relsDoc.toXmlString(pretty: false));
    }
  }

  return removed;
}

Future<List<String>> _removeTrashDirectory(Directory unpackedDir) async {
  final fs = unpackedDir.fileSystem;
  final trashDir = fs.directory(p.join(unpackedDir.path, '[trash]'));
  final removed = <String>[];

  if (await trashDir.exists()) {
    await for (var entity in trashDir.list(recursive: true)) {
      if (entity is File) {
        removed.add(p.relative(entity.path, from: unpackedDir.path));
        await entity.delete();
      }
    }
    await trashDir.delete(recursive: true);
  }

  return removed;
}

Future<Set<String>> _getSlideReferencedFiles(Directory unpackedDir) async {
  final fs = unpackedDir.fileSystem;
  final referenced = <String>{};
  final slidesRelsDir = fs.directory(
    p.join(unpackedDir.path, 'ppt', 'slides', '_rels'),
  );

  if (!await slidesRelsDir.exists()) {
    return referenced;
  }

  await for (var entity in slidesRelsDir.list()) {
    if (entity is File && p.extension(entity.path) == '.rels') {
      try {
        final doc = XmlDocument.parse(await entity.readAsString());
        for (var rel in doc.findAllElements('Relationship')) {
          final target = rel.getAttribute('Target');
          if (target != null) {
            final targetPath = p.normalize(
              p.join(entity.parent.parent.path, target),
            );
            referenced.add(p.relative(targetPath, from: unpackedDir.path));
          }
        }
      } catch (_) {}
    }
  }

  return referenced;
}

Future<List<String>> _removeOrphanedRelsFiles(Directory unpackedDir) async {
  final fs = unpackedDir.fileSystem;
  final resourceDirs = ['charts', 'diagrams', 'drawings'];
  final removed = <String>[];
  final slideReferenced = await _getSlideReferencedFiles(unpackedDir);

  for (var dirName in resourceDirs) {
    final relsDir = fs.directory(
      p.join(unpackedDir.path, 'ppt', dirName, '_rels'),
    );
    if (!await relsDir.exists()) continue;

    await for (var entity in relsDir.list()) {
      if (entity is File && p.extension(entity.path) == '.rels') {
        final resourceFile = fs.file(
          p.join(relsDir.parent.path, p.basenameWithoutExtension(entity.path)),
        );
        final resourceRelPath = p.relative(
          resourceFile.path,
          from: unpackedDir.path,
        );

        if (!await resourceFile.exists() ||
            !slideReferenced.contains(resourceRelPath)) {
          removed.add(p.relative(entity.path, from: unpackedDir.path));
          await entity.delete();
        }
      }
    }
  }

  return removed;
}

Future<Set<String>> _getReferencedFiles(Directory unpackedDir) async {
  final referenced = <String>{};

  await for (var entity in unpackedDir.list(recursive: true)) {
    if (entity is File && p.extension(entity.path) == '.rels') {
      try {
        final doc = XmlDocument.parse(await entity.readAsString());
        for (var rel in doc.findAllElements('Relationship')) {
          final target = rel.getAttribute('Target');
          if (target != null) {
            final targetPath = p.normalize(
              p.join(entity.parent.parent.path, target),
            );
            referenced.add(p.relative(targetPath, from: unpackedDir.path));
          }
        }
      } catch (_) {}
    }
  }

  return referenced;
}

Future<List<String>> _removeOrphanedFiles(
  Directory unpackedDir,
  Set<String> referenced,
) async {
  final fs = unpackedDir.fileSystem;
  final resourceDirs = [
    'media',
    'embeddings',
    'charts',
    'diagrams',
    'tags',
    'drawings',
    'ink',
  ];
  final removed = <String>[];

  for (var dirName in resourceDirs) {
    final dirPath = fs.directory(p.join(unpackedDir.path, 'ppt', dirName));
    if (!await dirPath.exists()) continue;

    await for (var entity in dirPath.list()) {
      if (entity is File) {
        final relPath = p.relative(entity.path, from: unpackedDir.path);
        if (!referenced.contains(relPath)) {
          removed.add(relPath);
          await entity.delete();
        }
      }
    }
  }

  final themeDir = fs.directory(p.join(unpackedDir.path, 'ppt', 'theme'));
  if (await themeDir.exists()) {
    await for (var entity in themeDir.list()) {
      if (entity is File && p.basename(entity.path).startsWith('theme')) {
        final relPath = p.relative(entity.path, from: unpackedDir.path);
        if (!referenced.contains(relPath)) {
          removed.add(relPath);
          await entity.delete();
          final themeRels = fs.file(
            p.join(themeDir.path, '_rels', '${p.basename(entity.path)}.rels'),
          );
          if (await themeRels.exists()) {
            removed.add(p.relative(themeRels.path, from: unpackedDir.path));
            await themeRels.delete();
          }
        }
      }
    }
  }

  final notesDir = fs.directory(p.join(unpackedDir.path, 'ppt', 'notesSlides'));
  if (await notesDir.exists()) {
    await for (var entity in notesDir.list()) {
      if (entity is File && p.extension(entity.path) == '.xml') {
        final relPath = p.relative(entity.path, from: unpackedDir.path);
        if (!referenced.contains(relPath)) {
          removed.add(relPath);
          await entity.delete();
        }
      }
    }

    final notesRelsDir = fs.directory(p.join(notesDir.path, '_rels'));
    if (await notesRelsDir.exists()) {
      await for (var entity in notesRelsDir.list()) {
        if (entity is File && p.extension(entity.path) == '.rels') {
          final notesFile = fs.file(
            p.join(notesDir.path, p.basenameWithoutExtension(entity.path)),
          );
          if (!await notesFile.exists()) {
            removed.add(p.relative(entity.path, from: unpackedDir.path));
            await entity.delete();
          }
        }
      }
    }
  }

  return removed;
}

Future<void> _updateContentTypes(Directory unpackedDir, List<String> removedFiles) async {
  final fs = unpackedDir.fileSystem;
  final ctPath = fs.file(p.join(unpackedDir.path, '[Content_Types].xml'));
  if (!await ctPath.exists()) return;

  final doc = XmlDocument.parse(await ctPath.readAsString());
  bool changed = false;

  final overrides = doc.findAllElements('Override').toList();
  for (var override in overrides) {
    String? partName = override.getAttribute('PartName');
    if (partName != null) {
      if (partName.startsWith('/')) {
        partName = partName.substring(1);
      }
      if (removedFiles.contains(partName)) {
        override.parent?.children.remove(override);
        changed = true;
      }
    }
  }

  if (changed) {
    await ctPath.writeAsString(doc.toXmlString(pretty: false));
  }
}

/// Recursively cleans unused assets and media files from the unpacked presentation.
///
/// Returns a list of the relative paths for all removed files.
Future<List<String>> cleanUnusedFiles(Directory unpackedDir) async {
  final allRemoved = <String>[];

  allRemoved.addAll(await _removeOrphanedSlides(unpackedDir));
  allRemoved.addAll(await _removeTrashDirectory(unpackedDir));

  while (true) {
    final removedRels = await _removeOrphanedRelsFiles(unpackedDir);
    final referenced = await _getReferencedFiles(unpackedDir);
    final removedFiles = await _removeOrphanedFiles(unpackedDir, referenced);

    final totalRemoved = [...removedRels, ...removedFiles];
    if (totalRemoved.isEmpty) break;

    allRemoved.addAll(totalRemoved);
  }

  if (allRemoved.isNotEmpty) {
    await _updateContentTypes(unpackedDir, allRemoved);
  }

  return allRemoved;
}
