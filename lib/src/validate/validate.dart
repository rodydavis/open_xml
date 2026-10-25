import 'package:file/file.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';

const _pmlNs = 'http://schemas.openxmlformats.org/presentationml/2006/main';
const _dmlNs = 'http://schemas.openxmlformats.org/drawingml/2006/main';
const _wmlNs = 'http://schemas.openxmlformats.org/wordprocessingml/2006/main';
const _smlNs = 'http://schemas.openxmlformats.org/spreadsheetml/2006/main';
const _relsNs = 'http://schemas.openxmlformats.org/package/2006/relationships';
const _relAttrNs =
    'http://schemas.openxmlformats.org/officeDocument/2006/relationships';
const _contentTypesNs =
    'http://schemas.openxmlformats.org/package/2006/content-types';
const _corePropsNs =
    'http://schemas.openxmlformats.org/package/2006/metadata/core-properties';
const _appPropsNs =
    'http://schemas.openxmlformats.org/officeDocument/2006/extended-properties';
const _dctermsNs = 'http://purl.org/dc/terms/';
const _xsiNs = 'http://www.w3.org/2001/XMLSchema-instance';

List<String> _validateElementSequence(
  XmlElement parent,
  List<String> expectedOrder,
) {
  final errors = <String>[];
  var lastIdx = -1;
  String? lastTag;
  for (final child in parent.children.whereType<XmlElement>()) {
    if (child.namespaceUri != _pmlNs) continue;
    final idx = expectedOrder.indexOf(child.name.local);
    if (idx == -1) continue;
    if (idx < lastIdx) {
      errors.add(
        'Invalid element sequence in ${parent.name.qualified}: <${child.name.qualified}> cannot appear after <p:$lastTag>',
      );
    } else {
      lastIdx = idx;
      lastTag = child.name.local;
    }
  }
  return errors;
}

