import 'package:file/file.dart';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

Set<String> _getSlidesInSldIdLst(Directory unpackedDir) {
  final fs = unpackedDir.fileSystem;
  final presPath = fs.file(p.join(unpackedDir.path, 'ppt', 'presentation.xml'));
  final presRelsPath = fs.file(
    p.join(unpackedDir.path, 'ppt', '_rels', 'presentation.xml.rels'),
  );

  if (!presPath.existsSync() || !presRelsPath.existsSync()) {
    return {};
  }

  final relsDoc = XmlDocument.parse(presRelsPath.readAsStringSync());
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

  final presContent = presPath.readAsStringSync();
  final referencedRids = RegExp(
    r'<p:sldId[^>]*r:id="([^"]+)"',
  ).allMatches(presContent).map((m) => m.group(1)!).toSet();

  return {
    for (var rid in referencedRids)
      if (ridToSlide.containsKey(rid)) ridToSlide[rid]!,
  };
}

List<String> _removeOrphanedSlides(Directory unpackedDir) {
  final fs = unpackedDir.fileSystem;
  final slidesDir = fs.directory(p.join(unpackedDir.path, 'ppt', 'slides'));
  final slidesRelsDir = fs.directory(p.join(slidesDir.path, '_rels'));
  final presRelsPath = fs.file(
    p.join(unpackedDir.path, 'ppt', '_rels', 'presentation.xml.rels'),
  );

  if (!slidesDir.existsSync()) {
    return [];
  }

  final referencedSlides = _getSlidesInSldIdLst(unpackedDir);
  final removed = <String>[];

  for (var entity in slidesDir.listSync()) {
    if (entity is File &&
        p.extension(entity.path) == '.xml' &&
        p.basename(entity.path).startsWith('slide')) {
      if (!referencedSlides.contains(p.basename(entity.path))) {
        removed.add(p.relative(entity.path, from: unpackedDir.path));
        entity.deleteSync();

        final relsFile = fs.file(
          p.join(slidesRelsDir.path, '${p.basename(entity.path)}.rels'),
        );
        if (relsFile.existsSync()) {
          removed.add(p.relative(relsFile.path, from: unpackedDir.path));
          relsFile.deleteSync();
        }
      }
    }
  }

  if (removed.isNotEmpty && presRelsPath.existsSync()) {
    final relsDoc = XmlDocument.parse(presRelsPath.readAsStringSync());
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
      presRelsPath.writeAsStringSync(relsDoc.toXmlString(pretty: false));
    }
  }

  return removed;
}

List<String> _removeTrashDirectory(Directory unpackedDir) {
  final fs = unpackedDir.fileSystem;
  final trashDir = fs.directory(p.join(unpackedDir.path, '[trash]'));
  final removed = <String>[];

  if (trashDir.existsSync()) {
    for (var entity in trashDir.listSync(recursive: true)) {
      if (entity is File) {
        removed.add(p.relative(entity.path, from: unpackedDir.path));
        entity.deleteSync();
      }
    }
    trashDir.deleteSync(recursive: true);
  }

  return removed;
}

