import 'package:file/file.dart';
import 'package:path/path.dart' as p;

/// Add a new slide to an unpacked PPTX directory.
///
/// Usage: dart add_slide.dart <unpacked_dir> <source>

int _getNextSlideNumber(Directory slidesDir) {
  int maxNum = 0;
  final regExp = RegExp(r'^slide(\d+)\.xml$');

  if (slidesDir.existsSync()) {
    for (var entity in slidesDir.listSync()) {
      if (entity is File) {
        final match = regExp.firstMatch(p.basename(entity.path));
        if (match != null) {
          final num = int.tryParse(match.group(1)!);
          if (num != null && num > maxNum) {
            maxNum = num;
          }
        }
      }
    }
  }
  return maxNum > 0 ? maxNum + 1 : 1;
}

void _createSlideFromLayout(Directory unpackedDir, String layoutFile) {
  final fs = unpackedDir.fileSystem;
  final slidesDir = fs.directory(p.join(unpackedDir.path, 'ppt', 'slides'));
  final relsDir = fs.directory(p.join(slidesDir.path, '_rels'));
  final layoutsDir = fs.directory(
    p.join(unpackedDir.path, 'ppt', 'slideLayouts'),
  );

  final layoutPath = fs.file(p.join(layoutsDir.path, layoutFile));
  if (!layoutPath.existsSync()) {
    throw Exception('Error: ${layoutPath.path} not found');
  }

  final nextNum = _getNextSlideNumber(slidesDir);
  final dest = 'slide$nextNum.xml';
  final destSlide = fs.file(p.join(slidesDir.path, dest));
  final destRels = fs.file(p.join(relsDir.path, '$dest.rels'));

  const slideXml = '''<?xml version="1.0" encoding="UTF-8" ?>
<p:sld xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main">
  <p:cSld>
    <p:spTree>
      <p:nvGrpSpPr>
        <p:cNvPr id="1" name=""/>
        <p:cNvGrpSpPr/>
        <p:nvPr/>
      </p:nvGrpSpPr>
      <p:grpSpPr>
        <a:xfrm>
          <a:off x="0" y="0"/>
          <a:ext cx="0" cy="0"/>
          <a:chOff x="0" y="0"/>
          <a:chExt cx="0" cy="0"/>
        </a:xfrm>
      </p:grpSpPr>
    </p:spTree>
  </p:cSld>
  <p:clrMapOvr>
    <a:masterClrMapping/>
  </p:clrMapOvr>
</p:sld>''';

  slidesDir.createSync(recursive: true);
  destSlide.writeAsStringSync(slideXml);

  relsDir.createSync(recursive: true);
  final relsXml =
      '''<?xml version="1.0" encoding="UTF-8" ?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideLayout" Target="../slideLayouts/$layoutFile"/>
</Relationships>''';
  destRels.writeAsStringSync(relsXml);

  _addToContentTypes(unpackedDir, dest);
  final rid = _addToPresentationRels(unpackedDir, dest);
  final nextSlideId = _getNextSlideId(unpackedDir);

  print('Created $dest from $layoutFile');
  print(
    'Add to presentation.xml <p:sldIdLst>: <p:sldId id="$nextSlideId" r:id="$rid"/>',
  );
}

