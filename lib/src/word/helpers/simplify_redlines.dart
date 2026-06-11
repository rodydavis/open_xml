import 'package:xml/xml.dart';

/// XML Namespace for WordprocessingML.
const String wordNs =
    'http://schemas.openxmlformats.org/wordprocessingml/2006/main';

/// Simplify tracked changes in a DOCX document XML represented as an [XmlDocument].
///
/// Merges adjacent `<w:ins>` elements from the same author into a single element.
/// Same for `<w:del>` elements. Returns the number of simplified tracked changes.
int simplifyRedlines(XmlDocument document) {
  final root = document.rootElement;

  int mergeCount = 0;
  final containers = <XmlElement>[];
  containers.addAll(_findElements(root, 'p'));
  containers.addAll(_findElements(root, 'tc'));

  for (var container in containers) {
    mergeCount += _mergeTrackedChangesIn(container, 'ins');
    mergeCount += _mergeTrackedChangesIn(container, 'del');
  }

  return mergeCount;
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

/// Scans the document XML for all tracked changes and returns a map of authors to their change counts.
Map<String, int> getTrackedChangeAuthors(XmlDocument document) {
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
}

/// Infers the author of the most recent tracked changes by comparing the current modified XML
/// with the original XML document.
///
/// Returns the name of the author who has the highest difference in change count.
String inferAuthor(
  XmlDocument modifiedDoc,
  XmlDocument originalDoc, {
  String defaultAuthor = "OpenXML",
}) {
  final modifiedAuthors = getTrackedChangeAuthors(modifiedDoc);

  if (modifiedAuthors.isEmpty) {
    return defaultAuthor;
  }

  final originalAuthors = getTrackedChangeAuthors(originalDoc);

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
