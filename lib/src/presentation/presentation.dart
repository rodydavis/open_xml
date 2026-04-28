import 'dart:typed_data'; // Add this
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:open_xml/src/util/media_utils.dart'; // Add this

import 'package:file/file.dart';

import 'package:open_xml/src/validate/validate.dart';
import 'package:open_xml/src/package/package.dart';
import 'package:open_xml/src/pml/pml_builder.g.dart';
import 'package:xml/xml.dart';

import 'slide.dart';
import 'generators/app_props_generator.dart';
import 'generators/core_props_generator.dart';
import 'generators/notes_master_generator.dart';
import 'generators/pres_props_generator.dart';
import 'generators/slide_layout_generator.dart';
import 'generators/slide_master_generator.dart';
import 'generators/table_styles_generator.dart';
import 'generators/theme_generator.dart';
import 'generators/view_props_generator.dart';
import 'generators/notes_slide_generator.dart';
import 'generators/notes_slide_rels_generator.dart';
import 'generators/notes_master_rels_generator.dart';
import 'generators/add_slide.dart' as add_slide;
import 'generators/clean.dart' as clean;

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

class SlideRect {
  final int x;
  final int y;
  final int width;
  final int height;
  SlideRect(this.x, this.y, this.width, this.height);
}

class Presentation {
  final OoxmlPackage _package;
  final List<Slide> _slides = [];
  final _log = Logger('Presentation');
  final Map<int, String> _slideLayouts = {}; // slide index -> layout path
  final Map<String, String> _layoutNames = {}; // layout name -> filename
  final Map<String, String> _layoutFilenames = {}; // layout filename -> name
  final Map<String, Map<String, SlideRect>> _layoutPlaceholders =
      {}; // filename -> placeholders

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

  /// Recursively cleans unused assets and media files from the unpacked presentation.
  ///
  /// Returns a list of the relative paths for all removed files.
  /// NOTE: This operates on the underlying raw XML inside the package directory.
  List<String> cleanUnusedFiles() {
    return clean.cleanUnusedFiles(_package.directory);
  }

  /// Adds a new slide to the presentation.
  ///
  /// [source] can be a slide to duplicate (e.g., 'slide2.xml') or a layout to use (e.g., 'slideLayout2.xml').
  /// NOTE: This operates on the underlying raw XML inside the package directory.
  void addSlideFromSource(String source) {
    add_slide.addSlide(_package.directory, source);
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
    final parts = await _package.listParts('ppt/slideLayouts');
    for (final part in parts) {
      if (!part.endsWith('.xml')) continue;
      final filename = part.split('/').last;

      final xml = await _package.readPartAsString(part);
      final document = XmlDocument.parse(xml);

      final cSld = document.findAllElements('p:cSld').firstOrNull;
      if (cSld != null) {
        final name = cSld.getAttribute('name');
        if (name != null) {
          _layoutNames[name] = filename;
          _layoutFilenames[filename] = name;
        } else {
          _layoutFilenames[filename] = filename;
        }
      }

      final Map<String, SlideRect> placeholders = {};

      for (final sp in document.findAllElements('p:sp')) {
        String? phType;
        int? phIdx;

        final nvSpPr = sp.findAllElements('p:nvSpPr').firstOrNull;
        if (nvSpPr != null) {
          final nvPr = nvSpPr.findAllElements('p:nvPr').firstOrNull;
          if (nvPr != null) {
            final ph = nvPr.findAllElements('p:ph').firstOrNull;
            if (ph != null) {
              phType = ph.getAttribute('type');
              phIdx = int.tryParse(ph.getAttribute('idx') ?? '');
            }
          }
        }

        if (phType != null || phIdx != null) {
          int? x, y, width, height;
          final spPr = sp.findAllElements('p:spPr').firstOrNull;
          if (spPr != null) {
            final xfrm = spPr.findAllElements('a:xfrm').firstOrNull;
            if (xfrm != null) {
              final off = xfrm.findAllElements('a:off').firstOrNull;
              if (off != null) {
                x = int.tryParse(off.getAttribute('x') ?? '');
                y = int.tryParse(off.getAttribute('y') ?? '');
              }
              final ext = xfrm.findAllElements('a:ext').firstOrNull;
              if (ext != null) {
                width = int.tryParse(ext.getAttribute('cx') ?? '');
                height = int.tryParse(ext.getAttribute('cy') ?? '');
              }
            }
          }

          if (x != null && y != null && width != null && height != null) {
            final key = '${phType ?? ""}_${phIdx ?? ""}';
            placeholders[key] = SlideRect(x, y, width, height);
          }
        }
      }

      _layoutPlaceholders[filename] = placeholders;
    }
  }