void _duplicateSlide(Directory unpackedDir, String source) {
  final fs = unpackedDir.fileSystem;
  final slidesDir = fs.directory(p.join(unpackedDir.path, 'ppt', 'slides'));
  final relsDir = fs.directory(p.join(slidesDir.path, '_rels'));

  final sourceSlide = fs.file(p.join(slidesDir.path, source));

  if (!sourceSlide.existsSync()) {
    throw Exception('Error: ${sourceSlide.path} not found');
  }

  final nextNum = _getNextSlideNumber(slidesDir);
  final dest = 'slide$nextNum.xml';
  final destSlide = fs.file(p.join(slidesDir.path, dest));

  final sourceRels = fs.file(p.join(relsDir.path, '$source.rels'));
  final destRels = fs.file(p.join(relsDir.path, '$dest.rels'));

  sourceSlide.copySync(destSlide.path);

  if (sourceRels.existsSync()) {
    sourceRels.copySync(destRels.path);
    String relsContent = destRels.readAsStringSync();
    relsContent = relsContent.replaceAll(
      RegExp(r'\s*<Relationship[^>]*Type="[^"]*notesSlide"[^>]*/>\s*'),
      '\n',
    );
    destRels.writeAsStringSync(relsContent);
  }

  _addToContentTypes(unpackedDir, dest);
  final rid = _addToPresentationRels(unpackedDir, dest);
  final nextSlideId = _getNextSlideId(unpackedDir);

  print('Created $dest from $source');
  print(
    'Add to presentation.xml <p:sldIdLst>: <p:sldId id="$nextSlideId" r:id="$rid"/>',
  );
}

void _addToContentTypes(Directory unpackedDir, String dest) {
  final fs = unpackedDir.fileSystem;
  final contentTypesPath = fs.file(
    p.join(unpackedDir.path, '[Content_Types].xml'),
  );
  if (!contentTypesPath.existsSync()) return;

  String contentTypes = contentTypesPath.readAsStringSync();
  final newOverride =
      '<Override PartName="/ppt/slides/$dest" ContentType="application/vnd.openxmlformats-officedocument.presentationml.slide+xml"/>';

  if (!contentTypes.contains('/ppt/slides/$dest')) {
    contentTypes = contentTypes.replaceFirst(
      '</Types>',
      '  $newOverride\n</Types>',
    );
    contentTypesPath.writeAsStringSync(contentTypes);
  }
}

String _addToPresentationRels(Directory unpackedDir, String dest) {
  final fs = unpackedDir.fileSystem;
  final presRelsPath = fs.file(
    p.join(unpackedDir.path, 'ppt', '_rels', 'presentation.xml.rels'),
  );
  if (!presRelsPath.existsSync()) return 'rId1';

  String presRels = presRelsPath.readAsStringSync();
  final rids = RegExp(
    r'Id="rId(\d+)"',
  ).allMatches(presRels).map((m) => int.parse(m.group(1)!)).toList();
  final nextRid = rids.isEmpty ? 1 : rids.reduce((a, b) => a > b ? a : b) + 1;
  final rid = 'rId$nextRid';

  final newRel =
      '<Relationship Id="$rid" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide" Target="slides/$dest"/>';

  if (!presRels.contains('slides/$dest')) {
    presRels = presRels.replaceFirst(
      '</Relationships>',
      '  $newRel\n</Relationships>',
    );
    presRelsPath.writeAsStringSync(presRels);
  }

  return rid;
}

int _getNextSlideId(Directory unpackedDir) {
  final fs = unpackedDir.fileSystem;
  final presPath = fs.file(p.join(unpackedDir.path, 'ppt', 'presentation.xml'));
  if (!presPath.existsSync()) return 256;

  final presContent = presPath.readAsStringSync();
  final slideIds = RegExp(
    r'<p:sldId[^>]*id="(\d+)"',
  ).allMatches(presContent).map((m) => int.parse(m.group(1)!)).toList();
  return slideIds.isEmpty ? 256 : slideIds.reduce((a, b) => a > b ? a : b) + 1;
}

(String, String?) _parseSource(String source) {
  if (source.startsWith('slideLayout') && source.endsWith('.xml')) {
    return ('layout', source);
  }
  return ('slide', null);
}

/// Adds a new slide to the presentation.
///
/// [source] can be a slide to duplicate (e.g., 'slide2.xml') or a layout to use (e.g., 'slideLayout2.xml').
void addSlide(Directory unpackedDir, String source) {
  final (sourceType, layoutFile) = _parseSource(source);

  if (sourceType == 'layout' && layoutFile != null) {
    _createSlideFromLayout(unpackedDir, layoutFile);
  } else {
    _duplicateSlide(unpackedDir, source);
  }
}
