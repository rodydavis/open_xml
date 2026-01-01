import 'dart:typed_data'; // Add this
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:open_xml/src/util/media_utils.dart'; // Add this

import 'package:file/file.dart';

import 'package:open_xml/src/package/package.dart';
import 'package:open_xml/src/pml/pml_builder.g.dart';
import 'package:xml/xml.dart';

import 'slide.dart';

class _CommentAuthor {
  final int id;
  final String name;
  final String initials;
  final int lastIndex;
  final int clrIdx;

  _CommentAuthor(
    this.id,
    this.name,
    this.initials,
    this.lastIndex,
    this.clrIdx,
  );
}

enum PresentationAspectRatio {
  standard_4_3(9144000, 6858000),
  widescreen_16_9(12192000, 6858000),
  widescreen_16_10(10972800, 6858000),
  custom(0, 0);

  final int width;
  final int height;

  const PresentationAspectRatio(this.width, this.height);
}

class Presentation {
  final OoxmlPackage _package;
  final List<Slide> _slides = [];
  final _log = Logger('Presentation');
  final Map<int, String> _slideLayouts =
      {}; // slideIndex (0-based) -> layoutName or filename
  final Map<String, String> _layoutNames = {}; // layoutName -> layoutFilename
  final Map<String, String> _layoutFilenames =
      {}; // layoutFilename -> layoutName

  List<Slide> get slides => _slides;

  /// Returns a list of paths to all media files in the presentation (e.g. 'ppt/media/image1.png').
  Future<List<String>> getMediaFiles() => _package.listParts('ppt/media');

  Presentation._(this._package);

  /// Creates a new empty Presentation.
  static Future<Presentation> create(FileSystem fs) async {
    final package = await OoxmlPackage.create(fs);
    return Presentation._(package);
  }

  /// Opens an existing Presentation.
  static Future<Presentation> open(File file) async {
    final package = await OoxmlPackage.open(file);
    final pres = Presentation._(package);
    await pres._parse();
    await pres._parseLayouts();
    return pres;
  }

  int _slideWidth = 9144000;
  int _slideHeight = 6858000;

  int get slideWidth => _slideWidth;
  int get slideHeight => _slideHeight;

  /// Sets the dimensions of the presentation slides in EMUs (English Metric Units).
  /// 1 inch = 914400 EMUs.
  /// 1 cm = 360000 EMUs.
  void setDimensions(int width, int height) {
    _slideWidth = width;
    _slideHeight = height;
  }

  /// Sets the aspect ratio of the presentation.
  /// Predefined ratios set standard dimensions.
  void setAspectRatio(PresentationAspectRatio ratio) {
    if (ratio == PresentationAspectRatio.custom) return;
    _slideWidth = ratio.width;
    _slideHeight = ratio.height;
  }

