import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:logging/logging.dart';
import 'package:open_xml/src/package/package.dart';
import 'package:open_xml/src/shared/comment.dart';
import 'package:open_xml/src/wml/wml_builder.g.dart';
import 'package:open_xml/src/word/paragraph.dart';
import 'package:xml/xml.dart';

class WordDocument {
  final OoxmlPackage _package;
  final List<Paragraph> _paragraphs = [];
  final List<Comment> _comments = [];
  final _log = Logger('WordDocument');
  List<Paragraph> get paragraphs => List.unmodifiable(_paragraphs);

  /// Returns the plain text content of the document.
  ///
  /// Paragraphs are separated by newlines.
  String get text => _paragraphs.map((p) => p.text).join('\n');

  WordDocument._(this._package);

  /// Creates a new empty Word document.
  static Future<WordDocument> create(FileSystem fs) async {
    final package = await OoxmlPackage.create(fs);
    return WordDocument._(package);
  }

  Future<void> close() async {
    await _package.close();
    _log.info('Document closed successfully');
  }

  /// Opens an existing Word document.
  static Future<WordDocument> open(File file) async {
    final package = await OoxmlPackage.open(file);
    final doc = WordDocument._(package);
    await doc._parse();
    return doc;
  }

  Future<void> _parse() async {
    if (!await _package.hasPart('word/document.xml')) return;

    final xmlString = await _package.readPartAsString('word/document.xml');
    if (xmlString.isEmpty) return;

    final document = XmlDocument.parse(xmlString);
    final body = document.findAllElements('w:body').firstOrNull;
    if (body == null) return;

    for (final child in body.childElements) {
      if (child.name.local == 'p') {
        _paragraphs.add(Paragraph.fromXml(child));
      }
    }
  }

  /// Adds a paragraph to the document.
  void addParagraph(Paragraph paragraph) {
    _paragraphs.add(paragraph);
  }

  /// Adds a comment to the document.
  ///
  /// Returns the created [Comment] object, which can be attached to a [Paragraph].
  Comment addComment(
    String text, {
    String author = 'Author',
    String? initials,
    DateTime? date,
  }) {
    final comment = Comment(
      id: _comments.length + 1,
      text: text,
      author: author,
      initials: initials,
      date: date,
    );
    _comments.add(comment);
    return comment;
  }