Set<String> _getSlideReferencedFiles(Directory unpackedDir) {
  final fs = unpackedDir.fileSystem;
  final referenced = <String>{};
  final slidesRelsDir = fs.directory(
    p.join(unpackedDir.path, 'ppt', 'slides', '_rels'),
  );

  if (!slidesRelsDir.existsSync()) {
    return referenced;
  }

  for (var entity in slidesRelsDir.listSync()) {
    if (entity is File && p.extension(entity.path) == '.rels') {
      try {
        final doc = XmlDocument.parse(entity.readAsStringSync());
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

List<String> _removeOrphanedRelsFiles(Directory unpackedDir) {
  final fs = unpackedDir.fileSystem;
  final resourceDirs = ['charts', 'diagrams', 'drawings'];
  final removed = <String>[];
  final slideReferenced = _getSlideReferencedFiles(unpackedDir);

  for (var dirName in resourceDirs) {
    final relsDir = fs.directory(
      p.join(unpackedDir.path, 'ppt', dirName, '_rels'),
    );
    if (!relsDir.existsSync()) continue;

    for (var entity in relsDir.listSync()) {
      if (entity is File && p.extension(entity.path) == '.rels') {
        final resourceFile = fs.file(
          p.join(relsDir.parent.path, p.basenameWithoutExtension(entity.path)),
        );
        final resourceRelPath = p.relative(
          resourceFile.path,
          from: unpackedDir.path,
        );

        if (!resourceFile.existsSync() ||
            !slideReferenced.contains(resourceRelPath)) {
          removed.add(p.relative(entity.path, from: unpackedDir.path));
          entity.deleteSync();
        }
      }
    }
  }

  return removed;
}

Set<String> _getReferencedFiles(Directory unpackedDir) {
  final referenced = <String>{};

  for (var entity in unpackedDir.listSync(recursive: true)) {
    if (entity is File && p.extension(entity.path) == '.rels') {
      try {
        final doc = XmlDocument.parse(entity.readAsStringSync());
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

List<String> _removeOrphanedFiles(
  Directory unpackedDir,
  Set<String> referenced,
) {
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
    if (!dirPath.existsSync()) continue;

    for (var entity in dirPath.listSync()) {
      if (entity is File) {
        final relPath = p.relative(entity.path, from: unpackedDir.path);
        if (!referenced.contains(relPath)) {
          removed.add(relPath);
          entity.deleteSync();
        }
      }
    }
  }

  final themeDir = fs.directory(p.join(unpackedDir.path, 'ppt', 'theme'));
  if (themeDir.existsSync()) {
    for (var entity in themeDir.listSync()) {
      if (entity is File && p.basename(entity.path).startsWith('theme')) {
        final relPath = p.relative(entity.path, from: unpackedDir.path);
        if (!referenced.contains(relPath)) {
          removed.add(relPath);
          entity.deleteSync();
          final themeRels = fs.file(
            p.join(themeDir.path, '_rels', '${p.basename(entity.path)}.rels'),
          );
          if (themeRels.existsSync()) {
            removed.add(p.relative(themeRels.path, from: unpackedDir.path));
            themeRels.deleteSync();
          }
        }
      }
    }
  }

  final notesDir = fs.directory(p.join(unpackedDir.path, 'ppt', 'notesSlides'));
  if (notesDir.existsSync()) {
    for (var entity in notesDir.listSync()) {
      if (entity is File && p.extension(entity.path) == '.xml') {
        final relPath = p.relative(entity.path, from: unpackedDir.path);
        if (!referenced.contains(relPath)) {
          removed.add(relPath);
          entity.deleteSync();
        }
      }
    }

    final notesRelsDir = fs.directory(p.join(notesDir.path, '_rels'));
    if (notesRelsDir.existsSync()) {
      for (var entity in notesRelsDir.listSync()) {
        if (entity is File && p.extension(entity.path) == '.rels') {
          final notesFile = fs.file(
            p.join(notesDir.path, p.basenameWithoutExtension(entity.path)),
          );
          if (!notesFile.existsSync()) {
            removed.add(p.relative(entity.path, from: unpackedDir.path));
            entity.deleteSync();
          }
        }
      }
    }
  }

  return removed;
}

void _updateContentTypes(Directory unpackedDir, List<String> removedFiles) {
  final fs = unpackedDir.fileSystem;
  final ctPath = fs.file(p.join(unpackedDir.path, '[Content_Types].xml'));
  if (!ctPath.existsSync()) return;

  final doc = XmlDocument.parse(ctPath.readAsStringSync());
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
    ctPath.writeAsStringSync(doc.toXmlString(pretty: false));
  }
}

/// Recursively cleans unused assets and media files from the unpacked presentation.
///
/// Returns a list of the relative paths for all removed files.
List<String> cleanUnusedFiles(Directory unpackedDir) {
  final allRemoved = <String>[];

  allRemoved.addAll(_removeOrphanedSlides(unpackedDir));
  allRemoved.addAll(_removeTrashDirectory(unpackedDir));

  while (true) {
    final removedRels = _removeOrphanedRelsFiles(unpackedDir);
    final referenced = _getReferencedFiles(unpackedDir);
    final removedFiles = _removeOrphanedFiles(unpackedDir, referenced);

    final totalRemoved = [...removedRels, ...removedFiles];
    if (totalRemoved.isEmpty) break;

    allRemoved.addAll(totalRemoved);
  }

  if (allRemoved.isNotEmpty) {
    _updateContentTypes(unpackedDir, allRemoved);
  }

  return allRemoved;
}
