import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:xml/xml.dart';

/// Merge adjacent runs with identical formatting in DOCX.
///
/// Merges adjacent <w:r> elements that have identical <w:rPr> properties.
/// Works on runs in paragraphs and inside tracked changes (<w:ins>, <w:del>).
///
/// Also:
/// - Removes rsid attributes from runs (revision metadata that doesn't affect rendering)
/// - Removes proofErr elements (spell/grammar markers that block merging)
/// Merges adjacent runs in DOCX files with identical formatting.
///
/// Looks for `<w:r>` elements inside `<w:p>` or `<w:ins>` and `<w:del>` 
/// and combines them if their `<w:rPr>` properties match exactly.
/// Returns a tuple containing the number of merged runs and a status message.
(int, String) mergeRuns(String inputDir) {
  final docXml = File(p.join(inputDir, 'word', 'document.xml'));

  if (!docXml.existsSync()) {
    return (0, 'Error: ${docXml.path} not found');
  }

  try {
    final document = XmlDocument.parse(docXml.readAsStringSync());
    final root = document.rootElement;

    _removeElements(root, 'proofErr');
    _stripRunRsidAttrs(root);

    final runs = _findElements(root, 'r');
    final containers = <XmlNode>{};
    for (var run in runs) {
      if (run.parent != null) {
        containers.add(run.parent!);
      }
    }

    int mergeCount = 0;
    for (var container in containers) {
      mergeCount += _mergeRunsIn(container);
    }

    docXml.writeAsStringSync(document.toXmlString(pretty: false));
    return (mergeCount, 'Merged $mergeCount runs');
  } catch (e) {
    return (0, 'Error: $e');
  }
}

List<XmlElement> _findElements(XmlElement root, String tag) {
  final results = <XmlElement>[];

  void traverse(XmlNode node) {
    if (node is XmlElement) {
      final name = node.name.local;
      if (name == tag) {
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

XmlElement? _getChild(XmlNode parent, String tag) {
  for (var child in parent.children) {
    if (child is XmlElement) {
      if (child.name.local == tag) {
        return child;
      }
    }
  }
  return null;
}

List<XmlElement> _getChildren(XmlNode parent, String tag) {
  final results = <XmlElement>[];
  for (var child in parent.children) {
    if (child is XmlElement) {
      if (child.name.local == tag) {
        results.add(child);
      }
    }
  }
  return results;
}

bool _isAdjacent(XmlElement elem1, XmlElement elem2) {
  XmlNode? node = elem1.nextSibling;
  while (node != null) {
    if (node == elem2) {
      return true;
    }
    if (node is XmlElement) {
      return false;
    }
    if (node is XmlText && node.value.trim().isNotEmpty) {
      return false;
    }
    node = node.nextSibling;
  }
  return false;
}

void _removeElements(XmlElement root, String tag) {
  final elements = _findElements(root, tag);
  for (var elem in elements) {
    elem.parent?.children.remove(elem);
  }
}

void _stripRunRsidAttrs(XmlElement root) {
  for (var run in _findElements(root, 'r')) {
    final attrsToRemove = <XmlAttribute>[];
    for (var attr in run.attributes) {
      if (attr.name.local.toLowerCase().contains('rsid')) {
        attrsToRemove.add(attr);
      }
    }
    for (var attr in attrsToRemove) {
      run.attributes.remove(attr);
    }
  }
}

int _mergeRunsIn(XmlNode container) {
  int mergeCount = 0;
  XmlElement? run = _firstChildRun(container);

  while (run != null) {
    while (true) {
      final nextElem = _nextElementSibling(run);
      if (nextElem != null && _isRun(nextElem) && _canMerge(run, nextElem)) {
        _mergeRunContent(run, nextElem);
        container.children.remove(nextElem);
        mergeCount += 1;
      } else {
        break;
      }
    }

    _consolidateText(run);
    run = _nextSiblingRun(run);
  }

  return mergeCount;
}

XmlElement? _firstChildRun(XmlNode container) {
  for (var child in container.children) {
    if (child is XmlElement && _isRun(child)) {
      return child;
    }
  }
  return null;
}

XmlElement? _nextElementSibling(XmlNode node) {
  XmlNode? sibling = node.nextSibling;
  while (sibling != null) {
    if (sibling is XmlElement) {
      return sibling;
    }
    sibling = sibling.nextSibling;
  }
  return null;
}

XmlElement? _nextSiblingRun(XmlNode node) {
  XmlNode? sibling = node.nextSibling;
  while (sibling != null) {
    if (sibling is XmlElement) {
      if (_isRun(sibling)) {
        return sibling;
      }
    }
    sibling = sibling.nextSibling;
  }
  return null;
}

bool _isRun(XmlElement node) {
  return node.name.local == 'r';
}

bool _canMerge(XmlElement run1, XmlElement run2) {
  final rpr1 = _getChild(run1, 'rPr');
  final rpr2 = _getChild(run2, 'rPr');

  if ((rpr1 == null) != (rpr2 == null)) {
    return false;
  }
  if (rpr1 == null) {
    return true;
  }
  if (rpr2 == null) {
    return true;
  }
  return rpr1.toXmlString() == rpr2.toXmlString();
}

void _mergeRunContent(XmlElement target, XmlElement source) {
  final children = List<XmlNode>.from(source.children);
  for (var child in children) {
    if (child is XmlElement) {
      if (child.name.local != 'rPr') {
        source.children.remove(child);
        target.children.add(child);
      }
    } else {
      source.children.remove(child);
      target.children.add(child);
    }
  }
}

void _consolidateText(XmlElement run) {
  final tElements = _getChildren(run, 't');

  for (int i = tElements.length - 1; i > 0; i--) {
    final curr = tElements[i];
    final prev = tElements[i - 1];

    if (_isAdjacent(prev, curr)) {
      String prevText =
          prev.children.isNotEmpty && prev.children.first is XmlText
          ? (prev.children.first as XmlText).value
          : '';
      String currText =
          curr.children.isNotEmpty && curr.children.first is XmlText
          ? (curr.children.first as XmlText).value
          : '';
      final merged = prevText + currText;

      if (prev.children.isNotEmpty && prev.children.first is XmlText) {
        (prev.children.first as XmlText).value = merged;
      } else {
        prev.children.add(XmlText(merged));
      }

      if (merged.startsWith(' ') || merged.endsWith(' ')) {
        prev.setAttribute('xml:space', 'preserve');
      } else if (prev.getAttribute('xml:space') != null) {
        prev.removeAttribute('xml:space');
      }

      run.children.remove(curr);
    }
  }
}
