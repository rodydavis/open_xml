import 'package:file/file.dart';
import 'dart:math';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

/// Random number generator for generating comment IDs.
final _random = Random();

/// Common XML namespaces used in WordprocessingML documents.
const Map<String, String> _ns = {
  'w': 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
  'w14': 'http://schemas.microsoft.com/office/word/2010/wordml',
  'w15': 'http://schemas.microsoft.com/office/word/2012/wordml',
  'w16cid': 'http://schemas.microsoft.com/office/word/2016/wordml/cid',
  'w16cex': 'http://schemas.microsoft.com/office/word/2018/wordml/cex',
};

/// XML template for a new comment element in comments.xml.
const _commentXmlTemplate = '''
<w:comment w:id="{id}" w:author="{author}" w:date="{date}" w:initials="{initials}">
  <w:p w14:paraId="{para_id}" w14:textId="77777777">
    <w:r>
      <w:rPr><w:rStyle w:val="CommentReference"/></w:rPr>
      <w:annotationRef/>
    </w:r>
    <w:r>
      <w:rPr>
        <w:color w:val="000000"/>
        <w:sz w:val="20"/>
        <w:szCs w:val="20"/>
      </w:rPr>
      <w:t>{text}</w:t>
    </w:r>
  </w:p>
</w:comment>''';

const _commentsXmlTemplate = '''<?xml version="1.0" ?>
<w:comments xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex" xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex" xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex" xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex" xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex" xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex" xmlns:cx6="http://schemas.microsoft.com/office/drawing/2016/5/12/chartex" xmlns:cx7="http://schemas.microsoft.com/office/drawing/2016/5/13/chartex" xmlns:cx8="http://schemas.microsoft.com/office/drawing/2016/5/14/chartex" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:aink="http://schemas.microsoft.com/office/drawing/2016/ink" xmlns:am3d="http://schemas.microsoft.com/office/drawing/2017/model3d" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:oel="http://schemas.microsoft.com/office/2019/extlst" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:w16cex="http://schemas.microsoft.com/office/word/2018/wordml/cex" xmlns:w16cid="http://schemas.microsoft.com/office/word/2016/wordml/cid" xmlns:w16="http://schemas.microsoft.com/office/word/2018/wordml" xmlns:w16du="http://schemas.microsoft.com/office/word/2023/wordml/word16du" xmlns:w16sdtdh="http://schemas.microsoft.com/office/word/2020/wordml/sdtdatahash" xmlns:w16sdtfl="http://schemas.microsoft.com/office/word/2024/wordml/sdtformatlock" xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" mc:Ignorable="w14 w15 w16se w16cid w16 w16cex w16sdtdh w16sdtfl w16du wp14">
</w:comments>''';

const _commentsExtendedXmlTemplate = '''<?xml version="1.0" ?>
<w15:commentsEx xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex" xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex" xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex" xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex" xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex" xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex" xmlns:cx6="http://schemas.microsoft.com/office/drawing/2016/5/12/chartex" xmlns:cx7="http://schemas.microsoft.com/office/drawing/2016/5/13/chartex" xmlns:cx8="http://schemas.microsoft.com/office/drawing/2016/5/14/chartex" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:aink="http://schemas.microsoft.com/office/drawing/2016/ink" xmlns:am3d="http://schemas.microsoft.com/office/drawing/2017/model3d" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:oel="http://schemas.microsoft.com/office/2019/extlst" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:w16cex="http://schemas.microsoft.com/office/word/2018/wordml/cex" xmlns:w16cid="http://schemas.microsoft.com/office/word/2016/wordml/cid" xmlns:w16="http://schemas.microsoft.com/office/word/2018/wordml" xmlns:w16du="http://schemas.microsoft.com/office/word/2023/wordml/word16du" xmlns:w16sdtdh="http://schemas.microsoft.com/office/word/2020/wordml/sdtdatahash" xmlns:w16sdtfl="http://schemas.microsoft.com/office/word/2024/wordml/sdtformatlock" xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" mc:Ignorable="w14 w15 w16se w16cid w16 w16cex w16sdtdh w16sdtfl w16du wp14">
</w15:commentsEx>''';

