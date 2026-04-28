import 'package:xml/xml.dart';
import '../elements.dart';

void buildLegacyShape(
  XmlBuilder b,
  int id,
  String text,
  int x,
  int y,
  int cx,
  int cy, {
  int fontSize = 1800,
  bool isTitle = false,
}) {
  b.element(
    'p:sp',
    nest: () {
      b.element(
        'p:nvSpPr',
        nest: () {
          b.element(
            'p:cNvPr',
            nest: () {
              b.attribute('id', '$id');
              b.attribute('name', 'TextBox $id');
            },
          );
          b.element('p:cNvSpPr');
          b.element(
            'p:nvPr',
            nest: () {
              if (isTitle) {
                b.element(
                  'p:ph',
                  nest: () {
                    b.attribute('type', 'title');
                  },
                );
              }
            },
          );
        },
      );
      b.element(
        'p:spPr',
        nest: () {
          b.element(
            'a:xfrm',
            nest: () {
              b.element(
                'a:off',
                nest: () {
                  b.attribute('x', '$x');
                  b.attribute('y', '$y');
                },
              );
              b.element(
                'a:ext',
                nest: () {
                  b.attribute('cx', '$cx');
                  b.attribute('cy', '$cy');
                },
              );
            },
          );
          b.element(
            'a:prstGeom',
            nest: () {
              b.attribute('prst', 'rect');
              b.element('a:avLst');
            },
          );
        },
      );
      b.element(
        'p:txBody',
        nest: () {
          b.element('a:bodyPr');
          b.element('a:lstStyle');
          b.element(
            'a:p',
            nest: () {
              b.element(
                'a:r',
                nest: () {
                  b.element(
                    'a:rPr',
                    nest: () {
                      b.attribute('sz', '$fontSize');
                      b.attribute('dirty', '0');
                      b.element(
                        'a:solidFill',
                        nest: () {
                          b.element(
                            'a:srgbClr',
                            nest: () {
                              b.attribute('val', '000000');
                            },
                          );
                        },
                      );
                    },
                  );
                  b.element('a:t', nest: () => b.text(text));
                },
              );
            },
          );
        },
      );
    },
  );
}

void buildTextBox(
  XmlBuilder b,
  int id,
  SlideTextBox textBox,
  Map<String, String>? relIds,
) {
  b.element(
    'p:sp',
    nest: () {
      b.element(
        'p:nvSpPr',
        nest: () {
          b.element(
            'p:cNvPr',
            nest: () {
              b.attribute('id', '$id');
              b.attribute('name', 'TextBox $id');
            },
          );
          b.element(
            'p:cNvSpPr',
            nest: () {
              b.attribute('txBox', '1');
            },
          );
          b.element(
            'p:nvPr',
            nest: () {
              if (textBox.placeholderType != null ||
                  textBox.placeholderIdx != null) {
                b.element(
                  'p:ph',
                  nest: () {
                    if (textBox.placeholderType != null) {
                      b.attribute('type', textBox.placeholderType!);
                    }
                    if (textBox.placeholderIdx != null) {
                      b.attribute('idx', '${textBox.placeholderIdx}');
                    }
                  },
                );
              }
            },
          );
        },
      );
      b.element(
        'p:spPr',
        nest: () {
          if (textBox.x != null ||
              textBox.y != null ||
              textBox.width != null ||
              textBox.height != null) {
            b.element(
              'a:xfrm',
              nest: () {
                b.element(
                  'a:off',
                  nest: () {
                    b.attribute('x', '${textBox.x ?? 0}');
                    b.attribute('y', '${textBox.y ?? 0}');
                  },
                );
                b.element(
                  'a:ext',
                  nest: () {
                    b.attribute('cx', '${textBox.width ?? 3000000}');
                    b.attribute('cy', '${textBox.height ?? 1000000}');
                  },
                );
              },
            );
            b.element(
              'a:prstGeom',
              nest: () {
                b.attribute('prst', 'rect');
                b.element('a:avLst');
              },
            );
          }
        },
      );
      b.element(
        'p:txBody',
        nest: () {
          b.element(
            'a:bodyPr',
            nest: () {
              b.attribute('anchor', 't');
              b.element(
                'a:normAutofit',
                nest: () {
                  b.attribute('fontScale', '100000');
                  b.attribute('lnSpcReduction', '0');
                },
              );
            },
          );
          b.element(
            'a:lstStyle',
            nest: () {
              b.element(
                'a:lvl1pPr',
                nest: () {
                  b.element(
                    'a:defRPr',
                    nest: () {
                      b.attribute('sz', '4000');
                    },
                  );
                },
              );
            },
          );
          b.element(
            'a:p',
            nest: () {
              b.element('a:pPr');
              for (final run in textBox.runs) {
                b.element(
                  'a:r',
                  nest: () {
                    final hasStyles =
                        run.fontSize != null ||
                        run.isBold ||
                        run.isItalic ||
                        run.color != null ||
                        run.url != null;
                    if (hasStyles) {
                      b.element(
                        'a:rPr',
                        nest: () {
                          if (run.fontSize != null) {
                            b.attribute('sz', '${run.fontSize}');
                          }
                          b.attribute('dirty', '0');
                          if (run.isBold) b.attribute('b', '1');
                          if (run.isItalic) b.attribute('i', '1');
                          if (run.color != null) {
                            b.element(
                              'a:solidFill',
                              nest: () {
                                b.element(
                                  'a:srgbClr',
                                  nest: () {
                                    b.attribute('val', run.color!);
                                  },
                                );
                              },
                            );
                          }
                          if (run.url != null && relIds != null) {
                            final rId = relIds[run.url];
                            if (rId != null) {
                              b.element(
                                'a:hlinkClick',
                                nest: () {
                                  b.attribute('r:id', rId);
                                  if (run.url!.startsWith('#slide')) {
                                    b.attribute(
                                      'action',
                                      'ppaction://hlinksldjump',
                                    );
                                  }
                                },
                              );
                            }
                          }
                        },
                      );
                    }
                    b.element('a:t', nest: () => b.text(run.text));
                  },
                );
              }
            },
          );
        },
      );
    },
  );
}

