import 'package:file/local.dart';
import 'package:open_xml/open_xml.dart';
import 'package:open_xml/src/wml/wml_builder.g.dart';
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
          ctBuilder.attribute('PartName', '/word/document.xml');
          ctBuilder.attribute(
            'ContentType',
            'application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml',
          );
        },
      );
      ctBuilder.element(
        'Override',
        nest: () {
          ctBuilder.attribute('PartName', '/word/styles.xml');
          ctBuilder.attribute(
            'ContentType',
            'application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml',
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
          relsBuilder.attribute('Target', 'word/document.xml');
        },
      );
    },
  );
  rels.write(relsBuilder.buildDocument().toXmlString());
  await rels.close();

  // 3. word/document.xml
  final document = await package.createPart('word/document.xml');
  final docBuilder = XmlBuilder();
  docBuilder.processing(
    'xml',
    'version="1.0" encoding="UTF-8" standalone="yes"',
  );
  docBuilder.element(
    'w:document',
    namespaces: {
      'http://schemas.openxmlformats.org/wordprocessingml/2006/main': 'w',
      'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
          'r',
      'http://schemas.openxmlformats.org/markup-compatibility/2006': 'mc',
    },
    nest: () {
      docBuilder.w_ct_body(
        tagName: 'body',
        children: (b) {
          b.w_ct_p(
            tagName: 'p',
            children: (b) {
              b.w_ct_r(
                tagName: 'r',
                children: (b) {
                  b.w_ct_text(
                    tagName: 't',
                    children: (b) => b.text('Hello from OpenXML Dart!'),
                  );
                },
              );
            },
          );
        },
      );
    },
  );
  document.write(docBuilder.buildDocument().toXmlString());
  await document.close();

  // 4. word/styles.xml
  final styles = await package.createPart('word/styles.xml');
  final stylesBuilder = XmlBuilder();
  stylesBuilder.processing(
    'xml',
    'version="1.0" encoding="UTF-8" standalone="yes"',
  );
  stylesBuilder.element(
    'w:styles',
    namespaces: {
      'http://schemas.openxmlformats.org/wordprocessingml/2006/main': 'w',
    },
    nest: () {
      stylesBuilder.element(
        'w:docDefaults',
        nest: () {
          stylesBuilder.element(
            'w:rPrDefault',
            nest: () {
              stylesBuilder.element(
                'w:rPr',
                nest: () {
                  stylesBuilder.element(
                    'w:rFonts',
                    nest: () {
                      stylesBuilder.attribute('w:ascii', 'Calibri');
                      stylesBuilder.attribute('w:hAnsi', 'Calibri');
                      stylesBuilder.attribute('w:eastAsia', 'Calibri');
                      stylesBuilder.attribute('w:cs', 'Times New Roman');
                    },
                  );
                  stylesBuilder.element(
                    'w:lang',
                    nest: () {
                      stylesBuilder.attribute('w:val', 'en-US');
                      stylesBuilder.attribute('w:eastAsia', 'en-US');
                      stylesBuilder.attribute('w:bidi', 'ar-SA');
                    },
                  );
                },
              );
            },
          );
          stylesBuilder.element('w:pPrDefault');
        },
      );
    },
  );
  styles.write(stylesBuilder.buildDocument().toXmlString());
  await styles.close();

  // 5. word/_rels/document.xml.rels
  final docRels = await package.createPart('word/_rels/document.xml.rels');
  final docRelsBuilder = XmlBuilder();
  docRelsBuilder.processing(
    'xml',
    'version="1.0" encoding="UTF-8" standalone="yes"',
  );
  docRelsBuilder.element(
    'Relationships',
    namespaces: {
      'http://schemas.openxmlformats.org/package/2006/relationships': '',
    },
    nest: () {
      docRelsBuilder.element(
        'Relationship',
        nest: () {
          docRelsBuilder.attribute('Id', 'rId1');
          docRelsBuilder.attribute(
            'Type',
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles',
          );
          docRelsBuilder.attribute(
            'Target',
            'styles.xml',
          ); // Relative to document.xml
        },
      );
    },
  );
  docRels.write(docRelsBuilder.buildDocument().toXmlString());
  await docRels.close();

  // Save the package
  await package.save(fs.file('out/example.docx'));
  print('Created example.docx');
}
