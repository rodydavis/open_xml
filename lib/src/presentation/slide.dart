import 'elements.dart';
import 'transition.dart';
import 'package:open_xml/src/shared/comment.dart';
import 'package:open_xml/src/package/package.dart';
import 'package:open_xml/src/pml/pml_builder.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/shared/colors.dart';
import 'package:xml/xml.dart';

export 'elements.dart';
export 'transition.dart';
export 'package:open_xml/src/shared/colors.dart';

/// Abstract base class for Slide Backgrounds
sealed class SlideBackground {}

class SolidColorBackground extends SlideBackground {
  final OpenXmlColor color;
  SolidColorBackground(this.color);
}

class GradientStop {
  final OpenXmlColor color;
  final int position; // 0-100000 (0-100%)
  GradientStop(this.color, this.position);
}

abstract class GradientBackground extends SlideBackground {
  final List<GradientStop> stops;
  final bool? rotateWithShape;
  final D_ST_TileFlipMode? flip;

  GradientBackground({required this.stops, this.rotateWithShape, this.flip});
}

class LinearGradientBackground extends GradientBackground {
  final int angle; // degrees (0-360)
  final bool scaled; // '0' or '1'

  LinearGradientBackground({
    required super.stops,
    this.angle = 0,
    this.scaled = false,
    super.rotateWithShape,
    super.flip,
  });
}

class RadialGradientBackground extends GradientBackground {
  final D_ST_PathShadeType pathType;

  RadialGradientBackground({
    required super.stops,
    this.pathType = D_ST_PathShadeType.circle,
    super.rotateWithShape,
    super.flip,
  });
}

// Image Background Classes

class ImageCrop {
  final int l, t, r, b; // Percentages * 1000 (0-100000)
  const ImageCrop({this.l = 0, this.t = 0, this.r = 0, this.b = 0});
}

sealed class ImageMode {}

class ImageStretchMode extends ImageMode {
  // <a:stretch><a:fillRect/></a:stretch>
  ImageStretchMode();
}

class ImageTileMode extends ImageMode {
  final int tx, ty; // EMUs
  final int sx, sy; // Percentage * 1000 (100000 = 100%)
  final D_ST_RectAlignment align;
  final D_ST_TileFlipMode flip;

  ImageTileMode({
    this.tx = 0,
    this.ty = 0,
    this.sx = 100000,
    this.sy = 100000,
    this.align = D_ST_RectAlignment.tl,
    this.flip = D_ST_TileFlipMode.none,
  });
}

class ImageBackground extends SlideBackground {
  final String imagePath;
  final ImageMode mode;
  final ImageCrop? crop;
  final double? alpha; // 0.0 - 1.0 (will be multiplied by 100000)
  final OpenXmlColor? duotoneColor;

  ImageBackground(
    this.imagePath, {
    ImageMode? mode,
    this.crop,
    this.alpha,
    this.duotoneColor,
  }) : mode = mode ?? ImageStretchMode();
}

class Slide {
  final int index;
  final List<String> _titles = [];
  final List<String> _texts = [];
  SlideBackground? _background;
  SlideTransition? _transition;
  String? _notes;
  final List<SlideElement> _elements = [];
  final List<Comment> _comments = [];

  List<String> get titles => _titles;
  List<String> get texts => _texts;
  List<SlideElement> get elements => _elements;
  List<Comment> get comments => List.unmodifiable(_comments);
  SlideBackground? get background => _background;
  SlideTransition? get transition => _transition;
  String? get notes => _notes;

  Slide(this.index);

  void addNote(String text) {
    _notes = text;
  }

  void addComment(
    String text, {
    String author = 'Author',
    String? initials,
    DateTime? date,
  }) {
    final comment = Comment(
      id: _comments.length + 1, // Local ID for now
      text: text,
      author: author,
      initials: initials,
      date: date,
    );
    _comments.add(comment);
  }

