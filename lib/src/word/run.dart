import 'package:open_xml/src/wml/wml_builder.g.dart';
import 'package:xml/xml.dart';
import 'paragraph_element.dart';

class Run implements ParagraphElement {
  String text;
  bool bold;
  bool italic;
  String? color;
  double? fontSize;

  Run({
    required this.text,
    this.bold = false,
    this.italic = false,
    this.color,
    this.fontSize,
  });

  factory Run.fromXml(XmlElement element) {
    String text = '';
    final t = element.findAllElements('w:t').firstOrNull;
    if (t != null) {
      text = t.innerText;
    }

    final r = Run(text: text);

    final rPr = element.findAllElements('w:rPr').firstOrNull;
    if (rPr != null) {
      if (rPr.findAllElements('w:b').isNotEmpty) r.bold = true;
      if (rPr.findAllElements('w:i').isNotEmpty) r.italic = true;

      final color = rPr.findAllElements('w:color').firstOrNull;
      if (color != null) {
        r.color = color.getAttribute('w:val');
      }

      final sz = rPr.findAllElements('w:sz').firstOrNull;
      if (sz != null) {
        final val = sz.getAttribute('w:val');
        if (val != null) {
          r.fontSize = double.tryParse(val)! / 2;
        }
      }
    }

    return r;
  }

  @override
  void build(XmlBuilder builder, {Map<String, String>? aliases}) {
    builder.w_ct_r(
      tagName: 'r',
      children: (b) {
        if (bold || italic || color != null || fontSize != null) {
          b.element(
            'w:rPr',
            nest: () {
              if (bold) b.element('w:b');
              if (italic) b.element('w:i');
              if (color != null) {
                // w:color val="hex"
                b.element(
                  'w:color',
                  nest: () {
                    b.attribute('w:val', color!);
                  },
                );
              }
              if (fontSize != null) {
                // w:sz val="half-points"
                b.element(
                  'w:sz',
                  nest: () {
                    b.attribute('w:val', (fontSize! * 2).round().toString());
                  },
                );
              }
            },
          );
        }
        b.w_ct_text(tagName: 't', children: (b) => b.text(text));
      },
    );
  }
}
