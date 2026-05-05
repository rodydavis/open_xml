// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides, unused_local_variable
import 'package:test/test.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/dml/dml_builder.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';

void main() {
  group('dml generated tests', () {
    test('Test D_CT_EffectExtent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectExtent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_EffectExtent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_effectextent(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectExtent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Inline with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Inline(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_distT = instance.distT;
      } catch (e) {}
      try {
        final v_distB = instance.distB;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final c_extent = instance.extent;
      } catch (e) {}
      try {
        final c_effectExtent = instance.effectExtent;
      } catch (e) {}
      try {
        final c_docPr = instance.docPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_Inline with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_inline(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            distT: 'test',
            distB: 'test',
            distL: 'test',
            distR: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Inline(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_distT = instance.distT;
      } catch (e) {}
      try {
        final v_distB = instance.distB;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final c_extent = instance.extent;
      } catch (e) {}
      try {
        final c_effectExtent = instance.effectExtent;
      } catch (e) {}
      try {
        final c_docPr = instance.docPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_WrapPath with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapPath(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_edited = instance.edited;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_lineTo = instance.lineTo;
      } catch (e) {}
    });
    test('Test D_CT_WrapPath with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wrappath(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            edited: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapPath(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_edited = instance.edited;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_lineTo = instance.lineTo;
      } catch (e) {}
    });
    test('Test D_CT_WrapNone with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapNone(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_WrapNone with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wrapnone(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapNone(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_WrapSquare with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapSquare(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_wrapText = instance.wrapText;
      } catch (e) {}
      try {
        final v_distT = instance.distT;
      } catch (e) {}
      try {
        final v_distB = instance.distB;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final c_effectExtent = instance.effectExtent;
      } catch (e) {}
    });
    test('Test D_CT_WrapSquare with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wrapsquare(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            wrapText: D_ST_WrapText.values.first,
            distT: 'test',
            distB: 'test',
            distL: 'test',
            distR: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapSquare(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_wrapText = instance.wrapText;
      } catch (e) {}
      try {
        final v_distT = instance.distT;
      } catch (e) {}
      try {
        final v_distB = instance.distB;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final c_effectExtent = instance.effectExtent;
      } catch (e) {}
    });
    test('Test D_CT_WrapTight with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapTight(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_wrapText = instance.wrapText;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final c_wrapPolygon = instance.wrapPolygon;
      } catch (e) {}
    });
    test('Test D_CT_WrapTight with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wraptight(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            wrapText: D_ST_WrapText.values.first,
            distL: 'test',
            distR: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapTight(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_wrapText = instance.wrapText;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final c_wrapPolygon = instance.wrapPolygon;
      } catch (e) {}
    });
    test('Test D_CT_WrapThrough with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapThrough(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_wrapText = instance.wrapText;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final c_wrapPolygon = instance.wrapPolygon;
      } catch (e) {}
    });
    test('Test D_CT_WrapThrough with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wrapthrough(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            wrapText: D_ST_WrapText.values.first,
            distL: 'test',
            distR: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapThrough(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_wrapText = instance.wrapText;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final c_wrapPolygon = instance.wrapPolygon;
      } catch (e) {}
    });
    test('Test D_CT_WrapTopBottom with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapTopBottom(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_distT = instance.distT;
      } catch (e) {}
      try {
        final v_distB = instance.distB;
      } catch (e) {}
      try {
        final c_effectExtent = instance.effectExtent;
      } catch (e) {}
    });
    test('Test D_CT_WrapTopBottom with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wraptopbottom(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            distT: 'test',
            distB: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WrapTopBottom(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_distT = instance.distT;
      } catch (e) {}
      try {
        final v_distB = instance.distB;
      } catch (e) {}
      try {
        final c_effectExtent = instance.effectExtent;
      } catch (e) {}
    });
    test('Test D_CT_PosH with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PosH(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_relativeFrom = instance.relativeFrom;
      } catch (e) {}
      try {
        final c_align = instance.align;
      } catch (e) {}
      try {
        final c_posOffset = instance.posOffset;
      } catch (e) {}
    });
    test('Test D_CT_PosH with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_posh(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            relativeFrom: D_ST_RelFromH.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PosH(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_relativeFrom = instance.relativeFrom;
      } catch (e) {}
      try {
        final c_align = instance.align;
      } catch (e) {}
      try {
        final c_posOffset = instance.posOffset;
      } catch (e) {}
    });
    test('Test D_CT_PosV with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PosV(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_relativeFrom = instance.relativeFrom;
      } catch (e) {}
      try {
        final c_align = instance.align;
      } catch (e) {}
      try {
        final c_posOffset = instance.posOffset;
      } catch (e) {}
    });
    test('Test D_CT_PosV with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_posv(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            relativeFrom: D_ST_RelFromV.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PosV(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_relativeFrom = instance.relativeFrom;
      } catch (e) {}
      try {
        final c_align = instance.align;
      } catch (e) {}
      try {
        final c_posOffset = instance.posOffset;
      } catch (e) {}
    });
    test('Test D_CT_Anchor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Anchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_distT = instance.distT;
      } catch (e) {}
      try {
        final v_distB = instance.distB;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final v_simplePos = instance.simplePos;
      } catch (e) {}
      try {
        final v_relativeHeight = instance.relativeHeight;
      } catch (e) {}
      try {
        final v_behindDoc = instance.behindDoc;
      } catch (e) {}
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_layoutInCell = instance.layoutInCell;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_allowOverlap = instance.allowOverlap;
      } catch (e) {}
      try {
        final c_positionH = instance.positionH;
      } catch (e) {}
      try {
        final c_positionV = instance.positionV;
      } catch (e) {}
      try {
        final c_extent = instance.extent;
      } catch (e) {}
      try {
        final c_effectExtent = instance.effectExtent;
      } catch (e) {}
      try {
        final c_wrapNone = instance.wrapNone;
      } catch (e) {}
      try {
        final c_wrapSquare = instance.wrapSquare;
      } catch (e) {}
      try {
        final c_wrapTight = instance.wrapTight;
      } catch (e) {}
      try {
        final c_wrapThrough = instance.wrapThrough;
      } catch (e) {}
      try {
        final c_wrapTopAndBottom = instance.wrapTopAndBottom;
      } catch (e) {}
      try {
        final c_docPr = instance.docPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_Anchor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_anchor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            distT: 'test',
            distB: 'test',
            distL: 'test',
            distR: 'test',
            simplePos: true,
            relativeHeight: 1,
            behindDoc: true,
            locked: true,
            layoutInCell: true,
            hidden: true,
            allowOverlap: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Anchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_distT = instance.distT;
      } catch (e) {}
      try {
        final v_distB = instance.distB;
      } catch (e) {}
      try {
        final v_distL = instance.distL;
      } catch (e) {}
      try {
        final v_distR = instance.distR;
      } catch (e) {}
      try {
        final v_simplePos = instance.simplePos;
      } catch (e) {}
      try {
        final v_relativeHeight = instance.relativeHeight;
      } catch (e) {}
      try {
        final v_behindDoc = instance.behindDoc;
      } catch (e) {}
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_layoutInCell = instance.layoutInCell;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_allowOverlap = instance.allowOverlap;
      } catch (e) {}
      try {
        final c_positionH = instance.positionH;
      } catch (e) {}
      try {
        final c_positionV = instance.positionV;
      } catch (e) {}
      try {
        final c_extent = instance.extent;
      } catch (e) {}
      try {
        final c_effectExtent = instance.effectExtent;
      } catch (e) {}
      try {
        final c_wrapNone = instance.wrapNone;
      } catch (e) {}
      try {
        final c_wrapSquare = instance.wrapSquare;
      } catch (e) {}
      try {
        final c_wrapTight = instance.wrapTight;
      } catch (e) {}
      try {
        final c_wrapThrough = instance.wrapThrough;
      } catch (e) {}
      try {
        final c_wrapTopAndBottom = instance.wrapTopAndBottom;
      } catch (e) {}
      try {
        final c_docPr = instance.docPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_TxbxContent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TxbxContent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_p = instance.p;
      } catch (e) {}
      try {
        final c_tbl = instance.tbl;
      } catch (e) {}
      try {
        final c_proofErr = instance.proofErr;
      } catch (e) {}
      try {
        final c_permStart = instance.permStart;
      } catch (e) {}
      try {
        final c_permEnd = instance.permEnd;
      } catch (e) {}
      try {
        final c_bookmarkStart = instance.bookmarkStart;
      } catch (e) {}
      try {
        final c_bookmarkEnd = instance.bookmarkEnd;
      } catch (e) {}
      try {
        final c_moveFromRangeStart = instance.moveFromRangeStart;
      } catch (e) {}
      try {
        final c_moveFromRangeEnd = instance.moveFromRangeEnd;
      } catch (e) {}
      try {
        final c_moveToRangeStart = instance.moveToRangeStart;
      } catch (e) {}
      try {
        final c_moveToRangeEnd = instance.moveToRangeEnd;
      } catch (e) {}
      try {
        final c_commentRangeStart = instance.commentRangeStart;
      } catch (e) {}
      try {
        final c_commentRangeEnd = instance.commentRangeEnd;
      } catch (e) {}
      try {
        final c_customXmlInsRangeStart = instance.customXmlInsRangeStart;
      } catch (e) {}
      try {
        final c_customXmlInsRangeEnd = instance.customXmlInsRangeEnd;
      } catch (e) {}
      try {
        final c_customXmlDelRangeStart = instance.customXmlDelRangeStart;
      } catch (e) {}
      try {
        final c_customXmlDelRangeEnd = instance.customXmlDelRangeEnd;
      } catch (e) {}
      try {
        final c_customXmlMoveFromRangeStart =
            instance.customXmlMoveFromRangeStart;
      } catch (e) {}
      try {
        final c_customXmlMoveFromRangeEnd = instance.customXmlMoveFromRangeEnd;
      } catch (e) {}
      try {
        final c_customXmlMoveToRangeStart = instance.customXmlMoveToRangeStart;
      } catch (e) {}
      try {
        final c_customXmlMoveToRangeEnd = instance.customXmlMoveToRangeEnd;
      } catch (e) {}
      try {
        final c_ins = instance.ins;
      } catch (e) {}
      try {
        final c_del = instance.del;
      } catch (e) {}
      try {
        final c_moveFrom = instance.moveFrom;
      } catch (e) {}
      try {
        final c_moveTo = instance.moveTo;
      } catch (e) {}
      try {
        final c_altChunk = instance.altChunk;
      } catch (e) {}
    });
    test('Test D_CT_TxbxContent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_txbxcontent(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TxbxContent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_p = instance.p;
      } catch (e) {}
      try {
        final c_tbl = instance.tbl;
      } catch (e) {}
      try {
        final c_proofErr = instance.proofErr;
      } catch (e) {}
      try {
        final c_permStart = instance.permStart;
      } catch (e) {}
      try {
        final c_permEnd = instance.permEnd;
      } catch (e) {}
      try {
        final c_bookmarkStart = instance.bookmarkStart;
      } catch (e) {}
      try {
        final c_bookmarkEnd = instance.bookmarkEnd;
      } catch (e) {}
      try {
        final c_moveFromRangeStart = instance.moveFromRangeStart;
      } catch (e) {}
      try {
        final c_moveFromRangeEnd = instance.moveFromRangeEnd;
      } catch (e) {}
      try {
        final c_moveToRangeStart = instance.moveToRangeStart;
      } catch (e) {}
      try {
        final c_moveToRangeEnd = instance.moveToRangeEnd;
      } catch (e) {}
      try {
        final c_commentRangeStart = instance.commentRangeStart;
      } catch (e) {}
      try {
        final c_commentRangeEnd = instance.commentRangeEnd;
      } catch (e) {}
      try {
        final c_customXmlInsRangeStart = instance.customXmlInsRangeStart;
      } catch (e) {}
      try {
        final c_customXmlInsRangeEnd = instance.customXmlInsRangeEnd;
      } catch (e) {}
      try {
        final c_customXmlDelRangeStart = instance.customXmlDelRangeStart;
      } catch (e) {}
      try {
        final c_customXmlDelRangeEnd = instance.customXmlDelRangeEnd;
      } catch (e) {}
      try {
        final c_customXmlMoveFromRangeStart =
            instance.customXmlMoveFromRangeStart;
      } catch (e) {}
      try {
        final c_customXmlMoveFromRangeEnd = instance.customXmlMoveFromRangeEnd;
      } catch (e) {}
      try {
        final c_customXmlMoveToRangeStart = instance.customXmlMoveToRangeStart;
      } catch (e) {}
      try {
        final c_customXmlMoveToRangeEnd = instance.customXmlMoveToRangeEnd;
      } catch (e) {}
      try {
        final c_ins = instance.ins;
      } catch (e) {}
      try {
        final c_del = instance.del;
      } catch (e) {}
      try {
        final c_moveFrom = instance.moveFrom;
      } catch (e) {}
      try {
        final c_moveTo = instance.moveTo;
      } catch (e) {}
      try {
        final c_altChunk = instance.altChunk;
      } catch (e) {}
    });
    test('Test D_CT_TextboxInfo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextboxInfo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_txbxContent = instance.txbxContent;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TextboxInfo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_textboxinfo(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            id: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextboxInfo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_txbxContent = instance.txbxContent;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LinkedTextboxInformation with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LinkedTextboxInformation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_seq = instance.seq;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LinkedTextboxInformation with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_linkedtextboxinformation(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            id: 1,
            seq: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LinkedTextboxInformation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_seq = instance.seq;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingShape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_normalEastAsianFlow = instance.normalEastAsianFlow;
      } catch (e) {}
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvSpPr = instance.cNvSpPr;
      } catch (e) {}
      try {
        final c_cNvCnPr = instance.cNvCnPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
      try {
        final c_txbx = instance.txbx;
      } catch (e) {}
      try {
        final c_linkedTxbx = instance.linkedTxbx;
      } catch (e) {}
      try {
        final c_bodyPr = instance.bodyPr;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingShape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wordprocessingshape(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            normalEastAsianFlow: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_normalEastAsianFlow = instance.normalEastAsianFlow;
      } catch (e) {}
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvSpPr = instance.cNvSpPr;
      } catch (e) {}
      try {
        final c_cNvCnPr = instance.cNvCnPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
      try {
        final c_txbx = instance.txbx;
      } catch (e) {}
      try {
        final c_linkedTxbx = instance.linkedTxbx;
      } catch (e) {}
      try {
        final c_bodyPr = instance.bodyPr;
      } catch (e) {}
    });
    test('Test D_CT_GraphicFrame with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicFrame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvGraphicFramePr = instance.nvGraphicFramePr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
    });
    test('Test D_CT_GraphicFrame with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            'ns0',
          );
          builder.d_ct_graphicframe(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            macro: 'test',
            fPublished: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicFrame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvGraphicFramePr = instance.nvGraphicFramePr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingContentPartNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingContentPartNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvContentPartPr = instance.cNvContentPartPr;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingContentPartNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wordprocessingcontentpartnonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingContentPartNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvContentPartPr = instance.cNvContentPartPr;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingContentPart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingContentPart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_nvContentPartPr = instance.nvContentPartPr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingContentPart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_wordprocessingcontentpart(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            bwMode: D_ST_BlackWhiteMode.values.first,
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingContentPart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_nvContentPartPr = instance.nvContentPartPr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingGroup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGrpSpPr = instance.cNvGrpSpPr;
      } catch (e) {}
      try {
        final c_grpSpPr = instance.grpSpPr;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingGroup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wordprocessinggroup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGrpSpPr = instance.cNvGrpSpPr;
      } catch (e) {}
      try {
        final c_grpSpPr = instance.grpSpPr;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingCanvas with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingCanvas(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bg = instance.bg;
      } catch (e) {}
      try {
        final c_whole = instance.whole;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_WordprocessingCanvas with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            'ns0',
          );
          builder.d_ct_wordprocessingcanvas(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WordprocessingCanvas(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bg = instance.bg;
      } catch (e) {}
      try {
        final c_whole = instance.whole;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AudioFile with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AudioFile(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_link = instance.r_link;
      } catch (e) {}
      try {
        final v_contentType = instance.contentType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AudioFile with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_audiofile(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            r_link: 'test',
            contentType: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AudioFile(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_link = instance.r_link;
      } catch (e) {}
      try {
        final v_contentType = instance.contentType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_VideoFile with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_VideoFile(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_link = instance.r_link;
      } catch (e) {}
      try {
        final v_contentType = instance.contentType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_VideoFile with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_videofile(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            r_link: 'test',
            contentType: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_VideoFile(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_link = instance.r_link;
      } catch (e) {}
      try {
        final v_contentType = instance.contentType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_QuickTimeFile with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_QuickTimeFile(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_link = instance.r_link;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_QuickTimeFile with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_quicktimefile(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            r_link: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_QuickTimeFile(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_link = instance.r_link;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AudioCDTime with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AudioCDTime(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_track = instance.track;
      } catch (e) {}
      try {
        final v_time = instance.time;
      } catch (e) {}
    });
    test('Test D_CT_AudioCDTime with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_audiocdtime(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            track: 1,
            time: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AudioCDTime(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_track = instance.track;
      } catch (e) {}
      try {
        final v_time = instance.time;
      } catch (e) {}
    });
    test('Test D_CT_AudioCD with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AudioCD(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_st = instance.st;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AudioCD with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_audiocd(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AudioCD(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_st = instance.st;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorScheme with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorScheme(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_dk1 = instance.dk1;
      } catch (e) {}
      try {
        final c_lt1 = instance.lt1;
      } catch (e) {}
      try {
        final c_dk2 = instance.dk2;
      } catch (e) {}
      try {
        final c_lt2 = instance.lt2;
      } catch (e) {}
      try {
        final c_accent1 = instance.accent1;
      } catch (e) {}
      try {
        final c_accent2 = instance.accent2;
      } catch (e) {}
      try {
        final c_accent3 = instance.accent3;
      } catch (e) {}
      try {
        final c_accent4 = instance.accent4;
      } catch (e) {}
      try {
        final c_accent5 = instance.accent5;
      } catch (e) {}
      try {
        final c_accent6 = instance.accent6;
      } catch (e) {}
      try {
        final c_hlink = instance.hlink;
      } catch (e) {}
      try {
        final c_folHlink = instance.folHlink;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorScheme with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_colorscheme(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorScheme(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_dk1 = instance.dk1;
      } catch (e) {}
      try {
        final c_lt1 = instance.lt1;
      } catch (e) {}
      try {
        final c_dk2 = instance.dk2;
      } catch (e) {}
      try {
        final c_lt2 = instance.lt2;
      } catch (e) {}
      try {
        final c_accent1 = instance.accent1;
      } catch (e) {}
      try {
        final c_accent2 = instance.accent2;
      } catch (e) {}
      try {
        final c_accent3 = instance.accent3;
      } catch (e) {}
      try {
        final c_accent4 = instance.accent4;
      } catch (e) {}
      try {
        final c_accent5 = instance.accent5;
      } catch (e) {}
      try {
        final c_accent6 = instance.accent6;
      } catch (e) {}
      try {
        final c_hlink = instance.hlink;
      } catch (e) {}
      try {
        final c_folHlink = instance.folHlink;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_CustomColor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CustomColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_CustomColor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_customcolor(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CustomColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_SupplementalFont with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SupplementalFont(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_script = instance.script;
      } catch (e) {}
      try {
        final v_typeface = instance.typeface;
      } catch (e) {}
    });
    test('Test D_CT_SupplementalFont with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_supplementalfont(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            script: 'test',
            typeface: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SupplementalFont(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_script = instance.script;
      } catch (e) {}
      try {
        final v_typeface = instance.typeface;
      } catch (e) {}
    });
    test('Test D_CT_CustomColorList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CustomColorList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_custClr = instance.custClr;
      } catch (e) {}
    });
    test('Test D_CT_CustomColorList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_customcolorlist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CustomColorList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_custClr = instance.custClr;
      } catch (e) {}
    });
    test('Test D_CT_FontCollection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FontCollection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_latin = instance.latin;
      } catch (e) {}
      try {
        final c_ea = instance.ea;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_font = instance.font;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_FontCollection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_fontcollection(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FontCollection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_latin = instance.latin;
      } catch (e) {}
      try {
        final c_ea = instance.ea;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_font = instance.font;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_EffectStyleItem with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectStyleItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
    });
    test('Test D_CT_EffectStyleItem with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_effectstyleitem(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectStyleItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
    });
    test('Test D_CT_FontScheme with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FontScheme(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_majorFont = instance.majorFont;
      } catch (e) {}
      try {
        final c_minorFont = instance.minorFont;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_FontScheme with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_fontscheme(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FontScheme(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_majorFont = instance.majorFont;
      } catch (e) {}
      try {
        final c_minorFont = instance.minorFont;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_FillStyleList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FillStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_FillStyleList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_fillstylelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FillStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_LineStyleList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ln = instance.ln;
      } catch (e) {}
    });
    test('Test D_CT_LineStyleList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_linestylelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ln = instance.ln;
      } catch (e) {}
    });
    test('Test D_CT_EffectStyleList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_effectStyle = instance.effectStyle;
      } catch (e) {}
    });
    test('Test D_CT_EffectStyleList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_effectstylelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_effectStyle = instance.effectStyle;
      } catch (e) {}
    });
    test('Test D_CT_BackgroundFillStyleList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BackgroundFillStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_BackgroundFillStyleList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_backgroundfillstylelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BackgroundFillStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_StyleMatrix with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleMatrix(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_fillStyleLst = instance.fillStyleLst;
      } catch (e) {}
      try {
        final c_lnStyleLst = instance.lnStyleLst;
      } catch (e) {}
      try {
        final c_effectStyleLst = instance.effectStyleLst;
      } catch (e) {}
      try {
        final c_bgFillStyleLst = instance.bgFillStyleLst;
      } catch (e) {}
    });
    test('Test D_CT_StyleMatrix with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_stylematrix(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleMatrix(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_fillStyleLst = instance.fillStyleLst;
      } catch (e) {}
      try {
        final c_lnStyleLst = instance.lnStyleLst;
      } catch (e) {}
      try {
        final c_effectStyleLst = instance.effectStyleLst;
      } catch (e) {}
      try {
        final c_bgFillStyleLst = instance.bgFillStyleLst;
      } catch (e) {}
    });
    test('Test D_CT_BaseStyles with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BaseStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_clrScheme = instance.clrScheme;
      } catch (e) {}
      try {
        final c_fontScheme = instance.fontScheme;
      } catch (e) {}
      try {
        final c_fmtScheme = instance.fmtScheme;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BaseStyles with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_basestyles(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BaseStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_clrScheme = instance.clrScheme;
      } catch (e) {}
      try {
        final c_fontScheme = instance.fontScheme;
      } catch (e) {}
      try {
        final c_fmtScheme = instance.fmtScheme;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_OfficeArtExtension with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfficeArtExtension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test D_CT_OfficeArtExtension with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_officeartextension(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            uri: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfficeArtExtension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test D_CT_Angle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Angle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Angle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_angle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Angle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PositiveFixedAngle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PositiveFixedAngle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PositiveFixedAngle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_positivefixedangle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PositiveFixedAngle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Percentage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Percentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Percentage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_percentage(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Percentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PositivePercentage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PositivePercentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PositivePercentage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_positivepercentage(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PositivePercentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_FixedPercentage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FixedPercentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_FixedPercentage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_fixedpercentage(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FixedPercentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PositiveFixedPercentage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PositiveFixedPercentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PositiveFixedPercentage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_positivefixedpercentage(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PositiveFixedPercentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Ratio with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Ratio(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_d = instance.d;
      } catch (e) {}
    });
    test('Test D_CT_Ratio with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_ratio(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            n: 1,
            d: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Ratio(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_d = instance.d;
      } catch (e) {}
    });
    test('Test D_CT_Point2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Point2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Point2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_point2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Point2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_PositiveSize2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PositiveSize2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_cx = instance.cx;
      } catch (e) {}
      try {
        final v_cy = instance.cy;
      } catch (e) {}
    });
    test('Test D_CT_PositiveSize2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_positivesize2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            cx: 'test',
            cy: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PositiveSize2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_cx = instance.cx;
      } catch (e) {}
      try {
        final v_cy = instance.cy;
      } catch (e) {}
    });
    test('Test D_CT_ComplementTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ComplementTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_ComplementTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_complementtransform(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ComplementTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_InverseTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_InverseTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_InverseTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_inversetransform(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_InverseTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GrayscaleTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GrayscaleTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GrayscaleTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_grayscaletransform(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GrayscaleTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GammaTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GammaTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GammaTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gammatransform(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GammaTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_InverseGammaTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_InverseGammaTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_InverseGammaTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_inversegammatransform(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_InverseGammaTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_ScRgbColor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ScRgbColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_g = instance.g;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_ScRgbColor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_scrgbcolor(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            r: 'test',
            g: 'test',
            b: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ScRgbColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_g = instance.g;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_SRgbColor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SRgbColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_SRgbColor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_srgbcolor(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SRgbColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_HslColor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HslColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hue = instance.hue;
      } catch (e) {}
      try {
        final v_sat = instance.sat;
      } catch (e) {}
      try {
        final v_lum = instance.lum;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_HslColor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_hslcolor(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            hue: 'test',
            sat: 'test',
            lum: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HslColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hue = instance.hue;
      } catch (e) {}
      try {
        final v_sat = instance.sat;
      } catch (e) {}
      try {
        final v_lum = instance.lum;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_SystemColor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SystemColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_lastClr = instance.lastClr;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_SystemColor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_systemcolor(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: D_ST_SystemColorVal.values.first,
            lastClr: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SystemColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_lastClr = instance.lastClr;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_SchemeColor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SchemeColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_SchemeColor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_schemecolor(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: D_ST_SchemeColorVal.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SchemeColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_PresetColor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_PresetColor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_presetcolor(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: D_ST_PresetColorVal.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_shade = instance.shade;
      } catch (e) {}
      try {
        final c_comp = instance.comp;
      } catch (e) {}
      try {
        final c_inv = instance.inv;
      } catch (e) {}
      try {
        final c_gray = instance.gray;
      } catch (e) {}
      try {
        final c_alpha = instance.alpha;
      } catch (e) {}
      try {
        final c_alphaOff = instance.alphaOff;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_hue = instance.hue;
      } catch (e) {}
      try {
        final c_hueOff = instance.hueOff;
      } catch (e) {}
      try {
        final c_hueMod = instance.hueMod;
      } catch (e) {}
      try {
        final c_sat = instance.sat;
      } catch (e) {}
      try {
        final c_satOff = instance.satOff;
      } catch (e) {}
      try {
        final c_satMod = instance.satMod;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_lumOff = instance.lumOff;
      } catch (e) {}
      try {
        final c_lumMod = instance.lumMod;
      } catch (e) {}
      try {
        final c_red = instance.red;
      } catch (e) {}
      try {
        final c_redOff = instance.redOff;
      } catch (e) {}
      try {
        final c_redMod = instance.redMod;
      } catch (e) {}
      try {
        final c_green = instance.green;
      } catch (e) {}
      try {
        final c_greenOff = instance.greenOff;
      } catch (e) {}
      try {
        final c_greenMod = instance.greenMod;
      } catch (e) {}
      try {
        final c_blue = instance.blue;
      } catch (e) {}
      try {
        final c_blueOff = instance.blueOff;
      } catch (e) {}
      try {
        final c_blueMod = instance.blueMod;
      } catch (e) {}
      try {
        final c_gamma = instance.gamma;
      } catch (e) {}
      try {
        final c_invGamma = instance.invGamma;
      } catch (e) {}
    });
    test('Test D_CT_OfficeArtExtensionList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfficeArtExtensionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test D_CT_OfficeArtExtensionList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_officeartextensionlist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfficeArtExtensionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test D_CT_Scale2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Scale2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sx = instance.sx;
      } catch (e) {}
      try {
        final c_sy = instance.sy;
      } catch (e) {}
    });
    test('Test D_CT_Scale2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_scale2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Scale2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sx = instance.sx;
      } catch (e) {}
      try {
        final c_sy = instance.sy;
      } catch (e) {}
    });
    test('Test D_CT_Transform2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Transform2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rot = instance.rot;
      } catch (e) {}
      try {
        final v_flipH = instance.flipH;
      } catch (e) {}
      try {
        final v_flipV = instance.flipV;
      } catch (e) {}
      try {
        final c_off = instance.off;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test D_CT_Transform2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_transform2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rot: 'test',
            flipH: true,
            flipV: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Transform2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rot = instance.rot;
      } catch (e) {}
      try {
        final v_flipH = instance.flipH;
      } catch (e) {}
      try {
        final v_flipV = instance.flipV;
      } catch (e) {}
      try {
        final c_off = instance.off;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test D_CT_GroupTransform2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupTransform2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rot = instance.rot;
      } catch (e) {}
      try {
        final v_flipH = instance.flipH;
      } catch (e) {}
      try {
        final v_flipV = instance.flipV;
      } catch (e) {}
      try {
        final c_off = instance.off;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
      try {
        final c_chOff = instance.chOff;
      } catch (e) {}
      try {
        final c_chExt = instance.chExt;
      } catch (e) {}
    });
    test('Test D_CT_GroupTransform2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_grouptransform2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rot: 'test',
            flipH: true,
            flipV: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupTransform2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rot = instance.rot;
      } catch (e) {}
      try {
        final v_flipH = instance.flipH;
      } catch (e) {}
      try {
        final v_flipV = instance.flipV;
      } catch (e) {}
      try {
        final c_off = instance.off;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
      try {
        final c_chOff = instance.chOff;
      } catch (e) {}
      try {
        final c_chExt = instance.chExt;
      } catch (e) {}
    });
    test('Test D_CT_Point3D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Point3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Point3D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_point3d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Point3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Vector3D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Vector3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Vector3D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_vector3d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Vector3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_SphereCoords with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SphereCoords(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lat = instance.lat;
      } catch (e) {}
      try {
        final v_lon = instance.lon;
      } catch (e) {}
      try {
        final v_rev = instance.rev;
      } catch (e) {}
    });
    test('Test D_CT_SphereCoords with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_spherecoords(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            lat: 'test',
            lon: 'test',
            rev: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SphereCoords(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lat = instance.lat;
      } catch (e) {}
      try {
        final v_lon = instance.lon;
      } catch (e) {}
      try {
        final v_rev = instance.rev;
      } catch (e) {}
    });
    test('Test D_CT_RelativeRect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelativeRect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_l = instance.l;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
    });
    test('Test D_CT_RelativeRect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_relativerect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            l: 'test',
            t: 'test',
            r: 'test',
            b: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelativeRect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_l = instance.l;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
    });
    test('Test D_CT_Color with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Color(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_Color with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_color(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Color(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_ColorMRU with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorMRU(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_ColorMRU with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_colormru(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorMRU(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_EmbeddedWAVAudioFile with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EmbeddedWAVAudioFile(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_embed = instance.r_embed;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test D_CT_EmbeddedWAVAudioFile with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_embeddedwavaudiofile(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            r_embed: 'test',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EmbeddedWAVAudioFile(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_embed = instance.r_embed;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test D_CT_Hyperlink with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Hyperlink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_invalidUrl = instance.invalidUrl;
      } catch (e) {}
      try {
        final v_action = instance.action;
      } catch (e) {}
      try {
        final v_tgtFrame = instance.tgtFrame;
      } catch (e) {}
      try {
        final v_tooltip = instance.tooltip;
      } catch (e) {}
      try {
        final v_history = instance.history;
      } catch (e) {}
      try {
        final v_highlightClick = instance.highlightClick;
      } catch (e) {}
      try {
        final v_endSnd = instance.endSnd;
      } catch (e) {}
      try {
        final c_snd = instance.snd;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Hyperlink with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_hyperlink(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            r_id: 'test',
            invalidUrl: 'test',
            action: 'test',
            tgtFrame: 'test',
            tooltip: 'test',
            history: true,
            highlightClick: true,
            endSnd: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Hyperlink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_invalidUrl = instance.invalidUrl;
      } catch (e) {}
      try {
        final v_action = instance.action;
      } catch (e) {}
      try {
        final v_tgtFrame = instance.tgtFrame;
      } catch (e) {}
      try {
        final v_tooltip = instance.tooltip;
      } catch (e) {}
      try {
        final v_history = instance.history;
      } catch (e) {}
      try {
        final v_highlightClick = instance.highlightClick;
      } catch (e) {}
      try {
        final v_endSnd = instance.endSnd;
      } catch (e) {}
      try {
        final c_snd = instance.snd;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ConnectorLocking with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ConnectorLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ConnectorLocking with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_connectorlocking(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ConnectorLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ShapeLocking with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ShapeLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_noTextEdit = instance.noTextEdit;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ShapeLocking with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_shapelocking(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            noTextEdit: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ShapeLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_noTextEdit = instance.noTextEdit;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PictureLocking with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_noCrop = instance.noCrop;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PictureLocking with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_picturelocking(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            noCrop: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_noCrop = instance.noCrop;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GroupLocking with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_noGrp = instance.noGrp;
      } catch (e) {}
      try {
        final v_noUngrp = instance.noUngrp;
      } catch (e) {}
      try {
        final v_noSelect = instance.noSelect;
      } catch (e) {}
      try {
        final v_noRot = instance.noRot;
      } catch (e) {}
      try {
        final v_noChangeAspect = instance.noChangeAspect;
      } catch (e) {}
      try {
        final v_noMove = instance.noMove;
      } catch (e) {}
      try {
        final v_noResize = instance.noResize;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GroupLocking with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_grouplocking(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            noGrp: true,
            noUngrp: true,
            noSelect: true,
            noRot: true,
            noChangeAspect: true,
            noMove: true,
            noResize: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_noGrp = instance.noGrp;
      } catch (e) {}
      try {
        final v_noUngrp = instance.noUngrp;
      } catch (e) {}
      try {
        final v_noSelect = instance.noSelect;
      } catch (e) {}
      try {
        final v_noRot = instance.noRot;
      } catch (e) {}
      try {
        final v_noChangeAspect = instance.noChangeAspect;
      } catch (e) {}
      try {
        final v_noMove = instance.noMove;
      } catch (e) {}
      try {
        final v_noResize = instance.noResize;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObjectFrameLocking with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObjectFrameLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_noGrp = instance.noGrp;
      } catch (e) {}
      try {
        final v_noDrilldown = instance.noDrilldown;
      } catch (e) {}
      try {
        final v_noSelect = instance.noSelect;
      } catch (e) {}
      try {
        final v_noChangeAspect = instance.noChangeAspect;
      } catch (e) {}
      try {
        final v_noMove = instance.noMove;
      } catch (e) {}
      try {
        final v_noResize = instance.noResize;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObjectFrameLocking with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_graphicalobjectframelocking(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            noGrp: true,
            noDrilldown: true,
            noSelect: true,
            noChangeAspect: true,
            noMove: true,
            noResize: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObjectFrameLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_noGrp = instance.noGrp;
      } catch (e) {}
      try {
        final v_noDrilldown = instance.noDrilldown;
      } catch (e) {}
      try {
        final v_noSelect = instance.noSelect;
      } catch (e) {}
      try {
        final v_noChangeAspect = instance.noChangeAspect;
      } catch (e) {}
      try {
        final v_noMove = instance.noMove;
      } catch (e) {}
      try {
        final v_noResize = instance.noResize;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ContentPartLocking with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ContentPartLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ContentPartLocking with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_contentpartlocking(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ContentPartLocking(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualDrawingProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualDrawingProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_descr = instance.descr;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_title = instance.title;
      } catch (e) {}
      try {
        final c_hlinkClick = instance.hlinkClick;
      } catch (e) {}
      try {
        final c_hlinkHover = instance.hlinkHover;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualDrawingProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_nonvisualdrawingprops(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            id: 'test',
            name: 'test',
            descr: 'test',
            hidden: true,
            title: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualDrawingProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_descr = instance.descr;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_title = instance.title;
      } catch (e) {}
      try {
        final c_hlinkClick = instance.hlinkClick;
      } catch (e) {}
      try {
        final c_hlinkHover = instance.hlinkHover;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualDrawingShapeProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualDrawingShapeProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_txBox = instance.txBox;
      } catch (e) {}
      try {
        final c_spLocks = instance.spLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualDrawingShapeProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_nonvisualdrawingshapeprops(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            txBox: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualDrawingShapeProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_txBox = instance.txBox;
      } catch (e) {}
      try {
        final c_spLocks = instance.spLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualConnectorProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualConnectorProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cxnSpLocks = instance.cxnSpLocks;
      } catch (e) {}
      try {
        final c_stCxn = instance.stCxn;
      } catch (e) {}
      try {
        final c_endCxn = instance.endCxn;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualConnectorProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_nonvisualconnectorproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualConnectorProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cxnSpLocks = instance.cxnSpLocks;
      } catch (e) {}
      try {
        final c_stCxn = instance.stCxn;
      } catch (e) {}
      try {
        final c_endCxn = instance.endCxn;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualPictureProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualPictureProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_preferRelativeResize = instance.preferRelativeResize;
      } catch (e) {}
      try {
        final c_picLocks = instance.picLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualPictureProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_nonvisualpictureproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            preferRelativeResize: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualPictureProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_preferRelativeResize = instance.preferRelativeResize;
      } catch (e) {}
      try {
        final c_picLocks = instance.picLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualGroupDrawingShapeProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualGroupDrawingShapeProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grpSpLocks = instance.grpSpLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualGroupDrawingShapeProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_nonvisualgroupdrawingshapeprops(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualGroupDrawingShapeProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grpSpLocks = instance.grpSpLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualGraphicFrameProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualGraphicFrameProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_graphicFrameLocks = instance.graphicFrameLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualGraphicFrameProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_nonvisualgraphicframeproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualGraphicFrameProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_graphicFrameLocks = instance.graphicFrameLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualContentPartProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualContentPartProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_isComment = instance.isComment;
      } catch (e) {}
      try {
        final c_cpLocks = instance.cpLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NonVisualContentPartProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_nonvisualcontentpartproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            isComment: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NonVisualContentPartProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_isComment = instance.isComment;
      } catch (e) {}
      try {
        final c_cpLocks = instance.cpLocks;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObjectData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObjectData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObjectData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_graphicalobjectdata(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            uri: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObjectData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObject with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObject(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_graphicData = instance.graphicData;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObject with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_graphicalobject(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObject(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_graphicData = instance.graphicData;
      } catch (e) {}
    });
    test('Test D_CT_AnimationDgmElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationDgmElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_bldStep = instance.bldStep;
      } catch (e) {}
    });
    test('Test D_CT_AnimationDgmElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_animationdgmelement(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            id: 'test',
            bldStep: D_ST_DgmBuildStep.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationDgmElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_bldStep = instance.bldStep;
      } catch (e) {}
    });
    test('Test D_CT_AnimationChartElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationChartElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_seriesIdx = instance.seriesIdx;
      } catch (e) {}
      try {
        final v_categoryIdx = instance.categoryIdx;
      } catch (e) {}
      try {
        final v_bldStep = instance.bldStep;
      } catch (e) {}
    });
    test('Test D_CT_AnimationChartElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_animationchartelement(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            seriesIdx: 1,
            categoryIdx: 1,
            bldStep: D_ST_ChartBuildStep.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationChartElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_seriesIdx = instance.seriesIdx;
      } catch (e) {}
      try {
        final v_categoryIdx = instance.categoryIdx;
      } catch (e) {}
      try {
        final v_bldStep = instance.bldStep;
      } catch (e) {}
    });
    test('Test D_CT_AnimationElementChoice with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationElementChoice(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_dgm = instance.dgm;
      } catch (e) {}
      try {
        final c_chart = instance.chart;
      } catch (e) {}
    });
    test('Test D_CT_AnimationElementChoice with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_animationelementchoice(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationElementChoice(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_dgm = instance.dgm;
      } catch (e) {}
      try {
        final c_chart = instance.chart;
      } catch (e) {}
    });
    test('Test D_CT_AnimationDgmBuildProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationDgmBuildProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rev = instance.rev;
      } catch (e) {}
    });
    test('Test D_CT_AnimationDgmBuildProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_animationdgmbuildproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rev: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationDgmBuildProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rev = instance.rev;
      } catch (e) {}
    });
    test('Test D_CT_AnimationChartBuildProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationChartBuildProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_animBg = instance.animBg;
      } catch (e) {}
    });
    test('Test D_CT_AnimationChartBuildProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_animationchartbuildproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            animBg: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimationChartBuildProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_animBg = instance.animBg;
      } catch (e) {}
    });
    test(
      'Test D_CT_AnimationGraphicalObjectBuildProperties with empty node',
      () {
        final builder = XmlBuilder();
        builder.element(
          'root',
          nest: () {
            builder.namespace(
              'http://schemas.openxmlformats.org/drawingml/2006/main',
              'ns0',
            );
            builder.element(
              'dummy',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            );
          },
        );
        final node =
            builder.buildDocument().rootElement.children.first as XmlElement;
        final instance = D_CT_AnimationGraphicalObjectBuildProperties(node);
        final errors = instance.validate();
        expect(errors, isA<List<String>>());
        try {
          final c_bldDgm = instance.bldDgm;
        } catch (e) {}
        try {
          final c_bldChart = instance.bldChart;
        } catch (e) {}
      },
    );
    test(
      'Test D_CT_AnimationGraphicalObjectBuildProperties with populated node',
      () {
        final builder = XmlBuilder();
        builder.element(
          'root',
          nest: () {
            builder.namespace(
              'http://schemas.openxmlformats.org/drawingml/2006/main',
              'ns0',
            );
            builder.d_ct_animationgraphicalobjectbuildproperties(
              tagName: 'dummy',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            );
          },
        );
        final node =
            builder.buildDocument().rootElement.children.first as XmlElement;
        final instance = D_CT_AnimationGraphicalObjectBuildProperties(node);
        final errors = instance.validate();
        expect(errors, isA<List<String>>());
        try {
          final c_bldDgm = instance.bldDgm;
        } catch (e) {}
        try {
          final c_bldChart = instance.bldChart;
        } catch (e) {}
      },
    );
    test('Test D_CT_BackgroundFormatting with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BackgroundFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
    });
    test('Test D_CT_BackgroundFormatting with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_backgroundformatting(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BackgroundFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
    });
    test('Test D_CT_WholeE2oFormatting with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WholeE2oFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ln = instance.ln;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
    });
    test('Test D_CT_WholeE2oFormatting with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_wholee2oformatting(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_WholeE2oFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ln = instance.ln;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
    });
    test('Test D_CT_GvmlUseShapeRectangle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlUseShapeRectangle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GvmlUseShapeRectangle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmluseshaperectangle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlUseShapeRectangle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GvmlTextShape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlTextShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_txBody = instance.txBody;
      } catch (e) {}
      try {
        final c_useSpRect = instance.useSpRect;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlTextShape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmltextshape(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlTextShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_txBody = instance.txBody;
      } catch (e) {}
      try {
        final c_useSpRect = instance.useSpRect;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlShapeNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvSpPr = instance.cNvSpPr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlShapeNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlshapenonvisual(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvSpPr = instance.cNvSpPr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlShape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvSpPr = instance.nvSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txSp = instance.txSp;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlShape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlshape(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvSpPr = instance.nvSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txSp = instance.txSp;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlConnectorNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlConnectorNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvCxnSpPr = instance.cNvCxnSpPr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlConnectorNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlconnectornonvisual(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlConnectorNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvCxnSpPr = instance.cNvCxnSpPr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlConnector with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlConnector(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvCxnSpPr = instance.nvCxnSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlConnector with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlconnector(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlConnector(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvCxnSpPr = instance.nvCxnSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlPictureNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlPictureNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvPicPr = instance.cNvPicPr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlPictureNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlpicturenonvisual(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlPictureNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvPicPr = instance.cNvPicPr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlPicture with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlPicture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvPicPr = instance.nvPicPr;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlPicture with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlpicture(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlPicture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvPicPr = instance.nvPicPr;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlGraphicFrameNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlGraphicFrameNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlGraphicFrameNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlgraphicframenonvisual(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlGraphicFrameNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlGraphicalObjectFrame with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlGraphicalObjectFrame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvGraphicFramePr = instance.nvGraphicFramePr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlGraphicalObjectFrame with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlgraphicalobjectframe(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlGraphicalObjectFrame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvGraphicFramePr = instance.nvGraphicFramePr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlGroupShapeNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlGroupShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGrpSpPr = instance.cNvGrpSpPr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlGroupShapeNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlgroupshapenonvisual(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlGroupShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGrpSpPr = instance.cNvGrpSpPr;
      } catch (e) {}
    });
    test('Test D_CT_GvmlGroupShape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlGroupShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvGrpSpPr = instance.nvGrpSpPr;
      } catch (e) {}
      try {
        final c_grpSpPr = instance.grpSpPr;
      } catch (e) {}
      try {
        final c_txSp = instance.txSp;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GvmlGroupShape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gvmlgroupshape(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GvmlGroupShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvGrpSpPr = instance.nvGrpSpPr;
      } catch (e) {}
      try {
        final c_grpSpPr = instance.grpSpPr;
      } catch (e) {}
      try {
        final c_txSp = instance.txSp;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Camera with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Camera(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final v_fov = instance.fov;
      } catch (e) {}
      try {
        final v_zoom = instance.zoom;
      } catch (e) {}
      try {
        final c_rot = instance.rot;
      } catch (e) {}
    });
    test('Test D_CT_Camera with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_camera(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            prst: D_ST_PresetCameraType.values.first,
            fov: 'test',
            zoom: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Camera(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final v_fov = instance.fov;
      } catch (e) {}
      try {
        final v_zoom = instance.zoom;
      } catch (e) {}
      try {
        final c_rot = instance.rot;
      } catch (e) {}
    });
    test('Test D_CT_LightRig with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LightRig(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rig = instance.rig;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final c_rot = instance.rot;
      } catch (e) {}
    });
    test('Test D_CT_LightRig with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_lightrig(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rig: D_ST_LightRigType.values.first,
            dir: D_ST_LightRigDirection.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LightRig(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rig = instance.rig;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final c_rot = instance.rot;
      } catch (e) {}
    });
    test('Test D_CT_Scene3D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Scene3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_camera = instance.camera;
      } catch (e) {}
      try {
        final c_lightRig = instance.lightRig;
      } catch (e) {}
      try {
        final c_backdrop = instance.backdrop;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Scene3D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_scene3d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Scene3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_camera = instance.camera;
      } catch (e) {}
      try {
        final c_lightRig = instance.lightRig;
      } catch (e) {}
      try {
        final c_backdrop = instance.backdrop;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Backdrop with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Backdrop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_anchor = instance.anchor;
      } catch (e) {}
      try {
        final c_norm = instance.norm;
      } catch (e) {}
      try {
        final c_up = instance.up;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Backdrop with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_backdrop(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Backdrop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_anchor = instance.anchor;
      } catch (e) {}
      try {
        final c_norm = instance.norm;
      } catch (e) {}
      try {
        final c_up = instance.up;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Bevel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Bevel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_h = instance.h;
      } catch (e) {}
      try {
        final v_prst = instance.prst;
      } catch (e) {}
    });
    test('Test D_CT_Bevel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_bevel(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            w: 'test',
            h: 'test',
            prst: D_ST_BevelPresetType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Bevel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_h = instance.h;
      } catch (e) {}
      try {
        final v_prst = instance.prst;
      } catch (e) {}
    });
    test('Test D_CT_Shape3D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Shape3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_extrusionH = instance.extrusionH;
      } catch (e) {}
      try {
        final v_contourW = instance.contourW;
      } catch (e) {}
      try {
        final v_prstMaterial = instance.prstMaterial;
      } catch (e) {}
      try {
        final c_bevelT = instance.bevelT;
      } catch (e) {}
      try {
        final c_bevelB = instance.bevelB;
      } catch (e) {}
      try {
        final c_extrusionClr = instance.extrusionClr;
      } catch (e) {}
      try {
        final c_contourClr = instance.contourClr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Shape3D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_shape3d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            extrusionH: 'test',
            contourW: 'test',
            prstMaterial: D_ST_PresetMaterialType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Shape3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_extrusionH = instance.extrusionH;
      } catch (e) {}
      try {
        final v_contourW = instance.contourW;
      } catch (e) {}
      try {
        final v_prstMaterial = instance.prstMaterial;
      } catch (e) {}
      try {
        final c_bevelT = instance.bevelT;
      } catch (e) {}
      try {
        final c_bevelB = instance.bevelB;
      } catch (e) {}
      try {
        final c_extrusionClr = instance.extrusionClr;
      } catch (e) {}
      try {
        final c_contourClr = instance.contourClr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_FlatText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FlatText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_FlatText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_flattext(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FlatText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_AlphaBiLevelEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaBiLevelEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_thresh = instance.thresh;
      } catch (e) {}
    });
    test('Test D_CT_AlphaBiLevelEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_alphabileveleffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            thresh: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaBiLevelEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_thresh = instance.thresh;
      } catch (e) {}
    });
    test('Test D_CT_AlphaCeilingEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaCeilingEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_AlphaCeilingEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_alphaceilingeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaCeilingEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_AlphaFloorEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaFloorEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_AlphaFloorEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_alphaflooreffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaFloorEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_AlphaInverseEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaInverseEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_AlphaInverseEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_alphainverseeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaInverseEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_AlphaModulateFixedEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaModulateFixedEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_amt = instance.amt;
      } catch (e) {}
    });
    test('Test D_CT_AlphaModulateFixedEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_alphamodulatefixedeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            amt: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaModulateFixedEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_amt = instance.amt;
      } catch (e) {}
    });
    test('Test D_CT_AlphaOutsetEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaOutsetEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_AlphaOutsetEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_alphaoutseteffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaOutsetEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_AlphaReplaceEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaReplaceEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_a = instance.a;
      } catch (e) {}
    });
    test('Test D_CT_AlphaReplaceEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_alphareplaceeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            a: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaReplaceEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_a = instance.a;
      } catch (e) {}
    });
    test('Test D_CT_BiLevelEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BiLevelEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_thresh = instance.thresh;
      } catch (e) {}
    });
    test('Test D_CT_BiLevelEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_bileveleffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            thresh: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BiLevelEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_thresh = instance.thresh;
      } catch (e) {}
    });
    test('Test D_CT_BlurEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BlurEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rad = instance.rad;
      } catch (e) {}
      try {
        final v_grow = instance.grow;
      } catch (e) {}
    });
    test('Test D_CT_BlurEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_blureffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rad: 'test',
            grow: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BlurEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rad = instance.rad;
      } catch (e) {}
      try {
        final v_grow = instance.grow;
      } catch (e) {}
    });
    test('Test D_CT_ColorChangeEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorChangeEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_useA = instance.useA;
      } catch (e) {}
      try {
        final c_clrFrom = instance.clrFrom;
      } catch (e) {}
      try {
        final c_clrTo = instance.clrTo;
      } catch (e) {}
    });
    test('Test D_CT_ColorChangeEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_colorchangeeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            useA: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorChangeEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_useA = instance.useA;
      } catch (e) {}
      try {
        final c_clrFrom = instance.clrFrom;
      } catch (e) {}
      try {
        final c_clrTo = instance.clrTo;
      } catch (e) {}
    });
    test('Test D_CT_ColorReplaceEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorReplaceEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_ColorReplaceEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_colorreplaceeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorReplaceEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_DuotoneEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DuotoneEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_DuotoneEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_duotoneeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DuotoneEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_GlowEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GlowEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rad = instance.rad;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_GlowEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gloweffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rad: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GlowEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rad = instance.rad;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_GrayscaleEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GrayscaleEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GrayscaleEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_grayscaleeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GrayscaleEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_HSLEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HSLEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hue = instance.hue;
      } catch (e) {}
      try {
        final v_sat = instance.sat;
      } catch (e) {}
      try {
        final v_lum = instance.lum;
      } catch (e) {}
    });
    test('Test D_CT_HSLEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_hsleffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            hue: 'test',
            sat: 'test',
            lum: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HSLEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hue = instance.hue;
      } catch (e) {}
      try {
        final v_sat = instance.sat;
      } catch (e) {}
      try {
        final v_lum = instance.lum;
      } catch (e) {}
    });
    test('Test D_CT_InnerShadowEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_InnerShadowEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blurRad = instance.blurRad;
      } catch (e) {}
      try {
        final v_dist = instance.dist;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_InnerShadowEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_innershadoweffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            blurRad: 'test',
            dist: 'test',
            dir: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_InnerShadowEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blurRad = instance.blurRad;
      } catch (e) {}
      try {
        final v_dist = instance.dist;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_LuminanceEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LuminanceEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bright = instance.bright;
      } catch (e) {}
      try {
        final v_contrast = instance.contrast;
      } catch (e) {}
    });
    test('Test D_CT_LuminanceEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_luminanceeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            bright: 'test',
            contrast: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LuminanceEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bright = instance.bright;
      } catch (e) {}
      try {
        final v_contrast = instance.contrast;
      } catch (e) {}
    });
    test('Test D_CT_OuterShadowEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OuterShadowEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blurRad = instance.blurRad;
      } catch (e) {}
      try {
        final v_dist = instance.dist;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final v_sx = instance.sx;
      } catch (e) {}
      try {
        final v_sy = instance.sy;
      } catch (e) {}
      try {
        final v_kx = instance.kx;
      } catch (e) {}
      try {
        final v_ky = instance.ky;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
      try {
        final v_rotWithShape = instance.rotWithShape;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_OuterShadowEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_outershadoweffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            blurRad: 'test',
            dist: 'test',
            dir: 'test',
            sx: 'test',
            sy: 'test',
            kx: 'test',
            ky: 'test',
            algn: D_ST_RectAlignment.values.first,
            rotWithShape: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OuterShadowEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blurRad = instance.blurRad;
      } catch (e) {}
      try {
        final v_dist = instance.dist;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final v_sx = instance.sx;
      } catch (e) {}
      try {
        final v_sy = instance.sy;
      } catch (e) {}
      try {
        final v_kx = instance.kx;
      } catch (e) {}
      try {
        final v_ky = instance.ky;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
      try {
        final v_rotWithShape = instance.rotWithShape;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_PresetShadowEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetShadowEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final v_dist = instance.dist;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_PresetShadowEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_presetshadoweffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            prst: D_ST_PresetShadowVal.values.first,
            dist: 'test',
            dir: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetShadowEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final v_dist = instance.dist;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_ReflectionEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ReflectionEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blurRad = instance.blurRad;
      } catch (e) {}
      try {
        final v_stA = instance.stA;
      } catch (e) {}
      try {
        final v_stPos = instance.stPos;
      } catch (e) {}
      try {
        final v_endA = instance.endA;
      } catch (e) {}
      try {
        final v_endPos = instance.endPos;
      } catch (e) {}
      try {
        final v_dist = instance.dist;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final v_fadeDir = instance.fadeDir;
      } catch (e) {}
      try {
        final v_sx = instance.sx;
      } catch (e) {}
      try {
        final v_sy = instance.sy;
      } catch (e) {}
      try {
        final v_kx = instance.kx;
      } catch (e) {}
      try {
        final v_ky = instance.ky;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
      try {
        final v_rotWithShape = instance.rotWithShape;
      } catch (e) {}
    });
    test('Test D_CT_ReflectionEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_reflectioneffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            blurRad: 'test',
            stA: 'test',
            stPos: 'test',
            endA: 'test',
            endPos: 'test',
            dist: 'test',
            dir: 'test',
            fadeDir: 'test',
            sx: 'test',
            sy: 'test',
            kx: 'test',
            ky: 'test',
            algn: D_ST_RectAlignment.values.first,
            rotWithShape: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ReflectionEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blurRad = instance.blurRad;
      } catch (e) {}
      try {
        final v_stA = instance.stA;
      } catch (e) {}
      try {
        final v_stPos = instance.stPos;
      } catch (e) {}
      try {
        final v_endA = instance.endA;
      } catch (e) {}
      try {
        final v_endPos = instance.endPos;
      } catch (e) {}
      try {
        final v_dist = instance.dist;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final v_fadeDir = instance.fadeDir;
      } catch (e) {}
      try {
        final v_sx = instance.sx;
      } catch (e) {}
      try {
        final v_sy = instance.sy;
      } catch (e) {}
      try {
        final v_kx = instance.kx;
      } catch (e) {}
      try {
        final v_ky = instance.ky;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
      try {
        final v_rotWithShape = instance.rotWithShape;
      } catch (e) {}
    });
    test('Test D_CT_RelativeOffsetEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelativeOffsetEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_tx = instance.tx;
      } catch (e) {}
      try {
        final v_ty = instance.ty;
      } catch (e) {}
    });
    test('Test D_CT_RelativeOffsetEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_relativeoffseteffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            tx: 'test',
            ty: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelativeOffsetEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_tx = instance.tx;
      } catch (e) {}
      try {
        final v_ty = instance.ty;
      } catch (e) {}
    });
    test('Test D_CT_SoftEdgesEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SoftEdgesEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rad = instance.rad;
      } catch (e) {}
    });
    test('Test D_CT_SoftEdgesEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_softedgeseffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rad: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SoftEdgesEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rad = instance.rad;
      } catch (e) {}
    });
    test('Test D_CT_TintEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TintEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hue = instance.hue;
      } catch (e) {}
      try {
        final v_amt = instance.amt;
      } catch (e) {}
    });
    test('Test D_CT_TintEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tinteffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            hue: 'test',
            amt: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TintEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hue = instance.hue;
      } catch (e) {}
      try {
        final v_amt = instance.amt;
      } catch (e) {}
    });
    test('Test D_CT_TransformEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TransformEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sx = instance.sx;
      } catch (e) {}
      try {
        final v_sy = instance.sy;
      } catch (e) {}
      try {
        final v_kx = instance.kx;
      } catch (e) {}
      try {
        final v_ky = instance.ky;
      } catch (e) {}
    });
    test('Test D_CT_TransformEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_transformeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            sx: 'test',
            sy: 'test',
            kx: 'test',
            ky: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TransformEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sx = instance.sx;
      } catch (e) {}
      try {
        final v_sy = instance.sy;
      } catch (e) {}
      try {
        final v_kx = instance.kx;
      } catch (e) {}
      try {
        final v_ky = instance.ky;
      } catch (e) {}
    });
    test('Test D_CT_NoFillProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NoFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_NoFillProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_nofillproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NoFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_SolidColorFillProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SolidColorFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_SolidColorFillProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_solidcolorfillproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SolidColorFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_LinearShadeProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LinearShadeProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ang = instance.ang;
      } catch (e) {}
      try {
        final v_scaled = instance.scaled;
      } catch (e) {}
    });
    test('Test D_CT_LinearShadeProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_linearshadeproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            ang: 'test',
            scaled: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LinearShadeProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ang = instance.ang;
      } catch (e) {}
      try {
        final v_scaled = instance.scaled;
      } catch (e) {}
    });
    test('Test D_CT_PathShadeProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PathShadeProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_path = instance.path;
      } catch (e) {}
      try {
        final c_fillToRect = instance.fillToRect;
      } catch (e) {}
    });
    test('Test D_CT_PathShadeProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_pathshadeproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            path: D_ST_PathShadeType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PathShadeProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_path = instance.path;
      } catch (e) {}
      try {
        final c_fillToRect = instance.fillToRect;
      } catch (e) {}
    });
    test('Test D_CT_GradientStop with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GradientStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_pos = instance.pos;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_GradientStop with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gradientstop(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            pos: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GradientStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_pos = instance.pos;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_GradientStopList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GradientStopList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gs = instance.gs;
      } catch (e) {}
    });
    test('Test D_CT_GradientStopList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gradientstoplist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GradientStopList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gs = instance.gs;
      } catch (e) {}
    });
    test('Test D_CT_GradientFillProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GradientFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_flip = instance.flip;
      } catch (e) {}
      try {
        final v_rotWithShape = instance.rotWithShape;
      } catch (e) {}
      try {
        final c_gsLst = instance.gsLst;
      } catch (e) {}
      try {
        final c_lin = instance.lin;
      } catch (e) {}
      try {
        final c_path = instance.path;
      } catch (e) {}
      try {
        final c_tileRect = instance.tileRect;
      } catch (e) {}
    });
    test('Test D_CT_GradientFillProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_gradientfillproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            flip: D_ST_TileFlipMode.values.first,
            rotWithShape: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GradientFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_flip = instance.flip;
      } catch (e) {}
      try {
        final v_rotWithShape = instance.rotWithShape;
      } catch (e) {}
      try {
        final c_gsLst = instance.gsLst;
      } catch (e) {}
      try {
        final c_lin = instance.lin;
      } catch (e) {}
      try {
        final c_path = instance.path;
      } catch (e) {}
      try {
        final c_tileRect = instance.tileRect;
      } catch (e) {}
    });
    test('Test D_CT_TileInfoProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TileInfoProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sx = instance.sx;
      } catch (e) {}
      try {
        final v_sy = instance.sy;
      } catch (e) {}
      try {
        final v_flip = instance.flip;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
    });
    test('Test D_CT_TileInfoProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tileinfoproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            sx: 'test',
            sy: 'test',
            flip: D_ST_TileFlipMode.values.first,
            algn: D_ST_RectAlignment.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TileInfoProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sx = instance.sx;
      } catch (e) {}
      try {
        final v_sy = instance.sy;
      } catch (e) {}
      try {
        final v_flip = instance.flip;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
    });
    test('Test D_CT_StretchInfoProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StretchInfoProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_fillRect = instance.fillRect;
      } catch (e) {}
    });
    test('Test D_CT_StretchInfoProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_stretchinfoproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StretchInfoProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_fillRect = instance.fillRect;
      } catch (e) {}
    });
    test('Test D_CT_Blip with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Blip(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_cstate = instance.cstate;
      } catch (e) {}
      try {
        final c_alphaBiLevel = instance.alphaBiLevel;
      } catch (e) {}
      try {
        final c_alphaCeiling = instance.alphaCeiling;
      } catch (e) {}
      try {
        final c_alphaFloor = instance.alphaFloor;
      } catch (e) {}
      try {
        final c_alphaInv = instance.alphaInv;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_alphaModFix = instance.alphaModFix;
      } catch (e) {}
      try {
        final c_alphaRepl = instance.alphaRepl;
      } catch (e) {}
      try {
        final c_biLevel = instance.biLevel;
      } catch (e) {}
      try {
        final c_blur = instance.blur;
      } catch (e) {}
      try {
        final c_clrChange = instance.clrChange;
      } catch (e) {}
      try {
        final c_clrRepl = instance.clrRepl;
      } catch (e) {}
      try {
        final c_duotone = instance.duotone;
      } catch (e) {}
      try {
        final c_fillOverlay = instance.fillOverlay;
      } catch (e) {}
      try {
        final c_grayscl = instance.grayscl;
      } catch (e) {}
      try {
        final c_hsl = instance.hsl;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Blip with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_blip(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            cstate: D_ST_BlipCompression.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Blip(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_cstate = instance.cstate;
      } catch (e) {}
      try {
        final c_alphaBiLevel = instance.alphaBiLevel;
      } catch (e) {}
      try {
        final c_alphaCeiling = instance.alphaCeiling;
      } catch (e) {}
      try {
        final c_alphaFloor = instance.alphaFloor;
      } catch (e) {}
      try {
        final c_alphaInv = instance.alphaInv;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_alphaModFix = instance.alphaModFix;
      } catch (e) {}
      try {
        final c_alphaRepl = instance.alphaRepl;
      } catch (e) {}
      try {
        final c_biLevel = instance.biLevel;
      } catch (e) {}
      try {
        final c_blur = instance.blur;
      } catch (e) {}
      try {
        final c_clrChange = instance.clrChange;
      } catch (e) {}
      try {
        final c_clrRepl = instance.clrRepl;
      } catch (e) {}
      try {
        final c_duotone = instance.duotone;
      } catch (e) {}
      try {
        final c_fillOverlay = instance.fillOverlay;
      } catch (e) {}
      try {
        final c_grayscl = instance.grayscl;
      } catch (e) {}
      try {
        final c_hsl = instance.hsl;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BlipFillProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BlipFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dpi = instance.dpi;
      } catch (e) {}
      try {
        final v_rotWithShape = instance.rotWithShape;
      } catch (e) {}
      try {
        final c_blip = instance.blip;
      } catch (e) {}
      try {
        final c_srcRect = instance.srcRect;
      } catch (e) {}
      try {
        final c_tile = instance.tile;
      } catch (e) {}
      try {
        final c_stretch = instance.stretch;
      } catch (e) {}
    });
    test('Test D_CT_BlipFillProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_blipfillproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            dpi: 1,
            rotWithShape: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BlipFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dpi = instance.dpi;
      } catch (e) {}
      try {
        final v_rotWithShape = instance.rotWithShape;
      } catch (e) {}
      try {
        final c_blip = instance.blip;
      } catch (e) {}
      try {
        final c_srcRect = instance.srcRect;
      } catch (e) {}
      try {
        final c_tile = instance.tile;
      } catch (e) {}
      try {
        final c_stretch = instance.stretch;
      } catch (e) {}
    });
    test('Test D_CT_PatternFillProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PatternFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final c_fgClr = instance.fgClr;
      } catch (e) {}
      try {
        final c_bgClr = instance.bgClr;
      } catch (e) {}
    });
    test('Test D_CT_PatternFillProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_patternfillproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            prst: D_ST_PresetPatternVal.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PatternFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final c_fgClr = instance.fgClr;
      } catch (e) {}
      try {
        final c_bgClr = instance.bgClr;
      } catch (e) {}
    });
    test('Test D_CT_GroupFillProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GroupFillProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_groupfillproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupFillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_FillProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_FillProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_fillproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FillProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_FillEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FillEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_FillEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_filleffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FillEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_FillOverlayEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FillOverlayEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blend = instance.blend;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_FillOverlayEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_filloverlayeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            blend: D_ST_BlendMode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FillOverlayEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blend = instance.blend;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_EffectReference with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test D_CT_EffectReference with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_effectreference(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            ref: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test D_CT_EffectContainer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectContainer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_cont = instance.cont;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_alphaBiLevel = instance.alphaBiLevel;
      } catch (e) {}
      try {
        final c_alphaCeiling = instance.alphaCeiling;
      } catch (e) {}
      try {
        final c_alphaFloor = instance.alphaFloor;
      } catch (e) {}
      try {
        final c_alphaInv = instance.alphaInv;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_alphaModFix = instance.alphaModFix;
      } catch (e) {}
      try {
        final c_alphaOutset = instance.alphaOutset;
      } catch (e) {}
      try {
        final c_alphaRepl = instance.alphaRepl;
      } catch (e) {}
      try {
        final c_biLevel = instance.biLevel;
      } catch (e) {}
      try {
        final c_blend = instance.blend;
      } catch (e) {}
      try {
        final c_blur = instance.blur;
      } catch (e) {}
      try {
        final c_clrChange = instance.clrChange;
      } catch (e) {}
      try {
        final c_clrRepl = instance.clrRepl;
      } catch (e) {}
      try {
        final c_duotone = instance.duotone;
      } catch (e) {}
      try {
        final c_fill = instance.fill;
      } catch (e) {}
      try {
        final c_fillOverlay = instance.fillOverlay;
      } catch (e) {}
      try {
        final c_glow = instance.glow;
      } catch (e) {}
      try {
        final c_grayscl = instance.grayscl;
      } catch (e) {}
      try {
        final c_hsl = instance.hsl;
      } catch (e) {}
      try {
        final c_innerShdw = instance.innerShdw;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_outerShdw = instance.outerShdw;
      } catch (e) {}
      try {
        final c_prstShdw = instance.prstShdw;
      } catch (e) {}
      try {
        final c_reflection = instance.reflection;
      } catch (e) {}
      try {
        final c_relOff = instance.relOff;
      } catch (e) {}
      try {
        final c_softEdge = instance.softEdge;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
    });
    test('Test D_CT_EffectContainer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_effectcontainer(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            type: D_ST_EffectContainerType.values.first,
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectContainer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_cont = instance.cont;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_alphaBiLevel = instance.alphaBiLevel;
      } catch (e) {}
      try {
        final c_alphaCeiling = instance.alphaCeiling;
      } catch (e) {}
      try {
        final c_alphaFloor = instance.alphaFloor;
      } catch (e) {}
      try {
        final c_alphaInv = instance.alphaInv;
      } catch (e) {}
      try {
        final c_alphaMod = instance.alphaMod;
      } catch (e) {}
      try {
        final c_alphaModFix = instance.alphaModFix;
      } catch (e) {}
      try {
        final c_alphaOutset = instance.alphaOutset;
      } catch (e) {}
      try {
        final c_alphaRepl = instance.alphaRepl;
      } catch (e) {}
      try {
        final c_biLevel = instance.biLevel;
      } catch (e) {}
      try {
        final c_blend = instance.blend;
      } catch (e) {}
      try {
        final c_blur = instance.blur;
      } catch (e) {}
      try {
        final c_clrChange = instance.clrChange;
      } catch (e) {}
      try {
        final c_clrRepl = instance.clrRepl;
      } catch (e) {}
      try {
        final c_duotone = instance.duotone;
      } catch (e) {}
      try {
        final c_fill = instance.fill;
      } catch (e) {}
      try {
        final c_fillOverlay = instance.fillOverlay;
      } catch (e) {}
      try {
        final c_glow = instance.glow;
      } catch (e) {}
      try {
        final c_grayscl = instance.grayscl;
      } catch (e) {}
      try {
        final c_hsl = instance.hsl;
      } catch (e) {}
      try {
        final c_innerShdw = instance.innerShdw;
      } catch (e) {}
      try {
        final c_lum = instance.lum;
      } catch (e) {}
      try {
        final c_outerShdw = instance.outerShdw;
      } catch (e) {}
      try {
        final c_prstShdw = instance.prstShdw;
      } catch (e) {}
      try {
        final c_reflection = instance.reflection;
      } catch (e) {}
      try {
        final c_relOff = instance.relOff;
      } catch (e) {}
      try {
        final c_softEdge = instance.softEdge;
      } catch (e) {}
      try {
        final c_tint = instance.tint;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
    });
    test('Test D_CT_AlphaModulateEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaModulateEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cont = instance.cont;
      } catch (e) {}
    });
    test('Test D_CT_AlphaModulateEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_alphamodulateeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AlphaModulateEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cont = instance.cont;
      } catch (e) {}
    });
    test('Test D_CT_BlendEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BlendEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blend = instance.blend;
      } catch (e) {}
      try {
        final c_cont = instance.cont;
      } catch (e) {}
    });
    test('Test D_CT_BlendEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_blendeffect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            blend: D_ST_BlendMode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BlendEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blend = instance.blend;
      } catch (e) {}
      try {
        final c_cont = instance.cont;
      } catch (e) {}
    });
    test('Test D_CT_EffectList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_blur = instance.blur;
      } catch (e) {}
      try {
        final c_fillOverlay = instance.fillOverlay;
      } catch (e) {}
      try {
        final c_glow = instance.glow;
      } catch (e) {}
      try {
        final c_innerShdw = instance.innerShdw;
      } catch (e) {}
      try {
        final c_outerShdw = instance.outerShdw;
      } catch (e) {}
      try {
        final c_prstShdw = instance.prstShdw;
      } catch (e) {}
      try {
        final c_reflection = instance.reflection;
      } catch (e) {}
      try {
        final c_softEdge = instance.softEdge;
      } catch (e) {}
    });
    test('Test D_CT_EffectList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_effectlist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_blur = instance.blur;
      } catch (e) {}
      try {
        final c_fillOverlay = instance.fillOverlay;
      } catch (e) {}
      try {
        final c_glow = instance.glow;
      } catch (e) {}
      try {
        final c_innerShdw = instance.innerShdw;
      } catch (e) {}
      try {
        final c_outerShdw = instance.outerShdw;
      } catch (e) {}
      try {
        final c_prstShdw = instance.prstShdw;
      } catch (e) {}
      try {
        final c_reflection = instance.reflection;
      } catch (e) {}
      try {
        final c_softEdge = instance.softEdge;
      } catch (e) {}
    });
    test('Test D_CT_EffectProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
    });
    test('Test D_CT_EffectProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_effectproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EffectProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
    });
    test('Test D_CT_GeomGuide with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GeomGuide(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_fmla = instance.fmla;
      } catch (e) {}
    });
    test('Test D_CT_GeomGuide with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_geomguide(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            name: 'test',
            fmla: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GeomGuide(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_fmla = instance.fmla;
      } catch (e) {}
    });
    test('Test D_CT_GeomGuideList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GeomGuideList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gd = instance.gd;
      } catch (e) {}
    });
    test('Test D_CT_GeomGuideList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_geomguidelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GeomGuideList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gd = instance.gd;
      } catch (e) {}
    });
    test('Test D_CT_AdjPoint2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AdjPoint2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_AdjPoint2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_adjpoint2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AdjPoint2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GeomRect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GeomRect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GeomRect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_geomrect(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GeomRect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_XYAdjustHandle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_XYAdjustHandle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_gdRefX = instance.gdRefX;
      } catch (e) {}
      try {
        final v_gdRefY = instance.gdRefY;
      } catch (e) {}
      try {
        final c_pos = instance.pos;
      } catch (e) {}
    });
    test('Test D_CT_XYAdjustHandle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_xyadjusthandle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            gdRefX: 'test',
            gdRefY: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_XYAdjustHandle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_gdRefX = instance.gdRefX;
      } catch (e) {}
      try {
        final v_gdRefY = instance.gdRefY;
      } catch (e) {}
      try {
        final c_pos = instance.pos;
      } catch (e) {}
    });
    test('Test D_CT_PolarAdjustHandle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PolarAdjustHandle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_gdRefR = instance.gdRefR;
      } catch (e) {}
      try {
        final v_gdRefAng = instance.gdRefAng;
      } catch (e) {}
      try {
        final c_pos = instance.pos;
      } catch (e) {}
    });
    test('Test D_CT_PolarAdjustHandle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_polaradjusthandle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            gdRefR: 'test',
            gdRefAng: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PolarAdjustHandle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_gdRefR = instance.gdRefR;
      } catch (e) {}
      try {
        final v_gdRefAng = instance.gdRefAng;
      } catch (e) {}
      try {
        final c_pos = instance.pos;
      } catch (e) {}
    });
    test('Test D_CT_ConnectionSite with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ConnectionSite(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
    });
    test('Test D_CT_ConnectionSite with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_connectionsite(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ConnectionSite(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
    });
    test('Test D_CT_AdjustHandleList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AdjustHandleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ahXY = instance.ahXY;
      } catch (e) {}
      try {
        final c_ahPolar = instance.ahPolar;
      } catch (e) {}
    });
    test('Test D_CT_AdjustHandleList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_adjusthandlelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AdjustHandleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ahXY = instance.ahXY;
      } catch (e) {}
      try {
        final c_ahPolar = instance.ahPolar;
      } catch (e) {}
    });
    test('Test D_CT_ConnectionSiteList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ConnectionSiteList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cxn = instance.cxn;
      } catch (e) {}
    });
    test('Test D_CT_ConnectionSiteList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_connectionsitelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ConnectionSiteList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cxn = instance.cxn;
      } catch (e) {}
    });
    test('Test D_CT_Connection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Connection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_idx = instance.idx;
      } catch (e) {}
    });
    test('Test D_CT_Connection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_connection(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            id: 'test',
            idx: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Connection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_idx = instance.idx;
      } catch (e) {}
    });
    test('Test D_CT_Path2DMoveTo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DMoveTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Path2DMoveTo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_path2dmoveto(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DMoveTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Path2DLineTo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DLineTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Path2DLineTo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_path2dlineto(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DLineTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Path2DArcTo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DArcTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Path2DArcTo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_path2darcto(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DArcTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Path2DQuadBezierTo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DQuadBezierTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Path2DQuadBezierTo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_path2dquadbezierto(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DQuadBezierTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Path2DCubicBezierTo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DCubicBezierTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Path2DCubicBezierTo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_path2dcubicbezierto(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DCubicBezierTo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Path2DClose with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DClose(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Path2DClose with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_path2dclose(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DClose(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Path2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_h = instance.h;
      } catch (e) {}
      try {
        final v_fill = instance.fill;
      } catch (e) {}
      try {
        final v_stroke = instance.stroke;
      } catch (e) {}
      try {
        final v_extrusionOk = instance.extrusionOk;
      } catch (e) {}
      try {
        final c_close = instance.close;
      } catch (e) {}
      try {
        final c_moveTo = instance.moveTo;
      } catch (e) {}
      try {
        final c_lnTo = instance.lnTo;
      } catch (e) {}
      try {
        final c_arcTo = instance.arcTo;
      } catch (e) {}
      try {
        final c_quadBezTo = instance.quadBezTo;
      } catch (e) {}
      try {
        final c_cubicBezTo = instance.cubicBezTo;
      } catch (e) {}
    });
    test('Test D_CT_Path2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_path2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            w: 'test',
            h: 'test',
            fill: D_ST_PathFillMode.values.first,
            stroke: true,
            extrusionOk: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_h = instance.h;
      } catch (e) {}
      try {
        final v_fill = instance.fill;
      } catch (e) {}
      try {
        final v_stroke = instance.stroke;
      } catch (e) {}
      try {
        final v_extrusionOk = instance.extrusionOk;
      } catch (e) {}
      try {
        final c_close = instance.close;
      } catch (e) {}
      try {
        final c_moveTo = instance.moveTo;
      } catch (e) {}
      try {
        final c_lnTo = instance.lnTo;
      } catch (e) {}
      try {
        final c_arcTo = instance.arcTo;
      } catch (e) {}
      try {
        final c_quadBezTo = instance.quadBezTo;
      } catch (e) {}
      try {
        final c_cubicBezTo = instance.cubicBezTo;
      } catch (e) {}
    });
    test('Test D_CT_Path2DList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_path = instance.path;
      } catch (e) {}
    });
    test('Test D_CT_Path2DList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_path2dlist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Path2DList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_path = instance.path;
      } catch (e) {}
    });
    test('Test D_CT_PresetGeometry2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetGeometry2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final c_avLst = instance.avLst;
      } catch (e) {}
    });
    test('Test D_CT_PresetGeometry2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_presetgeometry2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            prst: D_ST_ShapeType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetGeometry2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final c_avLst = instance.avLst;
      } catch (e) {}
    });
    test('Test D_CT_PresetTextShape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetTextShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final c_avLst = instance.avLst;
      } catch (e) {}
    });
    test('Test D_CT_PresetTextShape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_presettextshape(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            prst: D_ST_TextShapeType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetTextShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prst = instance.prst;
      } catch (e) {}
      try {
        final c_avLst = instance.avLst;
      } catch (e) {}
    });
    test('Test D_CT_CustomGeometry2D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CustomGeometry2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_avLst = instance.avLst;
      } catch (e) {}
      try {
        final c_gdLst = instance.gdLst;
      } catch (e) {}
      try {
        final c_ahLst = instance.ahLst;
      } catch (e) {}
      try {
        final c_cxnLst = instance.cxnLst;
      } catch (e) {}
      try {
        final c_rect = instance.rect;
      } catch (e) {}
      try {
        final c_pathLst = instance.pathLst;
      } catch (e) {}
    });
    test('Test D_CT_CustomGeometry2D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_customgeometry2d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CustomGeometry2D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_avLst = instance.avLst;
      } catch (e) {}
      try {
        final c_gdLst = instance.gdLst;
      } catch (e) {}
      try {
        final c_ahLst = instance.ahLst;
      } catch (e) {}
      try {
        final c_cxnLst = instance.cxnLst;
      } catch (e) {}
      try {
        final c_rect = instance.rect;
      } catch (e) {}
      try {
        final c_pathLst = instance.pathLst;
      } catch (e) {}
    });
    test('Test D_CT_LineEndProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineEndProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_len = instance.len;
      } catch (e) {}
    });
    test('Test D_CT_LineEndProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_lineendproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            type: D_ST_LineEndType.values.first,
            w: D_ST_LineEndWidth.values.first,
            len: D_ST_LineEndLength.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineEndProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_len = instance.len;
      } catch (e) {}
    });
    test('Test D_CT_LineJoinBevel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineJoinBevel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_LineJoinBevel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_linejoinbevel(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineJoinBevel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_LineJoinRound with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineJoinRound(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_LineJoinRound with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_linejoinround(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineJoinRound(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_LineJoinMiterProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineJoinMiterProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lim = instance.lim;
      } catch (e) {}
    });
    test('Test D_CT_LineJoinMiterProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_linejoinmiterproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            lim: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineJoinMiterProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lim = instance.lim;
      } catch (e) {}
    });
    test('Test D_CT_PresetLineDashProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetLineDashProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PresetLineDashProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_presetlinedashproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: D_ST_PresetLineDashVal.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresetLineDashProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_DashStop with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DashStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_d = instance.d;
      } catch (e) {}
      try {
        final v_sp = instance.sp;
      } catch (e) {}
    });
    test('Test D_CT_DashStop with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_dashstop(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            d: 'test',
            sp: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DashStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_d = instance.d;
      } catch (e) {}
      try {
        final v_sp = instance.sp;
      } catch (e) {}
    });
    test('Test D_CT_DashStopList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DashStopList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ds = instance.ds;
      } catch (e) {}
    });
    test('Test D_CT_DashStopList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_dashstoplist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DashStopList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ds = instance.ds;
      } catch (e) {}
    });
    test('Test D_CT_LineProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_cap = instance.cap;
      } catch (e) {}
      try {
        final v_cmpd = instance.cmpd;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_prstDash = instance.prstDash;
      } catch (e) {}
      try {
        final c_custDash = instance.custDash;
      } catch (e) {}
      try {
        final c_round = instance.round;
      } catch (e) {}
      try {
        final c_bevel = instance.bevel;
      } catch (e) {}
      try {
        final c_miter = instance.miter;
      } catch (e) {}
      try {
        final c_headEnd = instance.headEnd;
      } catch (e) {}
      try {
        final c_tailEnd = instance.tailEnd;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LineProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_lineproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            w: 'test',
            cap: D_ST_LineCap.values.first,
            cmpd: D_ST_CompoundLine.values.first,
            algn: D_ST_PenAlignment.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_cap = instance.cap;
      } catch (e) {}
      try {
        final v_cmpd = instance.cmpd;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_prstDash = instance.prstDash;
      } catch (e) {}
      try {
        final c_custDash = instance.custDash;
      } catch (e) {}
      try {
        final c_round = instance.round;
      } catch (e) {}
      try {
        final c_bevel = instance.bevel;
      } catch (e) {}
      try {
        final c_miter = instance.miter;
      } catch (e) {}
      try {
        final c_headEnd = instance.headEnd;
      } catch (e) {}
      try {
        final c_tailEnd = instance.tailEnd;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ShapeProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ShapeProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_custGeom = instance.custGeom;
      } catch (e) {}
      try {
        final c_prstGeom = instance.prstGeom;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_ln = instance.ln;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ShapeProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_shapeproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            bwMode: D_ST_BlackWhiteMode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ShapeProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_custGeom = instance.custGeom;
      } catch (e) {}
      try {
        final c_prstGeom = instance.prstGeom;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_ln = instance.ln;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GroupShapeProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupShapeProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GroupShapeProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_groupshapeproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            bwMode: D_ST_BlackWhiteMode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupShapeProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StyleMatrixReference with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleMatrixReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_StyleMatrixReference with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_stylematrixreference(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            idx: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleMatrixReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_FontReference with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FontReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_FontReference with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_fontreference(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            idx: D_ST_FontCollectionIndex.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FontReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_ShapeStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ShapeStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_lnRef = instance.lnRef;
      } catch (e) {}
      try {
        final c_fillRef = instance.fillRef;
      } catch (e) {}
      try {
        final c_effectRef = instance.effectRef;
      } catch (e) {}
      try {
        final c_fontRef = instance.fontRef;
      } catch (e) {}
    });
    test('Test D_CT_ShapeStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_shapestyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ShapeStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_lnRef = instance.lnRef;
      } catch (e) {}
      try {
        final c_fillRef = instance.fillRef;
      } catch (e) {}
      try {
        final c_effectRef = instance.effectRef;
      } catch (e) {}
      try {
        final c_fontRef = instance.fontRef;
      } catch (e) {}
    });
    test('Test D_CT_DefaultShapeDefinition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DefaultShapeDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_bodyPr = instance.bodyPr;
      } catch (e) {}
      try {
        final c_lstStyle = instance.lstStyle;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DefaultShapeDefinition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_defaultshapedefinition(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DefaultShapeDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_bodyPr = instance.bodyPr;
      } catch (e) {}
      try {
        final c_lstStyle = instance.lstStyle;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ObjectStyleDefaults with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ObjectStyleDefaults(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spDef = instance.spDef;
      } catch (e) {}
      try {
        final c_lnDef = instance.lnDef;
      } catch (e) {}
      try {
        final c_txDef = instance.txDef;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ObjectStyleDefaults with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_objectstyledefaults(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ObjectStyleDefaults(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spDef = instance.spDef;
      } catch (e) {}
      try {
        final c_lnDef = instance.lnDef;
      } catch (e) {}
      try {
        final c_txDef = instance.txDef;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_EmptyElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EmptyElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_EmptyElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_emptyelement(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_EmptyElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_ColorMapping with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorMapping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bg1 = instance.bg1;
      } catch (e) {}
      try {
        final v_tx1 = instance.tx1;
      } catch (e) {}
      try {
        final v_bg2 = instance.bg2;
      } catch (e) {}
      try {
        final v_tx2 = instance.tx2;
      } catch (e) {}
      try {
        final v_accent1 = instance.accent1;
      } catch (e) {}
      try {
        final v_accent2 = instance.accent2;
      } catch (e) {}
      try {
        final v_accent3 = instance.accent3;
      } catch (e) {}
      try {
        final v_accent4 = instance.accent4;
      } catch (e) {}
      try {
        final v_accent5 = instance.accent5;
      } catch (e) {}
      try {
        final v_accent6 = instance.accent6;
      } catch (e) {}
      try {
        final v_hlink = instance.hlink;
      } catch (e) {}
      try {
        final v_folHlink = instance.folHlink;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorMapping with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_colormapping(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            bg1: D_ST_ColorSchemeIndex.values.first,
            tx1: D_ST_ColorSchemeIndex.values.first,
            bg2: D_ST_ColorSchemeIndex.values.first,
            tx2: D_ST_ColorSchemeIndex.values.first,
            accent1: D_ST_ColorSchemeIndex.values.first,
            accent2: D_ST_ColorSchemeIndex.values.first,
            accent3: D_ST_ColorSchemeIndex.values.first,
            accent4: D_ST_ColorSchemeIndex.values.first,
            accent5: D_ST_ColorSchemeIndex.values.first,
            accent6: D_ST_ColorSchemeIndex.values.first,
            hlink: D_ST_ColorSchemeIndex.values.first,
            folHlink: D_ST_ColorSchemeIndex.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorMapping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bg1 = instance.bg1;
      } catch (e) {}
      try {
        final v_tx1 = instance.tx1;
      } catch (e) {}
      try {
        final v_bg2 = instance.bg2;
      } catch (e) {}
      try {
        final v_tx2 = instance.tx2;
      } catch (e) {}
      try {
        final v_accent1 = instance.accent1;
      } catch (e) {}
      try {
        final v_accent2 = instance.accent2;
      } catch (e) {}
      try {
        final v_accent3 = instance.accent3;
      } catch (e) {}
      try {
        final v_accent4 = instance.accent4;
      } catch (e) {}
      try {
        final v_accent5 = instance.accent5;
      } catch (e) {}
      try {
        final v_accent6 = instance.accent6;
      } catch (e) {}
      try {
        final v_hlink = instance.hlink;
      } catch (e) {}
      try {
        final v_folHlink = instance.folHlink;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorMappingOverride with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorMappingOverride(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_masterClrMapping = instance.masterClrMapping;
      } catch (e) {}
      try {
        final c_overrideClrMapping = instance.overrideClrMapping;
      } catch (e) {}
    });
    test('Test D_CT_ColorMappingOverride with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_colormappingoverride(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorMappingOverride(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_masterClrMapping = instance.masterClrMapping;
      } catch (e) {}
      try {
        final c_overrideClrMapping = instance.overrideClrMapping;
      } catch (e) {}
    });
    test('Test D_CT_ColorSchemeAndMapping with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorSchemeAndMapping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_clrScheme = instance.clrScheme;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
    });
    test('Test D_CT_ColorSchemeAndMapping with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_colorschemeandmapping(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorSchemeAndMapping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_clrScheme = instance.clrScheme;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
    });
    test('Test D_CT_ColorSchemeList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorSchemeList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extraClrScheme = instance.extraClrScheme;
      } catch (e) {}
    });
    test('Test D_CT_ColorSchemeList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_colorschemelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorSchemeList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extraClrScheme = instance.extraClrScheme;
      } catch (e) {}
    });
    test('Test D_CT_OfficeStyleSheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfficeStyleSheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_themeElements = instance.themeElements;
      } catch (e) {}
      try {
        final c_objectDefaults = instance.objectDefaults;
      } catch (e) {}
      try {
        final c_extraClrSchemeLst = instance.extraClrSchemeLst;
      } catch (e) {}
      try {
        final c_custClrLst = instance.custClrLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_OfficeStyleSheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_officestylesheet(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfficeStyleSheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_themeElements = instance.themeElements;
      } catch (e) {}
      try {
        final c_objectDefaults = instance.objectDefaults;
      } catch (e) {}
      try {
        final c_extraClrSchemeLst = instance.extraClrSchemeLst;
      } catch (e) {}
      try {
        final c_custClrLst = instance.custClrLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BaseStylesOverride with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BaseStylesOverride(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_clrScheme = instance.clrScheme;
      } catch (e) {}
      try {
        final c_fontScheme = instance.fontScheme;
      } catch (e) {}
      try {
        final c_fmtScheme = instance.fmtScheme;
      } catch (e) {}
    });
    test('Test D_CT_BaseStylesOverride with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_basestylesoverride(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BaseStylesOverride(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_clrScheme = instance.clrScheme;
      } catch (e) {}
      try {
        final c_fontScheme = instance.fontScheme;
      } catch (e) {}
      try {
        final c_fmtScheme = instance.fmtScheme;
      } catch (e) {}
    });
    test('Test D_CT_ClipboardStyleSheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ClipboardStyleSheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_themeElements = instance.themeElements;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
    });
    test('Test D_CT_ClipboardStyleSheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_clipboardstylesheet(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ClipboardStyleSheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_themeElements = instance.themeElements;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
    });
    test('Test D_CT_TableCellProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableCellProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_vert = instance.vert;
      } catch (e) {}
      try {
        final v_anchor = instance.anchor;
      } catch (e) {}
      try {
        final v_anchorCtr = instance.anchorCtr;
      } catch (e) {}
      try {
        final v_horzOverflow = instance.horzOverflow;
      } catch (e) {}
      try {
        final c_lnL = instance.lnL;
      } catch (e) {}
      try {
        final c_lnR = instance.lnR;
      } catch (e) {}
      try {
        final c_lnT = instance.lnT;
      } catch (e) {}
      try {
        final c_lnB = instance.lnB;
      } catch (e) {}
      try {
        final c_lnTlToBr = instance.lnTlToBr;
      } catch (e) {}
      try {
        final c_lnBlToTr = instance.lnBlToTr;
      } catch (e) {}
      try {
        final c_cell3D = instance.cell3D;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_headers = instance.headers;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableCellProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablecellproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            vert: D_ST_TextVerticalType.values.first,
            anchor: D_ST_TextAnchoringType.values.first,
            anchorCtr: true,
            horzOverflow: D_ST_TextHorzOverflowType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableCellProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_vert = instance.vert;
      } catch (e) {}
      try {
        final v_anchor = instance.anchor;
      } catch (e) {}
      try {
        final v_anchorCtr = instance.anchorCtr;
      } catch (e) {}
      try {
        final v_horzOverflow = instance.horzOverflow;
      } catch (e) {}
      try {
        final c_lnL = instance.lnL;
      } catch (e) {}
      try {
        final c_lnR = instance.lnR;
      } catch (e) {}
      try {
        final c_lnT = instance.lnT;
      } catch (e) {}
      try {
        final c_lnB = instance.lnB;
      } catch (e) {}
      try {
        final c_lnTlToBr = instance.lnTlToBr;
      } catch (e) {}
      try {
        final c_lnBlToTr = instance.lnBlToTr;
      } catch (e) {}
      try {
        final c_cell3D = instance.cell3D;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_headers = instance.headers;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Headers with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Headers(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_header = instance.header;
      } catch (e) {}
    });
    test('Test D_CT_Headers with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_headers(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Headers(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_header = instance.header;
      } catch (e) {}
    });
    test('Test D_CT_TableCol with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableCol(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableCol with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablecol(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableCol(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableGrid with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableGrid(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gridCol = instance.gridCol;
      } catch (e) {}
    });
    test('Test D_CT_TableGrid with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablegrid(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableGrid(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gridCol = instance.gridCol;
      } catch (e) {}
    });
    test('Test D_CT_TableCell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rowSpan = instance.rowSpan;
      } catch (e) {}
      try {
        final v_gridSpan = instance.gridSpan;
      } catch (e) {}
      try {
        final v_hMerge = instance.hMerge;
      } catch (e) {}
      try {
        final v_vMerge = instance.vMerge;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_txBody = instance.txBody;
      } catch (e) {}
      try {
        final c_tcPr = instance.tcPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableCell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablecell(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rowSpan: 1,
            gridSpan: 1,
            hMerge: true,
            vMerge: true,
            id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rowSpan = instance.rowSpan;
      } catch (e) {}
      try {
        final v_gridSpan = instance.gridSpan;
      } catch (e) {}
      try {
        final v_hMerge = instance.hMerge;
      } catch (e) {}
      try {
        final v_vMerge = instance.vMerge;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_txBody = instance.txBody;
      } catch (e) {}
      try {
        final c_tcPr = instance.tcPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableRow with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tc = instance.tc;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableRow with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablerow(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tc = instance.tc;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rtl = instance.rtl;
      } catch (e) {}
      try {
        final v_firstRow = instance.firstRow;
      } catch (e) {}
      try {
        final v_firstCol = instance.firstCol;
      } catch (e) {}
      try {
        final v_lastRow = instance.lastRow;
      } catch (e) {}
      try {
        final v_lastCol = instance.lastCol;
      } catch (e) {}
      try {
        final v_bandRow = instance.bandRow;
      } catch (e) {}
      try {
        final v_bandCol = instance.bandCol;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_tableStyle = instance.tableStyle;
      } catch (e) {}
      try {
        final c_tableStyleId = instance.tableStyleId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tableproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rtl: true,
            firstRow: true,
            firstCol: true,
            lastRow: true,
            lastCol: true,
            bandRow: true,
            bandCol: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rtl = instance.rtl;
      } catch (e) {}
      try {
        final v_firstRow = instance.firstRow;
      } catch (e) {}
      try {
        final v_firstCol = instance.firstCol;
      } catch (e) {}
      try {
        final v_lastRow = instance.lastRow;
      } catch (e) {}
      try {
        final v_lastCol = instance.lastCol;
      } catch (e) {}
      try {
        final v_bandRow = instance.bandRow;
      } catch (e) {}
      try {
        final v_bandCol = instance.bandCol;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_tableStyle = instance.tableStyle;
      } catch (e) {}
      try {
        final c_tableStyleId = instance.tableStyleId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Table with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Table(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tblPr = instance.tblPr;
      } catch (e) {}
      try {
        final c_tblGrid = instance.tblGrid;
      } catch (e) {}
      try {
        final c_tr = instance.tr;
      } catch (e) {}
    });
    test('Test D_CT_Table with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_table(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Table(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tblPr = instance.tblPr;
      } catch (e) {}
      try {
        final c_tblGrid = instance.tblGrid;
      } catch (e) {}
      try {
        final c_tr = instance.tr;
      } catch (e) {}
    });
    test('Test D_CT_Cell3D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Cell3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prstMaterial = instance.prstMaterial;
      } catch (e) {}
      try {
        final c_bevel = instance.bevel;
      } catch (e) {}
      try {
        final c_lightRig = instance.lightRig;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Cell3D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_cell3d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            prstMaterial: D_ST_PresetMaterialType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Cell3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prstMaterial = instance.prstMaterial;
      } catch (e) {}
      try {
        final c_bevel = instance.bevel;
      } catch (e) {}
      try {
        final c_lightRig = instance.lightRig;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ThemeableLineStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ThemeableLineStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ln = instance.ln;
      } catch (e) {}
      try {
        final c_lnRef = instance.lnRef;
      } catch (e) {}
    });
    test('Test D_CT_ThemeableLineStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_themeablelinestyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ThemeableLineStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ln = instance.ln;
      } catch (e) {}
      try {
        final c_lnRef = instance.lnRef;
      } catch (e) {}
    });
    test('Test D_CT_TableStyleTextStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableStyleTextStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final c_font = instance.font;
      } catch (e) {}
      try {
        final c_fontRef = instance.fontRef;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableStyleTextStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablestyletextstyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            b: D_ST_OnOffStyleType.values.first,
            i: D_ST_OnOffStyleType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableStyleTextStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final c_font = instance.font;
      } catch (e) {}
      try {
        final c_fontRef = instance.fontRef;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableCellBorderStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableCellBorderStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_insideH = instance.insideH;
      } catch (e) {}
      try {
        final c_insideV = instance.insideV;
      } catch (e) {}
      try {
        final c_tl2br = instance.tl2br;
      } catch (e) {}
      try {
        final c_tr2bl = instance.tr2bl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableCellBorderStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablecellborderstyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableCellBorderStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_insideH = instance.insideH;
      } catch (e) {}
      try {
        final c_insideV = instance.insideV;
      } catch (e) {}
      try {
        final c_tl2br = instance.tl2br;
      } catch (e) {}
      try {
        final c_tr2bl = instance.tr2bl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableBackgroundStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableBackgroundStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_fill = instance.fill;
      } catch (e) {}
      try {
        final c_fillRef = instance.fillRef;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_effectRef = instance.effectRef;
      } catch (e) {}
    });
    test('Test D_CT_TableBackgroundStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablebackgroundstyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableBackgroundStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_fill = instance.fill;
      } catch (e) {}
      try {
        final c_fillRef = instance.fillRef;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_effectRef = instance.effectRef;
      } catch (e) {}
    });
    test('Test D_CT_TableStyleCellStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableStyleCellStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tcBdr = instance.tcBdr;
      } catch (e) {}
      try {
        final c_fill = instance.fill;
      } catch (e) {}
      try {
        final c_fillRef = instance.fillRef;
      } catch (e) {}
      try {
        final c_cell3D = instance.cell3D;
      } catch (e) {}
    });
    test('Test D_CT_TableStyleCellStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablestylecellstyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableStyleCellStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tcBdr = instance.tcBdr;
      } catch (e) {}
      try {
        final c_fill = instance.fill;
      } catch (e) {}
      try {
        final c_fillRef = instance.fillRef;
      } catch (e) {}
      try {
        final c_cell3D = instance.cell3D;
      } catch (e) {}
    });
    test('Test D_CT_TablePartStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TablePartStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tcTxStyle = instance.tcTxStyle;
      } catch (e) {}
      try {
        final c_tcStyle = instance.tcStyle;
      } catch (e) {}
    });
    test('Test D_CT_TablePartStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablepartstyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TablePartStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tcTxStyle = instance.tcTxStyle;
      } catch (e) {}
      try {
        final c_tcStyle = instance.tcStyle;
      } catch (e) {}
    });
    test('Test D_CT_TableStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_styleId = instance.styleId;
      } catch (e) {}
      try {
        final v_styleName = instance.styleName;
      } catch (e) {}
      try {
        final c_tblBg = instance.tblBg;
      } catch (e) {}
      try {
        final c_wholeTbl = instance.wholeTbl;
      } catch (e) {}
      try {
        final c_band1H = instance.band1H;
      } catch (e) {}
      try {
        final c_band2H = instance.band2H;
      } catch (e) {}
      try {
        final c_band1V = instance.band1V;
      } catch (e) {}
      try {
        final c_band2V = instance.band2V;
      } catch (e) {}
      try {
        final c_lastCol = instance.lastCol;
      } catch (e) {}
      try {
        final c_firstCol = instance.firstCol;
      } catch (e) {}
      try {
        final c_lastRow = instance.lastRow;
      } catch (e) {}
      try {
        final c_seCell = instance.seCell;
      } catch (e) {}
      try {
        final c_swCell = instance.swCell;
      } catch (e) {}
      try {
        final c_firstRow = instance.firstRow;
      } catch (e) {}
      try {
        final c_neCell = instance.neCell;
      } catch (e) {}
      try {
        final c_nwCell = instance.nwCell;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablestyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            styleId: 'test',
            styleName: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_styleId = instance.styleId;
      } catch (e) {}
      try {
        final v_styleName = instance.styleName;
      } catch (e) {}
      try {
        final c_tblBg = instance.tblBg;
      } catch (e) {}
      try {
        final c_wholeTbl = instance.wholeTbl;
      } catch (e) {}
      try {
        final c_band1H = instance.band1H;
      } catch (e) {}
      try {
        final c_band2H = instance.band2H;
      } catch (e) {}
      try {
        final c_band1V = instance.band1V;
      } catch (e) {}
      try {
        final c_band2V = instance.band2V;
      } catch (e) {}
      try {
        final c_lastCol = instance.lastCol;
      } catch (e) {}
      try {
        final c_firstCol = instance.firstCol;
      } catch (e) {}
      try {
        final c_lastRow = instance.lastRow;
      } catch (e) {}
      try {
        final c_seCell = instance.seCell;
      } catch (e) {}
      try {
        final c_swCell = instance.swCell;
      } catch (e) {}
      try {
        final c_firstRow = instance.firstRow;
      } catch (e) {}
      try {
        final c_neCell = instance.neCell;
      } catch (e) {}
      try {
        final c_nwCell = instance.nwCell;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TableStyleList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_def = instance.def;
      } catch (e) {}
      try {
        final c_tblStyle = instance.tblStyle;
      } catch (e) {}
    });
    test('Test D_CT_TableStyleList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_tablestylelist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            def: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TableStyleList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_def = instance.def;
      } catch (e) {}
      try {
        final c_tblStyle = instance.tblStyle;
      } catch (e) {}
    });
    test('Test D_CT_TextParagraph with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextParagraph(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_br = instance.br;
      } catch (e) {}
      try {
        final c_fld = instance.fld;
      } catch (e) {}
      try {
        final c_endParaRPr = instance.endParaRPr;
      } catch (e) {}
    });
    test('Test D_CT_TextParagraph with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textparagraph(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextParagraph(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_br = instance.br;
      } catch (e) {}
      try {
        final c_fld = instance.fld;
      } catch (e) {}
      try {
        final c_endParaRPr = instance.endParaRPr;
      } catch (e) {}
    });
    test('Test D_CT_TextListStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextListStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_defPPr = instance.defPPr;
      } catch (e) {}
      try {
        final c_lvl1pPr = instance.lvl1pPr;
      } catch (e) {}
      try {
        final c_lvl2pPr = instance.lvl2pPr;
      } catch (e) {}
      try {
        final c_lvl3pPr = instance.lvl3pPr;
      } catch (e) {}
      try {
        final c_lvl4pPr = instance.lvl4pPr;
      } catch (e) {}
      try {
        final c_lvl5pPr = instance.lvl5pPr;
      } catch (e) {}
      try {
        final c_lvl6pPr = instance.lvl6pPr;
      } catch (e) {}
      try {
        final c_lvl7pPr = instance.lvl7pPr;
      } catch (e) {}
      try {
        final c_lvl8pPr = instance.lvl8pPr;
      } catch (e) {}
      try {
        final c_lvl9pPr = instance.lvl9pPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TextListStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textliststyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextListStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_defPPr = instance.defPPr;
      } catch (e) {}
      try {
        final c_lvl1pPr = instance.lvl1pPr;
      } catch (e) {}
      try {
        final c_lvl2pPr = instance.lvl2pPr;
      } catch (e) {}
      try {
        final c_lvl3pPr = instance.lvl3pPr;
      } catch (e) {}
      try {
        final c_lvl4pPr = instance.lvl4pPr;
      } catch (e) {}
      try {
        final c_lvl5pPr = instance.lvl5pPr;
      } catch (e) {}
      try {
        final c_lvl6pPr = instance.lvl6pPr;
      } catch (e) {}
      try {
        final c_lvl7pPr = instance.lvl7pPr;
      } catch (e) {}
      try {
        final c_lvl8pPr = instance.lvl8pPr;
      } catch (e) {}
      try {
        final c_lvl9pPr = instance.lvl9pPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TextNormalAutofit with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextNormalAutofit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextNormalAutofit with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textnormalautofit(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextNormalAutofit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextShapeAutofit with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextShapeAutofit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextShapeAutofit with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textshapeautofit(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextShapeAutofit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextNoAutofit with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextNoAutofit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextNoAutofit with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textnoautofit(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextNoAutofit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextBodyProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBodyProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rot = instance.rot;
      } catch (e) {}
      try {
        final v_spcFirstLastPara = instance.spcFirstLastPara;
      } catch (e) {}
      try {
        final v_vertOverflow = instance.vertOverflow;
      } catch (e) {}
      try {
        final v_horzOverflow = instance.horzOverflow;
      } catch (e) {}
      try {
        final v_vert = instance.vert;
      } catch (e) {}
      try {
        final v_wrap = instance.wrap;
      } catch (e) {}
      try {
        final v_numCol = instance.numCol;
      } catch (e) {}
      try {
        final v_spcCol = instance.spcCol;
      } catch (e) {}
      try {
        final v_rtlCol = instance.rtlCol;
      } catch (e) {}
      try {
        final v_fromWordArt = instance.fromWordArt;
      } catch (e) {}
      try {
        final v_anchor = instance.anchor;
      } catch (e) {}
      try {
        final v_anchorCtr = instance.anchorCtr;
      } catch (e) {}
      try {
        final v_forceAA = instance.forceAA;
      } catch (e) {}
      try {
        final v_upright = instance.upright;
      } catch (e) {}
      try {
        final v_compatLnSpc = instance.compatLnSpc;
      } catch (e) {}
      try {
        final c_prstTxWarp = instance.prstTxWarp;
      } catch (e) {}
      try {
        final c_noAutofit = instance.noAutofit;
      } catch (e) {}
      try {
        final c_normAutofit = instance.normAutofit;
      } catch (e) {}
      try {
        final c_spAutoFit = instance.spAutoFit;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
      try {
        final c_flatTx = instance.flatTx;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TextBodyProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textbodyproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            rot: 'test',
            spcFirstLastPara: true,
            vertOverflow: D_ST_TextVertOverflowType.values.first,
            horzOverflow: D_ST_TextHorzOverflowType.values.first,
            vert: D_ST_TextVerticalType.values.first,
            wrap: D_ST_TextWrappingType.values.first,
            numCol: 'test',
            spcCol: 'test',
            rtlCol: true,
            fromWordArt: true,
            anchor: D_ST_TextAnchoringType.values.first,
            anchorCtr: true,
            forceAA: true,
            upright: true,
            compatLnSpc: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBodyProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rot = instance.rot;
      } catch (e) {}
      try {
        final v_spcFirstLastPara = instance.spcFirstLastPara;
      } catch (e) {}
      try {
        final v_vertOverflow = instance.vertOverflow;
      } catch (e) {}
      try {
        final v_horzOverflow = instance.horzOverflow;
      } catch (e) {}
      try {
        final v_vert = instance.vert;
      } catch (e) {}
      try {
        final v_wrap = instance.wrap;
      } catch (e) {}
      try {
        final v_numCol = instance.numCol;
      } catch (e) {}
      try {
        final v_spcCol = instance.spcCol;
      } catch (e) {}
      try {
        final v_rtlCol = instance.rtlCol;
      } catch (e) {}
      try {
        final v_fromWordArt = instance.fromWordArt;
      } catch (e) {}
      try {
        final v_anchor = instance.anchor;
      } catch (e) {}
      try {
        final v_anchorCtr = instance.anchorCtr;
      } catch (e) {}
      try {
        final v_forceAA = instance.forceAA;
      } catch (e) {}
      try {
        final v_upright = instance.upright;
      } catch (e) {}
      try {
        final v_compatLnSpc = instance.compatLnSpc;
      } catch (e) {}
      try {
        final c_prstTxWarp = instance.prstTxWarp;
      } catch (e) {}
      try {
        final c_noAutofit = instance.noAutofit;
      } catch (e) {}
      try {
        final c_normAutofit = instance.normAutofit;
      } catch (e) {}
      try {
        final c_spAutoFit = instance.spAutoFit;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
      try {
        final c_flatTx = instance.flatTx;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TextBody with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBody(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bodyPr = instance.bodyPr;
      } catch (e) {}
      try {
        final c_lstStyle = instance.lstStyle;
      } catch (e) {}
      try {
        final c_p = instance.p;
      } catch (e) {}
    });
    test('Test D_CT_TextBody with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textbody(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBody(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bodyPr = instance.bodyPr;
      } catch (e) {}
      try {
        final c_lstStyle = instance.lstStyle;
      } catch (e) {}
      try {
        final c_p = instance.p;
      } catch (e) {}
    });
    test('Test D_CT_TextBulletColorFollowText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletColorFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextBulletColorFollowText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textbulletcolorfollowtext(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletColorFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextBulletSizeFollowText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletSizeFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextBulletSizeFollowText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textbulletsizefollowtext(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletSizeFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextBulletSizePercent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletSizePercent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TextBulletSizePercent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textbulletsizepercent(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletSizePercent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TextBulletSizePoint with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletSizePoint(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TextBulletSizePoint with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textbulletsizepoint(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletSizePoint(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TextBulletTypefaceFollowText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletTypefaceFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextBulletTypefaceFollowText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textbullettypefacefollowtext(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBulletTypefaceFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextAutonumberBullet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextAutonumberBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_startAt = instance.startAt;
      } catch (e) {}
    });
    test('Test D_CT_TextAutonumberBullet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textautonumberbullet(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            type: D_ST_TextAutonumberScheme.values.first,
            startAt: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextAutonumberBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_startAt = instance.startAt;
      } catch (e) {}
    });
    test('Test D_CT_TextCharBullet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextCharBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_char = instance.char;
      } catch (e) {}
    });
    test('Test D_CT_TextCharBullet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textcharbullet(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            char: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextCharBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_char = instance.char;
      } catch (e) {}
    });
    test('Test D_CT_TextBlipBullet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBlipBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_blip = instance.blip;
      } catch (e) {}
    });
    test('Test D_CT_TextBlipBullet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textblipbullet(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextBlipBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_blip = instance.blip;
      } catch (e) {}
    });
    test('Test D_CT_TextNoBullet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextNoBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextNoBullet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textnobullet(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextNoBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextFont with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextFont(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_typeface = instance.typeface;
      } catch (e) {}
      try {
        final v_panose = instance.panose;
      } catch (e) {}
      try {
        final v_pitchFamily = instance.pitchFamily;
      } catch (e) {}
      try {
        final v_charset = instance.charset;
      } catch (e) {}
    });
    test('Test D_CT_TextFont with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textfont(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            typeface: 'test',
            panose: 'test',
            pitchFamily: D_ST_PitchFamily.values.first,
            charset: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextFont(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_typeface = instance.typeface;
      } catch (e) {}
      try {
        final v_panose = instance.panose;
      } catch (e) {}
      try {
        final v_pitchFamily = instance.pitchFamily;
      } catch (e) {}
      try {
        final v_charset = instance.charset;
      } catch (e) {}
    });
    test('Test D_CT_TextUnderlineLineFollowText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextUnderlineLineFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextUnderlineLineFollowText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textunderlinelinefollowtext(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextUnderlineLineFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextUnderlineFillFollowText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextUnderlineFillFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextUnderlineFillFollowText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textunderlinefillfollowtext(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextUnderlineFillFollowText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextUnderlineFillGroupWrapper with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextUnderlineFillGroupWrapper(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_TextUnderlineFillGroupWrapper with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textunderlinefillgroupwrapper(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextUnderlineFillGroupWrapper(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
    });
    test('Test D_CT_TextCharacterProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextCharacterProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_kumimoji = instance.kumimoji;
      } catch (e) {}
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_altLang = instance.altLang;
      } catch (e) {}
      try {
        final v_sz = instance.sz;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_strike = instance.strike;
      } catch (e) {}
      try {
        final v_kern = instance.kern;
      } catch (e) {}
      try {
        final v_cap = instance.cap;
      } catch (e) {}
      try {
        final v_normalizeH = instance.normalizeH;
      } catch (e) {}
      try {
        final v_baseline = instance.baseline;
      } catch (e) {}
      try {
        final v_noProof = instance.noProof;
      } catch (e) {}
      try {
        final v_dirty = instance.dirty;
      } catch (e) {}
      try {
        final v_err = instance.err;
      } catch (e) {}
      try {
        final v_smtClean = instance.smtClean;
      } catch (e) {}
      try {
        final v_smtId = instance.smtId;
      } catch (e) {}
      try {
        final v_bmk = instance.bmk;
      } catch (e) {}
      try {
        final c_ln = instance.ln;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_uLnTx = instance.uLnTx;
      } catch (e) {}
      try {
        final c_uLn = instance.uLn;
      } catch (e) {}
      try {
        final c_uFillTx = instance.uFillTx;
      } catch (e) {}
      try {
        final c_uFill = instance.uFill;
      } catch (e) {}
      try {
        final c_latin = instance.latin;
      } catch (e) {}
      try {
        final c_ea = instance.ea;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_sym = instance.sym;
      } catch (e) {}
      try {
        final c_hlinkClick = instance.hlinkClick;
      } catch (e) {}
      try {
        final c_hlinkMouseOver = instance.hlinkMouseOver;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TextCharacterProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textcharacterproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            kumimoji: true,
            lang: 'test',
            altLang: 'test',
            sz: 'test',
            b: true,
            i: true,
            u: D_ST_TextUnderlineType.values.first,
            strike: D_ST_TextStrikeType.values.first,
            kern: 'test',
            cap: D_ST_TextCapsType.values.first,
            normalizeH: true,
            baseline: 'test',
            noProof: true,
            dirty: true,
            err: true,
            smtClean: true,
            smtId: 1,
            bmk: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextCharacterProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_kumimoji = instance.kumimoji;
      } catch (e) {}
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_altLang = instance.altLang;
      } catch (e) {}
      try {
        final v_sz = instance.sz;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_strike = instance.strike;
      } catch (e) {}
      try {
        final v_kern = instance.kern;
      } catch (e) {}
      try {
        final v_cap = instance.cap;
      } catch (e) {}
      try {
        final v_normalizeH = instance.normalizeH;
      } catch (e) {}
      try {
        final v_baseline = instance.baseline;
      } catch (e) {}
      try {
        final v_noProof = instance.noProof;
      } catch (e) {}
      try {
        final v_dirty = instance.dirty;
      } catch (e) {}
      try {
        final v_err = instance.err;
      } catch (e) {}
      try {
        final v_smtClean = instance.smtClean;
      } catch (e) {}
      try {
        final v_smtId = instance.smtId;
      } catch (e) {}
      try {
        final v_bmk = instance.bmk;
      } catch (e) {}
      try {
        final c_ln = instance.ln;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_uLnTx = instance.uLnTx;
      } catch (e) {}
      try {
        final c_uLn = instance.uLn;
      } catch (e) {}
      try {
        final c_uFillTx = instance.uFillTx;
      } catch (e) {}
      try {
        final c_uFill = instance.uFill;
      } catch (e) {}
      try {
        final c_latin = instance.latin;
      } catch (e) {}
      try {
        final c_ea = instance.ea;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_sym = instance.sym;
      } catch (e) {}
      try {
        final c_hlinkClick = instance.hlinkClick;
      } catch (e) {}
      try {
        final c_hlinkMouseOver = instance.hlinkMouseOver;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Boolean with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Boolean(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Boolean with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_boolean(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Boolean(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TextSpacingPercent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextSpacingPercent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextSpacingPercent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textspacingpercent(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextSpacingPercent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_TextSpacingPoint with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextSpacingPoint(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TextSpacingPoint with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textspacingpoint(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextSpacingPoint(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TextTabStop with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextTabStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_algn = instance.algn;
      } catch (e) {}
    });
    test('Test D_CT_TextTabStop with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_texttabstop(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            algn: D_ST_TextTabAlignType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextTabStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_algn = instance.algn;
      } catch (e) {}
    });
    test('Test D_CT_TextTabStopList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextTabStopList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tab = instance.tab;
      } catch (e) {}
    });
    test('Test D_CT_TextTabStopList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_texttabstoplist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextTabStopList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tab = instance.tab;
      } catch (e) {}
    });
    test('Test D_CT_TextLineBreak with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextLineBreak(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
    });
    test('Test D_CT_TextLineBreak with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textlinebreak(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextLineBreak(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
    });
    test('Test D_CT_TextSpacing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextSpacing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spcPct = instance.spcPct;
      } catch (e) {}
      try {
        final c_spcPts = instance.spcPts;
      } catch (e) {}
    });
    test('Test D_CT_TextSpacing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textspacing(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextSpacing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spcPct = instance.spcPct;
      } catch (e) {}
      try {
        final c_spcPts = instance.spcPts;
      } catch (e) {}
    });
    test('Test D_CT_TextParagraphProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextParagraphProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_marL = instance.marL;
      } catch (e) {}
      try {
        final v_marR = instance.marR;
      } catch (e) {}
      try {
        final v_lvl = instance.lvl;
      } catch (e) {}
      try {
        final v_indent = instance.indent;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
      try {
        final v_rtl = instance.rtl;
      } catch (e) {}
      try {
        final v_eaLnBrk = instance.eaLnBrk;
      } catch (e) {}
      try {
        final v_fontAlgn = instance.fontAlgn;
      } catch (e) {}
      try {
        final v_latinLnBrk = instance.latinLnBrk;
      } catch (e) {}
      try {
        final v_hangingPunct = instance.hangingPunct;
      } catch (e) {}
      try {
        final c_lnSpc = instance.lnSpc;
      } catch (e) {}
      try {
        final c_spcBef = instance.spcBef;
      } catch (e) {}
      try {
        final c_spcAft = instance.spcAft;
      } catch (e) {}
      try {
        final c_buClrTx = instance.buClrTx;
      } catch (e) {}
      try {
        final c_buClr = instance.buClr;
      } catch (e) {}
      try {
        final c_buSzTx = instance.buSzTx;
      } catch (e) {}
      try {
        final c_buSzPct = instance.buSzPct;
      } catch (e) {}
      try {
        final c_buSzPts = instance.buSzPts;
      } catch (e) {}
      try {
        final c_buFontTx = instance.buFontTx;
      } catch (e) {}
      try {
        final c_buFont = instance.buFont;
      } catch (e) {}
      try {
        final c_buNone = instance.buNone;
      } catch (e) {}
      try {
        final c_buAutoNum = instance.buAutoNum;
      } catch (e) {}
      try {
        final c_buChar = instance.buChar;
      } catch (e) {}
      try {
        final c_buBlip = instance.buBlip;
      } catch (e) {}
      try {
        final c_tabLst = instance.tabLst;
      } catch (e) {}
      try {
        final c_defRPr = instance.defRPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TextParagraphProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textparagraphproperties(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            marL: 'test',
            marR: 'test',
            lvl: 'test',
            indent: 'test',
            algn: D_ST_TextAlignType.values.first,
            rtl: true,
            eaLnBrk: true,
            fontAlgn: D_ST_TextFontAlignType.values.first,
            latinLnBrk: true,
            hangingPunct: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextParagraphProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_marL = instance.marL;
      } catch (e) {}
      try {
        final v_marR = instance.marR;
      } catch (e) {}
      try {
        final v_lvl = instance.lvl;
      } catch (e) {}
      try {
        final v_indent = instance.indent;
      } catch (e) {}
      try {
        final v_algn = instance.algn;
      } catch (e) {}
      try {
        final v_rtl = instance.rtl;
      } catch (e) {}
      try {
        final v_eaLnBrk = instance.eaLnBrk;
      } catch (e) {}
      try {
        final v_fontAlgn = instance.fontAlgn;
      } catch (e) {}
      try {
        final v_latinLnBrk = instance.latinLnBrk;
      } catch (e) {}
      try {
        final v_hangingPunct = instance.hangingPunct;
      } catch (e) {}
      try {
        final c_lnSpc = instance.lnSpc;
      } catch (e) {}
      try {
        final c_spcBef = instance.spcBef;
      } catch (e) {}
      try {
        final c_spcAft = instance.spcAft;
      } catch (e) {}
      try {
        final c_buClrTx = instance.buClrTx;
      } catch (e) {}
      try {
        final c_buClr = instance.buClr;
      } catch (e) {}
      try {
        final c_buSzTx = instance.buSzTx;
      } catch (e) {}
      try {
        final c_buSzPct = instance.buSzPct;
      } catch (e) {}
      try {
        final c_buSzPts = instance.buSzPts;
      } catch (e) {}
      try {
        final c_buFontTx = instance.buFontTx;
      } catch (e) {}
      try {
        final c_buFont = instance.buFont;
      } catch (e) {}
      try {
        final c_buNone = instance.buNone;
      } catch (e) {}
      try {
        final c_buAutoNum = instance.buAutoNum;
      } catch (e) {}
      try {
        final c_buChar = instance.buChar;
      } catch (e) {}
      try {
        final c_buBlip = instance.buBlip;
      } catch (e) {}
      try {
        final c_tabLst = instance.tabLst;
      } catch (e) {}
      try {
        final c_defRPr = instance.defRPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TextField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
    });
    test('Test D_CT_TextField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_textfield(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
            id: 'test',
            type: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
    });
    test('Test D_CT_RegularTextRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RegularTextRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
    });
    test('Test D_CT_RegularTextRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/main',
            'ns0',
          );
          builder.d_ct_regulartextrun(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RegularTextRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
    });
    test('Test D_CT_CTName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_CTName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_ctname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            lang: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_CTDescription with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTDescription(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_CTDescription with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_ctdescription(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            lang: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTDescription(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_CTCategory with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTCategory(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_pri = instance.pri;
      } catch (e) {}
    });
    test('Test D_CT_CTCategory with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_ctcategory(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            type: 'test',
            pri: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTCategory(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_pri = instance.pri;
      } catch (e) {}
    });
    test('Test D_CT_CTCategories with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTCategories(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cat = instance.cat;
      } catch (e) {}
    });
    test('Test D_CT_CTCategories with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_ctcategories(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTCategories(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cat = instance.cat;
      } catch (e) {}
    });
    test('Test D_CT_Colors with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Colors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_meth = instance.meth;
      } catch (e) {}
      try {
        final v_hueDir = instance.hueDir;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_Colors with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_colors(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            meth: D_ST_ClrAppMethod.values.first,
            hueDir: D_ST_HueDir.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Colors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_meth = instance.meth;
      } catch (e) {}
      try {
        final v_hueDir = instance.hueDir;
      } catch (e) {}
      try {
        final c_scrgbClr = instance.scrgbClr;
      } catch (e) {}
      try {
        final c_srgbClr = instance.srgbClr;
      } catch (e) {}
      try {
        final c_hslClr = instance.hslClr;
      } catch (e) {}
      try {
        final c_sysClr = instance.sysClr;
      } catch (e) {}
      try {
        final c_schemeClr = instance.schemeClr;
      } catch (e) {}
      try {
        final c_prstClr = instance.prstClr;
      } catch (e) {}
    });
    test('Test D_CT_CTStyleLabel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTStyleLabel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_fillClrLst = instance.fillClrLst;
      } catch (e) {}
      try {
        final c_linClrLst = instance.linClrLst;
      } catch (e) {}
      try {
        final c_effectClrLst = instance.effectClrLst;
      } catch (e) {}
      try {
        final c_txLinClrLst = instance.txLinClrLst;
      } catch (e) {}
      try {
        final c_txFillClrLst = instance.txFillClrLst;
      } catch (e) {}
      try {
        final c_txEffectClrLst = instance.txEffectClrLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_CTStyleLabel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_ctstylelabel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CTStyleLabel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_fillClrLst = instance.fillClrLst;
      } catch (e) {}
      try {
        final c_linClrLst = instance.linClrLst;
      } catch (e) {}
      try {
        final c_effectClrLst = instance.effectClrLst;
      } catch (e) {}
      try {
        final c_txLinClrLst = instance.txLinClrLst;
      } catch (e) {}
      try {
        final c_txFillClrLst = instance.txFillClrLst;
      } catch (e) {}
      try {
        final c_txEffectClrLst = instance.txEffectClrLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_styleLbl = instance.styleLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_colortransform(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            uniqueId: 'test',
            minVer: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_styleLbl = instance.styleLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorTransformHeader with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorTransformHeader(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final v_resId = instance.resId;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorTransformHeader with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_colortransformheader(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            uniqueId: 'test',
            minVer: 'test',
            resId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorTransformHeader(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final v_resId = instance.resId;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ColorTransformHeaderLst with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorTransformHeaderLst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_colorsDefHdr = instance.colorsDefHdr;
      } catch (e) {}
    });
    test('Test D_CT_ColorTransformHeaderLst with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_colortransformheaderlst(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ColorTransformHeaderLst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_colorsDefHdr = instance.colorsDefHdr;
      } catch (e) {}
    });
    test('Test D_CT_Pt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Pt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final c_prSet = instance.prSet;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Pt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_pt(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            type: D_ST_PtType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Pt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final c_prSet = instance.prSet;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PtList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PtList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_PtList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_ptlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PtList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Cxn with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Cxn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_srcOrd = instance.srcOrd;
      } catch (e) {}
      try {
        final v_destOrd = instance.destOrd;
      } catch (e) {}
      try {
        final v_presId = instance.presId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Cxn with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_cxn(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            type: D_ST_CxnType.values.first,
            srcOrd: 1,
            destOrd: 1,
            presId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Cxn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_srcOrd = instance.srcOrd;
      } catch (e) {}
      try {
        final v_destOrd = instance.destOrd;
      } catch (e) {}
      try {
        final v_presId = instance.presId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_CxnList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CxnList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cxn = instance.cxn;
      } catch (e) {}
    });
    test('Test D_CT_CxnList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_cxnlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CxnList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cxn = instance.cxn;
      } catch (e) {}
    });
    test('Test D_CT_DataModel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DataModel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ptLst = instance.ptLst;
      } catch (e) {}
      try {
        final c_cxnLst = instance.cxnLst;
      } catch (e) {}
      try {
        final c_bg = instance.bg;
      } catch (e) {}
      try {
        final c_whole = instance.whole;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DataModel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_datamodel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DataModel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ptLst = instance.ptLst;
      } catch (e) {}
      try {
        final c_cxnLst = instance.cxnLst;
      } catch (e) {}
      try {
        final c_bg = instance.bg;
      } catch (e) {}
      try {
        final c_whole = instance.whole;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Constraint with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Constraint(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_op = instance.op;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_fact = instance.fact;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Constraint with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_constraint(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            op: D_ST_BoolOperator.values.first,
            val: 1.0,
            fact: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Constraint(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_op = instance.op;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_fact = instance.fact;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Constraints with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Constraints(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_constr = instance.constr;
      } catch (e) {}
    });
    test('Test D_CT_Constraints with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_constraints(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Constraints(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_constr = instance.constr;
      } catch (e) {}
    });
    test('Test D_CT_NumericRule with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumericRule(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_fact = instance.fact;
      } catch (e) {}
      try {
        final v_max = instance.max;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NumericRule with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_numericrule(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: 1.0,
            fact: 1.0,
            max: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumericRule(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_fact = instance.fact;
      } catch (e) {}
      try {
        final v_max = instance.max;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Rules with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Rules(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rule = instance.rule;
      } catch (e) {}
    });
    test('Test D_CT_Rules with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_rules(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Rules(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rule = instance.rule;
      } catch (e) {}
    });
    test('Test D_CT_PresentationOf with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresentationOf(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PresentationOf with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_presentationof(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PresentationOf(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Adj with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Adj(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Adj with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_adj(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            idx: 'test',
            val: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Adj(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_AdjLst with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AdjLst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_adj = instance.adj;
      } catch (e) {}
    });
    test('Test D_CT_AdjLst with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_adjlst(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AdjLst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_adj = instance.adj;
      } catch (e) {}
    });
    test('Test D_CT_Shape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Shape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_textlink = instance.textlink;
      } catch (e) {}
      try {
        final v_fLocksText = instance.fLocksText;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvSpPr = instance.nvSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_txBody = instance.txBody;
      } catch (e) {}
    });
    test('Test D_CT_Shape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_shape(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            macro: 'test',
            textlink: 'test',
            fLocksText: true,
            fPublished: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Shape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_textlink = instance.textlink;
      } catch (e) {}
      try {
        final v_fLocksText = instance.fLocksText;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvSpPr = instance.nvSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_txBody = instance.txBody;
      } catch (e) {}
    });
    test('Test D_CT_Parameter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Parameter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test D_CT_Parameter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_parameter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            type: D_ST_ParameterId.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Parameter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test D_CT_Algorithm with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Algorithm(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_rev = instance.rev;
      } catch (e) {}
      try {
        final c_param = instance.param;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Algorithm with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_algorithm(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            type: D_ST_AlgorithmType.values.first,
            rev: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Algorithm(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_rev = instance.rev;
      } catch (e) {}
      try {
        final c_param = instance.param;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LayoutNode with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LayoutNode(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_styleLbl = instance.styleLbl;
      } catch (e) {}
      try {
        final v_chOrder = instance.chOrder;
      } catch (e) {}
      try {
        final v_moveWith = instance.moveWith;
      } catch (e) {}
      try {
        final c_alg = instance.alg;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_presOf = instance.presOf;
      } catch (e) {}
      try {
        final c_constrLst = instance.constrLst;
      } catch (e) {}
      try {
        final c_ruleLst = instance.ruleLst;
      } catch (e) {}
      try {
        final c_varLst = instance.varLst;
      } catch (e) {}
      try {
        final c_forEach = instance.forEach;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_choose = instance.choose;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LayoutNode with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_layoutnode(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            name: 'test',
            styleLbl: 'test',
            chOrder: D_ST_ChildOrderType.values.first,
            moveWith: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LayoutNode(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_styleLbl = instance.styleLbl;
      } catch (e) {}
      try {
        final v_chOrder = instance.chOrder;
      } catch (e) {}
      try {
        final v_moveWith = instance.moveWith;
      } catch (e) {}
      try {
        final c_alg = instance.alg;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_presOf = instance.presOf;
      } catch (e) {}
      try {
        final c_constrLst = instance.constrLst;
      } catch (e) {}
      try {
        final c_ruleLst = instance.ruleLst;
      } catch (e) {}
      try {
        final c_varLst = instance.varLst;
      } catch (e) {}
      try {
        final c_forEach = instance.forEach;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_choose = instance.choose;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ForEach with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ForEach(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final c_alg = instance.alg;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_presOf = instance.presOf;
      } catch (e) {}
      try {
        final c_constrLst = instance.constrLst;
      } catch (e) {}
      try {
        final c_ruleLst = instance.ruleLst;
      } catch (e) {}
      try {
        final c_forEach = instance.forEach;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_choose = instance.choose;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ForEach with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_foreach(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            name: 'test',
            ref: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ForEach(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final c_alg = instance.alg;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_presOf = instance.presOf;
      } catch (e) {}
      try {
        final c_constrLst = instance.constrLst;
      } catch (e) {}
      try {
        final c_ruleLst = instance.ruleLst;
      } catch (e) {}
      try {
        final c_forEach = instance.forEach;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_choose = instance.choose;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_When with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_When(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_func = instance.func;
      } catch (e) {}
      try {
        final v_op = instance.op;
      } catch (e) {}
      try {
        final c_alg = instance.alg;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_presOf = instance.presOf;
      } catch (e) {}
      try {
        final c_constrLst = instance.constrLst;
      } catch (e) {}
      try {
        final c_ruleLst = instance.ruleLst;
      } catch (e) {}
      try {
        final c_forEach = instance.forEach;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_choose = instance.choose;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_When with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_when(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            name: 'test',
            func: D_ST_FunctionType.values.first,
            op: D_ST_FunctionOperator.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_When(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_func = instance.func;
      } catch (e) {}
      try {
        final v_op = instance.op;
      } catch (e) {}
      try {
        final c_alg = instance.alg;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_presOf = instance.presOf;
      } catch (e) {}
      try {
        final c_constrLst = instance.constrLst;
      } catch (e) {}
      try {
        final c_ruleLst = instance.ruleLst;
      } catch (e) {}
      try {
        final c_forEach = instance.forEach;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_choose = instance.choose;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Otherwise with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Otherwise(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_alg = instance.alg;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_presOf = instance.presOf;
      } catch (e) {}
      try {
        final c_constrLst = instance.constrLst;
      } catch (e) {}
      try {
        final c_ruleLst = instance.ruleLst;
      } catch (e) {}
      try {
        final c_forEach = instance.forEach;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_choose = instance.choose;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Otherwise with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_otherwise(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Otherwise(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_alg = instance.alg;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_presOf = instance.presOf;
      } catch (e) {}
      try {
        final c_constrLst = instance.constrLst;
      } catch (e) {}
      try {
        final c_ruleLst = instance.ruleLst;
      } catch (e) {}
      try {
        final c_forEach = instance.forEach;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_choose = instance.choose;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Choose with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Choose(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_if_ = instance.if_;
      } catch (e) {}
      try {
        final c_else_ = instance.else_;
      } catch (e) {}
    });
    test('Test D_CT_Choose with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_choose(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Choose(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_if_ = instance.if_;
      } catch (e) {}
      try {
        final c_else_ = instance.else_;
      } catch (e) {}
    });
    test('Test D_CT_SampleData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SampleData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_useDef = instance.useDef;
      } catch (e) {}
      try {
        final c_dataModel = instance.dataModel;
      } catch (e) {}
    });
    test('Test D_CT_SampleData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_sampledata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            useDef: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SampleData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_useDef = instance.useDef;
      } catch (e) {}
      try {
        final c_dataModel = instance.dataModel;
      } catch (e) {}
    });
    test('Test D_CT_Category with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Category(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_pri = instance.pri;
      } catch (e) {}
    });
    test('Test D_CT_Category with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_category(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            type: 'test',
            pri: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Category(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_pri = instance.pri;
      } catch (e) {}
    });
    test('Test D_CT_Categories with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Categories(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cat = instance.cat;
      } catch (e) {}
    });
    test('Test D_CT_Categories with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_categories(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Categories(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cat = instance.cat;
      } catch (e) {}
    });
    test('Test D_CT_Name with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Name(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Name with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_name(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            lang: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Name(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Description with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Description(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Description with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_description(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            lang: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Description(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_DiagramDefinition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DiagramDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final v_defStyle = instance.defStyle;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_sampData = instance.sampData;
      } catch (e) {}
      try {
        final c_styleData = instance.styleData;
      } catch (e) {}
      try {
        final c_clrData = instance.clrData;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DiagramDefinition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_diagramdefinition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            uniqueId: 'test',
            minVer: 'test',
            defStyle: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DiagramDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final v_defStyle = instance.defStyle;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_sampData = instance.sampData;
      } catch (e) {}
      try {
        final c_styleData = instance.styleData;
      } catch (e) {}
      try {
        final c_clrData = instance.clrData;
      } catch (e) {}
      try {
        final c_layoutNode = instance.layoutNode;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DiagramDefinitionHeader with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DiagramDefinitionHeader(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final v_defStyle = instance.defStyle;
      } catch (e) {}
      try {
        final v_resId = instance.resId;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DiagramDefinitionHeader with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_diagramdefinitionheader(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            uniqueId: 'test',
            minVer: 'test',
            defStyle: 'test',
            resId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DiagramDefinitionHeader(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final v_defStyle = instance.defStyle;
      } catch (e) {}
      try {
        final v_resId = instance.resId;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DiagramDefinitionHeaderLst with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DiagramDefinitionHeaderLst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layoutDefHdr = instance.layoutDefHdr;
      } catch (e) {}
    });
    test('Test D_CT_DiagramDefinitionHeaderLst with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_diagramdefinitionheaderlst(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DiagramDefinitionHeaderLst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layoutDefHdr = instance.layoutDefHdr;
      } catch (e) {}
    });
    test('Test D_CT_RelIds with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelIds(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_dm = instance.r_dm;
      } catch (e) {}
      try {
        final v_r_lo = instance.r_lo;
      } catch (e) {}
      try {
        final v_r_qs = instance.r_qs;
      } catch (e) {}
      try {
        final v_r_cs = instance.r_cs;
      } catch (e) {}
    });
    test('Test D_CT_RelIds with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_relids(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            r_dm: 'test',
            r_lo: 'test',
            r_qs: 'test',
            r_cs: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelIds(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_dm = instance.r_dm;
      } catch (e) {}
      try {
        final v_r_lo = instance.r_lo;
      } catch (e) {}
      try {
        final v_r_qs = instance.r_qs;
      } catch (e) {}
      try {
        final v_r_cs = instance.r_cs;
      } catch (e) {}
    });
    test('Test D_CT_ElemPropSet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ElemPropSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_presName = instance.presName;
      } catch (e) {}
      try {
        final v_presStyleLbl = instance.presStyleLbl;
      } catch (e) {}
      try {
        final v_presStyleIdx = instance.presStyleIdx;
      } catch (e) {}
      try {
        final v_presStyleCnt = instance.presStyleCnt;
      } catch (e) {}
      try {
        final v_loTypeId = instance.loTypeId;
      } catch (e) {}
      try {
        final v_loCatId = instance.loCatId;
      } catch (e) {}
      try {
        final v_qsTypeId = instance.qsTypeId;
      } catch (e) {}
      try {
        final v_qsCatId = instance.qsCatId;
      } catch (e) {}
      try {
        final v_csTypeId = instance.csTypeId;
      } catch (e) {}
      try {
        final v_csCatId = instance.csCatId;
      } catch (e) {}
      try {
        final v_coherent3DOff = instance.coherent3DOff;
      } catch (e) {}
      try {
        final v_phldrT = instance.phldrT;
      } catch (e) {}
      try {
        final v_phldr = instance.phldr;
      } catch (e) {}
      try {
        final v_custAng = instance.custAng;
      } catch (e) {}
      try {
        final v_custFlipVert = instance.custFlipVert;
      } catch (e) {}
      try {
        final v_custFlipHor = instance.custFlipHor;
      } catch (e) {}
      try {
        final v_custSzX = instance.custSzX;
      } catch (e) {}
      try {
        final v_custSzY = instance.custSzY;
      } catch (e) {}
      try {
        final v_custT = instance.custT;
      } catch (e) {}
      try {
        final c_presLayoutVars = instance.presLayoutVars;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
    });
    test('Test D_CT_ElemPropSet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_elempropset(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            presName: 'test',
            presStyleLbl: 'test',
            presStyleIdx: 1,
            presStyleCnt: 1,
            loTypeId: 'test',
            loCatId: 'test',
            qsTypeId: 'test',
            qsCatId: 'test',
            csTypeId: 'test',
            csCatId: 'test',
            coherent3DOff: true,
            phldrT: 'test',
            phldr: true,
            custAng: 1,
            custFlipVert: true,
            custFlipHor: true,
            custSzX: 1,
            custSzY: 1,
            custT: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ElemPropSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_presName = instance.presName;
      } catch (e) {}
      try {
        final v_presStyleLbl = instance.presStyleLbl;
      } catch (e) {}
      try {
        final v_presStyleIdx = instance.presStyleIdx;
      } catch (e) {}
      try {
        final v_presStyleCnt = instance.presStyleCnt;
      } catch (e) {}
      try {
        final v_loTypeId = instance.loTypeId;
      } catch (e) {}
      try {
        final v_loCatId = instance.loCatId;
      } catch (e) {}
      try {
        final v_qsTypeId = instance.qsTypeId;
      } catch (e) {}
      try {
        final v_qsCatId = instance.qsCatId;
      } catch (e) {}
      try {
        final v_csTypeId = instance.csTypeId;
      } catch (e) {}
      try {
        final v_csCatId = instance.csCatId;
      } catch (e) {}
      try {
        final v_coherent3DOff = instance.coherent3DOff;
      } catch (e) {}
      try {
        final v_phldrT = instance.phldrT;
      } catch (e) {}
      try {
        final v_phldr = instance.phldr;
      } catch (e) {}
      try {
        final v_custAng = instance.custAng;
      } catch (e) {}
      try {
        final v_custFlipVert = instance.custFlipVert;
      } catch (e) {}
      try {
        final v_custFlipHor = instance.custFlipHor;
      } catch (e) {}
      try {
        final v_custSzX = instance.custSzX;
      } catch (e) {}
      try {
        final v_custSzY = instance.custSzY;
      } catch (e) {}
      try {
        final v_custT = instance.custT;
      } catch (e) {}
      try {
        final c_presLayoutVars = instance.presLayoutVars;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
    });
    test('Test D_CT_OrgChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OrgChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_OrgChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_orgchart(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OrgChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ChildMax with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ChildMax(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ChildMax with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_childmax(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ChildMax(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ChildPref with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ChildPref(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ChildPref with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_childpref(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ChildPref(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_BulletEnabled with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BulletEnabled(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_BulletEnabled with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_bulletenabled(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BulletEnabled(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Direction with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Direction(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Direction with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_direction(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: D_ST_Direction.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Direction(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_HierBranchStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HierBranchStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_HierBranchStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_hierbranchstyle(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: D_ST_HierBranchStyle.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HierBranchStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_AnimOne with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimOne(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_AnimOne with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_animone(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: D_ST_AnimOneStr.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimOne(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_AnimLvl with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimLvl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_AnimLvl with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_animlvl(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: D_ST_AnimLvlStr.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnimLvl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ResizeHandles with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ResizeHandles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ResizeHandles with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_resizehandles(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            val: D_ST_ResizeHandlesStr.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ResizeHandles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LayoutVariablePropertySet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LayoutVariablePropertySet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_orgChart = instance.orgChart;
      } catch (e) {}
      try {
        final c_chMax = instance.chMax;
      } catch (e) {}
      try {
        final c_chPref = instance.chPref;
      } catch (e) {}
      try {
        final c_bulletEnabled = instance.bulletEnabled;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_hierBranch = instance.hierBranch;
      } catch (e) {}
      try {
        final c_animOne = instance.animOne;
      } catch (e) {}
      try {
        final c_animLvl = instance.animLvl;
      } catch (e) {}
      try {
        final c_resizeHandles = instance.resizeHandles;
      } catch (e) {}
    });
    test('Test D_CT_LayoutVariablePropertySet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_layoutvariablepropertyset(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LayoutVariablePropertySet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_orgChart = instance.orgChart;
      } catch (e) {}
      try {
        final c_chMax = instance.chMax;
      } catch (e) {}
      try {
        final c_chPref = instance.chPref;
      } catch (e) {}
      try {
        final c_bulletEnabled = instance.bulletEnabled;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_hierBranch = instance.hierBranch;
      } catch (e) {}
      try {
        final c_animOne = instance.animOne;
      } catch (e) {}
      try {
        final c_animLvl = instance.animLvl;
      } catch (e) {}
      try {
        final c_resizeHandles = instance.resizeHandles;
      } catch (e) {}
    });
    test('Test D_CT_SDName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SDName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_SDName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_sdname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            lang: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SDName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_SDDescription with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SDDescription(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_SDDescription with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_sddescription(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            lang: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SDDescription(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_SDCategory with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SDCategory(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_pri = instance.pri;
      } catch (e) {}
    });
    test('Test D_CT_SDCategory with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_sdcategory(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            type: 'test',
            pri: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SDCategory(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_pri = instance.pri;
      } catch (e) {}
    });
    test('Test D_CT_SDCategories with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SDCategories(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cat = instance.cat;
      } catch (e) {}
    });
    test('Test D_CT_SDCategories with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_sdcategories(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SDCategories(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cat = instance.cat;
      } catch (e) {}
    });
    test('Test D_CT_TextProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
      try {
        final c_flatTx = instance.flatTx;
      } catch (e) {}
    });
    test('Test D_CT_TextProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_textprops(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
      try {
        final c_flatTx = instance.flatTx;
      } catch (e) {}
    });
    test('Test D_CT_StyleLabel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleLabel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StyleLabel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_stylelabel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleLabel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_sp3d = instance.sp3d;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StyleDefinition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_styleLbl = instance.styleLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StyleDefinition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_styledefinition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            uniqueId: 'test',
            minVer: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_scene3d = instance.scene3d;
      } catch (e) {}
      try {
        final c_styleLbl = instance.styleLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StyleDefinitionHeader with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleDefinitionHeader(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final v_resId = instance.resId;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StyleDefinitionHeader with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_styledefinitionheader(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            uniqueId: 'test',
            minVer: 'test',
            resId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleDefinitionHeader(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueId = instance.uniqueId;
      } catch (e) {}
      try {
        final v_minVer = instance.minVer;
      } catch (e) {}
      try {
        final v_resId = instance.resId;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_desc = instance.desc;
      } catch (e) {}
      try {
        final c_catLst = instance.catLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StyleDefinitionHeaderLst with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleDefinitionHeaderLst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_styleDefHdr = instance.styleDefHdr;
      } catch (e) {}
    });
    test('Test D_CT_StyleDefinitionHeaderLst with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            'ns0',
          );
          builder.d_ct_styledefinitionheaderlst(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/diagram',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StyleDefinitionHeaderLst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_styleDefHdr = instance.styleDefHdr;
      } catch (e) {}
    });
    test('Test D_CT_Double with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Double(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Double with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_double(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Double(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_UnsignedInt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_UnsignedInt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_UnsignedInt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_unsignedint(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_UnsignedInt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_RelId with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test D_CT_RelId with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_relid(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test D_CT_Extension with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Extension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test D_CT_Extension with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_extension(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            uri: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Extension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test D_CT_ExtensionList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ExtensionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test D_CT_ExtensionList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_extensionlist(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ExtensionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test D_CT_NumVal with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final v_formatCode = instance.formatCode;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
    });
    test('Test D_CT_NumVal with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_numval(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            idx: 1,
            formatCode: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final v_formatCode = instance.formatCode;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
    });
    test('Test D_CT_NumData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_formatCode = instance.formatCode;
      } catch (e) {}
      try {
        final c_ptCount = instance.ptCount;
      } catch (e) {}
      try {
        final c_pt = instance.pt;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NumData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_numdata(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_formatCode = instance.formatCode;
      } catch (e) {}
      try {
        final c_ptCount = instance.ptCount;
      } catch (e) {}
      try {
        final c_pt = instance.pt;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NumRef with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_numCache = instance.numCache;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NumRef with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_numref(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_numCache = instance.numCache;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_NumDataSource with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumDataSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_numRef = instance.numRef;
      } catch (e) {}
      try {
        final c_numLit = instance.numLit;
      } catch (e) {}
    });
    test('Test D_CT_NumDataSource with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_numdatasource(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumDataSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_numRef = instance.numRef;
      } catch (e) {}
      try {
        final c_numLit = instance.numLit;
      } catch (e) {}
    });
    test('Test D_CT_StrVal with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StrVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
    });
    test('Test D_CT_StrVal with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_strval(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            idx: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StrVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
    });
    test('Test D_CT_StrData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StrData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ptCount = instance.ptCount;
      } catch (e) {}
      try {
        final c_pt = instance.pt;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StrData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_strdata(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StrData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ptCount = instance.ptCount;
      } catch (e) {}
      try {
        final c_pt = instance.pt;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StrRef with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StrRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_strCache = instance.strCache;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StrRef with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_strref(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StrRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_strCache = instance.strCache;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Tx with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Tx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_strRef = instance.strRef;
      } catch (e) {}
      try {
        final c_rich = instance.rich;
      } catch (e) {}
    });
    test('Test D_CT_Tx with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_tx(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Tx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_strRef = instance.strRef;
      } catch (e) {}
      try {
        final c_rich = instance.rich;
      } catch (e) {}
    });
    test('Test D_CT_TextLanguageID with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextLanguageID(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TextLanguageID with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_textlanguageid(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TextLanguageID(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Lvl with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Lvl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_Lvl with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_lvl(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Lvl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pt = instance.pt;
      } catch (e) {}
    });
    test('Test D_CT_MultiLvlStrData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_MultiLvlStrData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ptCount = instance.ptCount;
      } catch (e) {}
      try {
        final c_lvl = instance.lvl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_MultiLvlStrData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_multilvlstrdata(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_MultiLvlStrData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ptCount = instance.ptCount;
      } catch (e) {}
      try {
        final c_lvl = instance.lvl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_MultiLvlStrRef with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_MultiLvlStrRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_multiLvlStrCache = instance.multiLvlStrCache;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_MultiLvlStrRef with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_multilvlstrref(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_MultiLvlStrRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_multiLvlStrCache = instance.multiLvlStrCache;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AxDataSource with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AxDataSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_multiLvlStrRef = instance.multiLvlStrRef;
      } catch (e) {}
      try {
        final c_numRef = instance.numRef;
      } catch (e) {}
      try {
        final c_numLit = instance.numLit;
      } catch (e) {}
      try {
        final c_strRef = instance.strRef;
      } catch (e) {}
      try {
        final c_strLit = instance.strLit;
      } catch (e) {}
    });
    test('Test D_CT_AxDataSource with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_axdatasource(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AxDataSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_multiLvlStrRef = instance.multiLvlStrRef;
      } catch (e) {}
      try {
        final c_numRef = instance.numRef;
      } catch (e) {}
      try {
        final c_numLit = instance.numLit;
      } catch (e) {}
      try {
        final c_strRef = instance.strRef;
      } catch (e) {}
      try {
        final c_strLit = instance.strLit;
      } catch (e) {}
    });
    test('Test D_CT_SerTx with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SerTx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_strRef = instance.strRef;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
    });
    test('Test D_CT_SerTx with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_sertx(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SerTx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_strRef = instance.strRef;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
    });
    test('Test D_CT_LayoutTarget with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LayoutTarget(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LayoutTarget with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_layouttarget(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_LayoutTarget.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LayoutTarget(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LayoutMode with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LayoutMode(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LayoutMode with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_layoutmode(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_LayoutMode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LayoutMode(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ManualLayout with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ManualLayout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layoutTarget = instance.layoutTarget;
      } catch (e) {}
      try {
        final c_xMode = instance.xMode;
      } catch (e) {}
      try {
        final c_yMode = instance.yMode;
      } catch (e) {}
      try {
        final c_wMode = instance.wMode;
      } catch (e) {}
      try {
        final c_hMode = instance.hMode;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
      try {
        final c_y = instance.y;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_h = instance.h;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ManualLayout with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_manuallayout(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ManualLayout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layoutTarget = instance.layoutTarget;
      } catch (e) {}
      try {
        final c_xMode = instance.xMode;
      } catch (e) {}
      try {
        final c_yMode = instance.yMode;
      } catch (e) {}
      try {
        final c_wMode = instance.wMode;
      } catch (e) {}
      try {
        final c_hMode = instance.hMode;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
      try {
        final c_y = instance.y;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_h = instance.h;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Layout with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Layout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_manualLayout = instance.manualLayout;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Layout with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_layout(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Layout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_manualLayout = instance.manualLayout;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Title with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Title(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_overlay = instance.overlay;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Title with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_title(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Title(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_overlay = instance.overlay;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_RotX with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RotX(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_RotX with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_rotx(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RotX(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_HPercent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HPercent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_HPercent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_hpercent(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HPercent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_RotY with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RotY(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_RotY with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_roty(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RotY(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_DepthPercent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DepthPercent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_DepthPercent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_depthpercent(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DepthPercent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Perspective with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Perspective(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Perspective with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_perspective(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Perspective(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_View3D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_View3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rotX = instance.rotX;
      } catch (e) {}
      try {
        final c_hPercent = instance.hPercent;
      } catch (e) {}
      try {
        final c_rotY = instance.rotY;
      } catch (e) {}
      try {
        final c_depthPercent = instance.depthPercent;
      } catch (e) {}
      try {
        final c_rAngAx = instance.rAngAx;
      } catch (e) {}
      try {
        final c_perspective = instance.perspective;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_View3D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_view3d(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_View3D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rotX = instance.rotX;
      } catch (e) {}
      try {
        final c_hPercent = instance.hPercent;
      } catch (e) {}
      try {
        final c_rotY = instance.rotY;
      } catch (e) {}
      try {
        final c_depthPercent = instance.depthPercent;
      } catch (e) {}
      try {
        final c_rAngAx = instance.rAngAx;
      } catch (e) {}
      try {
        final c_perspective = instance.perspective;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Surface with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Surface(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_thickness = instance.thickness;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_pictureOptions = instance.pictureOptions;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Surface with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_surface(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Surface(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_thickness = instance.thickness;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_pictureOptions = instance.pictureOptions;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Thickness with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Thickness(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Thickness with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_thickness(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Thickness(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_DTable with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DTable(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_showHorzBorder = instance.showHorzBorder;
      } catch (e) {}
      try {
        final c_showVertBorder = instance.showVertBorder;
      } catch (e) {}
      try {
        final c_showOutline = instance.showOutline;
      } catch (e) {}
      try {
        final c_showKeys = instance.showKeys;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DTable with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dtable(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DTable(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_showHorzBorder = instance.showHorzBorder;
      } catch (e) {}
      try {
        final c_showVertBorder = instance.showVertBorder;
      } catch (e) {}
      try {
        final c_showOutline = instance.showOutline;
      } catch (e) {}
      try {
        final c_showKeys = instance.showKeys;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_GapAmount with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GapAmount(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_GapAmount with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_gapamount(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GapAmount(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Overlap with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Overlap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_Overlap with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_overlap(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Overlap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_BubbleScale with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BubbleScale(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_BubbleScale with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_bubblescale(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BubbleScale(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_SizeRepresents with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SizeRepresents(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_SizeRepresents with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_sizerepresents(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_SizeRepresents.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SizeRepresents(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_FirstSliceAng with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FirstSliceAng(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_FirstSliceAng with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_firstsliceang(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_FirstSliceAng(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_HoleSize with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HoleSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_HoleSize with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_holesize(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HoleSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_SplitType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SplitType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_SplitType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_splittype(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_SplitType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SplitType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_CustSplit with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CustSplit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_secondPiePt = instance.secondPiePt;
      } catch (e) {}
    });
    test('Test D_CT_CustSplit with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_custsplit(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CustSplit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_secondPiePt = instance.secondPiePt;
      } catch (e) {}
    });
    test('Test D_CT_SecondPieSize with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SecondPieSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_SecondPieSize with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_secondpiesize(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SecondPieSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_NumFmt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_formatCode = instance.formatCode;
      } catch (e) {}
      try {
        final v_sourceLinked = instance.sourceLinked;
      } catch (e) {}
    });
    test('Test D_CT_NumFmt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_numfmt(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            formatCode: 'test',
            sourceLinked: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_NumFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_formatCode = instance.formatCode;
      } catch (e) {}
      try {
        final v_sourceLinked = instance.sourceLinked;
      } catch (e) {}
    });
    test('Test D_CT_LblAlgn with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LblAlgn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LblAlgn with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_lblalgn(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_LblAlgn.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LblAlgn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_DLblPos with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DLblPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_DLblPos with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dlblpos(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_DLblPos.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DLblPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_DLbl with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DLbl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_dLblPos = instance.dLblPos;
      } catch (e) {}
      try {
        final c_showLegendKey = instance.showLegendKey;
      } catch (e) {}
      try {
        final c_showVal = instance.showVal;
      } catch (e) {}
      try {
        final c_showCatName = instance.showCatName;
      } catch (e) {}
      try {
        final c_showSerName = instance.showSerName;
      } catch (e) {}
      try {
        final c_showPercent = instance.showPercent;
      } catch (e) {}
      try {
        final c_showBubbleSize = instance.showBubbleSize;
      } catch (e) {}
      try {
        final c_separator = instance.separator;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DLbl with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dlbl(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DLbl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_dLblPos = instance.dLblPos;
      } catch (e) {}
      try {
        final c_showLegendKey = instance.showLegendKey;
      } catch (e) {}
      try {
        final c_showVal = instance.showVal;
      } catch (e) {}
      try {
        final c_showCatName = instance.showCatName;
      } catch (e) {}
      try {
        final c_showSerName = instance.showSerName;
      } catch (e) {}
      try {
        final c_showPercent = instance.showPercent;
      } catch (e) {}
      try {
        final c_showBubbleSize = instance.showBubbleSize;
      } catch (e) {}
      try {
        final c_separator = instance.separator;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DLbls with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DLbls(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_dLbl = instance.dLbl;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_dLblPos = instance.dLblPos;
      } catch (e) {}
      try {
        final c_showLegendKey = instance.showLegendKey;
      } catch (e) {}
      try {
        final c_showVal = instance.showVal;
      } catch (e) {}
      try {
        final c_showCatName = instance.showCatName;
      } catch (e) {}
      try {
        final c_showSerName = instance.showSerName;
      } catch (e) {}
      try {
        final c_showPercent = instance.showPercent;
      } catch (e) {}
      try {
        final c_showBubbleSize = instance.showBubbleSize;
      } catch (e) {}
      try {
        final c_separator = instance.separator;
      } catch (e) {}
      try {
        final c_showLeaderLines = instance.showLeaderLines;
      } catch (e) {}
      try {
        final c_leaderLines = instance.leaderLines;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DLbls with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dlbls(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DLbls(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_dLbl = instance.dLbl;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_dLblPos = instance.dLblPos;
      } catch (e) {}
      try {
        final c_showLegendKey = instance.showLegendKey;
      } catch (e) {}
      try {
        final c_showVal = instance.showVal;
      } catch (e) {}
      try {
        final c_showCatName = instance.showCatName;
      } catch (e) {}
      try {
        final c_showSerName = instance.showSerName;
      } catch (e) {}
      try {
        final c_showPercent = instance.showPercent;
      } catch (e) {}
      try {
        final c_showBubbleSize = instance.showBubbleSize;
      } catch (e) {}
      try {
        final c_separator = instance.separator;
      } catch (e) {}
      try {
        final c_showLeaderLines = instance.showLeaderLines;
      } catch (e) {}
      try {
        final c_leaderLines = instance.leaderLines;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_MarkerStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_MarkerStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_MarkerStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_markerstyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_MarkerStyle.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_MarkerStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_MarkerSize with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_MarkerSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_MarkerSize with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_markersize(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_MarkerSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Marker with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Marker(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_col = instance.col;
      } catch (e) {}
      try {
        final c_row = instance.row;
      } catch (e) {}
    });
    test('Test D_CT_Marker with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_marker(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Marker(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_col = instance.col;
      } catch (e) {}
      try {
        final c_row = instance.row;
      } catch (e) {}
    });
    test('Test D_CT_DPt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DPt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_invertIfNegative = instance.invertIfNegative;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_bubble3D = instance.bubble3D;
      } catch (e) {}
      try {
        final c_explosion = instance.explosion;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_pictureOptions = instance.pictureOptions;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DPt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dpt(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DPt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_invertIfNegative = instance.invertIfNegative;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_bubble3D = instance.bubble3D;
      } catch (e) {}
      try {
        final c_explosion = instance.explosion;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_pictureOptions = instance.pictureOptions;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TrendlineType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TrendlineType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TrendlineType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_trendlinetype(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_TrendlineType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TrendlineType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Order with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Order(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Order with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_order(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Order(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Period with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Period(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Period with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_period(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Period(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TrendlineLbl with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TrendlineLbl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_TrendlineLbl with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_trendlinelbl(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TrendlineLbl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Trendline with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Trendline(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_trendlineType = instance.trendlineType;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_period = instance.period;
      } catch (e) {}
      try {
        final c_forward = instance.forward;
      } catch (e) {}
      try {
        final c_backward = instance.backward;
      } catch (e) {}
      try {
        final c_intercept = instance.intercept;
      } catch (e) {}
      try {
        final c_dispRSqr = instance.dispRSqr;
      } catch (e) {}
      try {
        final c_dispEq = instance.dispEq;
      } catch (e) {}
      try {
        final c_trendlineLbl = instance.trendlineLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Trendline with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_trendline(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Trendline(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_trendlineType = instance.trendlineType;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_period = instance.period;
      } catch (e) {}
      try {
        final c_forward = instance.forward;
      } catch (e) {}
      try {
        final c_backward = instance.backward;
      } catch (e) {}
      try {
        final c_intercept = instance.intercept;
      } catch (e) {}
      try {
        final c_dispRSqr = instance.dispRSqr;
      } catch (e) {}
      try {
        final c_dispEq = instance.dispEq;
      } catch (e) {}
      try {
        final c_trendlineLbl = instance.trendlineLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ErrDir with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ErrDir(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ErrDir with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_errdir(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_ErrDir.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ErrDir(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ErrBarType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ErrBarType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ErrBarType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_errbartype(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_ErrBarType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ErrBarType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ErrValType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ErrValType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ErrValType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_errvaltype(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_ErrValType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ErrValType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ErrBars with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ErrBars(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_errDir = instance.errDir;
      } catch (e) {}
      try {
        final c_errBarType = instance.errBarType;
      } catch (e) {}
      try {
        final c_errValType = instance.errValType;
      } catch (e) {}
      try {
        final c_noEndCap = instance.noEndCap;
      } catch (e) {}
      try {
        final c_plus = instance.plus;
      } catch (e) {}
      try {
        final c_minus = instance.minus;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ErrBars with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_errbars(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ErrBars(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_errDir = instance.errDir;
      } catch (e) {}
      try {
        final c_errBarType = instance.errBarType;
      } catch (e) {}
      try {
        final c_errValType = instance.errValType;
      } catch (e) {}
      try {
        final c_noEndCap = instance.noEndCap;
      } catch (e) {}
      try {
        final c_plus = instance.plus;
      } catch (e) {}
      try {
        final c_minus = instance.minus;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_UpDownBar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_UpDownBar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
    });
    test('Test D_CT_UpDownBar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_updownbar(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_UpDownBar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
    });
    test('Test D_CT_UpDownBars with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_UpDownBars(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gapWidth = instance.gapWidth;
      } catch (e) {}
      try {
        final c_upBars = instance.upBars;
      } catch (e) {}
      try {
        final c_downBars = instance.downBars;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_UpDownBars with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_updownbars(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_UpDownBars(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gapWidth = instance.gapWidth;
      } catch (e) {}
      try {
        final c_upBars = instance.upBars;
      } catch (e) {}
      try {
        final c_downBars = instance.downBars;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LineSer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_smooth = instance.smooth;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LineSer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_lineser(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_smooth = instance.smooth;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ScatterSer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ScatterSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_xVal = instance.xVal;
      } catch (e) {}
      try {
        final c_yVal = instance.yVal;
      } catch (e) {}
      try {
        final c_smooth = instance.smooth;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ScatterSer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_scatterser(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ScatterSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_xVal = instance.xVal;
      } catch (e) {}
      try {
        final c_yVal = instance.yVal;
      } catch (e) {}
      try {
        final c_smooth = instance.smooth;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_RadarSer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RadarSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_RadarSer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_radarser(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RadarSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BarSer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BarSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_invertIfNegative = instance.invertIfNegative;
      } catch (e) {}
      try {
        final c_pictureOptions = instance.pictureOptions;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BarSer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_barser(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BarSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_invertIfNegative = instance.invertIfNegative;
      } catch (e) {}
      try {
        final c_pictureOptions = instance.pictureOptions;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AreaSer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AreaSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_pictureOptions = instance.pictureOptions;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AreaSer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_areaser(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AreaSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_pictureOptions = instance.pictureOptions;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PieSer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PieSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_explosion = instance.explosion;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PieSer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pieser(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PieSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_explosion = instance.explosion;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BubbleSer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BubbleSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_invertIfNegative = instance.invertIfNegative;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_xVal = instance.xVal;
      } catch (e) {}
      try {
        final c_yVal = instance.yVal;
      } catch (e) {}
      try {
        final c_bubbleSize = instance.bubbleSize;
      } catch (e) {}
      try {
        final c_bubble3D = instance.bubble3D;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BubbleSer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_bubbleser(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BubbleSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_invertIfNegative = instance.invertIfNegative;
      } catch (e) {}
      try {
        final c_dPt = instance.dPt;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_trendline = instance.trendline;
      } catch (e) {}
      try {
        final c_errBars = instance.errBars;
      } catch (e) {}
      try {
        final c_xVal = instance.xVal;
      } catch (e) {}
      try {
        final c_yVal = instance.yVal;
      } catch (e) {}
      try {
        final c_bubbleSize = instance.bubbleSize;
      } catch (e) {}
      try {
        final c_bubble3D = instance.bubble3D;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_SurfaceSer with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SurfaceSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_SurfaceSer with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_surfaceser(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SurfaceSer(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_order = instance.order;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_cat = instance.cat;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Grouping with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Grouping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Grouping with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_grouping(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_Grouping.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Grouping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ChartLines with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ChartLines(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
    });
    test('Test D_CT_ChartLines with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_chartlines(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ChartLines(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
    });
    test('Test D_CT_LineChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_hiLowLines = instance.hiLowLines;
      } catch (e) {}
      try {
        final c_upDownBars = instance.upDownBars;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_smooth = instance.smooth;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LineChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_linechart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LineChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_hiLowLines = instance.hiLowLines;
      } catch (e) {}
      try {
        final c_upDownBars = instance.upDownBars;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_smooth = instance.smooth;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Line3DChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Line3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_gapDepth = instance.gapDepth;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Line3DChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_line3dchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Line3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_gapDepth = instance.gapDepth;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StockChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StockChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_hiLowLines = instance.hiLowLines;
      } catch (e) {}
      try {
        final c_upDownBars = instance.upDownBars;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_StockChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_stockchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_StockChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_hiLowLines = instance.hiLowLines;
      } catch (e) {}
      try {
        final c_upDownBars = instance.upDownBars;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ScatterStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ScatterStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ScatterStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_scatterstyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_ScatterStyle.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ScatterStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_ScatterChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ScatterChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scatterStyle = instance.scatterStyle;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ScatterChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_scatterchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ScatterChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_scatterStyle = instance.scatterStyle;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_RadarStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RadarStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_RadarStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_radarstyle(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_RadarStyle.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RadarStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_RadarChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RadarChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_radarStyle = instance.radarStyle;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_RadarChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_radarchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RadarChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_radarStyle = instance.radarStyle;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BarGrouping with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BarGrouping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_BarGrouping with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_bargrouping(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_BarGrouping.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BarGrouping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_BarDir with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BarDir(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_BarDir with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_bardir(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_BarDir.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BarDir(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_BarChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BarChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_barDir = instance.barDir;
      } catch (e) {}
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_gapWidth = instance.gapWidth;
      } catch (e) {}
      try {
        final c_overlap = instance.overlap;
      } catch (e) {}
      try {
        final c_serLines = instance.serLines;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BarChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_barchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BarChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_barDir = instance.barDir;
      } catch (e) {}
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_gapWidth = instance.gapWidth;
      } catch (e) {}
      try {
        final c_overlap = instance.overlap;
      } catch (e) {}
      try {
        final c_serLines = instance.serLines;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Bar3DChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Bar3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_barDir = instance.barDir;
      } catch (e) {}
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_gapWidth = instance.gapWidth;
      } catch (e) {}
      try {
        final c_gapDepth = instance.gapDepth;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Bar3DChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_bar3dchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Bar3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_barDir = instance.barDir;
      } catch (e) {}
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_gapWidth = instance.gapWidth;
      } catch (e) {}
      try {
        final c_gapDepth = instance.gapDepth;
      } catch (e) {}
      try {
        final c_shape = instance.shape;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AreaChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AreaChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AreaChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_areachart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AreaChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Area3DChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Area3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_gapDepth = instance.gapDepth;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Area3DChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_area3dchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Area3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_grouping = instance.grouping;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_dropLines = instance.dropLines;
      } catch (e) {}
      try {
        final c_gapDepth = instance.gapDepth;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PieChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PieChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_firstSliceAng = instance.firstSliceAng;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PieChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_piechart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PieChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_firstSliceAng = instance.firstSliceAng;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Pie3DChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Pie3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Pie3DChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pie3dchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Pie3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DoughnutChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DoughnutChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_firstSliceAng = instance.firstSliceAng;
      } catch (e) {}
      try {
        final c_holeSize = instance.holeSize;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DoughnutChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_doughnutchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DoughnutChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_firstSliceAng = instance.firstSliceAng;
      } catch (e) {}
      try {
        final c_holeSize = instance.holeSize;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_OfPieType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfPieType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_OfPieType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_ofpietype(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_OfPieType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfPieType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_OfPieChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfPieChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ofPieType = instance.ofPieType;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_gapWidth = instance.gapWidth;
      } catch (e) {}
      try {
        final c_splitType = instance.splitType;
      } catch (e) {}
      try {
        final c_splitPos = instance.splitPos;
      } catch (e) {}
      try {
        final c_custSplit = instance.custSplit;
      } catch (e) {}
      try {
        final c_secondPieSize = instance.secondPieSize;
      } catch (e) {}
      try {
        final c_serLines = instance.serLines;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_OfPieChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_ofpiechart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OfPieChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ofPieType = instance.ofPieType;
      } catch (e) {}
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_gapWidth = instance.gapWidth;
      } catch (e) {}
      try {
        final c_splitType = instance.splitType;
      } catch (e) {}
      try {
        final c_splitPos = instance.splitPos;
      } catch (e) {}
      try {
        final c_custSplit = instance.custSplit;
      } catch (e) {}
      try {
        final c_secondPieSize = instance.secondPieSize;
      } catch (e) {}
      try {
        final c_serLines = instance.serLines;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BubbleChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BubbleChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_bubble3D = instance.bubble3D;
      } catch (e) {}
      try {
        final c_bubbleScale = instance.bubbleScale;
      } catch (e) {}
      try {
        final c_showNegBubbles = instance.showNegBubbles;
      } catch (e) {}
      try {
        final c_sizeRepresents = instance.sizeRepresents;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BubbleChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_bubblechart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BubbleChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_varyColors = instance.varyColors;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_dLbls = instance.dLbls;
      } catch (e) {}
      try {
        final c_bubble3D = instance.bubble3D;
      } catch (e) {}
      try {
        final c_bubbleScale = instance.bubbleScale;
      } catch (e) {}
      try {
        final c_showNegBubbles = instance.showNegBubbles;
      } catch (e) {}
      try {
        final c_sizeRepresents = instance.sizeRepresents;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_BandFmt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BandFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
    });
    test('Test D_CT_BandFmt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_bandfmt(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BandFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
    });
    test('Test D_CT_BandFmts with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BandFmts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bandFmt = instance.bandFmt;
      } catch (e) {}
    });
    test('Test D_CT_BandFmts with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_bandfmts(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BandFmts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bandFmt = instance.bandFmt;
      } catch (e) {}
    });
    test('Test D_CT_SurfaceChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SurfaceChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_wireframe = instance.wireframe;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_bandFmts = instance.bandFmts;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_SurfaceChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_surfacechart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SurfaceChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_wireframe = instance.wireframe;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_bandFmts = instance.bandFmts;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Surface3DChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Surface3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_wireframe = instance.wireframe;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_bandFmts = instance.bandFmts;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Surface3DChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_surface3dchart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Surface3DChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_wireframe = instance.wireframe;
      } catch (e) {}
      try {
        final c_ser = instance.ser;
      } catch (e) {}
      try {
        final c_bandFmts = instance.bandFmts;
      } catch (e) {}
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_AxPos with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AxPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_AxPos with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_axpos(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_AxPos.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AxPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Crosses with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Crosses(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Crosses with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_crosses(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_Crosses.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Crosses(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_CrossBetween with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CrossBetween(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_CrossBetween with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_crossbetween(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_CrossBetween.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CrossBetween(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TickMark with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TickMark(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TickMark with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_tickmark(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_TickMark.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TickMark(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TickLblPos with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TickLblPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TickLblPos with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_ticklblpos(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_TickLblPos.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TickLblPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Skip with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Skip(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Skip with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_skip(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Skip(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TimeUnit with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TimeUnit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_TimeUnit with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_timeunit(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_TimeUnit.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TimeUnit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_AxisUnit with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AxisUnit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_AxisUnit with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_axisunit(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AxisUnit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_BuiltInUnit with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BuiltInUnit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_BuiltInUnit with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_builtinunit(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_BuiltInUnit.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_BuiltInUnit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PictureFormat with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureFormat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PictureFormat with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pictureformat(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_PictureFormat.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureFormat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PictureStackUnit with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureStackUnit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PictureStackUnit with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_picturestackunit(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureStackUnit(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PictureOptions with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureOptions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_applyToFront = instance.applyToFront;
      } catch (e) {}
      try {
        final c_applyToSides = instance.applyToSides;
      } catch (e) {}
      try {
        final c_applyToEnd = instance.applyToEnd;
      } catch (e) {}
      try {
        final c_pictureFormat = instance.pictureFormat;
      } catch (e) {}
      try {
        final c_pictureStackUnit = instance.pictureStackUnit;
      } catch (e) {}
    });
    test('Test D_CT_PictureOptions with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pictureoptions(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureOptions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_applyToFront = instance.applyToFront;
      } catch (e) {}
      try {
        final c_applyToSides = instance.applyToSides;
      } catch (e) {}
      try {
        final c_applyToEnd = instance.applyToEnd;
      } catch (e) {}
      try {
        final c_pictureFormat = instance.pictureFormat;
      } catch (e) {}
      try {
        final c_pictureStackUnit = instance.pictureStackUnit;
      } catch (e) {}
    });
    test('Test D_CT_DispUnitsLbl with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DispUnitsLbl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
    });
    test('Test D_CT_DispUnitsLbl with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dispunitslbl(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DispUnitsLbl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_tx = instance.tx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
    });
    test('Test D_CT_DispUnits with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DispUnits(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_custUnit = instance.custUnit;
      } catch (e) {}
      try {
        final c_builtInUnit = instance.builtInUnit;
      } catch (e) {}
      try {
        final c_dispUnitsLbl = instance.dispUnitsLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DispUnits with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dispunits(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DispUnits(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_custUnit = instance.custUnit;
      } catch (e) {}
      try {
        final c_builtInUnit = instance.builtInUnit;
      } catch (e) {}
      try {
        final c_dispUnitsLbl = instance.dispUnitsLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Orientation with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Orientation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Orientation with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_orientation(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_Orientation.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Orientation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LogBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LogBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LogBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_logbase(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LogBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Scaling with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Scaling(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_logBase = instance.logBase;
      } catch (e) {}
      try {
        final c_orientation = instance.orientation;
      } catch (e) {}
      try {
        final c_max = instance.max;
      } catch (e) {}
      try {
        final c_min = instance.min;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Scaling with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_scaling(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Scaling(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_logBase = instance.logBase;
      } catch (e) {}
      try {
        final c_orientation = instance.orientation;
      } catch (e) {}
      try {
        final c_max = instance.max;
      } catch (e) {}
      try {
        final c_min = instance.min;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LblOffset with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LblOffset(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_LblOffset with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_lbloffset(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LblOffset(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test D_CT_CatAx with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CatAx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_scaling = instance.scaling;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_axPos = instance.axPos;
      } catch (e) {}
      try {
        final c_majorGridlines = instance.majorGridlines;
      } catch (e) {}
      try {
        final c_minorGridlines = instance.minorGridlines;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_majorTickMark = instance.majorTickMark;
      } catch (e) {}
      try {
        final c_minorTickMark = instance.minorTickMark;
      } catch (e) {}
      try {
        final c_tickLblPos = instance.tickLblPos;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_crossAx = instance.crossAx;
      } catch (e) {}
      try {
        final c_crosses = instance.crosses;
      } catch (e) {}
      try {
        final c_crossesAt = instance.crossesAt;
      } catch (e) {}
      try {
        final c_auto = instance.auto;
      } catch (e) {}
      try {
        final c_lblAlgn = instance.lblAlgn;
      } catch (e) {}
      try {
        final c_lblOffset = instance.lblOffset;
      } catch (e) {}
      try {
        final c_tickLblSkip = instance.tickLblSkip;
      } catch (e) {}
      try {
        final c_tickMarkSkip = instance.tickMarkSkip;
      } catch (e) {}
      try {
        final c_noMultiLvlLbl = instance.noMultiLvlLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_CatAx with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_catax(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_CatAx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_scaling = instance.scaling;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_axPos = instance.axPos;
      } catch (e) {}
      try {
        final c_majorGridlines = instance.majorGridlines;
      } catch (e) {}
      try {
        final c_minorGridlines = instance.minorGridlines;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_majorTickMark = instance.majorTickMark;
      } catch (e) {}
      try {
        final c_minorTickMark = instance.minorTickMark;
      } catch (e) {}
      try {
        final c_tickLblPos = instance.tickLblPos;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_crossAx = instance.crossAx;
      } catch (e) {}
      try {
        final c_crosses = instance.crosses;
      } catch (e) {}
      try {
        final c_crossesAt = instance.crossesAt;
      } catch (e) {}
      try {
        final c_auto = instance.auto;
      } catch (e) {}
      try {
        final c_lblAlgn = instance.lblAlgn;
      } catch (e) {}
      try {
        final c_lblOffset = instance.lblOffset;
      } catch (e) {}
      try {
        final c_tickLblSkip = instance.tickLblSkip;
      } catch (e) {}
      try {
        final c_tickMarkSkip = instance.tickMarkSkip;
      } catch (e) {}
      try {
        final c_noMultiLvlLbl = instance.noMultiLvlLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DateAx with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DateAx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_scaling = instance.scaling;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_axPos = instance.axPos;
      } catch (e) {}
      try {
        final c_majorGridlines = instance.majorGridlines;
      } catch (e) {}
      try {
        final c_minorGridlines = instance.minorGridlines;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_majorTickMark = instance.majorTickMark;
      } catch (e) {}
      try {
        final c_minorTickMark = instance.minorTickMark;
      } catch (e) {}
      try {
        final c_tickLblPos = instance.tickLblPos;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_crossAx = instance.crossAx;
      } catch (e) {}
      try {
        final c_crosses = instance.crosses;
      } catch (e) {}
      try {
        final c_crossesAt = instance.crossesAt;
      } catch (e) {}
      try {
        final c_auto = instance.auto;
      } catch (e) {}
      try {
        final c_lblOffset = instance.lblOffset;
      } catch (e) {}
      try {
        final c_baseTimeUnit = instance.baseTimeUnit;
      } catch (e) {}
      try {
        final c_majorUnit = instance.majorUnit;
      } catch (e) {}
      try {
        final c_majorTimeUnit = instance.majorTimeUnit;
      } catch (e) {}
      try {
        final c_minorUnit = instance.minorUnit;
      } catch (e) {}
      try {
        final c_minorTimeUnit = instance.minorTimeUnit;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DateAx with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dateax(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DateAx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_scaling = instance.scaling;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_axPos = instance.axPos;
      } catch (e) {}
      try {
        final c_majorGridlines = instance.majorGridlines;
      } catch (e) {}
      try {
        final c_minorGridlines = instance.minorGridlines;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_majorTickMark = instance.majorTickMark;
      } catch (e) {}
      try {
        final c_minorTickMark = instance.minorTickMark;
      } catch (e) {}
      try {
        final c_tickLblPos = instance.tickLblPos;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_crossAx = instance.crossAx;
      } catch (e) {}
      try {
        final c_crosses = instance.crosses;
      } catch (e) {}
      try {
        final c_crossesAt = instance.crossesAt;
      } catch (e) {}
      try {
        final c_auto = instance.auto;
      } catch (e) {}
      try {
        final c_lblOffset = instance.lblOffset;
      } catch (e) {}
      try {
        final c_baseTimeUnit = instance.baseTimeUnit;
      } catch (e) {}
      try {
        final c_majorUnit = instance.majorUnit;
      } catch (e) {}
      try {
        final c_majorTimeUnit = instance.majorTimeUnit;
      } catch (e) {}
      try {
        final c_minorUnit = instance.minorUnit;
      } catch (e) {}
      try {
        final c_minorTimeUnit = instance.minorTimeUnit;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_SerAx with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SerAx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_scaling = instance.scaling;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_axPos = instance.axPos;
      } catch (e) {}
      try {
        final c_majorGridlines = instance.majorGridlines;
      } catch (e) {}
      try {
        final c_minorGridlines = instance.minorGridlines;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_majorTickMark = instance.majorTickMark;
      } catch (e) {}
      try {
        final c_minorTickMark = instance.minorTickMark;
      } catch (e) {}
      try {
        final c_tickLblPos = instance.tickLblPos;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_crossAx = instance.crossAx;
      } catch (e) {}
      try {
        final c_crosses = instance.crosses;
      } catch (e) {}
      try {
        final c_crossesAt = instance.crossesAt;
      } catch (e) {}
      try {
        final c_tickLblSkip = instance.tickLblSkip;
      } catch (e) {}
      try {
        final c_tickMarkSkip = instance.tickMarkSkip;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_SerAx with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_serax(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_SerAx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_scaling = instance.scaling;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_axPos = instance.axPos;
      } catch (e) {}
      try {
        final c_majorGridlines = instance.majorGridlines;
      } catch (e) {}
      try {
        final c_minorGridlines = instance.minorGridlines;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_majorTickMark = instance.majorTickMark;
      } catch (e) {}
      try {
        final c_minorTickMark = instance.minorTickMark;
      } catch (e) {}
      try {
        final c_tickLblPos = instance.tickLblPos;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_crossAx = instance.crossAx;
      } catch (e) {}
      try {
        final c_crosses = instance.crosses;
      } catch (e) {}
      try {
        final c_crossesAt = instance.crossesAt;
      } catch (e) {}
      try {
        final c_tickLblSkip = instance.tickLblSkip;
      } catch (e) {}
      try {
        final c_tickMarkSkip = instance.tickMarkSkip;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ValAx with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ValAx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_scaling = instance.scaling;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_axPos = instance.axPos;
      } catch (e) {}
      try {
        final c_majorGridlines = instance.majorGridlines;
      } catch (e) {}
      try {
        final c_minorGridlines = instance.minorGridlines;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_majorTickMark = instance.majorTickMark;
      } catch (e) {}
      try {
        final c_minorTickMark = instance.minorTickMark;
      } catch (e) {}
      try {
        final c_tickLblPos = instance.tickLblPos;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_crossAx = instance.crossAx;
      } catch (e) {}
      try {
        final c_crosses = instance.crosses;
      } catch (e) {}
      try {
        final c_crossesAt = instance.crossesAt;
      } catch (e) {}
      try {
        final c_crossBetween = instance.crossBetween;
      } catch (e) {}
      try {
        final c_majorUnit = instance.majorUnit;
      } catch (e) {}
      try {
        final c_minorUnit = instance.minorUnit;
      } catch (e) {}
      try {
        final c_dispUnits = instance.dispUnits;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ValAx with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_valax(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ValAx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_axId = instance.axId;
      } catch (e) {}
      try {
        final c_scaling = instance.scaling;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_axPos = instance.axPos;
      } catch (e) {}
      try {
        final c_majorGridlines = instance.majorGridlines;
      } catch (e) {}
      try {
        final c_minorGridlines = instance.minorGridlines;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_majorTickMark = instance.majorTickMark;
      } catch (e) {}
      try {
        final c_minorTickMark = instance.minorTickMark;
      } catch (e) {}
      try {
        final c_tickLblPos = instance.tickLblPos;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_crossAx = instance.crossAx;
      } catch (e) {}
      try {
        final c_crosses = instance.crosses;
      } catch (e) {}
      try {
        final c_crossesAt = instance.crossesAt;
      } catch (e) {}
      try {
        final c_crossBetween = instance.crossBetween;
      } catch (e) {}
      try {
        final c_majorUnit = instance.majorUnit;
      } catch (e) {}
      try {
        final c_minorUnit = instance.minorUnit;
      } catch (e) {}
      try {
        final c_dispUnits = instance.dispUnits;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PlotArea with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PlotArea(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_areaChart = instance.areaChart;
      } catch (e) {}
      try {
        final c_area3DChart = instance.area3DChart;
      } catch (e) {}
      try {
        final c_lineChart = instance.lineChart;
      } catch (e) {}
      try {
        final c_line3DChart = instance.line3DChart;
      } catch (e) {}
      try {
        final c_stockChart = instance.stockChart;
      } catch (e) {}
      try {
        final c_radarChart = instance.radarChart;
      } catch (e) {}
      try {
        final c_scatterChart = instance.scatterChart;
      } catch (e) {}
      try {
        final c_pieChart = instance.pieChart;
      } catch (e) {}
      try {
        final c_pie3DChart = instance.pie3DChart;
      } catch (e) {}
      try {
        final c_doughnutChart = instance.doughnutChart;
      } catch (e) {}
      try {
        final c_barChart = instance.barChart;
      } catch (e) {}
      try {
        final c_bar3DChart = instance.bar3DChart;
      } catch (e) {}
      try {
        final c_ofPieChart = instance.ofPieChart;
      } catch (e) {}
      try {
        final c_surfaceChart = instance.surfaceChart;
      } catch (e) {}
      try {
        final c_surface3DChart = instance.surface3DChart;
      } catch (e) {}
      try {
        final c_bubbleChart = instance.bubbleChart;
      } catch (e) {}
      try {
        final c_valAx = instance.valAx;
      } catch (e) {}
      try {
        final c_catAx = instance.catAx;
      } catch (e) {}
      try {
        final c_dateAx = instance.dateAx;
      } catch (e) {}
      try {
        final c_serAx = instance.serAx;
      } catch (e) {}
      try {
        final c_dTable = instance.dTable;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PlotArea with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_plotarea(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PlotArea(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_areaChart = instance.areaChart;
      } catch (e) {}
      try {
        final c_area3DChart = instance.area3DChart;
      } catch (e) {}
      try {
        final c_lineChart = instance.lineChart;
      } catch (e) {}
      try {
        final c_line3DChart = instance.line3DChart;
      } catch (e) {}
      try {
        final c_stockChart = instance.stockChart;
      } catch (e) {}
      try {
        final c_radarChart = instance.radarChart;
      } catch (e) {}
      try {
        final c_scatterChart = instance.scatterChart;
      } catch (e) {}
      try {
        final c_pieChart = instance.pieChart;
      } catch (e) {}
      try {
        final c_pie3DChart = instance.pie3DChart;
      } catch (e) {}
      try {
        final c_doughnutChart = instance.doughnutChart;
      } catch (e) {}
      try {
        final c_barChart = instance.barChart;
      } catch (e) {}
      try {
        final c_bar3DChart = instance.bar3DChart;
      } catch (e) {}
      try {
        final c_ofPieChart = instance.ofPieChart;
      } catch (e) {}
      try {
        final c_surfaceChart = instance.surfaceChart;
      } catch (e) {}
      try {
        final c_surface3DChart = instance.surface3DChart;
      } catch (e) {}
      try {
        final c_bubbleChart = instance.bubbleChart;
      } catch (e) {}
      try {
        final c_valAx = instance.valAx;
      } catch (e) {}
      try {
        final c_catAx = instance.catAx;
      } catch (e) {}
      try {
        final c_dateAx = instance.dateAx;
      } catch (e) {}
      try {
        final c_serAx = instance.serAx;
      } catch (e) {}
      try {
        final c_dTable = instance.dTable;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PivotFmt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PivotFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_dLbl = instance.dLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PivotFmt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pivotfmt(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PivotFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_marker = instance.marker;
      } catch (e) {}
      try {
        final c_dLbl = instance.dLbl;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PivotFmts with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PivotFmts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pivotFmt = instance.pivotFmt;
      } catch (e) {}
    });
    test('Test D_CT_PivotFmts with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pivotfmts(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PivotFmts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pivotFmt = instance.pivotFmt;
      } catch (e) {}
    });
    test('Test D_CT_LegendPos with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LegendPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LegendPos with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_legendpos(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_LegendPos.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LegendPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_LegendEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LegendEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_LegendEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_legendentry(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_LegendEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_idx = instance.idx;
      } catch (e) {}
      try {
        final c_delete = instance.delete;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Legend with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Legend(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_legendPos = instance.legendPos;
      } catch (e) {}
      try {
        final c_legendEntry = instance.legendEntry;
      } catch (e) {}
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_overlay = instance.overlay;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Legend with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_legend(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Legend(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_legendPos = instance.legendPos;
      } catch (e) {}
      try {
        final c_legendEntry = instance.legendEntry;
      } catch (e) {}
      try {
        final c_layout = instance.layout;
      } catch (e) {}
      try {
        final c_overlay = instance.overlay;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_DispBlanksAs with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DispBlanksAs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_DispBlanksAs with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_dispblanksas(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: D_ST_DispBlanksAs.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_DispBlanksAs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Chart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Chart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_autoTitleDeleted = instance.autoTitleDeleted;
      } catch (e) {}
      try {
        final c_pivotFmts = instance.pivotFmts;
      } catch (e) {}
      try {
        final c_view3D = instance.view3D;
      } catch (e) {}
      try {
        final c_floor = instance.floor;
      } catch (e) {}
      try {
        final c_sideWall = instance.sideWall;
      } catch (e) {}
      try {
        final c_backWall = instance.backWall;
      } catch (e) {}
      try {
        final c_plotArea = instance.plotArea;
      } catch (e) {}
      try {
        final c_legend = instance.legend;
      } catch (e) {}
      try {
        final c_plotVisOnly = instance.plotVisOnly;
      } catch (e) {}
      try {
        final c_dispBlanksAs = instance.dispBlanksAs;
      } catch (e) {}
      try {
        final c_showDLblsOverMax = instance.showDLblsOverMax;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Chart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_chart(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Chart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_autoTitleDeleted = instance.autoTitleDeleted;
      } catch (e) {}
      try {
        final c_pivotFmts = instance.pivotFmts;
      } catch (e) {}
      try {
        final c_view3D = instance.view3D;
      } catch (e) {}
      try {
        final c_floor = instance.floor;
      } catch (e) {}
      try {
        final c_sideWall = instance.sideWall;
      } catch (e) {}
      try {
        final c_backWall = instance.backWall;
      } catch (e) {}
      try {
        final c_plotArea = instance.plotArea;
      } catch (e) {}
      try {
        final c_legend = instance.legend;
      } catch (e) {}
      try {
        final c_plotVisOnly = instance.plotVisOnly;
      } catch (e) {}
      try {
        final c_dispBlanksAs = instance.dispBlanksAs;
      } catch (e) {}
      try {
        final c_showDLblsOverMax = instance.showDLblsOverMax;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Style with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Style(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_Style with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_style(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Style(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test D_CT_PivotSource with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PivotSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_fmtId = instance.fmtId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_PivotSource with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pivotsource(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PivotSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_fmtId = instance.fmtId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_Protection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Protection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_chartObject = instance.chartObject;
      } catch (e) {}
      try {
        final c_data = instance.data;
      } catch (e) {}
      try {
        final c_formatting = instance.formatting;
      } catch (e) {}
      try {
        final c_selection = instance.selection;
      } catch (e) {}
      try {
        final c_userInterface = instance.userInterface;
      } catch (e) {}
    });
    test('Test D_CT_Protection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_protection(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Protection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_chartObject = instance.chartObject;
      } catch (e) {}
      try {
        final c_data = instance.data;
      } catch (e) {}
      try {
        final c_formatting = instance.formatting;
      } catch (e) {}
      try {
        final c_selection = instance.selection;
      } catch (e) {}
      try {
        final c_userInterface = instance.userInterface;
      } catch (e) {}
    });
    test('Test D_CT_HeaderFooter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HeaderFooter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_alignWithMargins = instance.alignWithMargins;
      } catch (e) {}
      try {
        final v_differentOddEven = instance.differentOddEven;
      } catch (e) {}
      try {
        final v_differentFirst = instance.differentFirst;
      } catch (e) {}
      try {
        final c_oddHeader = instance.oddHeader;
      } catch (e) {}
      try {
        final c_oddFooter = instance.oddFooter;
      } catch (e) {}
      try {
        final c_evenHeader = instance.evenHeader;
      } catch (e) {}
      try {
        final c_evenFooter = instance.evenFooter;
      } catch (e) {}
      try {
        final c_firstHeader = instance.firstHeader;
      } catch (e) {}
      try {
        final c_firstFooter = instance.firstFooter;
      } catch (e) {}
    });
    test('Test D_CT_HeaderFooter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_headerfooter(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            alignWithMargins: true,
            differentOddEven: true,
            differentFirst: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_HeaderFooter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_alignWithMargins = instance.alignWithMargins;
      } catch (e) {}
      try {
        final v_differentOddEven = instance.differentOddEven;
      } catch (e) {}
      try {
        final v_differentFirst = instance.differentFirst;
      } catch (e) {}
      try {
        final c_oddHeader = instance.oddHeader;
      } catch (e) {}
      try {
        final c_oddFooter = instance.oddFooter;
      } catch (e) {}
      try {
        final c_evenHeader = instance.evenHeader;
      } catch (e) {}
      try {
        final c_evenFooter = instance.evenFooter;
      } catch (e) {}
      try {
        final c_firstHeader = instance.firstHeader;
      } catch (e) {}
      try {
        final c_firstFooter = instance.firstFooter;
      } catch (e) {}
    });
    test('Test D_CT_PageMargins with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PageMargins(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_l = instance.l;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final v_header = instance.header;
      } catch (e) {}
      try {
        final v_footer = instance.footer;
      } catch (e) {}
    });
    test('Test D_CT_PageMargins with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pagemargins(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            l: 1.0,
            r: 1.0,
            t: 1.0,
            b: 1.0,
            header: 1.0,
            footer: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PageMargins(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_l = instance.l;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final v_header = instance.header;
      } catch (e) {}
      try {
        final v_footer = instance.footer;
      } catch (e) {}
    });
    test('Test D_CT_ExternalData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ExternalData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_autoUpdate = instance.autoUpdate;
      } catch (e) {}
    });
    test('Test D_CT_ExternalData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_externaldata(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ExternalData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_autoUpdate = instance.autoUpdate;
      } catch (e) {}
    });
    test('Test D_CT_PageSetup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PageSetup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_paperSize = instance.paperSize;
      } catch (e) {}
      try {
        final v_paperHeight = instance.paperHeight;
      } catch (e) {}
      try {
        final v_paperWidth = instance.paperWidth;
      } catch (e) {}
      try {
        final v_firstPageNumber = instance.firstPageNumber;
      } catch (e) {}
      try {
        final v_orientation = instance.orientation;
      } catch (e) {}
      try {
        final v_blackAndWhite = instance.blackAndWhite;
      } catch (e) {}
      try {
        final v_draft = instance.draft;
      } catch (e) {}
      try {
        final v_useFirstPageNumber = instance.useFirstPageNumber;
      } catch (e) {}
      try {
        final v_horizontalDpi = instance.horizontalDpi;
      } catch (e) {}
      try {
        final v_verticalDpi = instance.verticalDpi;
      } catch (e) {}
      try {
        final v_copies = instance.copies;
      } catch (e) {}
    });
    test('Test D_CT_PageSetup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_pagesetup(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
            paperSize: 1,
            paperHeight: 'test',
            paperWidth: 'test',
            firstPageNumber: 1,
            orientation: D_ST_PageSetupOrientation.values.first,
            blackAndWhite: true,
            draft: true,
            useFirstPageNumber: true,
            horizontalDpi: 1,
            verticalDpi: 1,
            copies: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PageSetup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_paperSize = instance.paperSize;
      } catch (e) {}
      try {
        final v_paperHeight = instance.paperHeight;
      } catch (e) {}
      try {
        final v_paperWidth = instance.paperWidth;
      } catch (e) {}
      try {
        final v_firstPageNumber = instance.firstPageNumber;
      } catch (e) {}
      try {
        final v_orientation = instance.orientation;
      } catch (e) {}
      try {
        final v_blackAndWhite = instance.blackAndWhite;
      } catch (e) {}
      try {
        final v_draft = instance.draft;
      } catch (e) {}
      try {
        final v_useFirstPageNumber = instance.useFirstPageNumber;
      } catch (e) {}
      try {
        final v_horizontalDpi = instance.horizontalDpi;
      } catch (e) {}
      try {
        final v_verticalDpi = instance.verticalDpi;
      } catch (e) {}
      try {
        final v_copies = instance.copies;
      } catch (e) {}
    });
    test('Test D_CT_PrintSettings with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PrintSettings(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
    });
    test('Test D_CT_PrintSettings with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_printsettings(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PrintSettings(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
    });
    test('Test D_CT_ChartSpace with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ChartSpace(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_date1904 = instance.date1904;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_roundedCorners = instance.roundedCorners;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_clrMapOvr = instance.clrMapOvr;
      } catch (e) {}
      try {
        final c_pivotSource = instance.pivotSource;
      } catch (e) {}
      try {
        final c_protection = instance.protection;
      } catch (e) {}
      try {
        final c_chart = instance.chart;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_externalData = instance.externalData;
      } catch (e) {}
      try {
        final c_printSettings = instance.printSettings;
      } catch (e) {}
      try {
        final c_userShapes = instance.userShapes;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ChartSpace with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chart',
            'ns0',
          );
          builder.d_ct_chartspace(
            tagName: 'dummy',
            namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ChartSpace(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_date1904 = instance.date1904;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_roundedCorners = instance.roundedCorners;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_clrMapOvr = instance.clrMapOvr;
      } catch (e) {}
      try {
        final c_pivotSource = instance.pivotSource;
      } catch (e) {}
      try {
        final c_protection = instance.protection;
      } catch (e) {}
      try {
        final c_chart = instance.chart;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_txPr = instance.txPr;
      } catch (e) {}
      try {
        final c_externalData = instance.externalData;
      } catch (e) {}
      try {
        final c_printSettings = instance.printSettings;
      } catch (e) {}
      try {
        final c_userShapes = instance.userShapes;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test D_CT_ShapeNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvSpPr = instance.cNvSpPr;
      } catch (e) {}
    });
    test('Test D_CT_ShapeNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_shapenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvSpPr = instance.cNvSpPr;
      } catch (e) {}
    });
    test('Test D_CT_ConnectorNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ConnectorNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvCxnSpPr = instance.cNvCxnSpPr;
      } catch (e) {}
    });
    test('Test D_CT_ConnectorNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_connectornonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_ConnectorNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvCxnSpPr = instance.cNvCxnSpPr;
      } catch (e) {}
    });
    test('Test D_CT_Connector with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Connector(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvCxnSpPr = instance.nvCxnSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
    });
    test('Test D_CT_Connector with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_connector(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            macro: 'test',
            fPublished: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Connector(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvCxnSpPr = instance.nvCxnSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
    });
    test('Test D_CT_PictureNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvPicPr = instance.cNvPicPr;
      } catch (e) {}
    });
    test('Test D_CT_PictureNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_picturenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_PictureNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvPicPr = instance.cNvPicPr;
      } catch (e) {}
    });
    test('Test D_CT_Picture with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Picture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvPicPr = instance.nvPicPr;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
    });
    test('Test D_CT_Picture with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_picture(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            macro: 'test',
            fPublished: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Picture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvPicPr = instance.nvPicPr;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
    });
    test('Test D_CT_GraphicFrameNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicFrameNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_GraphicFrameNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            'ns0',
          );
          builder.d_ct_graphicframenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicFrameNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_GroupShapeNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGrpSpPr = instance.cNvGrpSpPr;
      } catch (e) {}
    });
    test('Test D_CT_GroupShapeNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_groupshapenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGrpSpPr = instance.cNvGrpSpPr;
      } catch (e) {}
    });
    test('Test D_CT_GroupShape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvGrpSpPr = instance.nvGrpSpPr;
      } catch (e) {}
      try {
        final c_grpSpPr = instance.grpSpPr;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
    });
    test('Test D_CT_GroupShape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_groupshape(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GroupShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvGrpSpPr = instance.nvGrpSpPr;
      } catch (e) {}
      try {
        final c_grpSpPr = instance.grpSpPr;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
    });
    test('Test D_CT_RelSizeAnchor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelSizeAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
    });
    test('Test D_CT_RelSizeAnchor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            'ns0',
          );
          builder.d_ct_relsizeanchor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_RelSizeAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
    });
    test('Test D_CT_AbsSizeAnchor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AbsSizeAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
    });
    test('Test D_CT_AbsSizeAnchor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            'ns0',
          );
          builder.d_ct_abssizeanchor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AbsSizeAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
    });
    test('Test D_CT_Drawing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Drawing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_twoCellAnchor = instance.twoCellAnchor;
      } catch (e) {}
      try {
        final c_oneCellAnchor = instance.oneCellAnchor;
      } catch (e) {}
      try {
        final c_absoluteAnchor = instance.absoluteAnchor;
      } catch (e) {}
    });
    test('Test D_CT_Drawing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_drawing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Drawing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_twoCellAnchor = instance.twoCellAnchor;
      } catch (e) {}
      try {
        final c_oneCellAnchor = instance.oneCellAnchor;
      } catch (e) {}
      try {
        final c_absoluteAnchor = instance.absoluteAnchor;
      } catch (e) {}
    });
    test('Test D_CT_AnchorClientData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnchorClientData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fLocksWithSheet = instance.fLocksWithSheet;
      } catch (e) {}
      try {
        final v_fPrintsWithSheet = instance.fPrintsWithSheet;
      } catch (e) {}
    });
    test('Test D_CT_AnchorClientData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_anchorclientdata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            fLocksWithSheet: true,
            fPrintsWithSheet: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AnchorClientData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fLocksWithSheet = instance.fLocksWithSheet;
      } catch (e) {}
      try {
        final v_fPrintsWithSheet = instance.fPrintsWithSheet;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObjectFrameNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObjectFrameNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObjectFrameNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_graphicalobjectframenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObjectFrameNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObjectFrame with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObjectFrame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvGraphicFramePr = instance.nvGraphicFramePr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
    });
    test('Test D_CT_GraphicalObjectFrame with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_graphicalobjectframe(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            macro: 'test',
            fPublished: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_GraphicalObjectFrame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_fPublished = instance.fPublished;
      } catch (e) {}
      try {
        final c_nvGraphicFramePr = instance.nvGraphicFramePr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
    });
    test('Test D_CT_Rel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Rel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test D_CT_Rel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.d_ct_rel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_Rel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test D_CT_TwoCellAnchor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TwoCellAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_editAs = instance.editAs;
      } catch (e) {}
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_clientData = instance.clientData;
      } catch (e) {}
    });
    test('Test D_CT_TwoCellAnchor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_twocellanchor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            editAs: D_ST_EditAs.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_TwoCellAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_editAs = instance.editAs;
      } catch (e) {}
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_clientData = instance.clientData;
      } catch (e) {}
    });
    test('Test D_CT_OneCellAnchor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OneCellAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_clientData = instance.clientData;
      } catch (e) {}
    });
    test('Test D_CT_OneCellAnchor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_onecellanchor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_OneCellAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_clientData = instance.clientData;
      } catch (e) {}
    });
    test('Test D_CT_AbsoluteAnchor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AbsoluteAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_clientData = instance.clientData;
      } catch (e) {}
    });
    test('Test D_CT_AbsoluteAnchor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            'ns0',
          );
          builder.d_ct_absoluteanchor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = D_CT_AbsoluteAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_clientData = instance.clientData;
      } catch (e) {}
    });
  });
}
