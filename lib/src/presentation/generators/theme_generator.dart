import 'package:open_xml/src/package/package.dart';
import 'package:xml/xml.dart';

void addThemeColor(XmlBuilder b, String name, String val, String? lastClr) {
  b.element(
    'a:$name',
    nest: () {
      if (lastClr != null) {
        b.element(
          'a:sysClr',
          nest: () {
            b.attribute('val', val);
            b.attribute('lastClr', lastClr);
          },
        );
      } else {
        b.element(
          'a:srgbClr',
          nest: () {
            b.attribute('val', val);
          },
        );
      }
    },
  );
}

Future<void> generateTheme(OoxmlPackage package) async {
  // Minimal theme implementation (copied/adapted from example)
  final theme = await package.createPart('ppt/theme/theme1.xml');
  final tBuilder = XmlBuilder();
  tBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
  tBuilder.element(
    'a:theme',
    namespaces: {'http://schemas.openxmlformats.org/drawingml/2006/main': 'a'},
    nest: () {
      tBuilder.attribute('name', 'Office Theme');
      tBuilder.element(
        'a:themeElements',
        nest: () {
          tBuilder.element(
            'a:clrScheme',
            nest: () {
              tBuilder.attribute('name', 'Office');
              addThemeColor(tBuilder, 'dk1', 'windowText', '000000');
              addThemeColor(tBuilder, 'lt1', 'window', 'FFFFFF');
              addThemeColor(tBuilder, 'dk2', '1F497D', null);
              addThemeColor(tBuilder, 'lt2', 'EEECE1', null);
              addThemeColor(tBuilder, 'accent1', '4F81BD', null);
              addThemeColor(tBuilder, 'accent2', 'C0504D', null);
              addThemeColor(tBuilder, 'accent3', '9BBB59', null);
              addThemeColor(tBuilder, 'accent4', '8064A2', null);
              addThemeColor(tBuilder, 'accent5', '4BACC6', null);
              addThemeColor(tBuilder, 'accent6', 'F79646', null);
              addThemeColor(tBuilder, 'hlink', '0000FF', null);
              addThemeColor(tBuilder, 'folHlink', '800080', null);
            },
          );
          tBuilder.element(
            'a:fontScheme',
            nest: () {
              tBuilder.attribute('name', 'Office');
              tBuilder.element(
                'a:majorFont',
                nest: () {
                  tBuilder.element(
                    'a:latin',
                    nest: () => tBuilder.attribute('typeface', 'Calibri'),
                  );
                  tBuilder.element(
                    'a:ea',
                    nest: () => tBuilder.attribute('typeface', ''),
                  );
                  tBuilder.element(
                    'a:cs',
                    nest: () => tBuilder.attribute('typeface', ''),
                  );
                },
              );
              tBuilder.element(
                'a:minorFont',
                nest: () {
                  tBuilder.element(
                    'a:latin',
                    nest: () => tBuilder.attribute('typeface', 'Calibri'),
                  );
                  tBuilder.element(
                    'a:ea',
                    nest: () => tBuilder.attribute('typeface', ''),
                  );
                  tBuilder.element(
                    'a:cs',
                    nest: () => tBuilder.attribute('typeface', ''),
                  );
                },
              );
            },
          );
          tBuilder.element(
            'a:fmtScheme',
            nest: () {
              tBuilder.attribute('name', 'Office');
              tBuilder.element(
                'a:fillStyleLst',
                nest: () {
                  tBuilder.element(
                    'a:solidFill',
                    nest: () {
                      tBuilder.element(
                        'a:schemeClr',
                        nest: () => tBuilder.attribute('val', 'phClr'),
                      );
                    },
                  );
                  tBuilder.element(
                    'a:gradFill',
                    nest: () {
                      tBuilder.attribute('rotWithShape', '1');
                      tBuilder.element(
                        'a:gsLst',
                        nest: () {
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '0');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:lumMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '110000'),
                                  );
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '105000'),
                                  );
                                  tBuilder.element(
                                    'a:tint',
                                    nest: () =>
                                        tBuilder.attribute('val', '67000'),
                                  );
                                },
                              );
                            },
                          );
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '50000');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:lumMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '105000'),
                                  );
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '103000'),
                                  );
                                  tBuilder.element(
                                    'a:tint',
                                    nest: () =>
                                        tBuilder.attribute('val', '73000'),
                                  );
                                },
                              );
                            },
                          );
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '100000');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:lumMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '105000'),
                                  );
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '109000'),
                                  );
                                  tBuilder.element(
                                    'a:tint',
                                    nest: () =>
                                        tBuilder.attribute('val', '81000'),
                                  );
                                },
                              );
                            },
                          );
                        },
                      );
                      tBuilder.element(
                        'a:lin',
                        nest: () {
                          tBuilder.attribute('ang', '5400000');
                          tBuilder.attribute('scaled', '0');
                        },
                      );
                    },
                  );
                  tBuilder.element(
                    'a:gradFill',
                    nest: () {
                      tBuilder.attribute('rotWithShape', '1');
                      tBuilder.element(
                        'a:gsLst',
                        nest: () {
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '0');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '103000'),
                                  );
                                  tBuilder.element(
                                    'a:lumMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '102000'),
                                  );
                                  tBuilder.element(
                                    'a:tint',
                                    nest: () =>
                                        tBuilder.attribute('val', '94000'),
                                  );
                                },
                              );
                            },
                          );
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '50000');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '110000'),
                                  );
                                  tBuilder.element(
                                    'a:lumMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '100000'),
                                  );
                                  tBuilder.element(
                                    'a:shade',
                                    nest: () =>
                                        tBuilder.attribute('val', '100000'),
                                  );
                                },
                              );
                            },
                          );
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '100000');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:lumMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '99000'),
                                  );
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '120000'),
                                  );
                                  tBuilder.element(
                                    'a:shade',
                                    nest: () =>
                                        tBuilder.attribute('val', '78000'),
                                  );
                                },
                              );
                            },
                          );
                        },
                      );
                      tBuilder.element(
                        'a:lin',
                        nest: () {
                          tBuilder.attribute('ang', '5400000');
                          tBuilder.attribute('scaled', '0');
                        },
                      );
                    },
                  );
                },
              );
              tBuilder.element(
                'a:lnStyleLst',
                nest: () {
                  tBuilder.element(
                    'a:ln',
                    nest: () {
                      tBuilder.attribute('w', '6350');
                      tBuilder.attribute('cap', 'flat');
                      tBuilder.attribute('cmpd', 'sng');
                      tBuilder.attribute('algn', 'ctr');
                      tBuilder.element(
                        'a:solidFill',
                        nest: () {
                          tBuilder.element(
                            'a:schemeClr',
                            nest: () {
                              tBuilder.attribute('val', 'phClr');
                            },
                          );
                        },
                      );
                      tBuilder.element(
                        'a:prstDash',
                        nest: () {
                          tBuilder.attribute('val', 'solid');
                        },
                      );
                      tBuilder.element(
                        'a:miter',
                        nest: () {
                          tBuilder.attribute('lim', '800000');
                        },
                      );
                    },
                  );
                  tBuilder.element(
                    'a:ln',
                    nest: () {
                      tBuilder.attribute('w', '12700');
                      tBuilder.attribute('cap', 'flat');
                      tBuilder.attribute('cmpd', 'sng');
                      tBuilder.attribute('algn', 'ctr');
                      tBuilder.element(
                        'a:solidFill',
                        nest: () {
                          tBuilder.element(
                            'a:schemeClr',
                            nest: () {
                              tBuilder.attribute('val', 'phClr');
                            },
                          );
                        },
                      );
                      tBuilder.element(
                        'a:prstDash',
                        nest: () {
                          tBuilder.attribute('val', 'solid');
                        },
                      );
                      tBuilder.element(
                        'a:miter',
                        nest: () {
                          tBuilder.attribute('lim', '800000');
                        },
                      );
                    },
                  );
                  tBuilder.element(
                    'a:ln',
                    nest: () {
                      tBuilder.attribute('w', '19050');
                      tBuilder.attribute('cap', 'flat');
                      tBuilder.attribute('cmpd', 'sng');
                      tBuilder.attribute('algn', 'ctr');
                      tBuilder.element(
                        'a:solidFill',
                        nest: () {
                          tBuilder.element(
                            'a:schemeClr',
                            nest: () {
                              tBuilder.attribute('val', 'phClr');
                            },
                          );
                        },
                      );
                      tBuilder.element(
                        'a:prstDash',
                        nest: () {
                          tBuilder.attribute('val', 'solid');
                        },
                      );
                      tBuilder.element(
                        'a:miter',
                        nest: () {
                          tBuilder.attribute('lim', '800000');
                        },
                      );
                    },
                  );
                },
              );
              tBuilder.element(
                'a:effectStyleLst',
                nest: () {
                  tBuilder.element(
                    'a:effectStyle',
                    nest: () {
                      tBuilder.element('a:effectLst');
                    },
                  );
                  tBuilder.element(
                    'a:effectStyle',
                    nest: () {
                      tBuilder.element('a:effectLst');
                    },
                  );
                  tBuilder.element(
                    'a:effectStyle',
                    nest: () {
                      tBuilder.element('a:effectLst');
                    },
                  );
                },
              );
              tBuilder.element(
                'a:bgFillStyleLst',
                nest: () {
                  tBuilder.element(
                    'a:solidFill',
                    nest: () {
                      tBuilder.element(
                        'a:schemeClr',
                        nest: () {
                          tBuilder.attribute('val', 'phClr');
                        },
                      );
                    },
                  );
                  tBuilder.element(
                    'a:solidFill',
                    nest: () {
                      tBuilder.element(
                        'a:schemeClr',
                        nest: () {
                          tBuilder.attribute('val', 'phClr');
                          tBuilder.element(
                            'a:tint',
                            nest: () => tBuilder.attribute('val', '95000'),
                          );
                          tBuilder.element(
                            'a:satMod',
                            nest: () => tBuilder.attribute('val', '170000'),
                          );
                        },
                      );
                    },
                  );
                  tBuilder.element(
                    'a:gradFill',
                    nest: () {
                      tBuilder.attribute('rotWithShape', '1');
                      tBuilder.element(
                        'a:gsLst',
                        nest: () {
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '0');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:tint',
                                    nest: () =>
                                        tBuilder.attribute('val', '93000'),
                                  );
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '150000'),
                                  );
                                  tBuilder.element(
                                    'a:shade',
                                    nest: () =>
                                        tBuilder.attribute('val', '98000'),
                                  );
                                  tBuilder.element(
                                    'a:lumMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '102000'),
                                  );
                                },
                              );
                            },
                          );
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '50000');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:tint',
                                    nest: () =>
                                        tBuilder.attribute('val', '98000'),
                                  );
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '130000'),
                                  );
                                  tBuilder.element(
                                    'a:shade',
                                    nest: () =>
                                        tBuilder.attribute('val', '90000'),
                                  );
                                  tBuilder.element(
                                    'a:lumMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '103000'),
                                  );
                                },
                              );
                            },
                          );
                          tBuilder.element(
                            'a:gs',
                            nest: () {
                              tBuilder.attribute('pos', '100000');
                              tBuilder.element(
                                'a:schemeClr',
                                nest: () {
                                  tBuilder.attribute('val', 'phClr');
                                  tBuilder.element(
                                    'a:shade',
                                    nest: () =>
                                        tBuilder.attribute('val', '63000'),
                                  );
                                  tBuilder.element(
                                    'a:satMod',
                                    nest: () =>
                                        tBuilder.attribute('val', '120000'),
                                  );
                                },
                              );
                            },
                          );
                        },
                      );
                      tBuilder.element(
                        'a:lin',
                        nest: () {
                          tBuilder.attribute('ang', '5400000');
                          tBuilder.attribute('scaled', '0');
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
    },
  );
  theme.write(tBuilder.buildDocument().toXmlString());
  await theme.close();
}
