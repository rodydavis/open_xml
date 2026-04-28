import 'package:xml/xml.dart';
import '../../package/package.dart';

Future<void> generateNotesSlide(OoxmlPackage package, int index, String notes) async {
  final notesSlide = await package.createPart(
    'ppt/notesSlides/notesSlide$index.xml',
  );
  final builder = XmlBuilder();
  builder.processing(
    'xml',
    'version="1.0" encoding="UTF-8" ',
  );
  builder.element(
    'p:notes',
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
                  builder.element(
                    'p:nvPr',
                    nest: () {
                      builder.element('p:ph');
                    },
                  );
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
              // Body placeholder logic matching master
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
                          builder.attribute('name', 'Notes Placeholder 2');
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
                    nest: () => builder.element(
                      'a:xfrm',
                      nest: () {
                        builder.element(
                          'a:off',
                          nest: () {
                            builder.attribute('x', '457200');
                            builder.attribute('y', '6858000');
                          },
                        );
                        builder.element(
                          'a:ext',
                          nest: () {
                            builder.attribute('cx', '5943600');
                            builder.attribute('cy', '0');
                          },
                        );
                      },
                    ),
                  );
                  builder.element(
                    'p:txBody',
                    nest: () {
                      builder.element(
                        'a:bodyPr',
                        nest: () {
                          builder.attribute('vert', 'horz');
                        },
                      );
                      builder.element('a:lstStyle');
                      builder.element(
                        'a:p',
                        nest: () {
                          builder.element(
                            'a:r',
                            nest: () {
                              builder.element(
                                'a:rPr',
                                nest: () {
                                  builder.attribute('lang', 'en-US');
                                  builder.attribute('dirty', '0');
                                },
                              );
                              builder.element(
                                'a:t',
                                nest: () => builder.text(notes),
                              );
                            },
                          );
                          builder.element('a:endParaRPr');
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
        'p:clrMapOvr',
        nest: () {
          builder.element(
            'a:masterClrMapping',
            nest: () {
              // ... color mapping
            },
          );
        },
      );
    },
  );
  notesSlide.write(builder.buildDocument().toXmlString());
  await notesSlide.close();
}
