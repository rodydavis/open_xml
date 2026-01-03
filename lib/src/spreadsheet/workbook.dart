import 'package:file/file.dart';
import 'package:logging/logging.dart';
import 'package:open_xml/src/package/package.dart';
import 'package:open_xml/src/sml/sml_builder.g.dart';
import 'package:xml/xml.dart';

import 'worksheet.dart';
import 'shared_strings.dart';

class Workbook {
  final OoxmlPackage _package;
  final List<Worksheet> _worksheets = [];
  final _log = Logger('Workbook');

  List<Worksheet> get worksheets => _worksheets;

  Workbook._(this._package);

  /// Creates a new empty Workbook.
  static Future<Workbook> create(FileSystem fs) async {
    final package = await OoxmlPackage.create(fs);
    return Workbook._(package);
  }

  Future<void> close() async {
    await _package.close();
    _log.info('Workbook closed successfully');
  }

  SharedStrings? _sharedStrings;

  /// Opens an existing Workbook.
  static Future<Workbook> open(File file) async {
    final package = await OoxmlPackage.open(file);
    final wb = Workbook._(package);
    await wb._parse();
    return wb;
  }

  Future<void> _parse() async {
    _sharedStrings = await SharedStrings.parse(_package);

    // Read workbook.xml to find sheets
    if (!await _package.hasPart('xl/workbook.xml')) return;
    final xml = await _package.readPartAsString('xl/workbook.xml');
    final document = XmlDocument.parse(xml);
    final sheets = document.findAllElements('sheet');

    for (final sheet in sheets) {
      final name = sheet.getAttribute('name') ?? 'Sheet';
      final sheetId = int.tryParse(sheet.getAttribute('sheetId') ?? '0') ?? 0;
      final rId =
          sheet.getAttribute('r:id') ??
          sheet.getAttribute('id'); // namespace prefix might vary

      // We need to resolve rId to a filename.
      // For now, assuming standard structure like xl/worksheets/sheetN.xml or relying on relationships.
      // But simple assumption: sheetId matches sheetN.xml is risky.
      // Better: Read relationships.

      // Simplification for high-level API v1: Assume standard naming based on relationship lookup is needed.
      // But to actually get the path, we need to parse xl/_rels/workbook.xml.rels

      final partName = await _resolveSheetPath(rId);
      if (partName != null) {
        final worksheet = await Worksheet.parse(
          _package,
          partName,
          name,
          sheetId,
          _sharedStrings,
        );
        if (worksheet != null) {
          _worksheets.add(worksheet);
        }
      }
    }
  }

  Future<String?> _resolveSheetPath(String? rId) async {
    if (rId == null) return null;
    if (!await _package.hasPart('xl/_rels/workbook.xml.rels')) return null;

    final relsXml = await _package.readPartAsString(
      'xl/_rels/workbook.xml.rels',
    );
    final relsDoc = XmlDocument.parse(relsXml);
    final rel = relsDoc
        .findAllElements('Relationship')
        .firstWhere(
          (e) => e.getAttribute('Id') == rId,
          orElse: () => XmlElement(XmlName('dummy')),
        );

    if (rel.name.local == 'dummy') return null;
    var target = rel.getAttribute('Target');
    // Target might be relative, e.g., "worksheets/sheet1.xml"
    if (target != null && !target.startsWith('/')) {
      target = 'xl/$target';
    } else if (target != null && target.startsWith('/')) {
      target = target.substring(1);
    }
    return target;
  }

  /// Adds a worksheet to the workbook.
  Worksheet addSheet(String name) {
    final sheet = Worksheet(name, _worksheets.length + 1);
    _worksheets.add(sheet);
    return sheet;
  }