List<String> _validatePresentationStructure(XmlElement root) {
  final errors = <String>[];

  // Validate <p:clrMapOvr> contains <a:masterClrMapping/> or <a:overrideClrMapping/>
  for (final clrMapOvr in root.findAllElements('clrMapOvr', namespace: _pmlNs)) {
    final hasMaster =
        clrMapOvr.getElement('masterClrMapping', namespace: _dmlNs) != null;
    final hasOverride =
        clrMapOvr.getElement('overrideClrMapping', namespace: _dmlNs) != null;
    if (!hasMaster && !hasOverride) {
      errors.add(
        'Missing required <a:masterClrMapping/> or <a:overrideClrMapping/> in ${clrMapOvr.name.qualified}',
      );
    }
  }

  // Validate <p:bgPr> fill + effectLst requirements
  for (final bgPr in root.findAllElements('bgPr', namespace: _pmlNs)) {
    final noFills = bgPr.findElements('noFill', namespace: _dmlNs).toList();
    final solidFills =
        bgPr.findElements('solidFill', namespace: _dmlNs).toList();
    final gradFills = bgPr.findElements('gradFill', namespace: _dmlNs).toList();
    final blipFills = bgPr.findElements('blipFill', namespace: _dmlNs).toList();
    final pattFills = bgPr.findElements('pattFill', namespace: _dmlNs).toList();
    final grpFills = bgPr.findElements('grpFill', namespace: _dmlNs).toList();

    final hasFill = noFills.isNotEmpty ||
        solidFills.isNotEmpty ||
        gradFills.isNotEmpty ||
        blipFills.isNotEmpty ||
        pattFills.isNotEmpty ||
        grpFills.isNotEmpty;
    if (!hasFill) {
      errors.add(
        'Missing required fill element (solidFill, gradFill, blipFill, noFill, pattFill, or grpFill) in ${bgPr.name.qualified}',
      );
    }

    for (final e in noFills) {
      errors.addAll(D_CT_NoFillProperties(e).validate());
    }
    for (final e in solidFills) {
      errors.addAll(D_CT_SolidColorFillProperties(e).validate());
    }
    for (final e in gradFills) {
      errors.addAll(D_CT_GradientFillProperties(e).validate());
    }
    for (final e in blipFills) {
      errors.addAll(D_CT_BlipFillProperties(e).validate());
    }
    for (final e in pattFills) {
      errors.addAll(D_CT_PatternFillProperties(e).validate());
    }
    for (final e in grpFills) {
      errors.addAll(D_CT_GroupFillProperties(e).validate());
    }

    final effectLsts =
        bgPr.findElements('effectLst', namespace: _dmlNs).toList();
    final effectDags =
        bgPr.findElements('effectDag', namespace: _dmlNs).toList();
    if (effectLsts.isEmpty && effectDags.isEmpty) {
      errors.add(
        'Missing required <a:effectLst/> or <a:effectDag/> in ${bgPr.name.qualified}',
      );
    }
    for (final e in effectLsts) {
      errors.addAll(D_CT_EffectList(e).validate());
    }
    for (final e in effectDags) {
      errors.addAll(D_CT_EffectContainer(e).validate());
    }
  }

  // Validate <p:spTree> contains <p:nvGrpSpPr> and <p:grpSpPr> with <a:xfrm>
  for (final spTree in root.findAllElements('spTree', namespace: _pmlNs)) {
    final nvGrpSpPr = spTree.getElement('nvGrpSpPr', namespace: _pmlNs);
    if (nvGrpSpPr == null) {
      errors.add('Missing required <p:nvGrpSpPr> in ${spTree.name.qualified}');
    }
    final grpSpPr = spTree.getElement('grpSpPr', namespace: _pmlNs);
    if (grpSpPr == null) {
      errors.add('Missing required <p:grpSpPr> in ${spTree.name.qualified}');
    } else {
      final xfrm = grpSpPr.getElement('xfrm', namespace: _dmlNs);
      if (xfrm == null) {
        errors.add('Missing required <a:xfrm> in ${grpSpPr.name.qualified}');
      } else {
        if (xfrm.getElement('off', namespace: _dmlNs) == null) {
          errors.add('Missing required <a:off> in ${xfrm.name.qualified}');
        }
        if (xfrm.getElement('ext', namespace: _dmlNs) == null) {
          errors.add('Missing required <a:ext> in ${xfrm.name.qualified}');
        }
        if (xfrm.getElement('chOff', namespace: _dmlNs) == null) {
          errors.add('Missing required <a:chOff> in ${xfrm.name.qualified}');
        }
        if (xfrm.getElement('chExt', namespace: _dmlNs) == null) {
          errors.add('Missing required <a:chExt> in ${xfrm.name.qualified}');
        }
      }
    }
  }

  return errors;
}

final _w3cdtfUtcRegex = RegExp(
  r'^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(Z|[+-]\d{2}:\d{2})$',
);

List<String> _validateCoreProperties(XmlElement root) {
  final errors = <String>[];
  for (final tagName in ['created', 'modified']) {
    final elements = root.findElements(tagName, namespace: _dctermsNs).toList();
    if (elements.isEmpty) {
      errors.add('Missing required <dcterms:$tagName> in ${root.name.qualified}');
      continue;
    }
    for (final el in elements) {
      final xsiType = el.getAttribute('type', namespace: _xsiNs);
      if (xsiType != 'dcterms:W3CDTF') {
        errors.add(
          "Element ${el.name.qualified} must have xsi:type='dcterms:W3CDTF'",
        );
      }
      final text = el.innerText.trim();
      if (text.isEmpty ||
          !_w3cdtfUtcRegex.hasMatch(text) ||
          DateTime.tryParse(text) == null) {
        errors.add(
          'Element ${el.name.qualified} has invalid W3CDTF timestamp: $text',
        );
      }
    }
  }
  return errors;
}

