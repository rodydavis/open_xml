import 'package:open_xml/src/shared/comment.dart';
import 'package:open_xml/src/wml/wml_builder.g.dart';
import 'package:xml/xml.dart';

import 'run.dart';
import 'paragraph_element.dart';

export 'paragraph_element.dart';

class Paragraph {
  final List<ParagraphElement> _elements = [];
  String? styleId;
  Comment? _comment;

  Paragraph({this.styleId});

  List<ParagraphElement> get elements => List.unmodifiable(_elements);

  String get text {
    final buffer = StringBuffer();
    for (final element in _elements) {
      if (element is Run) {
        buffer.write(element.text);
      } else if (element is ParagraphHyperlink) {
        for (final run in element.runs) {
          buffer.write(run.text);
        }
      }
    }
    return buffer.toString();
  }

  factory Paragraph.fromXml(XmlElement element) {
    final p = Paragraph();

    final pPr = element.findAllElements('w:pPr').firstOrNull;
    if (pPr != null) {
      final pStyle = pPr.findAllElements('w:pStyle').firstOrNull;
      if (pStyle != null) {
        p.styleId = pStyle.getAttribute('w:val');
      }
    }

    for (final child in element.childElements) {
      if (child.name.local == 'r') {
        p.addRun(Run.fromXml(child));
      }
      // TODO: Parse hyperlinks inside paragraph if needed (w:hyperlink)
      // For now omitting full parse support for complex elements.
    }
    return p;
  }

  void addRun(Run run) {
    _elements.add(run);
  }

  void addText(String text, {bool bold = false, bool italic = false}) {
    _elements.add(Run(text: text, bold: bold, italic: italic));
  }

  /// Adds a hyperlink to the paragraph.
  void addHyperlink(
    String text,
    String url, {
    bool bold = false,
    bool italic = false,
  }) {
    final link = ParagraphHyperlink(url);
    // Hyperlink text usually has a specific style (Hyperlink) but valid without.
    link.addRun(
      Run(
        text: text,
        bold: bold,
        italic: italic,
        color: '0563C1', // Default blue for links
      ),
    );
    _elements.add(link);
  }

  /// Adds an inline image to the paragraph.
  void addImage(String path, {int width = 1000000, int height = 1000000}) {
    _elements.add(ParagraphImage(path, width: width, height: height));
  }

  /// Attaches a comment to this paragraph.
  void addComment(Comment comment) {
    _comment = comment;
  }

  void build(XmlBuilder builder, {Map<String, String>? aliases}) {
    builder.w_ct_p(
      tagName: 'p',
      children: (b) {
        if (styleId != null) {
          b.element(
            'w:pPr',
            nest: () {
              b.element(
                'w:pStyle',
                nest: () {
                  b.attribute('w:val', styleId!);
                },
              );
            },
          );
        }
        if (_comment != null) {
          b.element(
            'w:commentRangeStart',
            nest: () {
              b.attribute(
                'id',
                _comment!.id.toString(),
                namespace:
                    'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
              );
            },
          );
        }
        for (final element in _elements) {
          element.build(b, aliases: aliases);
        }
        if (_comment != null) {
          b.element(
            'w:commentRangeEnd',
            nest: () {
              b.attribute(
                'id',
                _comment!.id.toString(),
                namespace:
                    'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
              );
            },
          );
          b.element(
            'w:r',
            nest: () {
              b.element(
                'w:commentReference',
                nest: () {
                  b.attribute(
                    'id',
                    _comment!.id.toString(),
                    namespace:
                        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}