  /// Saves the workbook to the specified [outputFile].
  Future<void> save(File outputFile) async {
    _log.info('Saving Workbook to ${outputFile.path}');
    // 1. [Content_Types].xml
    final contentTypes = await _package.createPart('[Content_Types].xml');
    final ctBuilder = XmlBuilder();
    ctBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    ctBuilder.element(
      'Types',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/content-types': '',
      },
      nest: () {
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'rels');
            ctBuilder.attribute(
              'ContentType',
              'application/vnd.openxmlformats-package.relationships+xml',
            );
          },
        );
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'xml');
            ctBuilder.attribute('ContentType', 'application/xml');
          },
        );
        ctBuilder.element(
          'Override',
          nest: () {
            ctBuilder.attribute('PartName', '/xl/workbook.xml');
            ctBuilder.attribute(
              'ContentType',
              'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml',
            );
          },
        );
        for (var i = 0; i < _worksheets.length; i++) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute(
                'PartName',
                '/xl/worksheets/sheet${i + 1}.xml',
              );
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml',
              );
            },
          );
        }
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'vml');
            ctBuilder.attribute(
              'ContentType',
              'application/vnd.openxmlformats-officedocument.vmlDrawing',
            );
          },
        );
        for (var i = 0; i < _worksheets.length; i++) {
          if (_worksheets[i].comments.isNotEmpty) {
            ctBuilder.element(
              'Override',
              nest: () {
                ctBuilder.attribute('PartName', '/xl/comments${i + 1}.xml');
                ctBuilder.attribute(
                  'ContentType',
                  'application/vnd.openxmlformats-officedocument.spreadsheetml.comments+xml',
                );
              },
            );
          }
        }
      },
    );
    contentTypes.write(ctBuilder.buildDocument().toXmlString());
    await contentTypes.close();

    // 2. _rels/.rels
    final rels = await _package.createPart('_rels/.rels');
    final relsBuilder = XmlBuilder();
    relsBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    relsBuilder.element(
      'Relationships',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/relationships': '',
      },
      nest: () {
        relsBuilder.element(
          'Relationship',
          nest: () {
            relsBuilder.attribute('Id', 'rId1');
            relsBuilder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument',
            );
            relsBuilder.attribute('Target', 'xl/workbook.xml');
          },
        );
      },
    );
    rels.write(relsBuilder.buildDocument().toXmlString());
    await rels.close();

    // 3. xl/workbook.xml
    final workbook = await _package.createPart('xl/workbook.xml');
    final wbBuilder = XmlBuilder();
    wbBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    wbBuilder.element(
      'workbook',
      namespaces: {
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main': '',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
            'r',
      },
      nest: () {
        wbBuilder.s_ct_sheets(
          tagName: 'sheets',
          children: (b) {
            for (var i = 0; i < _worksheets.length; i++) {
              final sheet = _worksheets[i];
              b.s_ct_sheet(
                tagName: 'sheet',
                name: sheet.name,
                sheetId: i + 1,
                children: (b) {
                  b.attribute(
                    'id',
                    'rId${i + 1}',
                    namespace:
                        'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
                  );
                },
              );
            }
          },
        );
      },
    );
    workbook.write(wbBuilder.buildDocument().toXmlString());
    await workbook.close();

    // 4. xl/_rels/workbook.xml.rels
    final wbRels = await _package.createPart('xl/_rels/workbook.xml.rels');
    final wbRelsBuilder = XmlBuilder();
    wbRelsBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    wbRelsBuilder.element(
      'Relationships',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/relationships': '',
      },
      nest: () {
        for (var i = 0; i < _worksheets.length; i++) {
          wbRelsBuilder.element(
            'Relationship',
            nest: () {
              wbRelsBuilder.attribute('Id', 'rId${i + 1}');
              wbRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet',
              );
              wbRelsBuilder.attribute('Target', 'worksheets/sheet${i + 1}.xml');
            },
          );
        }
      },
    );
    wbRels.write(wbRelsBuilder.buildDocument().toXmlString());
    await wbRels.close();

    // 5. xl/worksheets/sheetN.xml and xl/worksheets/_rels/sheetN.xml.rels
    for (var i = 0; i < _worksheets.length; i++) {
      await Future.delayed(Duration.zero);
      final sheet = _worksheets[i];
      final aliases = <String, String>{};

      String? legacyDrawingId;

      // Generate relationships if needed
      if (sheet.hyperlinks.isNotEmpty || sheet.comments.isNotEmpty) {
        final relsPartPath = 'xl/worksheets/_rels/sheet${i + 1}.xml.rels';
        final relsPart = await _package.createPart(relsPartPath);
        final relsBuilder = XmlBuilder();
        relsBuilder.processing(
          'xml',
          'version="1.0" encoding="UTF-8" standalone="yes"',
        );
        relsBuilder.element(
          'Relationships',
          namespaces: {
            'http://schemas.openxmlformats.org/package/2006/relationships': '',
          },
          nest: () {
            int relIdCounter = 1;
            for (final link in sheet.hyperlinks) {
              if (link.url != null && !aliases.containsKey(link.url)) {
                final rId = 'rId${relIdCounter++}';
                aliases[link.url!] = rId;
                relsBuilder.element(
                  'Relationship',
                  nest: () {
                    relsBuilder.attribute('Id', rId);
                    relsBuilder.attribute(
                      'Type',
                      'http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink',
                    );
                    relsBuilder.attribute('Target', link.url!);
                    relsBuilder.attribute('TargetMode', 'External');
                  },
                );
              }
            }

            if (sheet.comments.isNotEmpty) {
              // Comments Relationship
              final commentsId = 'rId${relIdCounter++}';
              relsBuilder.element(
                'Relationship',
                nest: () {
                  relsBuilder.attribute('Id', commentsId);
                  relsBuilder.attribute(
                    'Type',
                    'http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments',
                  );
                  relsBuilder.attribute('Target', '../comments${i + 1}.xml');
                },
              );

              // VML Drawing Relationship
              legacyDrawingId = 'rId${relIdCounter++}';
              relsBuilder.element(
                'Relationship',
                nest: () {
                  relsBuilder.attribute('Id', legacyDrawingId!);
                  relsBuilder.attribute(
                    'Type',
                    'http://schemas.openxmlformats.org/officeDocument/2006/relationships/vmlDrawing',
                  );
                  relsBuilder.attribute(
                    'Target',
                    '../drawings/vmlDrawing${i + 1}.vml',
                  );
                },
              );
            }
          },
        );
        relsPart.write(relsBuilder.buildDocument().toXmlString());
        await relsPart.close();
      }

      if (sheet.comments.isNotEmpty) {
        // Generate xl/commentsN.xml
        final commentsPart = await _package.createPart(
          'xl/comments${i + 1}.xml',
        );
        final cBuilder = XmlBuilder();
        cBuilder.processing(
          'xml',
          'version="1.0" encoding="UTF-8" standalone="yes"',
        );
        cBuilder.element(
          'comments',
          namespaces: {
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main': '',
          },
          nest: () {
            cBuilder.element(
              'authors',
              nest: () {
                // Collect unique authors
                final authors = sheet.comments
                    .map((c) => c.comment.author)
                    .toSet();
                for (final author in authors) {
                  cBuilder.element('author', nest: () => cBuilder.text(author));
                }
              },
            );
            cBuilder.element(
              'commentList',
              nest: () {
                final authorsList = sheet.comments
                    .map((c) => c.comment.author)
                    .toSet()
                    .toList();
                for (final comment in sheet.comments) {
                  cBuilder.element(
                    'comment',
                    nest: () {
                      cBuilder.attribute('ref', comment.cellRef);
                      cBuilder.attribute(
                        'authorId',
                        authorsList.indexOf(comment.comment.author),
                      );
                      cBuilder.element(
                        'text',
                        nest: () {
                          cBuilder.element(
                            't',
                            nest: () => cBuilder.text(comment.comment.text),
                          );
                        },
                      );
                    },
                  );
                }
              },
            );
          },
        );
        commentsPart.write(cBuilder.buildDocument().toXmlString());
        await commentsPart.close();

        // Generate xl/drawings/vmlDrawingN.vml
        final vmlPart = await _package.createPart(
          'xl/drawings/vmlDrawing${i + 1}.vml',
        );
        final vBuilder = XmlBuilder();
        // VML does not use standard xml processing usually, but valid XML.
        // It often starts with <xml ...> root.
        vBuilder.element(
          'xml',
          namespaces: {
            'urn:schemas-microsoft-com:vml': 'v',
            'urn:schemas-microsoft-com:office:office': 'o',
            'urn:schemas-microsoft-com:office:excel': 'x',
          },
          nest: () {
            vBuilder.element(
              'o:shapelayout',
              nest: () {
                vBuilder.attribute('v:ext', 'edit');
                vBuilder.element(
                  'o:idmap',
                  nest: () {
                    vBuilder.attribute('v:ext', 'edit');
                    vBuilder.attribute('data', '1');
                  },
                );
              },
            );
            vBuilder.element(
              'v:shapetype',
              nest: () {
                vBuilder.attribute('id', '_x0000_t202');
                vBuilder.attribute('coordsize', '21600,21600');
                vBuilder.attribute('o:spt', '202');
                vBuilder.attribute('path', 'm,l,21600r21600,l21600,xe');
                vBuilder.element(
                  'v:stroke',
                  nest: () => vBuilder.attribute('joinstyle', 'miter'),
                );
                vBuilder.element(
                  'v:path',
                  nest: () {
                    vBuilder.attribute('gradientshapeok', 't');
                    vBuilder.attribute('o:connecttype', 'rect');
                  },
                );
              },
            );

            for (var cIdx = 0; cIdx < sheet.comments.length; cIdx++) {
              final comment = sheet.comments[cIdx];
              vBuilder.element(
                'v:shape',
                nest: () {
                  vBuilder.attribute('id', '_x0000_s102${5 + cIdx}');
                  vBuilder.attribute('type', '#_x0000_t202');
                  vBuilder.attribute(
                    'style',
                    'position:absolute;margin-left:59.25pt;margin-top:1.5pt;width:108pt;height:59.25pt;z-index:1;visibility:hidden',
                  ); // Fixed position for simplicity
                  vBuilder.attribute('fillcolor', '#ffffe1');
                  vBuilder.attribute('o:insetmode', 'auto');

                  vBuilder.element(
                    'v:fill',
                    nest: () => vBuilder.attribute('color2', '#ffffe1'),
                  );
                  vBuilder.element(
                    'v:shadow',
                    nest: () {
                      vBuilder.attribute('on', 't');
                      vBuilder.attribute('color', 'black');
                      vBuilder.attribute('obscured', 't');
                    },
                  );
                  vBuilder.element(
                    'v:path',
                    nest: () => vBuilder.attribute('o:connecttype', 'none'),
                  );
                  vBuilder.element(
                    'v:textbox',
                    nest: () {
                      vBuilder.attribute('style', 'mso-direction-alt:auto');
                      vBuilder.element(
                        'div',
                        nest: () {
                          vBuilder.attribute('style', 'text-align:left');
                        },
                      );
                    },
                  );
                  vBuilder.element(
                    'x:ClientData',
                    nest: () {
                      vBuilder.attribute('ObjectType', 'Note');
                      vBuilder.element('x:MoveWithCells');
                      vBuilder.element('x:SizeWithCells');
                      vBuilder.element(
                        'x:Anchor',
                        nest: () {
                          // Simplified Anchor: left, top, right, bottom (col, offset, row, offset)
                          // Mapping comment to its cell:
                          // From row,col to simple offset
                          // Ideally this is calculated.
                          // 1, 15, 0, 2, 3, 15, 3, 16
                          vBuilder.text(
                            '${comment.col}, 15, ${comment.row - 1}, 10, ${comment.col + 2}, 15, ${comment.row - 1 + 2}, 10',
                          );
                        },
                      );
                      vBuilder.element(
                        'x:AutoFill',
                        nest: () => vBuilder.text('False'),
                      );
                      vBuilder.element(
                        'x:Row',
                        nest: () => vBuilder.text((comment.row - 1).toString()),
                      );
                      vBuilder.element(
                        'x:Column',
                        nest: () => vBuilder.text((comment.col - 1).toString()),
                      ); // 0-indexed for VML
                    },
                  );
                },
              );
            }
          },
        );
        vmlPart.write(vBuilder.buildDocument().toXmlString());
        await vmlPart.close();
      }

      final sheetPart = await _package.createPart(
        'xl/worksheets/sheet${i + 1}.xml',
      );
      final sheetBuilder = XmlBuilder();
      sheetBuilder.processing(
        'xml',
        'version="1.0" encoding="UTF-8" standalone="yes"',
      );
      sheet.build(
        sheetBuilder,
        aliases: aliases.isEmpty ? null : aliases,
        legacyDrawingId: legacyDrawingId,
      );
      sheetPart.write(sheetBuilder.buildDocument().toXmlString());
      await sheetPart.close();
    }

    await _package.save(outputFile);
    _log.info('Workbook saved successfully');
  }
}