List<String> _validateAppProperties(XmlElement root) {
  final errors = <String>[];
  final childElements = root.children.whereType<XmlElement>().toList();
  if (childElements.isEmpty) {
    errors.add('Element ${root.name.qualified} cannot be empty');
    return errors;
  }
  if (root.getElement('Application', namespace: _appPropsNs) == null) {
    errors.add('Missing required <Application> in ${root.name.qualified}');
  }
  const intElements = {
    'TotalTime',
    'Words',
    'Paragraphs',
    'Slides',
    'Notes',
    'HiddenSlides',
    'MMClips',
    'Pages',
    'Characters',
    'CharactersWithSpaces',
    'Lines',
    'DocSecurity',
  };
  const boolElements = {
    'ScaleCrop',
    'LinksUpToDate',
    'SharedDoc',
    'HyperlinksChanged',
  };
  for (final child in childElements) {
    if (child.namespaceUri != _appPropsNs) continue;
    final tag = child.name.local;
    final text = child.innerText.trim();
    if (intElements.contains(tag) && int.tryParse(text) == null) {
      errors.add('Element <$tag> in ${root.name.qualified} must be an integer: $text');
    } else if (boolElements.contains(tag) &&
        text != 'true' &&
        text != 'false' &&
        text != '1' &&
        text != '0') {
      errors.add('Element <$tag> in ${root.name.qualified} must be a boolean: $text');
    }
  }
  return errors;
}

final _contentTypeExtensionRegex = RegExp(
  r"^[a-zA-Z0-9\-_~!$&'()*+,:=@]+$",
);

List<String> _validateContentTypes(XmlElement root) {
  final errors = <String>[];
  final defaults = root.findElements('Default', namespace: _contentTypesNs);
  final overrides = root.findElements('Override', namespace: _contentTypesNs);
  if (defaults.isEmpty && overrides.isEmpty) {
    errors.add('Element ${root.name.qualified} must contain <Default> or <Override>');
  }
  for (final def in defaults) {
    final ext = def.getAttribute('Extension') ?? '';
    final ct = def.getAttribute('ContentType') ?? '';
    if (ext.isEmpty || !_contentTypeExtensionRegex.hasMatch(ext)) {
      errors.add('Invalid Default Extension "$ext" in [Content_Types].xml');
    }
    if (ct.isEmpty) {
      errors.add('Missing ContentType on Default "$ext" in [Content_Types].xml');
    }
  }
  for (final ovr in overrides) {
    final partName = ovr.getAttribute('PartName') ?? '';
    final ct = ovr.getAttribute('ContentType') ?? '';
    if (partName.isEmpty || !partName.startsWith('/')) {
      errors.add('Invalid Override PartName "$partName" in [Content_Types].xml');
    }
    if (ct.isEmpty) {
      errors.add(
        'Missing ContentType on Override "$partName" in [Content_Types].xml',
      );
    }
  }
  return errors;
}

Future<List<String>> _validateRelationships(
  XmlElement root,
  File relsFile,
  Directory packageDir,
) async {
  final errors = <String>[...Opc_CT_Relationships(root).validate()];
  final seenIds = <String>{};

  // Compute the base directory inside the package for resolving relative targets
  var rootPath = packageDir.path.replaceAll('\\', '/');
  if (!rootPath.endsWith('/')) rootPath += '/';
  final relsPath = relsFile.path.replaceAll('\\', '/');
  var relativeRelsPath = relsPath.startsWith(rootPath)
      ? relsPath.substring(rootPath.length)
      : relsPath;
  // Strip '_rels/<name>.rels' to get the owning part's directory
  final relsIdx = relativeRelsPath.lastIndexOf('/_rels/');
  final baseDir = relsIdx >= 0
      ? relativeRelsPath.substring(0, relsIdx)
      : (relativeRelsPath.startsWith('_rels/') ? '' : '');

  for (final rel in root.findElements('Relationship', namespace: _relsNs)) {
    errors.addAll(Opc_CT_Relationship(rel).validate());
    final id = rel.getAttribute('Id') ?? '';
    if (id.isNotEmpty && !seenIds.add(id)) {
      errors.add('Duplicate Relationship Id "$id" in ${relsFile.path}');
    }
    final targetMode = rel.getAttribute('TargetMode');
    final target = rel.getAttribute('Target') ?? '';
    if (targetMode != 'External' && target.isNotEmpty) {
      // Resolve internal part path
      final rawPath = target.startsWith('/')
          ? target.substring(1)
          : (baseDir.isEmpty ? target : '$baseDir/$target');
      final segments = <String>[];
      for (final seg in rawPath.split('/')) {
        if (seg.isEmpty || seg == '.') continue;
        if (seg == '..') {
          if (segments.isNotEmpty) segments.removeLast();
        } else {
          segments.add(seg);
        }
      }
      final resolvedRelative = segments.join('/');
      final targetFile = packageDir.childFile(resolvedRelative);
      if (!await targetFile.exists()) {
        errors.add(
          'Relationship "$id" target "$target" (resolved: "$resolvedRelative") does not exist in package',
        );
      }
    }
  }
  return errors;
}