  Future<void> _parse() async {
    // Read presentation.xml to find slides
    if (!await _package.hasPart('ppt/presentation.xml')) return;
    final xml = await _package.readPartAsString('ppt/presentation.xml');
    final document = XmlDocument.parse(xml);

    // Parse slide size
    final sldSz = document.findAllElements('p:sldSz').firstOrNull;
    if (sldSz != null) {
      final cx = sldSz.getAttribute('cx');
      final cy = sldSz.getAttribute('cy');
      if (cx != null) {
        final parsedCx = int.tryParse(cx);
        if (parsedCx != null) _slideWidth = parsedCx;
      }
      if (cy != null) {
        final parsedCy = int.tryParse(cy);
        if (parsedCy != null) _slideHeight = parsedCy;
      }
    }

    // Find slide ID list
    // p:presentation -> p:sldIdLst -> p:sldId
    final sldIdLst = document.findAllElements('p:sldIdLst').firstOrNull;
    if (sldIdLst != null) {
      for (final sldId in sldIdLst.findAllElements('p:sldId')) {
        var rId = sldId.getAttribute('r:id');
        rId ??= sldId.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        );

        // Need to resolve rId to slide path.
        final partName = await _resolveSlidePath(rId);

        if (partName != null) {
          final slide = await Slide.parse(
            _package,
            partName,
            _slides.length + 1,
          );
          if (slide != null) {
            _slides.add(slide);
          }
        }
      }
    }
  }

  Future<String?> _resolveSlidePath(String? rId) async {
    if (rId == null) return null;
    // Relations are in ppt/_rels/presentation.xml.rels
    if (!await _package.hasPart('ppt/_rels/presentation.xml.rels')) return null;

    final relsXml = await _package.readPartAsString(
      'ppt/_rels/presentation.xml.rels',
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
    // Target likely "slides/slideN.xml"
    if (target != null && !target.startsWith('/')) {
      target = 'ppt/$target';
    } else if (target != null && target.startsWith('/')) {
      target = target.substring(1);
    }
    return target;
  }

  Future<void> _parseLayouts() async {
    // Basic implementation: iterate known pattern or check slideLayouts directory
    // Since we don't have full relationships graph parsed always, we can scan the directory
    final parts = await _package.listParts('ppt/slideLayouts');
    for (final part in parts) {
      if (!part.endsWith('.xml')) continue;
      final filename = part.split('/').last;

      final xml = await _package.readPartAsString(part);
      // <p:cSld name="Title Slide">
      final match = RegExp(r'<p:cSld[^>]*name="([^"]+)"').firstMatch(xml);
      if (match != null) {
        final name = match.group(1)!;
        _layoutNames[name] = filename;
        _layoutFilenames[filename] = name;
      } else {
        // Fallback
        _layoutFilenames[filename] = filename;
      }
    }
  }

  /// Adds a slide to the presentation.
  /// [layout] can be the layout name (e.g. "Title Slide") or filename (e.g. "slideLayout1.xml").
  Slide addSlide({String? layout}) {
    final slide = Slide(_slides.length + 1);
    _slides.add(slide);
    if (layout != null) {
      // Resolve name to filename if possible
      final filename = _layoutNames[layout] ?? layout;
      _slideLayouts[_slides.length - 1] = filename;
    }
    return slide;
  }

  /// Saves the presentation to the specified [outputFile].
  Future<void> save(File outputFile, {http.Client? httpClient}) async {
    _log.info('Saving presentation to ${outputFile.path}');
    // Generate missing boilerplate files
    await _writeCoreProps();
    await _writeAppProps();
    await _writePresProps();
    await _writeViewProps();
    await _writeTableStyles();

    final hasNotes = _slides.any((s) => s.notes != null);
    if (hasNotes) {
      await _writeNotesMaster();
      await _writeNotesMasterRelationships();
    }

    // Pre-check for existence of optional parts to avoid async in builder
    final hasCore = await _package.hasPart('docProps/core.xml');
    final hasApp = await _package.hasPart('docProps/app.xml');
    final hasPresProps = await _package.hasPart('ppt/presProps.xml');
    final hasViewProps = await _package.hasPart('ppt/viewProps.xml');
    final hasTableStyles = await _package.hasPart('ppt/tableStyles.xml');
    final hasPresentationRels = await _package.hasPart(
      'ppt/_rels/presentation.xml.rels',
    );
    final hasCommentAuthors = await _package.hasPart('ppt/commentAuthors.xml');
    final hasComments = await _package.hasPart('ppt/comments.xml');
    final hasNotesMaster = await _package.hasPart(
      'ppt/notesMasters/notesMaster1.xml',
    );
    final notesSlides = await _package.listParts('ppt/notesSlides');
    final startThemeFiles = await _package.listParts('ppt/theme');

    // Calculate generated comments and authors
    final slidesWithComments = _slides
        .where((s) => s.comments.isNotEmpty)
        .toList();
    final hasGeneratedComments = slidesWithComments.isNotEmpty;
    final generatedAuthors = <String, _CommentAuthor>{};
    if (hasGeneratedComments) {
      for (final slide in slidesWithComments) {
        for (final comment in slide.comments) {
          final key = '${comment.author}_${comment.initials}';
          if (!generatedAuthors.containsKey(key)) {
            generatedAuthors[key] = _CommentAuthor(
              generatedAuthors.length,
              comment.author,
              comment.initials,
              1,
              generatedAuthors.length % 10,
            );
          }
        }
      }
    }

    // Collect media paths for Content Types
    final globalMediaPaths = <String>{};
    for (final slide in _slides) {
      globalMediaPaths.addAll(slide.getAllReferencedMediaPaths());
    }

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
        // Default image types
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'png');
            ctBuilder.attribute('ContentType', 'image/png');
          },
        );
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'jpeg');
            ctBuilder.attribute('ContentType', 'image/jpeg');
          },
        );
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'jpg');
            ctBuilder.attribute('ContentType', 'image/jpeg');
          },
        );
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'bmp');
            ctBuilder.attribute('ContentType', 'image/bmp');
          },
        );
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'gif');
            ctBuilder.attribute('ContentType', 'image/gif');
          },
        );
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'tif');
            ctBuilder.attribute('ContentType', 'image/tif');
          },
        );
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'pdf');
            ctBuilder.attribute('ContentType', 'application/pdf');
          },
        );
        ctBuilder.element(
          'Default',
          nest: () {
            ctBuilder.attribute('Extension', 'mov');
            ctBuilder.attribute('ContentType', 'application/movie');
          },
        );
        // Add extensions for any media files we just added that might not be default
        final defaultExtensions = {
          'png',
          'jpeg',
          'jpg',
          'bmp',
          'gif',
          'tif',
          'pdf',
          'mov',
          'xml',
          'rels',
        };
        for (final path in globalMediaPaths) {
          final ext = path.split('.').last.toLowerCase();
          if (!defaultExtensions.contains(ext)) {
            defaultExtensions.add(ext);
            ctBuilder.element(
              'Default',
              nest: () {
                ctBuilder.attribute('Extension', ext);
                // Simple fallback content type mapping
                String contentType = 'application/octet-stream';
                if (ext == 'svg') {
                  contentType = 'image/svg+xml';
                } else if (ext == 'mp4') {
                  contentType = 'video/mp4';
                }

                ctBuilder.attribute('ContentType', contentType);
              },
            );
          }
        }

        // Presentation
        ctBuilder.element(
          'Override',
          nest: () {
            ctBuilder.attribute('PartName', '/ppt/presentation.xml');
            ctBuilder.attribute(
              'ContentType',
              'application/vnd.openxmlformats-officedocument.presentationml.presentation.main+xml',
            );
          },
        );

        // Core Props
        if (hasCore) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/docProps/core.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-package.core-properties+xml',
              );
            },
          );
        }
        // App Props
        if (hasApp) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/docProps/app.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.extended-properties+xml',
              );
            },
          );
        }
        // Pres Props
        if (hasPresProps) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/ppt/presProps.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.presProps+xml',
              );
            },
          );
        }
        // View Props
        if (hasViewProps) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/ppt/viewProps.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.viewProps+xml',
              );
            },
          );
        }
        // Table Styles
        if (hasTableStyles) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/ppt/tableStyles.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.tableStyles+xml',
              );
            },
          );
        }
        if (hasNotesMaster) {
          // Slide Notes Master
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute(
                'PartName',
                '/ppt/notesMasters/notesMaster1.xml',
              );
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.notesMaster+xml',
              );
            },
          );
        }

        // Collect all notes slide paths (existing on disk + to be generated)
        final notesSlidePaths = notesSlides.toSet();
        for (var i = 0; i < _slides.length; i++) {
          if (_slides[i].notes != null) {
            notesSlidePaths.add('ppt/notesSlides/notesSlide${i + 1}.xml');
          }
        }
        for (final noteSlide in notesSlidePaths) {
          if (!noteSlide.endsWith('.xml')) continue;
          final partName = noteSlide.startsWith('/')
              ? noteSlide
              : '/$noteSlide';
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', partName);
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.notesSlide+xml',
              );
            },
          );
        }

        // Slide Master
        ctBuilder.element(
          'Override',
          nest: () {
            ctBuilder.attribute(
              'PartName',
              '/ppt/slideMasters/slideMaster1.xml',
            );
            ctBuilder.attribute(
              'ContentType',
              'application/vnd.openxmlformats-officedocument.presentationml.slideMaster+xml',
            );
          },
        );
        // Slide Layouts
        if (_layoutFilenames.isNotEmpty) {
          for (final filename in _layoutFilenames.keys) {
            ctBuilder.element(
              'Override',
              nest: () {
                ctBuilder.attribute('PartName', '/ppt/slideLayouts/$filename');
                ctBuilder.attribute(
                  'ContentType',
                  'application/vnd.openxmlformats-officedocument.presentationml.slideLayout+xml',
                );
              },
            );
          }
        } else {
          // Default fallback
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute(
                'PartName',
                '/ppt/slideLayouts/slideLayout1.xml',
              );
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.slideLayout+xml',
              );
            },
          );
        }
        // Theme
        // Always add theme1 if it doesn't exist in the list yet (strictly speaking theme1 is generated later if missing)
        // But we check existing themes
        final themeFiles = startThemeFiles.toSet();
        if (!themeFiles.contains('ppt/theme/theme1.xml')) {
          themeFiles.add('ppt/theme/theme1.xml');
        }

        for (final themeFile in themeFiles) {
          if (!themeFile.endsWith('.xml')) continue;
          final partName = themeFile.startsWith('/')
              ? themeFile
              : '/$themeFile';
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', partName);
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.theme+xml',
              );
            },
          );
        }
        // Slides
        for (var i = 0; i < _slides.length; i++) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/ppt/slides/slide${i + 1}.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.slide+xml',
              );
            },
          );
        }

        // Add explicit overrides for other known XML parts to avoid default application/xml
        if (hasCommentAuthors || hasGeneratedComments) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/ppt/commentAuthors.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.commentAuthors+xml',
              );
            },
          );
        }
        if (hasComments) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/ppt/comments.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.presentationml.comments+xml',
              );
            },
          );
        }
        // Generated comments per slide
        for (var i = 0; i < _slides.length; i++) {
          if (_slides[i].comments.isNotEmpty) {
            ctBuilder.element(
              'Override',
              nest: () {
                ctBuilder.attribute(
                  'PartName',
                  '/ppt/comments/comment${i + 1}.xml',
                );
                ctBuilder.attribute(
                  'ContentType',
                  'application/vnd.openxmlformats-officedocument.presentationml.comments+xml',
                );
              },
            );
          }
        }
      },
    );
    contentTypes.write(ctBuilder.buildDocument().toXmlString());
    await contentTypes.close();

    for (var i = 0; i < _slides.length; i++) {
      final slide = _slides[i];
      if (slide.notes != null) {
        await _writeNotesSlide(i + 1, slide.notes!);
        await _writeNotesSlideRelationships(i + 1);
      }
    }

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
              'http://schemas.openxmlformats.org/package/2006/relationships/metadata/core-properties',
            );
            relsBuilder.attribute('Target', 'docProps/core.xml');
          },
        );
        relsBuilder.element(
          'Relationship',
          nest: () {
            relsBuilder.attribute('Id', 'rId2');
            relsBuilder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/extended-properties',
            );
            relsBuilder.attribute('Target', 'docProps/app.xml');
          },
        );
        relsBuilder.element(
          'Relationship',
          nest: () {
            relsBuilder.attribute('Id', 'rId3');
            relsBuilder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument',
            );
            relsBuilder.attribute('Target', 'ppt/presentation.xml');
          },
        );
      },
    );
    rels.write(relsBuilder.buildDocument().toXmlString());
    await rels.close();

    // 3. ppt/_rels/presentation.xml.rels (Build map here)
    String masterRelId = 'rId1'; // Default
    final slideRelIds = <int, String>{}; // index -> rId
    final currentRels = <String, XmlElement>{}; // Id -> Element
    int maxId = 0;
    String? notesMasterRelId;

    if (hasPresentationRels) {
      final oldRelsXml = await _package.readPartAsString(
        'ppt/_rels/presentation.xml.rels',
      );
      final oldRelsDoc = XmlDocument.parse(oldRelsXml);
      for (final rel in oldRelsDoc.findAllElements('Relationship')) {
        final id = rel.getAttribute('Id')!;
        final type = rel.getAttribute('Type')!;

        // Filter out slides as we are rewriting them
        if (type.endsWith('/slide')) continue;

        // Store mapped rel
        currentRels[id] = rel;

        // Track max ID number
        if (id.startsWith('rId')) {
          final num = int.tryParse(id.substring(3));
          if (num != null && num > maxId) maxId = num;
        }
      }
    }

    final pRelsBuilder = XmlBuilder();
    pRelsBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    pRelsBuilder.element(
      'Relationships',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/relationships': '',
      },
      nest: () {
        // Add preserved rels
        for (final rel in currentRels.values) {
          pRelsBuilder.element(
            'Relationship',
            nest: () {
              for (final attr in rel.attributes) {
                pRelsBuilder.attribute(attr.name.local, attr.value);
              }
            },
          );

          if (rel.getAttribute('Type')!.endsWith('/slideMaster')) {
            masterRelId = rel.getAttribute('Id')!;
          }
          if (rel.getAttribute('Type')!.endsWith('/notesMaster')) {
            notesMasterRelId = rel.getAttribute('Id');
          }
        }

        // If no master found, and we are adding one (boilerplate), add relationship
        // But we only add boilerplate master if missing, so if missing in rels but present in package...
        // Assuming if we write master we need rel.
        if (!currentRels.values.any(
          (r) => r.getAttribute('Type')!.endsWith('/slideMaster'),
        )) {
          maxId++;
          masterRelId = 'rId$maxId';
          pRelsBuilder.element(
            'Relationship',
            nest: () {
              pRelsBuilder.attribute('Id', masterRelId);
              pRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster',
              );
              pRelsBuilder.attribute('Target', 'slideMasters/slideMaster1.xml');
            },
          );
        }

        // Theme
        if (!currentRels.values.any(
          (r) => r.getAttribute('Type')!.endsWith('/theme'),
        )) {
          maxId++;
          pRelsBuilder.element(
            'Relationship',
            nest: () {
              pRelsBuilder.attribute('Id', 'rId$maxId');
              pRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme',
              );
              pRelsBuilder.attribute('Target', 'theme/theme1.xml');
            },
          );
        }

        // Pres Props
        if (!currentRels.values.any(
          (r) => r.getAttribute('Type')!.endsWith('/presProps'),
        )) {
          maxId++;
          pRelsBuilder.element(
            'Relationship',
            nest: () {
              pRelsBuilder.attribute('Id', 'rId$maxId');
              pRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/presProps',
              );
              pRelsBuilder.attribute('Target', 'presProps.xml');
            },
          );
        }

        // View Props
        if (!currentRels.values.any(
          (r) => r.getAttribute('Type')!.endsWith('/viewProps'),
        )) {
          maxId++;
          pRelsBuilder.element(
            'Relationship',
            nest: () {
              pRelsBuilder.attribute('Id', 'rId$maxId');
              pRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/viewProps',
              );
              pRelsBuilder.attribute('Target', 'viewProps.xml');
            },
          );
        }

        // Table Styles
        if (!currentRels.values.any(
          (r) => r.getAttribute('Type')!.endsWith('/tableStyles'),
        )) {
          maxId++;
          pRelsBuilder.element(
            'Relationship',
            nest: () {
              pRelsBuilder.attribute('Id', 'rId$maxId');
              pRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/tableStyles',
              );
              pRelsBuilder.attribute('Target', 'tableStyles.xml');
            },
          );
        }

        // Notes Master
        if (hasNotes && notesMasterRelId == null) {
          maxId++;
          notesMasterRelId = 'rId$maxId';
          pRelsBuilder.element(
            'Relationship',
            nest: () {
              pRelsBuilder.attribute('Id', notesMasterRelId!);
              pRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesMaster',
              );
              pRelsBuilder.attribute('Target', 'notesMasters/notesMaster1.xml');
            },
          );
        }

        // Comment Authors
        if (hasGeneratedComments &&
            !currentRels.values.any(
              (r) => r.getAttribute('Type')!.endsWith('/commentAuthors'),
            )) {
          maxId++;
          pRelsBuilder.element(
            'Relationship',
            nest: () {
              pRelsBuilder.attribute('Id', 'rId$maxId');
              pRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/commentAuthors',
              );
              pRelsBuilder.attribute('Target', 'commentAuthors.xml');
            },
          );
        }

        // Add Slides
        for (var i = 0; i < _slides.length; i++) {
          maxId++;
          final sId = 'rId$maxId';
          slideRelIds[i] = sId;

          pRelsBuilder.element(
            'Relationship',
            nest: () {
              pRelsBuilder.attribute('Id', sId);
              pRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide',
              );
              pRelsBuilder.attribute('Target', 'slides/slide${i + 1}.xml');
            },
          );
        }
      },
    );
    final pRels = await _package.createPart('ppt/_rels/presentation.xml.rels');
    pRels.write(pRelsBuilder.buildDocument().toXmlString());
    await pRels.close();

    // 4. ppt/presentation.xml (Using resolved IDs)
    final presentation = await _package.createPart('ppt/presentation.xml');
    final pBuilder = XmlBuilder();
    pBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    pBuilder.element(
      'p:presentation',
      namespaces: {
        'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
            'r',
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
        'http://schemas.openxmlformats.org/officeDocument/2006/math': 'm',
      },
      nest: () {
        pBuilder.element(
          'p:sldMasterIdLst',
          nest: () {
            pBuilder.element(
              'p:sldMasterId',
              nest: () {
                pBuilder.attribute('id', '2147483648');
                pBuilder.attribute('r:id', masterRelId);
              },
            );
          },
        );

        if (notesMasterRelId != null) {
          pBuilder.element(
            'p:notesMasterIdLst',
            nest: () {
              pBuilder.element(
                'p:notesMasterId',
                nest: () {
                  pBuilder.attribute('r:id', notesMasterRelId!);
                },
              );
            },
          );
        }

        pBuilder.p_ct_slideidlist(
          tagName: 'sldIdLst',
          children: (b) {
            for (var i = 0; i < _slides.length; i++) {
              b.element(
                'p:sldId',
                nest: () {
                  b.attribute('id', '${256 + i}');
                  b.attribute('r:id', slideRelIds[i]!);
                },
              );
            }
          },
        );
        pBuilder.element(
          'p:sldSz',
          nest: () {
            pBuilder.attribute('cx', '$_slideWidth');
            pBuilder.attribute('cy', '$_slideHeight');
          },
        );
        pBuilder.element(
          'p:notesSz',
          nest: () {
            pBuilder.attribute('cx', '6858000');
            pBuilder.attribute('cy', '9144000');
          },
        );

        // Default Text Style (required for valid Google Slides file)
        // Default Text Style (required for valid Google Slides file)
        pBuilder.element(
          'p:defaultTextStyle',
          nest: () {
            // Helper to build a level paragraph property
            void buildLvlPPr(String tagName) {
              pBuilder.element(
                tagName,
                nest: () {
                  pBuilder.attribute('marL', '0');
                  pBuilder.attribute('marR', '0');
                  pBuilder.attribute('indent', '0');
                  pBuilder.attribute('algn', 'l');
                  pBuilder.attribute('defTabSz', '914400');
                  pBuilder.attribute('rtl', '0');
                  pBuilder.attribute('fontAlgn', 'auto');
                  pBuilder.attribute('latinLnBrk', '0');
                  pBuilder.attribute('hangingPunct', '0');

                  pBuilder.element(
                    'a:lnSpc',
                    nest: () {
                      pBuilder.element(
                        'a:spcPct',
                        nest: () {
                          pBuilder.attribute('val', '100000');
                        },
                      );
                    },
                  );
                  pBuilder.element(
                    'a:spcBef',
                    nest: () {
                      pBuilder.element(
                        'a:spcPts',
                        nest: () {
                          pBuilder.attribute('val', '0');
                        },
                      );
                    },
                  );
                  pBuilder.element(
                    'a:spcAft',
                    nest: () {
                      pBuilder.element(
                        'a:spcPts',
                        nest: () {
                          pBuilder.attribute('val', '0');
                        },
                      );
                    },
                  );

                  pBuilder.element(
                    'a:defRPr',
                    nest: () {
                      pBuilder.attribute(
                        'lang',
                        'en-US',
                      ); // Keep lang, it's good practice
                      pBuilder.attribute('sz', '1800'); // 18pt default
                      pBuilder.attribute('b', '0');
                      pBuilder.attribute('i', '0');
                      pBuilder.attribute('u', 'none');
                      pBuilder.attribute('strike', 'noStrike');
                      pBuilder.attribute('kern', '1200');

                      pBuilder.element(
                        'a:solidFill',
                        nest: () {
                          pBuilder.element(
                            'a:srgbClr',
                            nest: () {
                              pBuilder.attribute('val', '000000');
                            },
                          );
                        },
                      );

                      pBuilder.element(
                        'a:latin',
                        nest: () {
                          pBuilder.attribute('typeface', 'Calibri');
                        },
                      );
                      pBuilder.element(
                        'a:ea',
                        nest: () {
                          pBuilder.attribute('typeface', 'Calibri');
                        },
                      );
                      pBuilder.element(
                        'a:cs',
                        nest: () {
                          pBuilder.attribute('typeface', 'Calibri');
                        },
                      );
                    },
                  );
                },
              );
            }

            buildLvlPPr('a:defPPr');
            buildLvlPPr('a:lvl1pPr');
            buildLvlPPr('a:lvl2pPr');
            buildLvlPPr('a:lvl3pPr');
            buildLvlPPr('a:lvl4pPr');
            buildLvlPPr('a:lvl5pPr');
            buildLvlPPr('a:lvl6pPr');
            buildLvlPPr('a:lvl7pPr');
            buildLvlPPr('a:lvl8pPr');
            buildLvlPPr('a:lvl9pPr');
          },
        );
      },
    );
    presentation.write(pBuilder.buildDocument().toXmlString());
    await presentation.close();

    // 5. ppt/commentAuthors.xml
    if (hasGeneratedComments) {
      final caPart = await _package.createPart('ppt/commentAuthors.xml');
      final caBuilder = XmlBuilder();
      caBuilder.processing(
        'xml',
        'version="1.0" encoding="UTF-8" standalone="yes"',
      );
      caBuilder.element(
        'p:cmAuthorLst',
        namespaces: {
          'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
          'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
              'r',
        },
        nest: () {
          for (final author in generatedAuthors.values) {
            caBuilder.element(
              'p:cmAuthor',
              nest: () {
                caBuilder.attribute('id', author.id.toString());
                caBuilder.attribute('name', author.name);
                caBuilder.attribute('initials', author.initials);
                caBuilder.attribute('lastIdx', author.lastIndex.toString());
                caBuilder.attribute('clrIdx', author.clrIdx.toString());
              },
            );
          }
        },
      );
      caPart.write(caBuilder.buildDocument().toXmlString());
      await caPart.close();
    }

    // 5. Minimal Theme, Slide Master, Slide Layout (Boilerplate)
    if (!await _package.hasPart('ppt/theme/theme1.xml')) {
      _log.fine('Generating default theme');
      await _writeTheme();
    }
    if (!await _package.hasPart('ppt/slideMasters/slideMaster1.xml')) {
      _log.fine('Generating default slide master');
      await _writeSlideMaster();
    }
    if (!await _package.hasPart('ppt/slideLayouts/slideLayout1.xml')) {
      _log.fine('Generating default slide layout');
      await _writeSlideLayout();
    }

    // 6. Media Copying and Relationship Mapping
    // Collect all unique media from all slides
    // mediaPath -> (extension, bytes)
    final mediaData = <String, ({String ext, Uint8List bytes})>{};
    // mediaPath -> (width, height)
    final imageDimensions = <String, ({int width, int height})>{};
    final client = httpClient ?? http.Client();
    bool internalClient = httpClient == null;

    try {
      for (var i = 0; i < _slides.length; i++) {
        await Future.delayed(Duration.zero); // Yield to UI thread
        final slide = _slides[i];
        final referencedPaths = slide.getAllReferencedMediaPaths();
        _log.finer(
          'Processing media for slide ${i + 1}: ${referencedPaths.length} items',
        );

        for (final path in referencedPaths) {
          if (mediaData.containsKey(path)) continue;

          Uint8List bytes;
          String extension;

          if (path.startsWith('http://') || path.startsWith('https://')) {
            // Remote fetch
            _log.finer('Fetching remote media: $path');
            try {
              final response = await client.get(Uri.parse(path));
              if (response.statusCode == 200) {
                bytes = response.bodyBytes;
                // Try to detect extension from bytes or URL
                extension = MediaUtils.detectExtension(bytes);
                if (extension == 'bin') {
                  // Fallback to URL extension
                  final uri = Uri.parse(path);
                  if (uri.path.contains('.')) {
                    extension = uri.path.split('.').last;
                  }
                }
              } else {
                _log.warning(
                  'Failed to fetch media: $path (${response.statusCode})',
                );
                print('Failed to fetch media: $path (${response.statusCode})');
                continue;
              }
            } catch (e) {
              _log.severe('Error fetching media: $path', e);
              print('Error fetching media: $path ($e)');
              continue;
            }
          } else {
            // Local file
            final file = _package.fileSystem.file(path);
            if (await file.exists()) {
              bytes = await file.readAsBytes();
              extension = path.contains('.') ? path.split('.').last : 'bin';
              // Optional: verify with magic numbers
              final detected = MediaUtils.detectExtension(bytes);
              if (detected != 'bin') extension = detected;
            } else {
              print('Media file not found: $path');
              continue;
            }
          }
          mediaData[path] = (ext: extension, bytes: bytes);

          // Calculate dimensions for images
          if (extension == 'png' || extension == 'jpg' || extension == 'jpeg') {
            final dims = MediaUtils.getImageDimensions(bytes);
            if (dims != null) {
              imageDimensions[path] = dims;
            }
          }
        }
      }
    } finally {
      if (internalClient) {
        client.close();
      }
    }

    // Save media files to package and build mapping
    // originalPath -> targetRelativePath
    final mediaMapping = <String, String>{};
    int mediaCounter = 1;
    for (final path in mediaData.keys) {
      final info = mediaData[path]!;
      final targetName = 'media${mediaCounter++}.${info.ext}';
      final targetPath = 'ppt/media/$targetName';

      final part = await _package.createPart(targetPath);
      part.add(info.bytes);
      await part.close();

      // Construct relative path from slide.xml (in ppt/slides/) to media (in ppt/media/)
      // Relative path is ../media/filename
      mediaMapping[path] = '../media/$targetName';
    }

    // 7. Slides
    int globalRelIdCounter = 2; // Start after rId1 (layout), increment globally
    for (var i = 0; i < _slides.length; i++) {
      await Future.delayed(Duration.zero); // Yield to UI thread
      final slide = _slides[i];
      final slidePart = await _package.createPart(
        'ppt/slides/slide${i + 1}.xml',
      );

      final slideRelsXml = XmlBuilder();
      slideRelsXml.processing(
        'xml',
        'version="1.0" encoding="UTF-8" standalone="yes"',
      );
      final imageRelIds = <String, String>{}; // originalPath -> rId

      slideRelsXml.element(
        'Relationships',
        namespaces: {
          'http://schemas.openxmlformats.org/package/2006/relationships': '',
        },
        nest: () {
          // Slide Layout Rel
          slideRelsXml.element(
            'Relationship',
            nest: () {
              slideRelsXml.attribute('Id', 'rId1');
              slideRelsXml.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideLayout',
              );

              // Resolve layout filename
              String layoutFilename = 'slideLayout1.xml';
              if (_slideLayouts.containsKey(i)) {
                layoutFilename = _slideLayouts[i]!;
                // Ensure it end with .xml just in case
                if (!layoutFilename.endsWith('.xml')) layoutFilename += '.xml';
              }

              slideRelsXml.attribute(
                'Target',
                '../slideLayouts/$layoutFilename',
              );
            },
          );

          // Fix for MacOS Preview: Use globally unique rIds for ALL content relationships (media, links, etc).
          // preventing cache collisions.
          // Layout uses rId1 (fixed). Everything else uses a monotonic global counter starting at 2.

          // int relIdCounter = 2; // Removed local counter

          final referencedPaths = slide.getAllReferencedMediaPaths();
          for (final path in referencedPaths) {
            if (mediaMapping.containsKey(path)) {
              // Always generate a new unique global ID
              final rId = 'rId${globalRelIdCounter++}';
              imageRelIds[path] = rId;

              // Detect type (image vs video) roughly by extension
              // Use image relationship by default as we use p:pic to link.
              final type =
                  'http://schemas.openxmlformats.org/officeDocument/2006/relationships/image';

              slideRelsXml.element(
                'Relationship',
                nest: () {
                  slideRelsXml.attribute('Id', rId);
                  slideRelsXml.attribute('Type', type);
                  slideRelsXml.attribute('Target', mediaMapping[path]!);
                },
              );
            }
          }

          final referencedLinks = slide.getAllReferencedHyperlinks();
          for (final link in referencedLinks) {
            final rId = 'rId$globalRelIdCounter';
            imageRelIds[link] = rId;
            globalRelIdCounter++;

            if (link.startsWith('#slide')) {
              // Internal slide link: #slide2 -> #257 (assuming slide1 is 256)
              // We assume format #slideN where N is 1-based index
              final slideIndex = int.tryParse(link.substring(6));
              if (slideIndex != null) {
                slideRelsXml.element(
                  'Relationship',
                  nest: () {
                    slideRelsXml.attribute('Id', rId);
                    slideRelsXml.attribute(
                      'Type',
                      'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide',
                    );
                    slideRelsXml.attribute('Target', 'slide$slideIndex.xml');
                  },
                );
              }
            } else {
              // External URL
              slideRelsXml.element(
                'Relationship',
                nest: () {
                  slideRelsXml.attribute('Id', rId);
                  slideRelsXml.attribute(
                    'Type',
                    'http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink',
                  );
                  slideRelsXml.attribute('Target', link);
                  slideRelsXml.attribute('TargetMode', 'External');
                },
              );
            }
          }

          if (slide.notes != null) {
            slideRelsXml.element(
              'Relationship',
              nest: () {
                slideRelsXml.attribute('Id', 'rId$globalRelIdCounter');
                slideRelsXml.attribute(
                  'Type',
                  'http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesSlide',
                );
                slideRelsXml.attribute(
                  'Target',
                  '../notesSlides/notesSlide${i + 1}.xml',
                );
              },
            );
            globalRelIdCounter++;
          }

          if (slide.comments.isNotEmpty) {
            slideRelsXml.element(
              'Relationship',
              nest: () {
                slideRelsXml.attribute('Id', 'rId$globalRelIdCounter');
                slideRelsXml.attribute(
                  'Type',
                  'http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments',
                );
                slideRelsXml.attribute(
                  'Target',
                  '../comments/comment${i + 1}.xml',
                );
              },
            );
            globalRelIdCounter++;
          }
        },
      );

      // Generated comments for this slide
      if (slide.comments.isNotEmpty) {
        // Write comment part
        final cPart = await _package.createPart(
          'ppt/comments/comment${i + 1}.xml',
        );
        final cBuilder = XmlBuilder();
        cBuilder.processing(
          'xml',
          'version="1.0" encoding="UTF-8" standalone="yes"',
        );
        cBuilder.element(
          'p:cmLst',
          namespaces: {
            'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
            'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
                'r',
          },
          nest: () {
            for (final comment in slide.comments) {
              final authorKey = '${comment.author}_${comment.initials}';
              final authorId = generatedAuthors[authorKey]?.id ?? 0;
              cBuilder.element(
                'p:cm',
                nest: () {
                  cBuilder.attribute('authorId', authorId.toString());
                  cBuilder.attribute('dt', comment.isoDate);
                  cBuilder.attribute('idx', comment.id.toString());
                  cBuilder.element(
                    'p:pos',
                    nest: () {
                      cBuilder.attribute('x', '100');
                      cBuilder.attribute('y', '100');
                    },
                  );
                  cBuilder.element(
                    'p:text',
                    nest: () {
                      cBuilder.text(comment.text);
                    },
                  );
                },
              );
            }
          },
        );
        cPart.write(cBuilder.buildDocument().toXmlString());
        await cPart.close();
      }

      // Save Slide Rels
      final sRels = await _package.createPart(
        'ppt/slides/_rels/slide${i + 1}.xml.rels',
      );
      sRels.write(slideRelsXml.buildDocument().toXmlString());
      await sRels.close();

      // Build Slide XML
      final sBuilder = XmlBuilder();
      sBuilder.processing(
        'xml',
        'version="1.0" encoding="UTF-8" standalone="yes"',
      );
      slide.build(
        sBuilder,
        relIds: imageRelIds,
        slideWidth: _slideWidth,
        slideHeight: _slideHeight,
        imageDimensions: imageDimensions,
      );
      slidePart.write(sBuilder.buildDocument().toXmlString());
      await slidePart.close();
    }

    await _package.save(outputFile);
    _log.info('Presentation saved successfully');
  }

  Future<void> _writeTheme() async {
    // Minimal theme implementation (copied/adapted from example)
    final theme = await _package.createPart('ppt/theme/theme1.xml');
    final tBuilder = XmlBuilder();
    tBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    tBuilder.element(
      'a:theme',
      namespaces: {
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
      },
      nest: () {
        tBuilder.attribute('name', 'Office Theme');
        tBuilder.element(
          'a:themeElements',
          nest: () {
            tBuilder.element(
              'a:clrScheme',
              nest: () {
                tBuilder.attribute('name', 'Office');
                _addThemeColor(tBuilder, 'dk1', 'windowText', '000000');
                _addThemeColor(tBuilder, 'lt1', 'window', 'FFFFFF');
                _addThemeColor(tBuilder, 'dk2', '1F497D', null);
                _addThemeColor(tBuilder, 'lt2', 'EEECE1', null);
                _addThemeColor(tBuilder, 'accent1', '4F81BD', null);
                _addThemeColor(tBuilder, 'accent2', 'C0504D', null);
                _addThemeColor(tBuilder, 'accent3', '9BBB59', null);
                _addThemeColor(tBuilder, 'accent4', '8064A2', null);
                _addThemeColor(tBuilder, 'accent5', '4BACC6', null);
                _addThemeColor(tBuilder, 'accent6', 'F79646', null);
                _addThemeColor(tBuilder, 'hlink', '0000FF', null);
                _addThemeColor(tBuilder, 'folHlink', '800080', null);
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

  void _addThemeColor(XmlBuilder b, String name, String val, String? lastClr) {
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

  Future<void> _writeSlideMaster() async {
    final master = await _package.createPart(
      'ppt/slideMasters/slideMaster1.xml',
    );
    final mBuilder = XmlBuilder();
    mBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    mBuilder.element(
      'p:sldMaster',
      namespaces: {
        'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
            'r',
      },
      nest: () {
        mBuilder.element(
          'p:cSld',
          nest: () {
            mBuilder.element(
              'p:bg',
              nest: () {
                mBuilder.element(
                  'p:bgPr',
                  nest: () {
                    mBuilder.element(
                      'a:solidFill',
                      nest: () {
                        mBuilder.element(
                          'a:schemeClr',
                          nest: () => mBuilder.attribute('val', 'lt1'),
                        );
                      },
                    );
                  },
                );
              },
            );
            mBuilder.element(
              'p:spTree',
              nest: () {
                mBuilder.element(
                  'p:nvGrpSpPr',
                  nest: () {
                    mBuilder.element(
                      'p:cNvPr',
                      nest: () {
                        mBuilder.attribute('id', '1');
                        mBuilder.attribute('name', '');
                      },
                    );
                    mBuilder.element('p:cNvGrpSpPr');
                    mBuilder.element('p:nvPr');
                  },
                );
                mBuilder.element('p:grpSpPr');
              },
            );
          },
        );
        mBuilder.element(
          'p:clrMap',
          nest: () {
            mBuilder.attribute('bg1', 'lt1');
            mBuilder.attribute('tx1', 'dk1');
            mBuilder.attribute('bg2', 'lt2');
            mBuilder.attribute('tx2', 'dk2');
            mBuilder.attribute('accent1', 'accent1');
            mBuilder.attribute('accent2', 'accent2');
            mBuilder.attribute('accent3', 'accent3');
            mBuilder.attribute('accent4', 'accent4');
            mBuilder.attribute('accent5', 'accent5');
            mBuilder.attribute('accent6', 'accent6');
            mBuilder.attribute('hlink', 'hlink');
            mBuilder.attribute('folHlink', 'folHlink');
          },
        );
        mBuilder.element(
          'p:sldLayoutIdLst',
          nest: () {
            mBuilder.element(
              'p:sldLayoutId',
              nest: () {
                mBuilder.attribute('id', '2147483649');
                mBuilder.attribute('r:id', 'rId1');
              },
            );
          },
        );
      },
    );
    master.write(mBuilder.buildDocument().toXmlString());
    await master.close();

    // Master Rels
    final mRels = await _package.createPart(
      'ppt/slideMasters/_rels/slideMaster1.xml.rels',
    );
    final mRelsBuilder = XmlBuilder();
    mRelsBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    mRelsBuilder.element(
      'Relationships',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/relationships': '',
      },
      nest: () {
        mRelsBuilder.element(
          'Relationship',
          nest: () {
            mRelsBuilder.attribute('Id', 'rId1');
            mRelsBuilder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideLayout',
            );
            mRelsBuilder.attribute(
              'Target',
              '../slideLayouts/slideLayout1.xml',
            );
          },
        );
        mRelsBuilder.element(
          'Relationship',
          nest: () {
            mRelsBuilder.attribute('Id', 'rId2');
            mRelsBuilder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme',
            );
            mRelsBuilder.attribute('Target', '../theme/theme1.xml');
          },
        );
      },
    );
    mRels.write(mRelsBuilder.buildDocument().toXmlString());
    await mRels.close();
  }

  Future<void> _writeSlideLayout() async {
    final layout = await _package.createPart(
      'ppt/slideLayouts/slideLayout1.xml',
    );
    final lBuilder = XmlBuilder();
    lBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    lBuilder.element(
      'p:sldLayout',
      namespaces: {
        'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
            'r',
      },
      nest: () {
        lBuilder.element(
          'p:cSld',
          nest: () {
            lBuilder.element(
              'p:spTree',
              nest: () {
                lBuilder.element(
                  'p:nvGrpSpPr',
                  nest: () {
                    lBuilder.element(
                      'p:cNvPr',
                      nest: () {
                        lBuilder.attribute('id', '1');
                        lBuilder.attribute('name', '');
                      },
                    );
                    lBuilder.element('p:cNvGrpSpPr');
                    lBuilder.element('p:nvPr');
                  },
                );
                lBuilder.element('p:grpSpPr');
              },
            );
          },
        );
      },
    );
    layout.write(lBuilder.buildDocument().toXmlString());
    await layout.close();

    // Layout Rels
    final lRels = await _package.createPart(
      'ppt/slideLayouts/_rels/slideLayout1.xml.rels',
    );
    final lRelsBuilder = XmlBuilder();
    lRelsBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    lRelsBuilder.element(
      'Relationships',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/relationships': '',
      },
      nest: () {
        lRelsBuilder.element(
          'Relationship',
          nest: () {
            lRelsBuilder.attribute('Id', 'rId1');
            lRelsBuilder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slideMaster',
            );
            lRelsBuilder.attribute(
              'Target',
              '../slideMasters/slideMaster1.xml',
            );
          },
        );
      },
    );
    lRels.write(lRelsBuilder.buildDocument().toXmlString());
    await lRels.close();
  }

  Future<void> _writeCoreProps() async {
    final core = await _package.createPart('docProps/core.xml');
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    builder.element(
      'cp:coreProperties',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/metadata/core-properties':
            'cp',
        'http://purl.org/dc/elements/1.1/': 'dc',
        'http://purl.org/dc/terms/': 'dcterms',
        'http://purl.org/dc/dcmitype/': 'dcmitype',
        'http://www.w3.org/2001/XMLSchema-instance': 'xsi',
      },
      nest: () {
        builder.element('dc:title', nest: 'Presentation');
        builder.element('dc:creator', nest: 'Dart OpenXML');
        builder.element('cp:lastModifiedBy', nest: 'Dart OpenXML');
        builder.element('cp:revision', nest: '1');
        final now = DateTime.now().toIso8601String();
        builder.element(
          'dcterms:created',
          nest: () {
            builder.attribute('xsi:type', 'dcterms:W3CDTF');
            builder.text(now);
          },
        );
        builder.element(
          'dcterms:modified',
          nest: () {
            builder.attribute('xsi:type', 'dcterms:W3CDTF');
            builder.text(now);
          },
        );
      },
    );
    core.write(builder.buildDocument().toXmlString());
    await core.close();
  }

  Future<void> _writeAppProps() async {
    final app = await _package.createPart('docProps/app.xml');
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    builder.element(
      'Properties',
      namespaces: {
        'http://schemas.openxmlformats.org/officeDocument/2006/extended-properties':
            '',
        'http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes':
            'vt',
      },
      nest: () {
        builder.element('Template', nest: 'Office Theme');
        builder.element('TotalTime', nest: '0');
        builder.element('Pages', nest: '${_slides.length}');
        builder.element('Words', nest: '0');
        builder.element('Characters', nest: '0');
        builder.element('Application', nest: 'Dart OpenXML');
        builder.element('DocSecurity', nest: '0');
        builder.element('ScaleCrop', nest: 'false');
        builder.element(
          'HeadingPairs',
          nest: () {
            builder.element(
              'vt:vector',
              nest: () {
                builder.attribute('size', '2');
                builder.attribute('baseType', 'variant');
                builder.element(
                  'vt:variant',
                  nest: () {
                    builder.element('vt:lpstr', nest: 'Slides');
                  },
                );
                builder.element(
                  'vt:variant',
                  nest: () {
                    builder.element('vt:i4', nest: '${_slides.length}');
                  },
                );
              },
            );
          },
        );
        builder.element(
          'TitlesOfParts',
          nest: () {
            builder.element(
              'vt:vector',
              nest: () {
                builder.attribute('size', '${_slides.length}');
                builder.attribute('baseType', 'lpstr');
                for (var i = 1; i <= _slides.length; i++) {
                  builder.element('vt:lpstr', nest: 'Slide $i');
                }
              },
            );
          },
        );
        builder.element('LinksUpToDate', nest: 'false');
        builder.element('SharedDoc', nest: 'false');
        builder.element('HyperlinksChanged', nest: 'false');
        builder.element('AppVersion', nest: '1.0000');
      },
    );
    app.write(builder.buildDocument().toXmlString());
    await app.close();
  }

  Future<void> _writePresProps() async {
    final presProps = await _package.createPart('ppt/presProps.xml');
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    builder.element(
      'p:presentationPr',
      namespaces: {
        'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
            'r',
      },
      nest: () {
        // Default empty props are often fine, but we can add some basics
        // builder.element('p:showPr', nest: () {
        //   builder.element('p:loop', nest: () {
        //      builder.attribute('val', '0');
        //   });
        // });
      },
    );
    presProps.write(builder.buildDocument().toXmlString());
    await presProps.close();
  }

  Future<void> _writeViewProps() async {
    final viewProps = await _package.createPart('ppt/viewProps.xml');
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    builder.element(
      'p:viewPr',
      namespaces: {
        'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
        'http://schemas.openxmlformats.org/officeDocument/2006/relationships':
            'r',
      },
      nest: () {
        builder.element(
          'p:normalViewPr',
          nest: () {
            builder.element(
              'p:restoredLeft',
              nest: () {
                builder.attribute('sz', '15620');
                builder.attribute('autoAdjust', '0');
              },
            );
            builder.element(
              'p:restoredTop',
              nest: () {
                builder.attribute('sz', '94660');
                builder.attribute('autoAdjust', '0');
              },
            );
          },
        );
        builder.element(
          'p:slideViewPr',
          nest: () {
            builder.element(
              'p:cSldViewPr',
              nest: () {
                builder.element(
                  'p:cViewPr',
                  nest: () {
                    builder.attribute('varScale', '1');
                    builder.element(
                      'p:scale',
                      nest: () {
                        builder.element(
                          'a:sx',
                          nest: () {
                            builder.attribute('n', '100');
                            builder.attribute('d', '100');
                          },
                        );
                        builder.element(
                          'a:sy',
                          nest: () {
                            builder.attribute('n', '100');
                            builder.attribute('d', '100');
                          },
                        );
                      },
                    );
                    builder.element(
                      'p:origin',
                      nest: () {
                        builder.attribute('x', '0');
                        builder.attribute('y', '0');
                      },
                    );
                  },
                );
                builder.element('p:guideLst');
              },
            );
          },
        );
        builder.element(
          'p:notesTextViewPr',
          nest: () {
            builder.element(
              'p:cViewPr',
              nest: () {
                builder.element(
                  'p:scale',
                  nest: () {
                    builder.element(
                      'a:sx',
                      nest: () {
                        builder.attribute('n', '100');
                        builder.attribute('d', '100');
                      },
                    );
                    builder.element(
                      'a:sy',
                      nest: () {
                        builder.attribute('n', '100');
                        builder.attribute('d', '100');
                      },
                    );
                  },
                );
                builder.element(
                  'p:origin',
                  nest: () {
                    builder.attribute('x', '0');
                    builder.attribute('y', '0');
                  },
                );
              },
            );
          },
        );
        builder.element(
          'p:gridSpacing',
          nest: () {
            builder.attribute('cx', '72008');
            builder.attribute('cy', '72008');
          },
        );
      },
    );
    viewProps.write(builder.buildDocument().toXmlString());
    await viewProps.close();
  }

  Future<void> _writeTableStyles() async {
    final tableStyles = await _package.createPart('ppt/tableStyles.xml');
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    builder.element(
      'a:tblStyleLst',
      namespaces: {
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
      },
      nest: () {
        builder.attribute('def', '{5C22544A-7EE6-4342-B048-85BDC9FD1C3A}');
      },
    );
    tableStyles.write(builder.buildDocument().toXmlString());
    await tableStyles.close();
  }

  Future<void> _writeNotesMaster() async {
    final notesMaster = await _package.createPart(
      'ppt/notesMasters/notesMaster1.xml',
    );
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
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
                            builder.attribute(
                              'name',
                              'Slide Image Placeholder',
                            );
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

  Future<void> _writeNotesSlide(int index, String notes) async {
    final notesSlide = await _package.createPart(
      'ppt/notesSlides/notesSlide$index.xml',
    );
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
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

  Future<void> _writeNotesSlideRelationships(int index) async {
    final rels = await _package.createPart(
      'ppt/notesSlides/_rels/notesSlide$index.xml.rels',
    );
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    builder.element(
      'Relationships',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/relationships': '',
      },
      nest: () {
        builder.element(
          'Relationship',
          nest: () {
            builder.attribute('Id', 'rId1');
            builder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/notesMaster',
            );
            builder.attribute('Target', '../notesMasters/notesMaster1.xml');
          },
        );
        builder.element(
          'Relationship',
          nest: () {
            builder.attribute('Id', 'rId2');
            builder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/slide',
            );
            builder.attribute('Target', '../slides/slide$index.xml');
          },
        );
      },
    );
    rels.write(builder.buildDocument().toXmlString());
    await rels.close();
  }

  Future<void> _writeNotesMasterRelationships() async {
    final rels = await _package.createPart(
      'ppt/notesMasters/_rels/notesMaster1.xml.rels',
    );
    final builder = XmlBuilder();
    builder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    builder.element(
      'Relationships',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/relationships': '',
      },
      nest: () {
        builder.element(
          'Relationship',
          nest: () {
            builder.attribute('Id', 'rId1');
            builder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme',
            );
            builder.attribute('Target', '../theme/theme1.xml');
          },
        );
      },
    );
    rels.write(builder.buildDocument().toXmlString());
    await rels.close();
  }
}