  static Future<Slide?> parse(
    OoxmlPackage package,
    String partName,
    int index,
  ) async {
    if (!await package.hasPart(partName)) return null;
    final xml = await package.readPartAsString(partName);
    final document = XmlDocument.parse(xml);

    final slide = Slide(index);

    // Parsing logic for titles/texts remains same
    final shapes = document.findAllElements('p:sp');
    for (final sp in shapes) {
      final txBody = sp.findAllElements('p:txBody').firstOrNull;
      if (txBody != null) {
        final buffer = StringBuffer();
        for (final t in txBody.findAllElements('a:t')) {
          buffer.write(t.innerText);
        }
        final text = buffer.toString();

        bool isTitle = false;
        final nvSpPr = sp.findAllElements('p:nvSpPr').firstOrNull;
        if (nvSpPr != null) {
          final ph = nvSpPr.findAllElements('p:ph').firstOrNull;
          if (ph != null) {
            final type = ph.getAttribute('type');
            if (type == 'title' || type == 'ctrTitle') {
              isTitle = true;
            }
          }
        }

        if (text.isNotEmpty) {
          if (isTitle) {
            slide._titles.add(text);
          } else {
            slide._texts.add(text);
          }
        }
      }
    }

    // Parse background if present (p:bg)
    final bgElement = document.findAllElements('p:bg').firstOrNull;
    if (bgElement != null) {
      final solidFill = bgElement.findAllElements('a:solidFill').firstOrNull;
      if (solidFill != null) {
        final srgbClr = solidFill.findAllElements('a:srgbClr').firstOrNull;
        if (srgbClr != null) {
          final val = srgbClr.getAttribute('val');
          if (val != null) {
            slide.setBackground(SolidColorBackground(OpenXmlColor(val)));
          }
        }
      }
      // Image background parsing (blipFill) could be added here
      // But resolving the image path from relationship is complex without passing rId map
    }

    return slide;
  }

  void addTitle(String text) {
    _titles.add(text);
  }

  void addText(String text) {
    _texts.add(text);
  }

  /// Adds a text box to the slide.
  void addTextBox({
    required String text,
    int? x,
    int? y,
    int? width,
    int? height,
    int? fontSize,
    bool isBold = false,
    bool isItalic = false,
    String? color,
  }) {
    _elements.add(
      SlideTextBox(
        text: text,
        x: x,
        y: y,
        width: width,
        height: height,
        fontSize: fontSize,
        isBold: isBold,
        isItalic: isItalic,
        color: color,
      ),
    );
  }

  /// Adds an image to the slide at the specified position and size.
  /// Size defaults to approx 200x200 pixels if not provided.
  /// Dimensions are in EMUs (1 inch = 914400 EMUs).
  void addImage({
    required String path,
    int? x,
    int? y,
    int? width,
    int? height,
  }) {
    _elements.add(
      SlideImage(path: path, x: x, y: y, width: width, height: height),
    );
  }

  /// Adds a video to the slide.
  /// Note: The video file will be embedded in the package.
  /// PPTX requires a preview image for the video typically, but basic structure
  /// can rely on just the media relationship usually for simple embedding.
  /// For now, this treats it similarly to an image but with specific relationship type in Presentation.
  void addVideo({
    required String path,
    int? x,
    int? y,
    int? width,
    int? height,
  }) {
    _elements.add(
      SlideVideo(path: path, x: x, y: y, width: width, height: height),
    );
  }

  /// Sets the background of the slide.
  void setBackground(SlideBackground bg) {
    _background = bg;
  }

  /// Sets the transition of the slide.
  void setTransition(SlideTransition transition) {
    _transition = transition;
  }

  /// Collects all media paths used in this slide (background + images + videos)
  Set<String> getAllReferencedMediaPaths() {
    final paths = <String>{};
    if (_background is ImageBackground) {
      paths.add((_background as ImageBackground).imagePath);
    }
    for (final element in _elements) {
      if (element is SlideImage) {
        paths.add(element.path);
      } else if (element is SlideVideo) {
        paths.add(element.path);
      }
    }
    return paths;
  }

  Set<String> getAllReferencedHyperlinks() {
    final links = <String>{};
    for (final element in _elements) {
      if (element is SlideTextBox) {
        for (final run in element.runs) {
          if (run.url != null) {
            links.add(run.url!);
          }
        }
      }
    }
    return links;
  }