void buildImage(
  XmlBuilder b,
  int id,
  String rId,
  SlideImage img,
  int nameId,
) {
  b.element(
    'p:pic',
    nest: () {
      b.element(
        'p:nvPicPr',
        nest: () {
          b.element(
            'p:cNvPr',
            nest: () {
              b.attribute('id', '$id');
              b.attribute('name', 'Picture $nameId');
            },
          );
          b.element(
            'p:cNvPicPr',
            nest: () {
              b.element(
                'a:picLocks',
                nest: () {
                  b.attribute('noChangeAspect', '1');
                },
              );
            },
          );
          b.element(
            'p:nvPr',
            nest: () {
              if (img.placeholderType != null || img.placeholderIdx != null) {
                b.element(
                  'p:ph',
                  nest: () {
                    if (img.placeholderType != null) {
                      b.attribute('type', img.placeholderType!);
                    }
                    if (img.placeholderIdx != null) {
                      b.attribute('idx', '${img.placeholderIdx}');
                    }
                  },
                );
              }
            },
          );
        },
      );
      b.element(
        'p:blipFill',
        nest: () {
          b.element(
            'a:blip',
            nest: () {
              b.attribute('r:embed', rId);
            },
          );
          b.element(
            'a:stretch',
            nest: () {
              b.element('a:fillRect');
            },
          );
        },
      );
      b.element(
        'p:spPr',
        nest: () {
          if (img.x != null &&
              img.y != null &&
              img.width != null &&
              img.height != null) {
            b.element(
              'a:xfrm',
              nest: () {
                b.element(
                  'a:off',
                  nest: () {
                    b.attribute('x', '${img.x}');
                    b.attribute('y', '${img.y}');
                  },
                );
                b.element(
                  'a:ext',
                  nest: () {
                    b.attribute('cx', '${img.width}');
                    b.attribute('cy', '${img.height}');
                  },
                );
              },
            );
            b.element(
              'a:prstGeom',
              nest: () {
                b.attribute('prst', 'rect');
                b.element('a:avLst');
              },
            );
          }
        },
      );
    },
  );
}

void buildVideo(
  XmlBuilder b,
  int id,
  String rId,
  SlideVideo video,
  int nameId,
) {
  b.element(
    'p:pic',
    nest: () {
      b.element(
        'p:nvPicPr',
        nest: () {
          b.element(
            'p:cNvPr',
            nest: () {
              b.attribute('id', '$id');
              b.attribute('name', 'Video $nameId');
              b.element(
                'a:hlinkClick',
                nest: () {
                  b.attribute('r:id', '');
                  b.attribute('action', 'ppaction://media');
                },
              );
            },
          );
          b.element(
            'p:cNvPicPr',
            nest: () {
              b.element(
                'a:picLocks',
                nest: () => b.attribute('noChangeAspect', '1'),
              );
            },
          );
          b.element('p:nvPr');
        },
      );
      b.element(
        'p:blipFill',
        nest: () {
          b.element(
            'a:blip',
            nest: () {
              b.attribute('r:embed', rId);
            },
          );
          b.element('a:stretch', nest: () => b.element('a:fillRect'));
        },
      );
      b.element(
        'p:spPr',
        nest: () {
          if (video.x != null &&
              video.y != null &&
              video.width != null &&
              video.height != null) {
            b.element(
              'a:xfrm',
              nest: () {
                b.element(
                  'a:off',
                  nest: () {
                    b.attribute('x', '${video.x}');
                    b.attribute('y', '${video.y}');
                  },
                );
                b.element(
                  'a:ext',
                  nest: () {
                    b.attribute('cx', '${video.width}');
                    b.attribute('cy', '${video.height}');
                  },
                );
              },
            );
            b.element(
              'a:prstGeom',
              nest: () {
                b.attribute('prst', 'rect');
                b.element('a:avLst');
              },
            );
          }
        },
      );
    },
  );
}
