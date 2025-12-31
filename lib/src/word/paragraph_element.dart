import 'package:xml/xml.dart';
import 'run.dart';

abstract class ParagraphElement {
  void build(XmlBuilder builder, {Map<String, String>? aliases});
}

class ParagraphHyperlink implements ParagraphElement {
  // Relationship ID (determined at build time usually, but we need to pass strict IDs or handle mapping)
  // Actually, we usually pass the URL and let the document generator handle IDs.
  // But build() needs the ID.
  final String url;
  final List<Run> runs = [];

  ParagraphHyperlink(this.url);

  void addRun(Run run) {
    runs.add(run);
  }

  @override
  void build(XmlBuilder builder, {Map<String, String>? aliases}) {
    final rId = aliases?[url] ?? '';
    // If no rId found, maybe skip or log? For now assuming it exists.

    // <w:hyperlink r:id="rId1">
    builder.element(
      'w:hyperlink',
      nest: () {
        if (rId.isNotEmpty) {
          builder.attribute('r:id', rId);
        }
        for (final run in runs) {
          run.build(builder);
        }
      },
    );
  }
}

class ParagraphImage implements ParagraphElement {
  final String path;
  final int width; // EMUs
  final int height; // EMUs

  ParagraphImage(this.path, {this.width = 0, this.height = 0});

  @override
  void build(XmlBuilder builder, {Map<String, String>? aliases}) {
    final rId = aliases?[path];
    if (rId == null) return;

    // Images are wrapped in a run <w:r><w:drawing>...</w:drawing></w:r>
    builder.element(
      'w:r',
      nest: () {
        builder.element(
          'w:drawing',
          nest: () {
            builder.element(
              'wp:inline',
              nest: () {
                // Extent
                builder.element(
                  'wp:extent',
                  nest: () {
                    builder.attribute('cx', '$width');
                    builder.attribute('cy', '$height');
                  },
                );
                // DocPr
                builder.element(
                  'wp:docPr',
                  nest: () {
                    builder.attribute('id', '1'); // unique id?
                    builder.attribute('name', 'Picture 1');
                  },
                );
                // cNvGraphicFramePr
                builder.element(
                  'a:graphic',
                  nest: () {
                    builder.element(
                      'a:graphicData',
                      nest: () {
                        builder.attribute(
                          'uri',
                          'http://schemas.openxmlformats.org/drawingml/2006/picture',
                        );
                        builder.element(
                          'pic:pic',
                          nest: () {
                            builder.element(
                              'pic:nvPicPr',
                              nest: () {
                                builder.element(
                                  'pic:cNvPr',
                                  nest: () {
                                    builder.attribute('id', '0');
                                    builder.attribute('name', 'Picture');
                                  },
                                );
                                builder.element('pic:cNvPicPr');
                              },
                            );
                            builder.element(
                              'pic:blipFill',
                              nest: () {
                                builder.element(
                                  'a:blip',
                                  nest: () {
                                    builder.attribute('r:embed', rId);
                                  },
                                );
                                builder.element(
                                  'a:stretch',
                                  nest: () {
                                    builder.element('a:fillRect');
                                  },
                                );
                              },
                            );
                            builder.element(
                              'pic:spPr',
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
                                        builder.attribute('cx', '$width');
                                        builder.attribute('cy', '$height');
                                      },
                                    );
                                  },
                                );
                                builder.element(
                                  'a:prstGeom',
                                  nest: () {
                                    builder.attribute('prst', 'rect');
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
          },
        );
      },
    );
  }
}