const _commentsIdsXmlTemplate = '''<?xml version="1.0" ?>
<w16cid:commentsIds xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex" xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex" xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex" xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex" xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex" xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex" xmlns:cx6="http://schemas.microsoft.com/office/drawing/2016/5/12/chartex" xmlns:cx7="http://schemas.microsoft.com/office/drawing/2016/5/13/chartex" xmlns:cx8="http://schemas.microsoft.com/office/drawing/2016/5/14/chartex" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:aink="http://schemas.microsoft.com/office/drawing/2016/ink" xmlns:am3d="http://schemas.microsoft.com/office/drawing/2017/model3d" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:oel="http://schemas.microsoft.com/office/2019/extlst" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:w16cex="http://schemas.microsoft.com/office/word/2018/wordml/cex" xmlns:w16cid="http://schemas.microsoft.com/office/word/2016/wordml/cid" xmlns:w16="http://schemas.microsoft.com/office/word/2018/wordml" xmlns:w16du="http://schemas.microsoft.com/office/word/2023/wordml/word16du" xmlns:w16sdtdh="http://schemas.microsoft.com/office/word/2020/wordml/sdtdatahash" xmlns:w16sdtfl="http://schemas.microsoft.com/office/word/2024/wordml/sdtformatlock" xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" mc:Ignorable="w14 w15 w16se w16cid w16 w16cex w16sdtdh w16sdtfl w16du wp14">
</w16cid:commentsIds>''';

const _commentsExtensibleXmlTemplate = '''<?xml version="1.0" ?>
<w16cex:commentsExtensible xmlns:wpc="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:cx="http://schemas.microsoft.com/office/drawing/2014/chartex" xmlns:cx1="http://schemas.microsoft.com/office/drawing/2015/9/8/chartex" xmlns:cx2="http://schemas.microsoft.com/office/drawing/2015/10/21/chartex" xmlns:cx3="http://schemas.microsoft.com/office/drawing/2016/5/9/chartex" xmlns:cx4="http://schemas.microsoft.com/office/drawing/2016/5/10/chartex" xmlns:cx5="http://schemas.microsoft.com/office/drawing/2016/5/11/chartex" xmlns:cx6="http://schemas.microsoft.com/office/drawing/2016/5/12/chartex" xmlns:cx7="http://schemas.microsoft.com/office/drawing/2016/5/13/chartex" xmlns:cx8="http://schemas.microsoft.com/office/drawing/2016/5/14/chartex" xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" xmlns:aink="http://schemas.microsoft.com/office/drawing/2016/ink" xmlns:am3d="http://schemas.microsoft.com/office/drawing/2017/model3d" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:oel="http://schemas.microsoft.com/office/2019/extlst" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships" xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:wp14="http://schemas.microsoft.com/office/word/2010/wordprocessingDrawing" xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main" xmlns:w14="http://schemas.microsoft.com/office/word/2010/wordml" xmlns:w15="http://schemas.microsoft.com/office/word/2012/wordml" xmlns:w16cex="http://schemas.microsoft.com/office/word/2018/wordml/cex" xmlns:w16cid="http://schemas.microsoft.com/office/word/2016/wordml/cid" xmlns:w16="http://schemas.microsoft.com/office/word/2018/wordml" xmlns:w16du="http://schemas.microsoft.com/office/word/2023/wordml/word16du" xmlns:w16sdtdh="http://schemas.microsoft.com/office/word/2020/wordml/sdtdatahash" xmlns:w16sdtfl="http://schemas.microsoft.com/office/word/2024/wordml/sdtformatlock" xmlns:w16se="http://schemas.microsoft.com/office/word/2015/wordml/symex" xmlns:wpg="http://schemas.microsoft.com/office/word/2010/wordprocessingGroup" xmlns:wpi="http://schemas.microsoft.com/office/word/2010/wordprocessingInk" xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:wps="http://schemas.microsoft.com/office/word/2010/wordprocessingShape" xmlns:cr="http://schemas.microsoft.com/office/comments/2020/reactions" mc:Ignorable="w14 w15 w16se w16cid w16 w16cex w16sdtdh w16sdtfl cr w16du wp14">
</w16cex:commentsExtensible>''';