Future<List<String>> _validateSlideMasterRelationships(
  XmlElement root,
  File masterFile,
  Directory packageDir,
) async {
  final errors = <String>[];
  final sldLayoutIdLst = root.getElement('sldLayoutIdLst', namespace: _pmlNs);
  if (sldLayoutIdLst == null) return errors;

  final masterDir = masterFile.parent;
  final masterName = masterFile.uri.pathSegments.last;
  final relsFile = masterDir.childDirectory('_rels').childFile('$masterName.rels');
  if (!await relsFile.exists()) return errors;

  final relsDoc = XmlDocument.parse(await relsFile.readAsString());
  final relTypesById = <String, String>{};
  for (final rel in relsDoc.rootElement.findElements(
    'Relationship',
    namespace: _relsNs,
  )) {
    final id = rel.getAttribute('Id');
    final type = rel.getAttribute('Type');
    if (id != null && type != null) {
      relTypesById[id] = type;
    }
  }

  for (final sldLayoutId in sldLayoutIdLst.findElements(
    'sldLayoutId',
    namespace: _pmlNs,
  )) {
    final rId =
        sldLayoutId.getAttribute('id', namespace: _relAttrNs) ??
        sldLayoutId.getAttribute('r:id');
    if (rId == null || rId.isEmpty) {
      errors.add('Missing required r:id on <p:sldLayoutId> in ${masterFile.path}');
    } else {
      final relType = relTypesById[rId];
      if (relType == null) {
        errors.add(
          '<p:sldLayoutId r:id="$rId"> not found in ${relsFile.path}',
        );
      } else if (!relType.endsWith('/slideLayout')) {
        errors.add(
          '<p:sldLayoutId r:id="$rId"> points to relationship of type "$relType" instead of slideLayout',
        );
      }
    }
  }
  return errors;
}

