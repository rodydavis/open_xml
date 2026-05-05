// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides, unused_local_variable
import 'package:test/test.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/shared/shared.g.dart';
import 'package:open_xml/src/shared/shared_builder.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';

void main() {
  group('shared generated tests', () {
    test('Test M_CT_Integer255 with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Integer255(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Integer255 with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_integer255(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Integer255(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Integer2 with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Integer2(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Integer2 with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_integer2(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Integer2(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_SpacingRule with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SpacingRule(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_SpacingRule with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_spacingrule(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SpacingRule(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_UnSignedInteger with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_UnSignedInteger(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_UnSignedInteger with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_unsignedinteger(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_UnSignedInteger(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Char with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Char(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Char with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_char(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Char(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_OnOff with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OnOff(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test M_CT_OnOff with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_onoff(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OnOff(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test M_CT_String with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_String(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_String with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_string(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_String(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_XAlign with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_XAlign(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_XAlign with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_xalign(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: ST_XAlign.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_XAlign(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_YAlign with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_YAlign(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_YAlign with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_yalign(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: ST_YAlign.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_YAlign(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Shp with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Shp(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Shp with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_shp(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_Shp.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Shp(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_FType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_FType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_FType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_ftype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_FType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_FType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_LimLoc with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimLoc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_LimLoc with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_limloc(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_LimLoc.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimLoc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_TopBot with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_TopBot(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_TopBot with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_topbot(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_TopBot.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_TopBot(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Script with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Script(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Script with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_script(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_Script.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Script(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Style with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Style(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_Style with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_style(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_Style.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Style(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_ManualBreak with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_ManualBreak(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_alnAt = instance.alnAt;
      } catch (e) {}
    });
    test('Test M_CT_ManualBreak with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_manualbreak(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            alnAt: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_ManualBreak(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_alnAt = instance.alnAt;
      } catch (e) {}
    });
    test('Test M_CT_RPR with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_RPR(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_lit = instance.lit;
      } catch (e) {}
      try {
        final c_nor = instance.nor;
      } catch (e) {}
      try {
        final c_scr = instance.scr;
      } catch (e) {}
      try {
        final c_sty = instance.sty;
      } catch (e) {}
      try {
        final c_brk = instance.brk;
      } catch (e) {}
      try {
        final c_aln = instance.aln;
      } catch (e) {}
    });
    test('Test M_CT_RPR with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_rpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_RPR(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_lit = instance.lit;
      } catch (e) {}
      try {
        final c_nor = instance.nor;
      } catch (e) {}
      try {
        final c_scr = instance.scr;
      } catch (e) {}
      try {
        final c_sty = instance.sty;
      } catch (e) {}
      try {
        final c_brk = instance.brk;
      } catch (e) {}
      try {
        final c_aln = instance.aln;
      } catch (e) {}
    });
    test('Test M_CT_Text with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Text(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_xml_space = instance.xml_space;
      } catch (e) {}
    });
    test('Test M_CT_Text with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_text(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            xml_space: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Text(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_xml_space = instance.xml_space;
      } catch (e) {}
    });
    test('Test M_CT_R with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_R(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_br = instance.br;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_delText = instance.delText;
      } catch (e) {}
      try {
        final c_instrText = instance.instrText;
      } catch (e) {}
      try {
        final c_delInstrText = instance.delInstrText;
      } catch (e) {}
      try {
        final c_noBreakHyphen = instance.noBreakHyphen;
      } catch (e) {}
      try {
        final c_softHyphen = instance.softHyphen;
      } catch (e) {}
      try {
        final c_dayShort = instance.dayShort;
      } catch (e) {}
      try {
        final c_monthShort = instance.monthShort;
      } catch (e) {}
      try {
        final c_yearShort = instance.yearShort;
      } catch (e) {}
      try {
        final c_dayLong = instance.dayLong;
      } catch (e) {}
      try {
        final c_monthLong = instance.monthLong;
      } catch (e) {}
      try {
        final c_yearLong = instance.yearLong;
      } catch (e) {}
      try {
        final c_annotationRef = instance.annotationRef;
      } catch (e) {}
      try {
        final c_footnoteRef = instance.footnoteRef;
      } catch (e) {}
      try {
        final c_endnoteRef = instance.endnoteRef;
      } catch (e) {}
      try {
        final c_separator = instance.separator;
      } catch (e) {}
      try {
        final c_continuationSeparator = instance.continuationSeparator;
      } catch (e) {}
      try {
        final c_sym = instance.sym;
      } catch (e) {}
      try {
        final c_pgNum = instance.pgNum;
      } catch (e) {}
      try {
        final c_cr = instance.cr;
      } catch (e) {}
      try {
        final c_tab = instance.tab;
      } catch (e) {}
      try {
        final c_object = instance.object;
      } catch (e) {}
      try {
        final c_pict = instance.pict;
      } catch (e) {}
      try {
        final c_fldChar = instance.fldChar;
      } catch (e) {}
      try {
        final c_ruby = instance.ruby;
      } catch (e) {}
      try {
        final c_footnoteReference = instance.footnoteReference;
      } catch (e) {}
      try {
        final c_endnoteReference = instance.endnoteReference;
      } catch (e) {}
      try {
        final c_commentReference = instance.commentReference;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_ptab = instance.ptab;
      } catch (e) {}
      try {
        final c_lastRenderedPageBreak = instance.lastRenderedPageBreak;
      } catch (e) {}
    });
    test('Test M_CT_R with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_r(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_R(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_br = instance.br;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_delText = instance.delText;
      } catch (e) {}
      try {
        final c_instrText = instance.instrText;
      } catch (e) {}
      try {
        final c_delInstrText = instance.delInstrText;
      } catch (e) {}
      try {
        final c_noBreakHyphen = instance.noBreakHyphen;
      } catch (e) {}
      try {
        final c_softHyphen = instance.softHyphen;
      } catch (e) {}
      try {
        final c_dayShort = instance.dayShort;
      } catch (e) {}
      try {
        final c_monthShort = instance.monthShort;
      } catch (e) {}
      try {
        final c_yearShort = instance.yearShort;
      } catch (e) {}
      try {
        final c_dayLong = instance.dayLong;
      } catch (e) {}
      try {
        final c_monthLong = instance.monthLong;
      } catch (e) {}
      try {
        final c_yearLong = instance.yearLong;
      } catch (e) {}
      try {
        final c_annotationRef = instance.annotationRef;
      } catch (e) {}
      try {
        final c_footnoteRef = instance.footnoteRef;
      } catch (e) {}
      try {
        final c_endnoteRef = instance.endnoteRef;
      } catch (e) {}
      try {
        final c_separator = instance.separator;
      } catch (e) {}
      try {
        final c_continuationSeparator = instance.continuationSeparator;
      } catch (e) {}
      try {
        final c_sym = instance.sym;
      } catch (e) {}
      try {
        final c_pgNum = instance.pgNum;
      } catch (e) {}
      try {
        final c_cr = instance.cr;
      } catch (e) {}
      try {
        final c_tab = instance.tab;
      } catch (e) {}
      try {
        final c_object = instance.object;
      } catch (e) {}
      try {
        final c_pict = instance.pict;
      } catch (e) {}
      try {
        final c_fldChar = instance.fldChar;
      } catch (e) {}
      try {
        final c_ruby = instance.ruby;
      } catch (e) {}
      try {
        final c_footnoteReference = instance.footnoteReference;
      } catch (e) {}
      try {
        final c_endnoteReference = instance.endnoteReference;
      } catch (e) {}
      try {
        final c_commentReference = instance.commentReference;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_ptab = instance.ptab;
      } catch (e) {}
      try {
        final c_lastRenderedPageBreak = instance.lastRenderedPageBreak;
      } catch (e) {}
    });
    test('Test M_CT_CtrlPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_CtrlPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_ins = instance.ins;
      } catch (e) {}
      try {
        final c_del = instance.del;
      } catch (e) {}
    });
    test('Test M_CT_CtrlPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_ctrlpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_CtrlPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_ins = instance.ins;
      } catch (e) {}
      try {
        final c_del = instance.del;
      } catch (e) {}
    });
    test('Test M_CT_AccPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_AccPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_chr = instance.chr;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_AccPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_accpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_AccPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_chr = instance.chr;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_Acc with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Acc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_accPr = instance.accPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_Acc with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_acc(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Acc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_accPr = instance.accPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_BarPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BarPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_BarPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_barpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BarPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_Bar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Bar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_barPr = instance.barPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_Bar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_bar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Bar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_barPr = instance.barPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_BoxPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BoxPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_opEmu = instance.opEmu;
      } catch (e) {}
      try {
        final c_noBreak = instance.noBreak;
      } catch (e) {}
      try {
        final c_diff = instance.diff;
      } catch (e) {}
      try {
        final c_brk = instance.brk;
      } catch (e) {}
      try {
        final c_aln = instance.aln;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_BoxPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_boxpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BoxPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_opEmu = instance.opEmu;
      } catch (e) {}
      try {
        final c_noBreak = instance.noBreak;
      } catch (e) {}
      try {
        final c_diff = instance.diff;
      } catch (e) {}
      try {
        final c_brk = instance.brk;
      } catch (e) {}
      try {
        final c_aln = instance.aln;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_Box with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Box(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_boxPr = instance.boxPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_Box with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_box(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Box(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_boxPr = instance.boxPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_BorderBoxPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BorderBoxPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_hideTop = instance.hideTop;
      } catch (e) {}
      try {
        final c_hideBot = instance.hideBot;
      } catch (e) {}
      try {
        final c_hideLeft = instance.hideLeft;
      } catch (e) {}
      try {
        final c_hideRight = instance.hideRight;
      } catch (e) {}
      try {
        final c_strikeH = instance.strikeH;
      } catch (e) {}
      try {
        final c_strikeV = instance.strikeV;
      } catch (e) {}
      try {
        final c_strikeBLTR = instance.strikeBLTR;
      } catch (e) {}
      try {
        final c_strikeTLBR = instance.strikeTLBR;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_BorderBoxPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_borderboxpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BorderBoxPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_hideTop = instance.hideTop;
      } catch (e) {}
      try {
        final c_hideBot = instance.hideBot;
      } catch (e) {}
      try {
        final c_hideLeft = instance.hideLeft;
      } catch (e) {}
      try {
        final c_hideRight = instance.hideRight;
      } catch (e) {}
      try {
        final c_strikeH = instance.strikeH;
      } catch (e) {}
      try {
        final c_strikeV = instance.strikeV;
      } catch (e) {}
      try {
        final c_strikeBLTR = instance.strikeBLTR;
      } catch (e) {}
      try {
        final c_strikeTLBR = instance.strikeTLBR;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_BorderBox with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BorderBox(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_borderBoxPr = instance.borderBoxPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_BorderBox with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_borderbox(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BorderBox(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_borderBoxPr = instance.borderBoxPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_DPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_DPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_begChr = instance.begChr;
      } catch (e) {}
      try {
        final c_sepChr = instance.sepChr;
      } catch (e) {}
      try {
        final c_endChr = instance.endChr;
      } catch (e) {}
      try {
        final c_grow = instance.grow;
      } catch (e) {}
      try {
        final c_shp = instance.shp;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_DPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_dpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_DPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_begChr = instance.begChr;
      } catch (e) {}
      try {
        final c_sepChr = instance.sepChr;
      } catch (e) {}
      try {
        final c_endChr = instance.endChr;
      } catch (e) {}
      try {
        final c_grow = instance.grow;
      } catch (e) {}
      try {
        final c_shp = instance.shp;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_D with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_dPr = instance.dPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_D with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_d(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_D(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_dPr = instance.dPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_EqArrPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_EqArrPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_baseJc = instance.baseJc;
      } catch (e) {}
      try {
        final c_maxDist = instance.maxDist;
      } catch (e) {}
      try {
        final c_objDist = instance.objDist;
      } catch (e) {}
      try {
        final c_rSpRule = instance.rSpRule;
      } catch (e) {}
      try {
        final c_rSp = instance.rSp;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_EqArrPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_eqarrpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_EqArrPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_baseJc = instance.baseJc;
      } catch (e) {}
      try {
        final c_maxDist = instance.maxDist;
      } catch (e) {}
      try {
        final c_objDist = instance.objDist;
      } catch (e) {}
      try {
        final c_rSpRule = instance.rSpRule;
      } catch (e) {}
      try {
        final c_rSp = instance.rSp;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_EqArr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_EqArr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_eqArrPr = instance.eqArrPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_EqArr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_eqarr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_EqArr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_eqArrPr = instance.eqArrPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_FPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_FPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_FPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_fpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_FPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_F with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_F(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_fPr = instance.fPr;
      } catch (e) {}
      try {
        final c_num_ = instance.num_;
      } catch (e) {}
      try {
        final c_den = instance.den;
      } catch (e) {}
    });
    test('Test M_CT_F with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_f(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_F(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_fPr = instance.fPr;
      } catch (e) {}
      try {
        final c_num_ = instance.num_;
      } catch (e) {}
      try {
        final c_den = instance.den;
      } catch (e) {}
    });
    test('Test M_CT_FuncPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_FuncPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_FuncPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_funcpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_FuncPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_Func with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Func(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_funcPr = instance.funcPr;
      } catch (e) {}
      try {
        final c_fName = instance.fName;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_Func with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_func(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Func(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_funcPr = instance.funcPr;
      } catch (e) {}
      try {
        final c_fName = instance.fName;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_GroupChrPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_GroupChrPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_chr = instance.chr;
      } catch (e) {}
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_vertJc = instance.vertJc;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_GroupChrPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_groupchrpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_GroupChrPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_chr = instance.chr;
      } catch (e) {}
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_vertJc = instance.vertJc;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_GroupChr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_GroupChr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_groupChrPr = instance.groupChrPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_GroupChr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_groupchr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_GroupChr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_groupChrPr = instance.groupChrPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_LimLowPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimLowPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_LimLowPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_limlowpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimLowPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_LimLow with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimLow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_limLowPr = instance.limLowPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_lim = instance.lim;
      } catch (e) {}
    });
    test('Test M_CT_LimLow with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_limlow(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimLow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_limLowPr = instance.limLowPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_lim = instance.lim;
      } catch (e) {}
    });
    test('Test M_CT_LimUppPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimUppPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_LimUppPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_limupppr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimUppPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_LimUpp with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimUpp(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_limUppPr = instance.limUppPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_lim = instance.lim;
      } catch (e) {}
    });
    test('Test M_CT_LimUpp with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_limupp(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_LimUpp(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_limUppPr = instance.limUppPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_lim = instance.lim;
      } catch (e) {}
    });
    test('Test M_CT_MCPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MCPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_count = instance.count;
      } catch (e) {}
      try {
        final c_mcJc = instance.mcJc;
      } catch (e) {}
    });
    test('Test M_CT_MCPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_mcpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MCPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_count = instance.count;
      } catch (e) {}
      try {
        final c_mcJc = instance.mcJc;
      } catch (e) {}
    });
    test('Test M_CT_MC with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MC(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mcPr = instance.mcPr;
      } catch (e) {}
    });
    test('Test M_CT_MC with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_mc(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MC(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mcPr = instance.mcPr;
      } catch (e) {}
    });
    test('Test M_CT_MCS with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MCS(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mc = instance.mc;
      } catch (e) {}
    });
    test('Test M_CT_MCS with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_mcs(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MCS(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mc = instance.mc;
      } catch (e) {}
    });
    test('Test M_CT_MPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_baseJc = instance.baseJc;
      } catch (e) {}
      try {
        final c_plcHide = instance.plcHide;
      } catch (e) {}
      try {
        final c_rSpRule = instance.rSpRule;
      } catch (e) {}
      try {
        final c_cGpRule = instance.cGpRule;
      } catch (e) {}
      try {
        final c_rSp = instance.rSp;
      } catch (e) {}
      try {
        final c_cSp = instance.cSp;
      } catch (e) {}
      try {
        final c_cGp = instance.cGp;
      } catch (e) {}
      try {
        final c_mcs = instance.mcs;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_MPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_mpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_baseJc = instance.baseJc;
      } catch (e) {}
      try {
        final c_plcHide = instance.plcHide;
      } catch (e) {}
      try {
        final c_rSpRule = instance.rSpRule;
      } catch (e) {}
      try {
        final c_cGpRule = instance.cGpRule;
      } catch (e) {}
      try {
        final c_rSp = instance.rSp;
      } catch (e) {}
      try {
        final c_cSp = instance.cSp;
      } catch (e) {}
      try {
        final c_cGp = instance.cGp;
      } catch (e) {}
      try {
        final c_mcs = instance.mcs;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_MR with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MR(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_MR with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_mr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MR(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_M with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_M(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mPr = instance.mPr;
      } catch (e) {}
      try {
        final c_mr = instance.mr;
      } catch (e) {}
    });
    test('Test M_CT_M with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_m(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_M(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mPr = instance.mPr;
      } catch (e) {}
      try {
        final c_mr = instance.mr;
      } catch (e) {}
    });
    test('Test M_CT_NaryPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_NaryPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_chr = instance.chr;
      } catch (e) {}
      try {
        final c_limLoc = instance.limLoc;
      } catch (e) {}
      try {
        final c_grow = instance.grow;
      } catch (e) {}
      try {
        final c_subHide = instance.subHide;
      } catch (e) {}
      try {
        final c_supHide = instance.supHide;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_NaryPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_narypr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_NaryPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_chr = instance.chr;
      } catch (e) {}
      try {
        final c_limLoc = instance.limLoc;
      } catch (e) {}
      try {
        final c_grow = instance.grow;
      } catch (e) {}
      try {
        final c_subHide = instance.subHide;
      } catch (e) {}
      try {
        final c_supHide = instance.supHide;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_Nary with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Nary(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_naryPr = instance.naryPr;
      } catch (e) {}
      try {
        final c_sub = instance.sub;
      } catch (e) {}
      try {
        final c_sup = instance.sup;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_Nary with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_nary(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Nary(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_naryPr = instance.naryPr;
      } catch (e) {}
      try {
        final c_sub = instance.sub;
      } catch (e) {}
      try {
        final c_sup = instance.sup;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_PhantPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_PhantPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_show_ = instance.show_;
      } catch (e) {}
      try {
        final c_zeroWid = instance.zeroWid;
      } catch (e) {}
      try {
        final c_zeroAsc = instance.zeroAsc;
      } catch (e) {}
      try {
        final c_zeroDesc = instance.zeroDesc;
      } catch (e) {}
      try {
        final c_transp = instance.transp;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_PhantPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_phantpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_PhantPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_show_ = instance.show_;
      } catch (e) {}
      try {
        final c_zeroWid = instance.zeroWid;
      } catch (e) {}
      try {
        final c_zeroAsc = instance.zeroAsc;
      } catch (e) {}
      try {
        final c_zeroDesc = instance.zeroDesc;
      } catch (e) {}
      try {
        final c_transp = instance.transp;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_Phant with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Phant(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_phantPr = instance.phantPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_Phant with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_phant(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Phant(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_phantPr = instance.phantPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_RadPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_RadPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_degHide = instance.degHide;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_RadPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_radpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_RadPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_degHide = instance.degHide;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_Rad with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Rad(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_radPr = instance.radPr;
      } catch (e) {}
      try {
        final c_deg = instance.deg;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_Rad with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_rad(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_Rad(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_radPr = instance.radPr;
      } catch (e) {}
      try {
        final c_deg = instance.deg;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_SPrePr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SPrePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_SPrePr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_sprepr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SPrePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_SPre with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SPre(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sPrePr = instance.sPrePr;
      } catch (e) {}
      try {
        final c_sub = instance.sub;
      } catch (e) {}
      try {
        final c_sup = instance.sup;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_SPre with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_spre(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SPre(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sPrePr = instance.sPrePr;
      } catch (e) {}
      try {
        final c_sub = instance.sub;
      } catch (e) {}
      try {
        final c_sup = instance.sup;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
    });
    test('Test M_CT_SSubPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSubPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_SSubPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_ssubpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSubPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_SSub with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSub(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sSubPr = instance.sSubPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_sub = instance.sub;
      } catch (e) {}
    });
    test('Test M_CT_SSub with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_ssub(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSub(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sSubPr = instance.sSubPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_sub = instance.sub;
      } catch (e) {}
    });
    test('Test M_CT_SSubSupPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSubSupPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_alnScr = instance.alnScr;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_SSubSupPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_ssubsuppr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSubSupPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_alnScr = instance.alnScr;
      } catch (e) {}
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_SSubSup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSubSup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sSubSupPr = instance.sSubSupPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_sub = instance.sub;
      } catch (e) {}
      try {
        final c_sup = instance.sup;
      } catch (e) {}
    });
    test('Test M_CT_SSubSup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_ssubsup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSubSup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sSubSupPr = instance.sSubSupPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_sub = instance.sub;
      } catch (e) {}
      try {
        final c_sup = instance.sup;
      } catch (e) {}
    });
    test('Test M_CT_SSupPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSupPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_SSupPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_ssuppr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSupPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_SSup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sSupPr = instance.sSupPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_sup = instance.sup;
      } catch (e) {}
    });
    test('Test M_CT_SSup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_ssup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_SSup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sSupPr = instance.sSupPr;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_sup = instance.sup;
      } catch (e) {}
    });
    test('Test M_CT_OMathArgPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathArgPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_argSz = instance.argSz;
      } catch (e) {}
    });
    test('Test M_CT_OMathArgPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_omathargpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathArgPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_argSz = instance.argSz;
      } catch (e) {}
    });
    test('Test M_CT_OMathArg with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathArg(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_argPr = instance.argPr;
      } catch (e) {}
      try {
        final c_acc = instance.acc;
      } catch (e) {}
      try {
        final c_bar = instance.bar;
      } catch (e) {}
      try {
        final c_box = instance.box;
      } catch (e) {}
      try {
        final c_borderBox = instance.borderBox;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
      try {
        final c_eqArr = instance.eqArr;
      } catch (e) {}
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_func = instance.func;
      } catch (e) {}
      try {
        final c_groupChr = instance.groupChr;
      } catch (e) {}
      try {
        final c_limLow = instance.limLow;
      } catch (e) {}
      try {
        final c_limUpp = instance.limUpp;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_nary = instance.nary;
      } catch (e) {}
      try {
        final c_phant = instance.phant;
      } catch (e) {}
      try {
        final c_rad = instance.rad;
      } catch (e) {}
      try {
        final c_sPre = instance.sPre;
      } catch (e) {}
      try {
        final c_sSub = instance.sSub;
      } catch (e) {}
      try {
        final c_sSubSup = instance.sSubSup;
      } catch (e) {}
      try {
        final c_sSup = instance.sSup;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
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
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_OMathArg with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_omatharg(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathArg(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_argPr = instance.argPr;
      } catch (e) {}
      try {
        final c_acc = instance.acc;
      } catch (e) {}
      try {
        final c_bar = instance.bar;
      } catch (e) {}
      try {
        final c_box = instance.box;
      } catch (e) {}
      try {
        final c_borderBox = instance.borderBox;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
      try {
        final c_eqArr = instance.eqArr;
      } catch (e) {}
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_func = instance.func;
      } catch (e) {}
      try {
        final c_groupChr = instance.groupChr;
      } catch (e) {}
      try {
        final c_limLow = instance.limLow;
      } catch (e) {}
      try {
        final c_limUpp = instance.limUpp;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_nary = instance.nary;
      } catch (e) {}
      try {
        final c_phant = instance.phant;
      } catch (e) {}
      try {
        final c_rad = instance.rad;
      } catch (e) {}
      try {
        final c_sPre = instance.sPre;
      } catch (e) {}
      try {
        final c_sSub = instance.sSub;
      } catch (e) {}
      try {
        final c_sSubSup = instance.sSubSup;
      } catch (e) {}
      try {
        final c_sSup = instance.sSup;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
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
        final c_ctrlPr = instance.ctrlPr;
      } catch (e) {}
    });
    test('Test M_CT_OMathJc with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathJc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_OMathJc with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_omathjc(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_Jc.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathJc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_OMathParaPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathParaPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_jc = instance.jc;
      } catch (e) {}
    });
    test('Test M_CT_OMathParaPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_omathparapr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathParaPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_jc = instance.jc;
      } catch (e) {}
    });
    test('Test M_CT_TwipsMeasure with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_TwipsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test M_CT_TwipsMeasure with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_twipsmeasure(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_TwipsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test M_CT_BreakBin with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BreakBin(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_BreakBin with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_breakbin(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_BreakBin.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BreakBin(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_BreakBinSub with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BreakBinSub(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_BreakBinSub with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_breakbinsub(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
            val: M_ST_BreakBinSub.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_BreakBinSub(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test M_CT_MathPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MathPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mathFont = instance.mathFont;
      } catch (e) {}
      try {
        final c_brkBin = instance.brkBin;
      } catch (e) {}
      try {
        final c_brkBinSub = instance.brkBinSub;
      } catch (e) {}
      try {
        final c_smallFrac = instance.smallFrac;
      } catch (e) {}
      try {
        final c_dispDef = instance.dispDef;
      } catch (e) {}
      try {
        final c_lMargin = instance.lMargin;
      } catch (e) {}
      try {
        final c_rMargin = instance.rMargin;
      } catch (e) {}
      try {
        final c_defJc = instance.defJc;
      } catch (e) {}
      try {
        final c_preSp = instance.preSp;
      } catch (e) {}
      try {
        final c_postSp = instance.postSp;
      } catch (e) {}
      try {
        final c_interSp = instance.interSp;
      } catch (e) {}
      try {
        final c_intraSp = instance.intraSp;
      } catch (e) {}
      try {
        final c_wrapIndent = instance.wrapIndent;
      } catch (e) {}
      try {
        final c_wrapRight = instance.wrapRight;
      } catch (e) {}
      try {
        final c_intLim = instance.intLim;
      } catch (e) {}
      try {
        final c_naryLim = instance.naryLim;
      } catch (e) {}
    });
    test('Test M_CT_MathPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_mathpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_MathPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mathFont = instance.mathFont;
      } catch (e) {}
      try {
        final c_brkBin = instance.brkBin;
      } catch (e) {}
      try {
        final c_brkBinSub = instance.brkBinSub;
      } catch (e) {}
      try {
        final c_smallFrac = instance.smallFrac;
      } catch (e) {}
      try {
        final c_dispDef = instance.dispDef;
      } catch (e) {}
      try {
        final c_lMargin = instance.lMargin;
      } catch (e) {}
      try {
        final c_rMargin = instance.rMargin;
      } catch (e) {}
      try {
        final c_defJc = instance.defJc;
      } catch (e) {}
      try {
        final c_preSp = instance.preSp;
      } catch (e) {}
      try {
        final c_postSp = instance.postSp;
      } catch (e) {}
      try {
        final c_interSp = instance.interSp;
      } catch (e) {}
      try {
        final c_intraSp = instance.intraSp;
      } catch (e) {}
      try {
        final c_wrapIndent = instance.wrapIndent;
      } catch (e) {}
      try {
        final c_wrapRight = instance.wrapRight;
      } catch (e) {}
      try {
        final c_intLim = instance.intLim;
      } catch (e) {}
      try {
        final c_naryLim = instance.naryLim;
      } catch (e) {}
    });
    test('Test M_CT_OMathPara with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathPara(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_oMathParaPr = instance.oMathParaPr;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
    });
    test('Test M_CT_OMathPara with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_omathpara(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMathPara(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_oMathParaPr = instance.oMathParaPr;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
    });
    test('Test M_CT_OMath with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMath(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_acc = instance.acc;
      } catch (e) {}
      try {
        final c_bar = instance.bar;
      } catch (e) {}
      try {
        final c_box = instance.box;
      } catch (e) {}
      try {
        final c_borderBox = instance.borderBox;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
      try {
        final c_eqArr = instance.eqArr;
      } catch (e) {}
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_func = instance.func;
      } catch (e) {}
      try {
        final c_groupChr = instance.groupChr;
      } catch (e) {}
      try {
        final c_limLow = instance.limLow;
      } catch (e) {}
      try {
        final c_limUpp = instance.limUpp;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_nary = instance.nary;
      } catch (e) {}
      try {
        final c_phant = instance.phant;
      } catch (e) {}
      try {
        final c_rad = instance.rad;
      } catch (e) {}
      try {
        final c_sPre = instance.sPre;
      } catch (e) {}
      try {
        final c_sSub = instance.sSub;
      } catch (e) {}
      try {
        final c_sSubSup = instance.sSubSup;
      } catch (e) {}
      try {
        final c_sSup = instance.sSup;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
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
    });
    test('Test M_CT_OMath with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/math',
            'ns0',
          );
          builder.m_ct_omath(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/officeDocument/2006/math',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = M_CT_OMath(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_acc = instance.acc;
      } catch (e) {}
      try {
        final c_bar = instance.bar;
      } catch (e) {}
      try {
        final c_box = instance.box;
      } catch (e) {}
      try {
        final c_borderBox = instance.borderBox;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
      try {
        final c_eqArr = instance.eqArr;
      } catch (e) {}
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_func = instance.func;
      } catch (e) {}
      try {
        final c_groupChr = instance.groupChr;
      } catch (e) {}
      try {
        final c_limLow = instance.limLow;
      } catch (e) {}
      try {
        final c_limUpp = instance.limUpp;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_nary = instance.nary;
      } catch (e) {}
      try {
        final c_phant = instance.phant;
      } catch (e) {}
      try {
        final c_rad = instance.rad;
      } catch (e) {}
      try {
        final c_sPre = instance.sPre;
      } catch (e) {}
      try {
        final c_sSub = instance.sSub;
      } catch (e) {}
      try {
        final c_sSubSup = instance.sSubSup;
      } catch (e) {}
      try {
        final c_sSup = instance.sSup;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
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
    });
    test('Test CT_Schema with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = CT_Schema(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_manifestLocation = instance.manifestLocation;
      } catch (e) {}
      try {
        final v_schemaLocation = instance.schemaLocation;
      } catch (e) {}
      try {
        final v_schemaLanguage = instance.schemaLanguage;
      } catch (e) {}
    });
    test('Test CT_Schema with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
            'ns0',
          );
          builder.ct_schema(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
            uri: 'test',
            manifestLocation: 'test',
            schemaLocation: 'test',
            schemaLanguage: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = CT_Schema(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_manifestLocation = instance.manifestLocation;
      } catch (e) {}
      try {
        final v_schemaLocation = instance.schemaLocation;
      } catch (e) {}
      try {
        final v_schemaLanguage = instance.schemaLanguage;
      } catch (e) {}
    });
    test('Test CT_SchemaLibrary with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = CT_SchemaLibrary(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_schema = instance.schema;
      } catch (e) {}
    });
    test('Test CT_SchemaLibrary with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
            'ns0',
          );
          builder.ct_schemalibrary(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = CT_SchemaLibrary(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_schema = instance.schema;
      } catch (e) {}
    });
  });
}