String _generateHexId() {
  return _random
      .nextInt(0x7FFFFFFF)
      .toRadixString(16)
      .toUpperCase()
      .padLeft(8, '0');
}

String _encodeSmartQuotes(String text) {
  return text
      .replaceAll('\u201c', '&#x201C;')
      .replaceAll('\u201d', '&#x201D;')
      .replaceAll('\u2018', '&#x2018;')
      .replaceAll('\u2019', '&#x2019;');
}

Future<void> _appendXml(File xmlFile, String rootTag, String content) async {
  final document = XmlDocument.parse(await xmlFile.readAsString());
  final root = document.findAllElements(rootTag).first;

  final nsAttrs = _ns.entries
      .map((e) => 'xmlns:${e.key}="${e.value}"')
      .join(' ');
  final wrapperDom = XmlDocument.parse('<root $nsAttrs>$content</root>');

  for (var child in wrapperDom.rootElement.children) {
    if (child is XmlElement) {
      root.children.add(child.copy());
    }
  }

  await xmlFile.writeAsString(
    _encodeSmartQuotes(document.toXmlString(pretty: false)),
  );
}

Future<String?> _findParaId(File commentsFile, int commentId) async {
  final document = XmlDocument.parse(await commentsFile.readAsString());
  for (var c in document.findAllElements('comment', namespace: _ns['w'])) {
    if (c.getAttribute('id', namespace: _ns['w']) == commentId.toString()) {
      for (var p in c.findAllElements('p', namespace: _ns['w'])) {
        final pid = p.getAttribute('paraId', namespace: _ns['w14']);
        if (pid != null) {
          return pid;
        }
      }
    }
  }
  return null;
}

Future<int> _getNextRid(File relsFile) async {
  final document = XmlDocument.parse(await relsFile.readAsString());
  int maxRid = 0;
  for (var rel in document.findAllElements('Relationship')) {
    final rid = rel.getAttribute('Id');
    if (rid != null && rid.startsWith('rId')) {
      final parsed = int.tryParse(rid.substring(3));
      if (parsed != null && parsed > maxRid) {
        maxRid = parsed;
      }
    }
  }
  return maxRid + 1;
}

Future<bool> _hasRelationship(File relsFile, String target) async {
  final document = XmlDocument.parse(await relsFile.readAsString());
  for (var rel in document.findAllElements('Relationship')) {
    if (rel.getAttribute('Target') == target) {
      return true;
    }
  }
  return false;
}

Future<bool> _hasContentType(File ctFile, String partName) async {
  final document = XmlDocument.parse(await ctFile.readAsString());
  for (var override in document.findAllElements('Override')) {
    if (override.getAttribute('PartName') == partName) {
      return true;
    }
  }
  return false;
}

Future<void> _ensureCommentRelationships(Directory unpackedDir) async {
  final fs = unpackedDir.fileSystem;
  final relsFile = fs.file(
    p.join(unpackedDir.path, 'word', '_rels', 'document.xml.rels'),
  );
  if (!await relsFile.exists()) return;
  if (await _hasRelationship(relsFile, 'comments.xml')) return;

  final document = XmlDocument.parse(await relsFile.readAsString());
  final root = document.rootElement;
  int nextRid = await _getNextRid(relsFile);

  final rels = [
    (
      'http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments',
      'comments.xml',
    ),
    (
      'http://schemas.microsoft.com/office/2011/relationships/commentsExtended',
      'commentsExtended.xml',
    ),
    (
      'http://schemas.microsoft.com/office/2016/09/relationships/commentsIds',
      'commentsIds.xml',
    ),
    (
      'http://schemas.microsoft.com/office/2018/08/relationships/commentsExtensible',
      'commentsExtensible.xml',
    ),
  ];

  for (var (relType, target) in rels) {
    final rel = XmlElement(XmlName('Relationship'));
    rel.setAttribute('Id', 'rId$nextRid');
    rel.setAttribute('Type', relType);
    rel.setAttribute('Target', target);
    root.children.add(rel);
    nextRid++;
  }

  await relsFile.writeAsString(document.toXmlString(pretty: false));
}

