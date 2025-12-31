import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'package:open_xml/src/sml/sml_builder.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/package/package.dart';

Future<void> main() async {
  const fs = LocalFileSystem();
  final package = await OoxmlPackage.create(fs);

  // 1. [Content_Types].xml
  final contentTypes = await package.createPart('[Content_Types].xml');
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
      ctBuilder.element(
        'Override',
        nest: () {
          ctBuilder.attribute('PartName', '/xl/worksheets/sheet1.xml');
          ctBuilder.attribute(
            'ContentType',
            'application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml',
          );
        },
      );
    },
  );
  contentTypes.write(ctBuilder.buildDocument().toXmlString());
  await contentTypes.close();

  // 2. _rels/.rels
  final rels = await package.createPart('_rels/.rels');
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
  final workbook = await package.createPart('xl/workbook.xml');
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
          b.s_ct_sheet(
            tagName: 'sheet',
            name: 'Sheet1',
            sheetId: 1,
            children: (b) {
              b.attribute(
                'id',
                'rId1',
                namespace:
                    'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
              );
            },
          );
        },
      );
    },
  );
  workbook.write(wbBuilder.buildDocument().toXmlString());
  await workbook.close();

  // 4. xl/_rels/workbook.xml.rels
  final wbRels = await package.createPart('xl/_rels/workbook.xml.rels');
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
      wbRelsBuilder.element(
        'Relationship',
        nest: () {
          wbRelsBuilder.attribute('Id', 'rId1');
          wbRelsBuilder.attribute(
            'Type',
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet',
          );
          wbRelsBuilder.attribute('Target', 'worksheets/sheet1.xml');
        },
      );
    },
  );
  wbRels.write(wbRelsBuilder.buildDocument().toXmlString());
  await wbRels.close();

  // 5. xl/worksheets/sheet1.xml
  final sheet = await package.createPart('xl/worksheets/sheet1.xml');
  final sheetBuilder = XmlBuilder();
  sheetBuilder.processing(
    'xml',
    'version="1.0" encoding="UTF-8" standalone="yes"',
  );
  sheetBuilder.element(
    'worksheet',
    namespaces: {
      'http://schemas.openxmlformats.org/spreadsheetml/2006/main': '',
    },
    nest: () {
      sheetBuilder.s_ct_sheetdata(
        tagName: 'sheetData',
        children: (b) {
          b.s_ct_row(
            tagName: 'row',
            r: 1,
            children: (b) {
              b.s_ct_cell(
                tagName: 'c',
                r: 'A1',
                t: S_ST_CellType.inlineStr,
                children: (b) {
                  b.s_ct_rst(
                    tagName: 'is',
                    children: (b) {
                      b.element('t', nest: () => b.text('Hello Excel!'));
                    },
                  );
                },
              );
            },
          );
        },
      );
    },
  );
  sheet.write(sheetBuilder.buildDocument().toXmlString());
  await sheet.close();

  // Save the package
  await package.save(fs.file('out/example.xlsx'));
  print('Created example.xlsx');
}
