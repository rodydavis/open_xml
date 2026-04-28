import 'package:xml/xml.dart';
import '../slide.dart'; // For SlideBackground and related classes
import '../../dml/dml.g.dart';

void buildSlideBackground(
  XmlBuilder b,
  SlideBackground background,
  Map<String, String>? imageRelIds, {
  int? slideWidth,
  int? slideHeight,
  Map<String, ({int width, int height})>? imageDimensions,
}) {
  b.element(
    'p:bg',
    nest: () {
      b.element(
        'p:bgPr',
        nest: () {
          final bg = background;
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
                  b.attribute('rotWithShape', bg.rotateWithShape! ? '1' : '0');
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
                  b.attribute('rotWithShape', '1');
                  b.element(
                    'a:blip',
                    nest: () {
                      b.attribute('r:embed', rId);

                      if (bg.alpha != null) {
                        b.element(
                          'a:alphaModFix',
                          nest: () {
                            final amt = (bg.alpha! * 100000).round();
                            b.attribute('amt', '$amt');
                          },
                        );
                      }

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
                  } else {
                    b.element(
                      'a:srcRect',
                      nest: () {
                        b.attribute('l', '0');
                        b.attribute('t', '0');
                        b.attribute('r', '0');
                        b.attribute('b', '0');
                      },
                    );
                  }

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
}
