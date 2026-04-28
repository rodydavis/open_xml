import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

Future<void> generateNotesMaster(OoxmlPackage package) async {
  final notesMaster = await package.createPart(
    'ppt/notesMasters/notesMaster1.xml',
  );
  final builder = XmlBuilder();
  builder.processing('xml', 'version="1.0" encoding="UTF-8" ');
  builder.element(
    'p:notesMaster',
    namespaces: {
      'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
      'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
      'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
          'r',
    },
    nest: () {
      builder.element(
        'p:cSld',
        nest: () {
          builder.element(
            'p:spTree',
            nest: () {
              builder.element(
                'p:nvGrpSpPr',
                nest: () {
                  builder.element(
                    'p:cNvPr',
                    nest: () {
                      builder.attribute('id', '1');
                      builder.attribute('name', '');
                    },
                  );
                  builder.element('p:cNvGrpSpPr');
                  builder.element('p:nvPr');
                },
              );
              builder.element(
                'p:grpSpPr',
                nest: () {
                  builder.element(
                    'a:xfrm',
                    nest: () {
                      builder.element(
                        'a:off',
                        nest: () {
                          builder.attribute('x', '0');
                          builder.attribute('y', '0');
                        },
                      );
                      builder.element(
                        'a:ext',
                        nest: () {
                          builder.attribute('cx', '0');
                          builder.attribute('cy', '0');
                        },
                      );
                      builder.element(
                        'a:chOff',
                        nest: () {
                          builder.attribute('x', '0');
                          builder.attribute('y', '0');
                        },
                      );
                      builder.element(
                        'a:chExt',
                        nest: () {
                          builder.attribute('cx', '0');
                          builder.attribute('cy', '0');
                        },
                      );
                    },
                  );
                },
              );
              // Slide Image Placeholder
              builder.element(
                'p:sp',
                nest: () {
                  builder.element(
                    'p:nvSpPr',
                    nest: () {
                      builder.element(
                        'p:cNvPr',
                        nest: () {
                          builder.attribute('id', '2');
                          builder.attribute('name', 'Slide Image Placeholder');
                        },
                      );
                      builder.element(
                        'p:cNvSpPr',
                        nest: () {
                          builder.element(
                            'a:spLocks',
                            nest: () => builder.attribute('noGrp', '1'),
                          );
                        },
                      );
                      builder.element(
                        'p:nvPr',
                        nest: () {
                          builder.element(
                            'p:ph',
                            nest: () => builder.attribute('type', 'sldImg'),
                          );
                        },
                      );
                    },
                  );
                  builder.element(
                    'p:spPr',
                    nest: () {
                      builder.element(
                        'a:xfrm',
                        nest: () {
                          builder.element(
                            'a:off',
                            nest: () {
                              builder.attribute('x', '1143000');
                              builder.attribute('y', '685800');
                            },
                          );
                          builder.element(
                            'a:ext',
                            nest: () {
                              builder.attribute('cx', '4572000');
                              builder.attribute('cy', '3429000');
                            },
                          );
                        },
                      );
                      builder.element(
                        'a:prstGeom',
                        nest: () {
                          builder.attribute('prst', 'rect');
                          builder.element('a:avLst');
                        },
                      );
                    },
                  );
                  builder.element(
                    'p:txBody',
                    nest: () {
                      builder.element('a:bodyPr');
                      builder.element('a:lstStyle');
                      builder.element(
                        'a:p',
                        nest: () => builder.element('a:pPr'),
                      );
                    },
                  );
                },
              );
              // Body placeholder for notes
              builder.element(
                'p:sp',
                nest: () {
                  builder.element(
                    'p:nvSpPr',
                    nest: () {
                      builder.element(
                        'p:cNvPr',
                        nest: () {
                          builder.attribute('id', '3');
                          builder.attribute('name', 'Notes Placeholder 3');
                        },
                      );
                      builder.element(
                        'p:cNvSpPr',
                        nest: () {
                          builder.element(
                            'a:spLocks',
                            nest: () => builder.attribute('noGrp', '1'),
                          );
                        },
                      );
                      builder.element(
                        'p:nvPr',
                        nest: () {
                          builder.element(
                            'p:ph',
                            nest: () {
                              builder.attribute('type', 'body');
                              builder.attribute('idx', '1');
                            },
                          );
                        },
                      );
                    },
                  );
                  builder.element(
                    'p:spPr',
                    nest: () {
                      builder.element(
                        'a:xfrm',
                        nest: () {
                          builder.element(
                            'a:off',
                            nest: () {
                              builder.attribute('x', '685800');
                              builder.attribute('y', '4343400');
                            },
                          );
                          builder.element(
                            'a:ext',
                            nest: () {
                              builder.attribute('cx', '5486400');
                              builder.attribute('cy', '4114800');
                            },
                          );
                        },
                      );
                      builder.element(
                        'a:prstGeom',
                        nest: () {
                          builder.attribute('prst', 'rect');
                          builder.element('a:avLst');
                        },
                      );
                    },
                  );
                  builder.element(
                    'p:txBody',
                    nest: () {
                      builder.element('a:bodyPr');
                      builder.element('a:lstStyle');
                      builder.element(
                        'a:p',
                        nest: () {
                          builder.element('a:pPr');
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
      builder.element(
        'p:clrMap',
        nest: () {
          builder.attribute('bg1', 'lt1');
          builder.attribute('tx1', 'dk1');
          builder.attribute('bg2', 'lt2');
          builder.attribute('tx2', 'dk2');
          builder.attribute('accent1', 'accent1');
          builder.attribute('accent2', 'accent2');
          builder.attribute('accent3', 'accent3');
          builder.attribute('accent4', 'accent4');
          builder.attribute('accent5', 'accent5');
          builder.attribute('accent6', 'accent6');
          builder.attribute('hlink', 'hlink');
          builder.attribute('folHlink', 'folHlink');
        },
      );
      builder.element(
        'p:notesStyle',
        nest: () {
          builder.element(
            'a:lvl1pPr',
            nest: () {
              builder.attribute('algn', 'l');
              builder.element(
                'a:defRPr',
                nest: () => builder.attribute('sz', '1200'),
              );
            },
          );
        },
      );
    },
  );
  notesMaster.write(builder.buildDocument().toXmlString());
  await notesMaster.close();
}
