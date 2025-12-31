import 'package:open_xml/src/sml/sml_builder.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:xml/xml.dart';
import 'shared_strings.dart';

class CellData {
  final dynamic value;
  final String? formula;

  CellData(this.value, {this.formula});
}

class Row {
  final int index;
  final List<CellData> _cells = [];

  List<CellData> get cells => _cells;

  Row(this.index);

  void addCell(dynamic value, {String? formula}) {
    _cells.add(CellData(value, formula: formula));
  }

  static Row fromXml(XmlElement element, SharedStrings? sharedStrings) {
    final rIndex = int.tryParse(element.getAttribute('r') ?? '0') ?? 0;
    final row = Row(rIndex);

    for (final cell in element.findAllElements('c')) {
      final type = cell.getAttribute(
        't',
      ); // 's' for shared string, 'inlineStr', etc.
      String? value;
      String? formula;

      final f = cell.findAllElements('f').firstOrNull;
      if (f != null) {
        formula = f.innerText;
      }

      final v = cell.findAllElements('v').firstOrNull;
      final is_ = cell.findAllElements('is').firstOrNull;

      if (type == 's' && v != null && sharedStrings != null) {
        final idx = int.tryParse(v.innerText);
        if (idx != null) {
          value = sharedStrings[idx];
        }
      } else if (type == 'inlineStr' && is_ != null) {
        final t = is_.findAllElements('t').firstOrNull;
        if (t != null) value = t.innerText;
      } else if (v != null) {
        value = v.innerText;
      }

      dynamic finalValue = value;
      if (value != null) {
        // Attempt numeric parse if it looks like a number and type is not string?
        if (type != 's' && type != 'inlineStr' && type != 'str') {
          finalValue = double.tryParse(value) ?? value;
        }
      } else {
        finalValue = '';
      }

      row._cells.add(CellData(finalValue, formula: formula));
    }
    return row;
  }

  void build(XmlBuilder builder) {
    builder.s_ct_row(
      tagName: 'row',
      r: index,
      children: (b) {
        for (var i = 0; i < _cells.length; i++) {
          final cellData = _cells[i];
          final colLetter = _getColumnLetter(i + 1);
          final ref = '$colLetter$index';

          final isStr = cellData.value is String && cellData.formula == null;

          b.s_ct_cell(
            tagName: 'c',
            r: ref,
            t: isStr ? S_ST_CellType.inlineStr : null,
            children: (b) {
              if (cellData.formula != null) {
                b.element('f', nest: () => b.text(cellData.formula!));
                b.element('v', nest: () => b.text(cellData.value.toString()));
              } else if (isStr) {
                b.s_ct_rst(
                  tagName: 'is',
                  children: (b) {
                    b.element(
                      't',
                      nest: () => b.text(cellData.value.toString()),
                    );
                  },
                );
              } else {
                b.element('v', nest: () => b.text(cellData.value.toString()));
              }
            },
          );
        }
      },
    );
  }

  String _getColumnLetter(int colIndex) {
    if (colIndex <= 0) return '';
    String letter = '';
    while (colIndex > 0) {
      int temp = (colIndex - 1) % 26;
      letter = String.fromCharCode(temp + 65) + letter;
      colIndex = (colIndex - temp - 1) ~/ 26;
    }
    return letter;
  }
}