/// Validates an Office document directory using generated XSD validators.
Future<(bool, List<String>)> validateDirectory(
  Directory directory, {
  bool autoRepair = false,
  String author = 'OpenXML',
}) async {
  final messages = <String>[];
  bool isValid = true;

  messages.add('Full XSD validation running for directory...');

  Future<void> validateXmlFile(File file) async {
    try {
      final doc = XmlDocument.parse(await file.readAsString());
      final root = doc.rootElement;
      List<String> errors = [];

      final ns = root.namespaceUri;
      final name = root.name.local;

      if (ns == _wmlNs) {
        if (name == 'document') {
          errors = W_CT_Document(root).validate();
        }
      } else if (ns == _smlNs) {
        if (name == 'workbook') {
          errors = S_CT_Workbook(root).validate();
        } else if (name == 'worksheet') {
          errors = S_CT_Worksheet(root).validate();
        } else if (name == 'styleSheet') {
          errors = S_CT_Stylesheet(root).validate();
        } else if (name == 'sst') {
          errors = S_CT_Sst(root).validate();
        }
      } else if (ns == _pmlNs) {
        if (name == 'presentation') {
          errors = P_CT_Presentation(root).validate();
        } else if (name == 'sld') {
          errors = [
            ...P_CT_Slide(root).validate(),
            ..._validatePresentationStructure(root),
            ..._validateElementSequence(
              root,
              const ['cSld', 'clrMapOvr', 'transition', 'timing', 'extLst'],
            ),
          ];
          if (root.getElement('cSld', namespace: _pmlNs) == null) {
            errors.add('Missing required <p:cSld> in ${root.name.qualified}');
          }
        } else if (name == 'sldLayout') {
          errors = [
            ...P_CT_SlideLayout(root).validate(),
            ..._validatePresentationStructure(root),
            ..._validateElementSequence(
              root,
              const [
                'cSld',
                'clrMapOvr',
                'transition',
                'timing',
                'hf',
                'extLst',
              ],
            ),
          ];
          if (root.getElement('cSld', namespace: _pmlNs) == null) {
            errors.add('Missing required <p:cSld> in ${root.name.qualified}');
          }
          if (root.getElement('clrMapOvr', namespace: _pmlNs) == null) {
            errors.add(
              'Missing required <p:clrMapOvr> in ${root.name.qualified}',
            );
          }
        } else if (name == 'sldMaster') {
          errors = [
            ...P_CT_SlideMaster(root).validate(),
            ..._validatePresentationStructure(root),
            ..._validateElementSequence(
              root,
              const [
                'cSld',
                'clrMap',
                'sldLayoutIdLst',
                'transition',
                'timing',
                'hf',
                'txStyles',
                'extLst',
              ],
            ),
            ...await _validateSlideMasterRelationships(root, file, directory),
          ];
          if (root.getElement('cSld', namespace: _pmlNs) == null) {
            errors.add('Missing required <p:cSld> in ${root.name.qualified}');
          }
          if (root.getElement('clrMap', namespace: _pmlNs) == null) {
            errors.add('Missing required <p:clrMap> in ${root.name.qualified}');
          }
          if (root.getElement('sldLayoutIdLst', namespace: _pmlNs) == null) {
            errors.add(
              'Missing required <p:sldLayoutIdLst> in ${root.name.qualified}',
            );
          }
          if (root.getElement('txStyles', namespace: _pmlNs) == null) {
            errors.add(
              'Missing required <p:txStyles> in ${root.name.qualified}',
            );
          }
        } else if (name == 'notes') {
          errors = [
            ...P_CT_NotesSlide(root).validate(),
            ..._validatePresentationStructure(root),
          ];
        } else if (name == 'notesMaster') {
          errors = [
            ...P_CT_NotesMaster(root).validate(),
            ..._validatePresentationStructure(root),
          ];
        } else if (name == 'handoutMaster') {
          errors = [
            ...P_CT_HandoutMaster(root).validate(),
            ..._validatePresentationStructure(root),
          ];
        } else if (name == 'presentationPr') {
          errors = P_CT_PresentationProperties(root).validate();
        } else if (name == 'viewPr') {
          errors = P_CT_ViewProperties(root).validate();
        } else if (name == 'cmAuthorLst') {
          errors = P_CT_CommentAuthorList(root).validate();
        } else if (name == 'cmLst') {
          errors = P_CT_CommentList(root).validate();
        }
      } else if (ns == _dmlNs) {
        if (name == 'theme') {
          errors = D_CT_OfficeStyleSheet(root).validate();
        } else if (name == 'tblStyleLst') {
          errors = D_CT_TableStyleList(root).validate();
        }
      } else if (ns == _relsNs && name == 'Relationships') {
        errors = await _validateRelationships(root, file, directory);
      } else if (ns == _corePropsNs && name == 'coreProperties') {
        errors = _validateCoreProperties(root);
      } else if (ns == _appPropsNs && name == 'Properties') {
        errors = _validateAppProperties(root);
      } else if (ns == _contentTypesNs && name == 'Types') {
        errors = _validateContentTypes(root);
      }

      if (errors.isNotEmpty) {
        isValid = false;
        messages.add('Validation errors in ${file.path}:');
        messages.addAll(errors.map((e) => '  - $e'));
      }
    } catch (e) {
      isValid = false;
      messages.add('XML parse error in ${file.path}: $e');
    }
  }

  Future<void> scanDirectory(Directory dir) async {
    await for (final entity in dir.list()) {
      if (entity is Directory) {
        await scanDirectory(entity);
      } else if (entity is File &&
          (entity.path.endsWith('.xml') || entity.path.endsWith('.rels'))) {
        await validateXmlFile(entity);
      }
    }
  }

  await scanDirectory(directory);

  if (isValid) {
    messages.add('All validations PASSED!');
  } else {
    messages.add('Validation FAILED.');
  }

  return (isValid, messages);
}
