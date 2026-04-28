import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

/// XML Namespace for WordprocessingML.
const String wordNs =
    'http://schemas.openxmlformats.org/wordprocessingml/2006/main';

/// Simplify tracked changes by merging adjacent w:ins or w:del elements.
///
/// Merges adjacent <w:ins> elements from the same author into a single element.
/// Same for <w:del> elements. This makes heavily-redlined documents easier to
/// work with by reducing the number of tracked change wrappers.
(int, String) simplifyRedlines(String inputDir) {
  final docXml = File(p.join(inputDir, 'word', 'document.xml'));

  if (!docXml.existsSync()) {
    return (0, 'Error: ${docXml.path} not found');
  }

  try {
    final document = XmlDocument.parse(docXml.readAsStringSync());
    final root = document.rootElement;

    int mergeCount = 0;
    final containers = <XmlElement>[];
    containers.addAll(_findElements(root, 'p'));
    containers.addAll(_findElements(root, 'tc'));

    for (var container in containers) {
      mergeCount += _mergeTrackedChangesIn(container, 'ins');
      mergeCount += _mergeTrackedChangesIn(container, 'del');
    }

    docXml.writeAsStringSync(document.toXmlString(pretty: false));
    return (mergeCount, 'Simplified $mergeCount tracked changes');
  } catch (e) {
    return (0, 'Error: $e');
  }
}

int _mergeTrackedChangesIn(XmlElement container, String tag) {
  int mergeCount = 0;

  final tracked = <XmlElement>[];
  for (var child in container.children) {
    if (child is XmlElement && _isElement(child, tag)) {
      tracked.add(child);
    }
  }

  if (tracked.length < 2) {
    return 0;
  }

  int i = 0;
  while (i < tracked.length - 1) {
    final curr = tracked[i];
    final nextElem = tracked[i + 1];

    if (_canMergeTracked(curr, nextElem)) {
      _mergeTrackedContent(curr, nextElem);
      container.children.remove(nextElem);
      tracked.removeAt(i + 1);
      mergeCount += 1;
    } else {
      i += 1;
    }
  }

  return mergeCount;
}

bool _isElement(XmlElement node, String tag) {
  return node.name.local == tag;
}

String? _getAuthor(XmlElement elem) {
  String? author = elem.getAttribute('w:author');
  if (author == null) {
    for (var attr in elem.attributes) {
      if (attr.name.local == 'author') {
        return attr.value;
      }
    }
  }
  return author;
}

bool _canMergeTracked(XmlElement elem1, XmlElement elem2) {
  if (_getAuthor(elem1) != _getAuthor(elem2)) {
    return false;
  }

  XmlNode? node = elem1.nextSibling;
  while (node != null && node != elem2) {
    if (node is XmlElement) {
      return false;
    }
    if (node is XmlText && node.value.trim().isNotEmpty) {
      return false;
    }
    node = node.nextSibling;
  }

  return true;
}

void _mergeTrackedContent(XmlElement target, XmlElement source) {
  final children = List<XmlNode>.from(source.children);
  for (var child in children) {
    source.children.remove(child);
    target.children.add(child);
  }
}

List<XmlElement> _findElements(XmlElement root, String tag) {
  final results = <XmlElement>[];

  void traverse(XmlNode node) {
    if (node is XmlElement) {
      if (node.name.local == tag) {
        results.add(node);
      }
      for (var child in node.children) {
        traverse(child);
      }
    }
  }

  traverse(root);
  return results;
}

/// Scans the `document.xml` for all tracked changes and returns a map of authors to their change counts.
Map<String, int> getTrackedChangeAuthors(String docXmlPath) {
  final file = File(docXmlPath);
  if (!file.existsSync()) {
    return {};
  }

  try {
    final document = XmlDocument.parse(file.readAsStringSync());
    final root = document.rootElement;

    final authors = <String, int>{};
    for (String tag in ['ins', 'del']) {
      final elements = root.findAllElements(tag, namespace: wordNs);
      for (var elem in elements) {
        final author = elem.getAttribute('author', namespace: wordNs);
        if (author != null) {
          authors[author] = (authors[author] ?? 0) + 1;
        }
      }
    }

    return authors;
  } catch (e) {
    return {};
  }
}

Map<String, int> _getAuthorsFromDocx(String docxPath) {
  try {
    final bytes = File(docxPath).readAsBytesSync();
    final archive = ZipDecoder().decodeBytes(bytes);

    final docFile = archive.findFile('word/document.xml');
    if (docFile == null) {
      return {};
    }

    final content = String.fromCharCodes(docFile.content as List<int>);
    final document = XmlDocument.parse(content);
    final root = document.rootElement;

    final authors = <String, int>{};
    for (String tag in ['ins', 'del']) {
      final elements = root.findAllElements(tag, namespace: wordNs);
      for (var elem in elements) {
        final author = elem.getAttribute('author', namespace: wordNs);
        if (author != null) {
          authors[author] = (authors[author] ?? 0) + 1;
        }
      }
    }
    return authors;
  } catch (e) {
    return {};
  }
}

/// Infers the author of the most recent tracked changes by comparing the current unpacked
/// XML directory with the original packed `.docx` file.
///
/// Returns the name of the author who has the highest difference in change count.
String inferAuthor(
  String modifiedDir,
  String originalDocx, {
  String defaultAuthor = "OpenXML",
}) {
  final modifiedXml = p.join(modifiedDir, 'word', 'document.xml');
  final modifiedAuthors = getTrackedChangeAuthors(modifiedXml);

  if (modifiedAuthors.isEmpty) {
    return defaultAuthor;
  }

  final originalAuthors = _getAuthorsFromDocx(originalDocx);

  final newChanges = <String, int>{};
  for (var entry in modifiedAuthors.entries) {
    final author = entry.key;
    final count = entry.value;
    final originalCount = originalAuthors[author] ?? 0;
    final diff = count - originalCount;
    if (diff > 0) {
      newChanges[author] = diff;
    }
  }

  if (newChanges.isEmpty) {
    return defaultAuthor;
  }

  if (newChanges.length == 1) {
    return newChanges.keys.first;
  }

  throw Exception(
    'Multiple authors added new changes: $newChanges. '
    'Cannot infer which author to validate.',
  );
}
