import 'package:open_xml/src/package/package.dart';
import 'package:open_xml/src/sml/sml_builder.g.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/shared/comment.dart';
import 'row.dart';
import 'shared_strings.dart';

class _SheetComment {
  final int row;
  final int col;
  final Comment comment;

  _SheetComment(this.row, this.col, this.comment);

  String get cellRef {
    String colLetter = '';
    int c = col;
    while (c > 0) {
      c--;
      colLetter = String.fromCharCode((c % 26) + 65) + colLetter;
      c ~/= 26;
    }
    return '$colLetter$row';
  }
}

class Worksheet {
  final String name;
  final int id;
  final List<Row> _rows = [];
  final List<_SheetComment> _comments = [];

  List<Row> get rows => _rows;
  List<SpreadsheetHyperlink> get hyperlinks => _hyperlinks;
  List<_SheetComment> get comments => List.unmodifiable(_comments);

  Worksheet(this.name, this.id);

  static Future<Worksheet?> parse(
    OoxmlPackage package,
    String partName,
    String name,
    int id,
    SharedStrings? sharedStrings,
  ) async {
    if (!await package.hasPart(partName)) return null;
    final xml = await package.readPartAsString(partName);
    final document = XmlDocument.parse(xml);

    final ws = Worksheet(name, id);

    final sheetData = document.findAllElements('sheetData').firstOrNull;
    if (sheetData != null) {
      for (final rowElement in sheetData.findAllElements('row')) {
        final row = Row.fromXml(rowElement, sharedStrings);
        ws._rows.add(row);
      }
    }
    return ws;
  }

  final List<SpreadsheetHyperlink> _hyperlinks = [];

  Row addRow() {
    final row = Row(_rows.length + 1);
    _rows.add(row);
    return row;
  }

  void addHyperlink(String cellRef, {String? url, String? location}) {
    _hyperlinks.add(
      SpreadsheetHyperlink(cellRef, url: url, location: location),
    );
  }

  void addComment(
    int row,
    int col,
    String text, {
    String author = 'Author',
    String? initials,
  }) {
    _comments.add(
      _SheetComment(
        row,
        col,
        Comment(
          id: _comments.length,
          text: text,
          author: author,
          initials: initials,
          date: DateTime.now(),
        ),
      ),
    );
  }

  void build(
    XmlBuilder builder, {
    Map<String, String>? aliases,
    String? legacyDrawingId,
  }) {
    builder.element(
      'worksheet',
      namespaces: {
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main': '',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
            'r',
      },
      nest: () {
        builder.s_ct_sheetdata(
          tagName: 'sheetData',
          children: (b) {
            for (final row in _rows) {
              row.build(b);
            }
          },
        );

        if (_hyperlinks.isNotEmpty) {
          builder.element(
            'hyperlinks',
            nest: () {
              for (final link in _hyperlinks) {
                if (link.location != null) {
                  // Internal Link
                  builder.element(
                    'hyperlink',
                    nest: () {
                      builder.attribute('ref', link.cellRef);
                      builder.attribute('location', link.location!);
                      builder.attribute(
                        'display',
                        link.location!,
                      ); // Optional but good for UX
                    },
                  );
                } else if (aliases != null) {
                  // External Link
                  final rId = aliases[link.url];
                  if (rId != null) {
                    builder.element(
                      'hyperlink',
                      nest: () {
                        builder.attribute('ref', link.cellRef);
                        builder.attribute('r:id', rId);
                      },
                    );
                  }
                }
              }
            },
          );
        }
        if (legacyDrawingId != null) {
          builder.element(
            'legacyDrawing',
            nest: () {
              builder.attribute('r:id', legacyDrawingId);
            },
          );
        }
      },
    );
  }
}

class SpreadsheetHyperlink {
  final String cellRef;
  final String? url;
  final String? location;

  SpreadsheetHyperlink(this.cellRef, {this.url, this.location});
}