  /// Resolves the actual bounding box of a slide element.
  /// If the element does not provide its own coordinates, it falls back
  /// to the matching placeholder from its slide layout.
  SlideRect resolveElementBounds(Slide slide, SlideElement element) {
    if (element.x != null &&
        element.y != null &&
        element.width != null &&
        element.height != null) {
      return SlideRect(element.x!, element.y!, element.width!, element.height!);
    }

    // Try to resolve from layout
    final layoutFilename = _slideLayouts[slide.index - 1] ?? 'slideLayout1.xml';
    final placeholders = _layoutPlaceholders[layoutFilename];

    if (placeholders != null) {
      final type = element.placeholderType ?? '';
      final idx = element.placeholderIdx ?? '';

      // Try exact match
      var rect = placeholders['${type}_${idx}'];
      // Try just type match if idx doesn't match
      rect ??= placeholders['${type}_'];
      // Try just idx match
      rect ??= placeholders['_$idx'];

      if (rect != null) {
        return SlideRect(
          element.x ?? rect.x,
          element.y ?? rect.y,
          element.width ?? rect.width,
          element.height ?? rect.height,
        );
      }
    }

    // Ultimate fallback if layout doesn't resolve it
    return SlideRect(
      element.x ?? 0,
      element.y ?? 0,
      element.width ?? 1000000,
      element.height ?? 1000000,
    );
  }

  /// Validates the presentation based on the current internal state.
  (bool, List<String>) validate() {
    return validateDirectory(_package.directory);
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

  /// Reads media bytes from the package
  Future<List<int>> readMediaBytes(String path) {
    return _package.readPartAsBytes(path);
  }

  /// Saves the presentation to the specified [outputFile].
  Future<void> save(File outputFile, {http.Client? httpClient}) async {
    _log.info('Saving presentation to ${outputFile.path}');
    // Generate missing boilerplate files
    await generateCoreProps(_package);
    await generateAppProps(_package);
    await generatePresProps(_package);
    await generateViewProps(_package);
    await generateTableStyles(_package);

    final hasNotes = _slides.any((s) => s.notes != null);
    if (hasNotes) {
      await generateNotesMaster(_package);
      await generateNotesMasterRelationships(_package);
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
    ctBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
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
        await generateNotesSlide(_package, i + 1, slide.notes!);
        await generateNotesSlideRelationships(_package, i + 1);
      }
    }

    // 2. _rels/.rels
    final rels = await _package.createPart('_rels/.rels');
    final relsBuilder = XmlBuilder();
    relsBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
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
    pRelsBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
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
    pBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
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
      caBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
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
      await generateTheme(_package);
    }
    if (!await _package.hasPart('ppt/slideMasters/slideMaster1.xml')) {
      _log.fine('Generating default slide master');
      await generateSlideMaster(_package);
    }
    if (!await _package.hasPart('ppt/slideLayouts/slideLayout1.xml')) {
      _log.fine('Generating default slide layout');
      await generateSlideLayout(_package);
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
          _log.info('DEBUG: Processing media path: $path');
          if (mediaData.containsKey(path)) {
            _log.info('DEBUG: Path already in mediaData: $path');
            continue;
          }

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
            _log.info('DEBUG: Reading local file: $path');
            final file = _package.fileSystem.file(path);
            try {
              if (await file.exists()) {
                bytes = await file.readAsBytes();
                extension = path.contains('.') ? path.split('.').last : 'bin';
                // Optional: verify with magic numbers
                final detected = MediaUtils.detectExtension(bytes);
                if (detected != 'bin') extension = detected;
              } else {
                _log.severe(
                  'DEBUG: Media file not found (exists=false): $path',
                );
                print('Media file not found: $path');
                continue;
              }
            } catch (e, st) {
              _log.severe('DEBUG: Error reading local file: $path', e, st);
              rethrow;
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
    for (var i = 0; i < _slides.length; i++) {
      await Future.delayed(Duration.zero); // Yield to UI thread
      final slide = _slides[i];
      final slidePart = await _package.createPart(
        'ppt/slides/slide${i + 1}.xml',
      );

      final slideRelsXml = XmlBuilder();
      slideRelsXml.processing('xml', 'version="1.0" encoding="UTF-8" ');
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

          int relIdCounter = 2; // Local counter for each slide

          final referencedPaths = slide.getAllReferencedMediaPaths();
          for (final path in referencedPaths) {
            if (mediaMapping.containsKey(path)) {
              final rId = 'rId${relIdCounter++}';
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
            final rId = 'rId${relIdCounter++}';
            imageRelIds[link] = rId;

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
                slideRelsXml.attribute('Id', 'rId${relIdCounter++}');
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
          }

          if (slide.comments.isNotEmpty) {
            slideRelsXml.element(
              'Relationship',
              nest: () {
                slideRelsXml.attribute('Id', 'rId${relIdCounter++}');
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
        cBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
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
      sBuilder.processing('xml', 'version="1.0" encoding="UTF-8" ');
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

    final (isValid, messages) = validate();
    if (!isValid) {
      _log.warning('Validation failed:');
      for (final msg in messages) {
        _log.warning(msg);
      }
    }

    _log.info('Presentation saved successfully');
  }

  Future<void> close() async {
    await _package.close();
    _log.info('Presentation closed successfully');
  }
}