  /// Saves the document to the specified [outputFile].
  Future<void> save(File outputFile) async {
    _log.info('Saving Word document to ${outputFile.path}');
    // Collect relationships
    final rels = <String, String>{}; // Target -> Id
    final aliases = <String, String>{}; // Url/Path -> Id
    int relIdCounter = 1;

    // Default relationships
    rels['word/styles.xml'] = 'rId${relIdCounter++}';
    if (_comments.isNotEmpty) {
      rels['word/comments.xml'] = 'rId${relIdCounter++}';
    }

    // Scan for images and hyperlinks
    for (final paragraph in _paragraphs) {
      for (final element in paragraph.elements) {
        if (element is ParagraphImage) {
          if (!aliases.containsKey(element.path)) {
            final rId = 'rId${relIdCounter++}';
            aliases[element.path] = rId;

            // Copy image to package
            final ext = element.path.split('.').last;
            final imageFilename =
                'image${relIdCounter}_${DateTime.now().millisecondsSinceEpoch}.$ext';
            final targetPath = 'word/media/$imageFilename';

            // Handle local file copying (assuming local path for now)
            // TODO: Support remote URLs for mixed content if needed, but ParagraphImage implies local path usually?
            // If path starts with http, we might need to download it.
            // For now assuming local file path.
            if (element.path.startsWith('http')) {
              // Remote image logic similar to Presentation if we support it.
              // For now, let's treat as unsupported or Todo.
            } else {
              final file = const LocalFileSystem().file(element.path);
              if (file.existsSync()) {
                final bytes = await file.readAsBytes();
                final part = await _package.createPart(targetPath);
                part.add(bytes);
                await part.close();
                rels['media/$imageFilename'] = rId;
              }
            }
          }
        } else if (element is ParagraphHyperlink) {
          if (!aliases.containsKey(element.url)) {
            final rId = 'rId${relIdCounter++}';
            aliases[element.url] = rId;
          }
        }
      }
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
        // Add defaults for image extensions if present
        final extensions = <String>{'png', 'jpeg', 'jpg', 'gif'};
        for (final ext in extensions) {
          ctBuilder.element(
            'Default',
            nest: () {
              ctBuilder.attribute('Extension', ext);
              ctBuilder.attribute('ContentType', _getContentType(ext));
            },
          );
        }

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
        if (_comments.isNotEmpty) {
          ctBuilder.element(
            'Override',
            nest: () {
              ctBuilder.attribute('PartName', '/word/comments.xml');
              ctBuilder.attribute(
                'ContentType',
                'application/vnd.openxmlformats-officedocument.wordprocessingml.comments+xml',
              );
            },
          );
        }
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
    final globalRels = await _package.createPart('_rels/.rels');
    final globalRelsBuilder = XmlBuilder();
    globalRelsBuilder.processing(
      'xml',
      'version="1.0" encoding="UTF-8" standalone="yes"',
    );
    globalRelsBuilder.element(
      'Relationships',
      namespaces: {
        'http://schemas.openxmlformats.org/package/2006/relationships': '',
      },
      nest: () {
        globalRelsBuilder.element(
          'Relationship',
          nest: () {
            globalRelsBuilder.attribute('Id', 'rId1');
            globalRelsBuilder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument',
            );
            globalRelsBuilder.attribute('Target', 'word/document.xml');
          },
        );
      },
    );
    globalRels.write(globalRelsBuilder.buildDocument().toXmlString());
    await globalRels.close();

    await Future.delayed(Duration.zero);

    // 3. word/document.xml
    final document = await _package.createPart('word/document.xml');
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
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing':
            'wp',
        'http://schemas.openxmlformats.org/drawingml/2006/main': 'a',
        'http://schemas.openxmlformats.org/drawingml/2006/picture': 'pic',
      },
      nest: () {
        docBuilder.w_ct_body(
          tagName: 'body',
          children: (b) {
            for (final paragraph in _paragraphs) {
              paragraph.build(b, aliases: aliases);
            }
          },
        );
      },
    );
    document.write(docBuilder.buildDocument().toXmlString());
    await document.close();

    await Future.delayed(Duration.zero);

    // 4. word/styles.xml (Minimal)
    final styles = await _package.createPart('word/styles.xml');
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
    final docRels = await _package.createPart('word/_rels/document.xml.rels');
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
        // Styles
        docRelsBuilder.element(
          'Relationship',
          nest: () {
            docRelsBuilder.attribute('Id', rels['word/styles.xml']!);
            docRelsBuilder.attribute(
              'Type',
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles',
            );
            docRelsBuilder.attribute('Target', 'styles.xml');
          },
        );

        if (_comments.isNotEmpty) {
          docRelsBuilder.element(
            'Relationship',
            nest: () {
              docRelsBuilder.attribute('Id', rels['word/comments.xml']!);
              docRelsBuilder.attribute(
                'Type',
                'http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments',
              );
              docRelsBuilder.attribute('Target', 'comments.xml');
            },
          );
        }

        // Images
        for (final entry in rels.entries) {
          if (entry.key.startsWith('media/')) {
            docRelsBuilder.element(
              'Relationship',
              nest: () {
                docRelsBuilder.attribute('Id', entry.value); // rId
                docRelsBuilder.attribute(
                  'Type',
                  'http://schemas.openxmlformats.org/officeDocument/2006/relationships/image',
                );
                docRelsBuilder.attribute('Target', entry.key);
              },
            );
          }
        }

        // Hyperlinks
        for (final entry in aliases.entries) {
          final url = entry.key;
          final rId = entry.value;
          // Check if it is a hyperlink (not in rels map as simple target)
          // rels map key is relative target path in package
          // aliases key is original path/url

          // If it's a hyperlink (http/https/mailto)
          if (url.startsWith('http') || url.startsWith('mailto')) {
            docRelsBuilder.element(
              'Relationship',
              nest: () {
                docRelsBuilder.attribute('Id', rId);
                docRelsBuilder.attribute(
                  'Type',
                  'http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink',
                );
                docRelsBuilder.attribute('Target', url);
                docRelsBuilder.attribute('TargetMode', 'External');
              },
            );
          }
        }
      },
    );
    docRels.write(docRelsBuilder.buildDocument().toXmlString());
    await docRels.close();

    // 6. word/comments.xml
    if (_comments.isNotEmpty) {
      final commentsPart = await _package.createPart('word/comments.xml');
      final commentsBuilder = XmlBuilder();
      commentsBuilder.processing(
        'xml',
        'version="1.0" encoding="UTF-8" standalone="yes"',
      );
      commentsBuilder.element(
        'w:comments',
        namespaces: {
          'http://schemas.openxmlformats.org/wordprocessingml/2006/main': 'w',
        },
        nest: () {
          for (final comment in _comments) {
            commentsBuilder.w_ct_comment(
              tagName: 'comment',
              children: (b) {
                b.attribute(
                  'id',
                  comment.id.toString(),
                  namespace:
                      'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
                );
                b.attribute(
                  'author',
                  comment.author,
                  namespace:
                      'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
                );
                b.attribute(
                  'date',
                  comment.isoDate,
                  namespace:
                      'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
                );
                b.attribute(
                  'initials',
                  comment.initials,
                  namespace:
                      'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
                );
                b.w_ct_p(
                  tagName: 'p',
                  children: (b) {
                    b.w_ct_r(
                      tagName: 'r',
                      children: (b) {
                        b.w_ct_text(
                          tagName: 't',
                          children: (b) {
                            b.text(comment.text);
                          },
                        );
                      },
                    );
                  },
                );
              },
            );
          }
        },
      );
      commentsPart.write(commentsBuilder.buildDocument().toXmlString());
      await commentsPart.close();
    }

    await _package.save(outputFile);
    _log.info('Word document saved successfully');
  }

  String _getContentType(String ext) {
    switch (ext.toLowerCase()) {
      case 'png':
        return 'image/png';
      case 'jpeg':
      case 'jpg':
        return 'image/jpeg';
      case 'gif':
        return 'image/gif';
      default:
        return 'application/octet-stream';
    }
  }
}