  void build(
    XmlBuilder builder, {
    Map<String, String>? relIds,
    int? slideWidth,
    int? slideHeight,
    Map<String, ({int width, int height})>? imageDimensions,
  }) {
    builder.element(
      'p:sld',
      namespaces: {
        'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
            'r',
      },
      nest: () {
        builder.p_ct_commonslidedata(
          tagName: 'cSld',
          children: (b) {
            // Background Element <p:bg>
            if (_background != null) {
              _buildBackground(
                b,
                relIds,
                slideWidth: slideWidth,
                slideHeight: slideHeight,
                imageDimensions: imageDimensions,
              );
            }

            b.p_ct_groupshape(
              tagName: 'spTree',
              children: (b) {
                b.p_ct_groupshapenonvisual(
                  tagName: 'nvGrpSpPr',
                  children: (b) {
                    b.element(
                      'p:cNvPr',
                      nest: () {
                        b.attribute('id', '1');
                        b.attribute('name', '');
                      },
                    );
                    b.element('p:cNvGrpSpPr');
                    b.element('p:nvPr');
                  },
                );
                b.element('p:grpSpPr');

                var shapeId = 2;

                // Render Elements
                for (var i = 0; i < _elements.length; i++) {
                  final element = _elements[i];
                  if (element is SlideImage) {
                    final rId = relIds?[element.path];
                    if (rId != null) {
                      _buildImage(b, shapeId++, rId, element, i + 1);
                    }
                  } else if (element is SlideTextBox) {
                    _buildTextBox(b, shapeId++, element, relIds);
                  } else if (element is SlideVideo) {
                    final rId = relIds?[element.path];
                    // Also need media ID, but typically simplified embedding uses specific relationship.
                    // For now, attempting to render as a picture frame pointing to the video media relation
                    // is a common strategy for "Movies" in older PPT versions, but newer ones use p:videoFile.
                    // However, implementing full video container is complex.
                    // We will use p:pic with videoFile extension if possible or just standard p:pic linking to media.
                    // Actually, simple "Link to video" often behaves like an image.
                    if (rId != null) {
                      _buildVideo(b, shapeId++, rId, element, i + 1);
                    }
                  }
                }

                // Render Legacy Titles
                for (final title in _titles) {
                  _buildLegacyShape(
                    b,
                    shapeId++,
                    title,
                    0,
                    0,
                    9144000,
                    1500000,
                    fontSize: 4000,
                    isTitle: true,
                  );
                }

                // Render Legacy Texts
                for (var i = 0; i < _texts.length; i++) {
                  final yOffset = 2000000 + (i * 1000000);
                  _buildLegacyShape(
                    b,
                    shapeId++,
                    _texts[i],
                    1000000,
                    yOffset,
                    7144000,
                    1000000,
                  );
                }
              },
            );
          },
        );

        // Transition Element <p:transition> (Sibling of cSld)
        if (_transition != null) {
          _transition!.build(builder);
        }
      },
    );
  }