Future<void> _ensureCommentContentTypes(Directory unpackedDir) async {
  final fs = unpackedDir.fileSystem;
  final ctFile = fs.file(p.join(unpackedDir.path, '[Content_Types].xml'));
  if (!await ctFile.exists()) return;
  if (await _hasContentType(ctFile, '/word/comments.xml')) return;

  final document = XmlDocument.parse(await ctFile.readAsString());
  final root = document.rootElement;

  final overrides = [
    (
      '/word/comments.xml',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.comments+xml',
    ),
    (
      '/word/commentsExtended.xml',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.commentsExtended+xml',
    ),
    (
      '/word/commentsIds.xml',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.commentsIds+xml',
    ),
    (
      '/word/commentsExtensible.xml',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.commentsExtensible+xml',
    ),
  ];

  for (var (partName, contentType) in overrides) {
    final override = XmlElement(XmlName('Override'));
    override.setAttribute('PartName', partName);
    override.setAttribute('ContentType', contentType);
    root.children.add(override);
  }

  await ctFile.writeAsString(document.toXmlString(pretty: false));
}

/// Injects a new comment or reply into the unpacked document structure.
///
/// Manages the required modifications to `comments.xml`, `commentsIds.xml`,
/// `commentsExtended.xml`, and `commentsExtensible.xml`. Returns a tuple with
/// the assigned paraId and a status message.
Future<(String, String)> addComment({
  required Directory unpackedDir,
  required int commentId,
  required String text,
  String author = 'OpenXML',
  String initials = 'C',
  int? parentId,
}) async {
  final fs = unpackedDir.fileSystem;
  final word = fs.directory(p.join(unpackedDir.path, 'word'));
  if (!await word.exists()) {
    return ('', 'Error: ${word.path} not found');
  }

  final paraId = _generateHexId();
  final durableId = _generateHexId();
  final ts = '${DateTime.now().toUtc().toIso8601String().split('.').first}Z';

  final comments = fs.file(p.join(word.path, 'comments.xml'));
  if (!await comments.exists()) {
    await comments.writeAsString(_commentsXmlTemplate);
    await _ensureCommentRelationships(unpackedDir);
    await _ensureCommentContentTypes(unpackedDir);
  }

  final commentXmlReplaced = _commentXmlTemplate
      .replaceAll('{id}', commentId.toString())
      .replaceAll('{author}', author)
      .replaceAll('{date}', ts)
      .replaceAll('{initials}', initials)
      .replaceAll('{para_id}', paraId)
      .replaceAll('{text}', text);

  await _appendXml(comments, 'w:comments', commentXmlReplaced);

  final ext = fs.file(p.join(word.path, 'commentsExtended.xml'));
  if (!await ext.exists()) {
    await ext.writeAsString(_commentsExtendedXmlTemplate);
  }
  if (parentId != null) {
    final parentPara = await _findParaId(comments, parentId);
    if (parentPara == null) {
      return ('', 'Error: Parent comment $parentId not found');
    }
    await _appendXml(
      ext,
      'w15:commentsEx',
      '<w15:commentEx w15:paraId="$paraId" w15:paraIdParent="$parentPara" w15:done="0"/>',
    );
  } else {
    await _appendXml(
      ext,
      'w15:commentsEx',
      '<w15:commentEx w15:paraId="$paraId" w15:done="0"/>',
    );
  }

  final ids = fs.file(p.join(word.path, 'commentsIds.xml'));
  if (!await ids.exists()) {
    await ids.writeAsString(_commentsIdsXmlTemplate);
  }
  await _appendXml(
    ids,
    'w16cid:commentsIds',
    '<w16cid:commentId w16cid:paraId="$paraId" w16cid:durableId="$durableId"/>',
  );

  final extensible = fs.file(p.join(word.path, 'commentsExtensible.xml'));
  if (!await extensible.exists()) {
    await extensible.writeAsString(_commentsExtensibleXmlTemplate);
  }
  await _appendXml(
    extensible,
    'w16cex:commentsExtensible',
    '<w16cex:commentExtensible w16cex:durableId="$durableId" w16cex:dateUtc="$ts"/>',
  );

  final action = parentId != null ? 'reply' : 'comment';
  return (paraId, 'Added $action $commentId (para_id=$paraId)');
}