  void _buildBackground(
    XmlBuilder b,
    Map<String, String>? imageRelIds, {
    int? slideWidth,
    int? slideHeight,
    Map<String, ({int width, int height})>? imageDimensions,
  }) => b.element(
      'p:bg',
      nest: () {
        b.element(
          'p:bgPr',
          nest: () {
            final bg = _background;
            if (bg is SolidColorBackground) {
              b.element(
                'a:solidFill',
                nest: () {
                  b.element(
                    'a:srgbClr',
                    nest: () {
                      b.attribute('val', bg.color.value);
                    },
                  );
                },
              );
            } else if (bg is GradientBackground) {
              b.element(
                'a:gradFill',
                nest: () {
                  if (bg.rotateWithShape != null) {
                    b.attribute(
                      'rotWithShape',
                      bg.rotateWithShape! ? '1' : '0',
                    );
                  }
                  if (bg.flip != null && bg.flip != D_ST_TileFlipMode.none) {
                    b.attribute('flip', bg.flip!.value);
                  }

                  b.element(
                    'a:gsLst',
                    nest: () {
                      for (final stop in bg.stops) {
                        b.element(
                          'a:gs',
                          nest: () {
                            b.attribute('pos', '${stop.position}');
                            b.element(
                              'a:srgbClr',
                              nest: () {
                                b.attribute('val', stop.color.value);
                              },
                            );
                          },
                        );
                      }
                    },
                  );

                  if (bg is LinearGradientBackground) {
                    b.element(
                      'a:lin',
                      nest: () {
                        // XML angle: 60000 * degrees.
                        // Keynote/PPTX usually maps 45 deg to 315 deg (Counter-Clockwise?)
                        // User fixed file: 45 deg visual -> 18900000 (315 deg).
                        // Formula: (360 - angle) % 360.
                        final angleMod = (360 - bg.angle) % 360;
                        final angleVal = angleMod * 60000;
                        b.attribute('ang', '$angleVal');
                        b.attribute('scaled', bg.scaled ? '1' : '0');
                      },
                    );
                  } else if (bg is RadialGradientBackground) {
                    b.element(
                      'a:path',
                      nest: () {
                        b.attribute('path', bg.pathType.value);
                        b.element(
                          'a:fillToRect',
                          nest: () {
                            b.attribute('l', '50000');
                            b.attribute('t', '50000');
                            b.attribute('r', '50000');
                            b.attribute('b', '50000');
                          },
                        );
                      },
                    );
                  }
                },
              );
            } else if (bg is ImageBackground) {
              final rId = imageRelIds?[bg.imagePath];
              if (rId != null) {
                b.element(
                  'a:blipFill',
                  nest: () {
                    b.element(
                      'a:blip',
                      nest: () {
                        b.attribute('r:embed', rId);

                        // Transparency
                        if (bg.alpha != null) {
                          b.element(
                            'a:alphaModFix',
                            nest: () {
                              final amt = (bg.alpha! * 100000).round();
                              b.attribute('amt', '$amt');
                            },
                          );
                        }

                        // Duotone
                        if (bg.duotoneColor != null) {
                          b.element(
                            'a:duotone',
                            nest: () {
                              b.element(
                                'a:prstClr',
                                nest: () => b.attribute('val', 'black'),
                              );
                              b.element(
                                'a:srgbClr',
                                nest: () =>
                                    b.attribute('val', bg.duotoneColor!.value),
                              );
                            },
                          );
                        }
                      },
                    );

                    // Crop (srcRect)
                    if (bg.crop != null) {
                      b.element(
                        'a:srcRect',
                        nest: () {
                          if (bg.crop!.l > 0) b.attribute('l', '${bg.crop!.l}');
                          if (bg.crop!.t > 0) b.attribute('t', '${bg.crop!.t}');
                          if (bg.crop!.r > 0) b.attribute('r', '${bg.crop!.r}');
                          if (bg.crop!.b > 0) b.attribute('b', '${bg.crop!.b}');
                        },
                      );
                    }

                    // Mode: Stretch or Tile
                    final mode = bg.mode;
                    if (mode is ImageStretchMode) {
                      b.element(
                        'a:stretch',
                        nest: () {
                          b.element('a:fillRect');
                        },
                      );
                    } else if (mode is ImageTileMode) {
                      b.element(
                        'a:tile',
                        nest: () {
                          b.attribute('tx', '${mode.tx}');
                          b.attribute('ty', '${mode.ty}');
                          b.attribute('sx', '${mode.sx}');
                          b.attribute('sy', '${mode.sy}');
                          b.attribute('algn', mode.align.value);
                          if (mode.flip != D_ST_TileFlipMode.none) {
                            b.attribute('flip', mode.flip.value);
                          }
                        },
                      );
                    }
                  },
                );
              }
            }
          },
        );
      },
    );

  void _buildLegacyShape(
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

  void _buildTextBox(
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
            b.element('p:cNvSpPr');
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
            if (textBox.x != null &&
                textBox.y != null &&
                textBox.width != null &&
                textBox.height != null) {
              b.element(
                'a:xfrm',
                nest: () {
                  b.element(
                    'a:off',
                    nest: () {
                      b.attribute('x', '${textBox.x}');
                      b.attribute('y', '${textBox.y}');
                    },
                  );
                  b.element(
                    'a:ext',
                    nest: () {
                      b.attribute('cx', '${textBox.width}');
                      b.attribute('cy', '${textBox.height}');
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
            b.element('a:bodyPr');
            b.element('a:lstStyle');
            b.element(
              'a:p',
              nest: () {
                for (final run in textBox.runs) {
                  b.element(
                    'a:r',
                    nest: () {
                      b.element(
                        'a:rPr',
                        nest: () {
                          if (run.fontSize != null) {
                            b.attribute('sz', '${run.fontSize}');
                          }
                          b.attribute('dirty', '0');
                          if (run.isBold) b.attribute('b', '1');
                          if (run.isItalic) b.attribute('i', '1');
                          b.element(
                            'a:solidFill',
                            nest: () {
                              b.element(
                                'a:srgbClr',
                                nest: () {
                                  b.attribute('val', run.color ?? '000000');
                                },
                              );
                            },
                          );
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

  void _buildImage(
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

  void _buildVideo(
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
}
