// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides, unused_local_variable
import 'package:test/test.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/wml/wml_builder.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';

void main() {
  group('wml generated tests', () {
    test('Test W_CT_Empty with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Empty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Empty with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_empty(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Empty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_OnOff with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_OnOff(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_OnOff with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_onoff(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_OnOff(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_LongHexNumber with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LongHexNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_LongHexNumber with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_longhexnumber(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LongHexNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Charset with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Charset(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_characterSet = instance.characterSet;
      } catch (e) {}
    });
    test('Test W_CT_Charset with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_charset(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
            characterSet: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Charset(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_characterSet = instance.characterSet;
      } catch (e) {}
    });
    test('Test W_CT_DecimalNumber with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DecimalNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DecimalNumber with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_decimalnumber(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DecimalNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_UnsignedDecimalNumber with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_UnsignedDecimalNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_UnsignedDecimalNumber with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_unsigneddecimalnumber(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_UnsignedDecimalNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DecimalNumberOrPrecent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DecimalNumberOrPrecent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_DecimalNumberOrPrecent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_decimalnumberorprecent(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DecimalNumberOrPrecent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TwipsMeasure with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TwipsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TwipsMeasure with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_twipsmeasure(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TwipsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_SignedTwipsMeasure with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SignedTwipsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_SignedTwipsMeasure with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_signedtwipsmeasure(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SignedTwipsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_PixelsMeasure with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PixelsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_PixelsMeasure with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pixelsmeasure(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PixelsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_HpsMeasure with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_HpsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_HpsMeasure with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_hpsmeasure(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_HpsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_SignedHpsMeasure with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SignedHpsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_SignedHpsMeasure with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_signedhpsmeasure(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SignedHpsMeasure(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_MacroName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MacroName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MacroName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_macroname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MacroName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_String with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_String(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_String with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_string(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_String(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TextScale with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextScale(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TextScale with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_textscale(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextScale(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Highlight with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Highlight(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Highlight with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_highlight(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_HighlightColor.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Highlight(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Color with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Color(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
    });
    test('Test W_CT_Color with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_color(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            themeColor: W_ST_ThemeColor.values.first,
            themeTint: 'test',
            themeShade: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Color(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
    });
    test('Test W_CT_Lang with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Lang(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Lang with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_lang(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Lang(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Guid with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Guid(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Guid with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_guid(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Guid(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Underline with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Underline(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
    });
    test('Test W_CT_Underline with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_underline(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Underline.values.first,
            themeColor: W_ST_ThemeColor.values.first,
            themeTint: 'test',
            themeShade: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Underline(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
    });
    test('Test W_CT_TextEffect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TextEffect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_texteffect(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_TextEffect.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextEffect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Border with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Border(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
      try {
        final v_sz = instance.sz;
      } catch (e) {}
      try {
        final v_space = instance.space;
      } catch (e) {}
    });
    test('Test W_CT_Border with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_border(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Border.values.first,
            themeColor: W_ST_ThemeColor.values.first,
            themeTint: 'test',
            themeShade: 'test',
            sz: 'test',
            space: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Border(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
      try {
        final v_sz = instance.sz;
      } catch (e) {}
      try {
        final v_space = instance.space;
      } catch (e) {}
    });
    test('Test W_CT_Shd with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Shd(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
      try {
        final v_themeFill = instance.themeFill;
      } catch (e) {}
      try {
        final v_themeFillTint = instance.themeFillTint;
      } catch (e) {}
      try {
        final v_themeFillShade = instance.themeFillShade;
      } catch (e) {}
    });
    test('Test W_CT_Shd with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_shd(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Shd.values.first,
            themeColor: W_ST_ThemeColor.values.first,
            themeTint: 'test',
            themeShade: 'test',
            themeFill: W_ST_ThemeColor.values.first,
            themeFillTint: 'test',
            themeFillShade: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Shd(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
      try {
        final v_themeFill = instance.themeFill;
      } catch (e) {}
      try {
        final v_themeFillTint = instance.themeFillTint;
      } catch (e) {}
      try {
        final v_themeFillShade = instance.themeFillShade;
      } catch (e) {}
    });
    test('Test W_CT_VerticalAlignRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_VerticalAlignRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_VerticalAlignRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_verticalalignrun(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: ST_VerticalAlignRun.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_VerticalAlignRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FitText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FitText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test W_CT_FitText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fittext(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FitText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test W_CT_Em with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Em(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Em with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_em(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Em.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Em(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Language with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Language(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_eastAsia = instance.eastAsia;
      } catch (e) {}
      try {
        final v_bidi = instance.bidi;
      } catch (e) {}
    });
    test('Test W_CT_Language with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_language(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
            eastAsia: 'test',
            bidi: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Language(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_eastAsia = instance.eastAsia;
      } catch (e) {}
      try {
        final v_bidi = instance.bidi;
      } catch (e) {}
    });
    test('Test W_CT_EastAsianLayout with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_EastAsianLayout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_combineBrackets = instance.combineBrackets;
      } catch (e) {}
    });
    test('Test W_CT_EastAsianLayout with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_eastasianlayout(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            id: 'test',
            combineBrackets: W_ST_CombineBrackets.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_EastAsianLayout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_combineBrackets = instance.combineBrackets;
      } catch (e) {}
    });
    test('Test W_CT_FramePr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FramePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dropCap = instance.dropCap;
      } catch (e) {}
      try {
        final v_lines = instance.lines;
      } catch (e) {}
      try {
        final v_wrap = instance.wrap;
      } catch (e) {}
      try {
        final v_hAnchor = instance.hAnchor;
      } catch (e) {}
      try {
        final v_vAnchor = instance.vAnchor;
      } catch (e) {}
      try {
        final v_xAlign = instance.xAlign;
      } catch (e) {}
      try {
        final v_yAlign = instance.yAlign;
      } catch (e) {}
      try {
        final v_hRule = instance.hRule;
      } catch (e) {}
    });
    test('Test W_CT_FramePr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_framepr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            dropCap: W_ST_DropCap.values.first,
            lines: 'test',
            wrap: W_ST_Wrap.values.first,
            hAnchor: W_ST_HAnchor.values.first,
            vAnchor: W_ST_VAnchor.values.first,
            xAlign: ST_XAlign.values.first,
            yAlign: ST_YAlign.values.first,
            hRule: W_ST_HeightRule.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FramePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dropCap = instance.dropCap;
      } catch (e) {}
      try {
        final v_lines = instance.lines;
      } catch (e) {}
      try {
        final v_wrap = instance.wrap;
      } catch (e) {}
      try {
        final v_hAnchor = instance.hAnchor;
      } catch (e) {}
      try {
        final v_vAnchor = instance.vAnchor;
      } catch (e) {}
      try {
        final v_xAlign = instance.xAlign;
      } catch (e) {}
      try {
        final v_yAlign = instance.yAlign;
      } catch (e) {}
      try {
        final v_hRule = instance.hRule;
      } catch (e) {}
    });
    test('Test W_CT_TabStop with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TabStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_leader = instance.leader;
      } catch (e) {}
    });
    test('Test W_CT_TabStop with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tabstop(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_TabJc.values.first,
            leader: W_ST_TabTlc.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TabStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_leader = instance.leader;
      } catch (e) {}
    });
    test('Test W_CT_Spacing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Spacing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_beforeLines = instance.beforeLines;
      } catch (e) {}
      try {
        final v_afterLines = instance.afterLines;
      } catch (e) {}
      try {
        final v_lineRule = instance.lineRule;
      } catch (e) {}
    });
    test('Test W_CT_Spacing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_spacing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            beforeLines: 'test',
            afterLines: 'test',
            lineRule: W_ST_LineSpacingRule.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Spacing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_beforeLines = instance.beforeLines;
      } catch (e) {}
      try {
        final v_afterLines = instance.afterLines;
      } catch (e) {}
      try {
        final v_lineRule = instance.lineRule;
      } catch (e) {}
    });
    test('Test W_CT_Ind with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Ind(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_startChars = instance.startChars;
      } catch (e) {}
      try {
        final v_endChars = instance.endChars;
      } catch (e) {}
      try {
        final v_leftChars = instance.leftChars;
      } catch (e) {}
      try {
        final v_rightChars = instance.rightChars;
      } catch (e) {}
      try {
        final v_hangingChars = instance.hangingChars;
      } catch (e) {}
      try {
        final v_firstLineChars = instance.firstLineChars;
      } catch (e) {}
    });
    test('Test W_CT_Ind with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ind(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            startChars: 'test',
            endChars: 'test',
            leftChars: 'test',
            rightChars: 'test',
            hangingChars: 'test',
            firstLineChars: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Ind(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_startChars = instance.startChars;
      } catch (e) {}
      try {
        final v_endChars = instance.endChars;
      } catch (e) {}
      try {
        final v_leftChars = instance.leftChars;
      } catch (e) {}
      try {
        final v_rightChars = instance.rightChars;
      } catch (e) {}
      try {
        final v_hangingChars = instance.hangingChars;
      } catch (e) {}
      try {
        final v_firstLineChars = instance.firstLineChars;
      } catch (e) {}
    });
    test('Test W_CT_Jc with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Jc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Jc with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_jc(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Jc.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Jc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_JcTable with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_JcTable(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_JcTable with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_jctable(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_JcTable.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_JcTable(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_View with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_View(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_View with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_view(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_View.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_View(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Zoom with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Zoom(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Zoom with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_zoom(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Zoom.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Zoom(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_WritingStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_WritingStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_vendorID = instance.vendorID;
      } catch (e) {}
      try {
        final v_dllVersion = instance.dllVersion;
      } catch (e) {}
      try {
        final v_appName = instance.appName;
      } catch (e) {}
    });
    test('Test W_CT_WritingStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_writingstyle(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            lang: 'test',
            vendorID: 'test',
            dllVersion: 'test',
            appName: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_WritingStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_vendorID = instance.vendorID;
      } catch (e) {}
      try {
        final v_dllVersion = instance.dllVersion;
      } catch (e) {}
      try {
        final v_appName = instance.appName;
      } catch (e) {}
    });
    test('Test W_CT_Proof with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Proof(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spelling = instance.spelling;
      } catch (e) {}
      try {
        final v_grammar = instance.grammar;
      } catch (e) {}
    });
    test('Test W_CT_Proof with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_proof(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            spelling: W_ST_Proof.values.first,
            grammar: W_ST_Proof.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Proof(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spelling = instance.spelling;
      } catch (e) {}
      try {
        final v_grammar = instance.grammar;
      } catch (e) {}
    });
    test('Test W_CT_DocType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_doctype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocProtect with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocProtect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_edit = instance.edit;
      } catch (e) {}
    });
    test('Test W_CT_DocProtect with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docprotect(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            edit: W_ST_DocProtect.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocProtect(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_edit = instance.edit;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeDocType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeDocType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeDocType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_mailmergedoctype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_MailMergeDocType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeDocType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeDataType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeDataType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeDataType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_mailmergedatatype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeDataType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeDest with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeDest(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeDest with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_mailmergedest(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_MailMergeDest.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeDest(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeOdsoFMDFieldType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeOdsoFMDFieldType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeOdsoFMDFieldType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_mailmergeodsofmdfieldtype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_MailMergeOdsoFMDFieldType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeOdsoFMDFieldType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TrackChangesView with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrackChangesView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TrackChangesView with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_trackchangesview(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrackChangesView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Kinsoku with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Kinsoku(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Kinsoku with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_kinsoku(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            lang: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Kinsoku(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TextDirection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextDirection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TextDirection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_textdirection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_TextDirection.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextDirection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TextAlignment with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextAlignment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TextAlignment with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_textalignment(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_TextAlignment.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextAlignment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Markup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Markup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test W_CT_Markup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_markup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Markup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test W_CT_TrackChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrackChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_author = instance.author;
      } catch (e) {}
      try {
        final v_date = instance.date;
      } catch (e) {}
    });
    test('Test W_CT_TrackChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_trackchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            author: 'test',
            date: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrackChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_author = instance.author;
      } catch (e) {}
      try {
        final v_date = instance.date;
      } catch (e) {}
    });
    test('Test W_CT_CellMergeTrackChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CellMergeTrackChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_vMerge = instance.vMerge;
      } catch (e) {}
      try {
        final v_vMergeOrig = instance.vMergeOrig;
      } catch (e) {}
    });
    test('Test W_CT_CellMergeTrackChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_cellmergetrackchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            vMerge: W_ST_AnnotationVMerge.values.first,
            vMergeOrig: W_ST_AnnotationVMerge.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CellMergeTrackChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_vMerge = instance.vMerge;
      } catch (e) {}
      try {
        final v_vMergeOrig = instance.vMergeOrig;
      } catch (e) {}
    });
    test('Test W_CT_TrackChangeRange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrackChangeRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_displacedByCustomXml = instance.displacedByCustomXml;
      } catch (e) {}
    });
    test('Test W_CT_TrackChangeRange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_trackchangerange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            displacedByCustomXml: W_ST_DisplacedByCustomXml.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrackChangeRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_displacedByCustomXml = instance.displacedByCustomXml;
      } catch (e) {}
    });
    test('Test W_CT_MarkupRange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MarkupRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_displacedByCustomXml = instance.displacedByCustomXml;
      } catch (e) {}
    });
    test('Test W_CT_MarkupRange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_markuprange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            displacedByCustomXml: W_ST_DisplacedByCustomXml.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MarkupRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_displacedByCustomXml = instance.displacedByCustomXml;
      } catch (e) {}
    });
    test('Test W_CT_BookmarkRange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_BookmarkRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_colFirst = instance.colFirst;
      } catch (e) {}
      try {
        final v_colLast = instance.colLast;
      } catch (e) {}
    });
    test('Test W_CT_BookmarkRange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_bookmarkrange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            colFirst: 'test',
            colLast: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_BookmarkRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_colFirst = instance.colFirst;
      } catch (e) {}
      try {
        final v_colLast = instance.colLast;
      } catch (e) {}
    });
    test('Test W_CT_Bookmark with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Bookmark(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test W_CT_Bookmark with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_bookmark(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Bookmark(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test W_CT_MoveBookmark with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MoveBookmark(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_author = instance.author;
      } catch (e) {}
      try {
        final v_date = instance.date;
      } catch (e) {}
    });
    test('Test W_CT_MoveBookmark with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_movebookmark(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            author: 'test',
            date: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MoveBookmark(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_author = instance.author;
      } catch (e) {}
      try {
        final v_date = instance.date;
      } catch (e) {}
    });
    test('Test W_CT_Comment with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Comment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_initials = instance.initials;
      } catch (e) {}
    });
    test('Test W_CT_Comment with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_comment(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            initials: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Comment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_initials = instance.initials;
      } catch (e) {}
    });
    test('Test W_CT_TrackChangeNumbering with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrackChangeNumbering(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_original = instance.original;
      } catch (e) {}
    });
    test('Test W_CT_TrackChangeNumbering with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_trackchangenumbering(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            original: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrackChangeNumbering(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_original = instance.original;
      } catch (e) {}
    });
    test('Test W_CT_TblPrExChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrExChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblPrExChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblprexchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrExChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TcPrChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TcPrChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tcprchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TrPrChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TrPrChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_trprchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblGridChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblGridChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblGridChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblgridchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblGridChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblPrChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblPrChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblprchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_SectPrChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SectPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_SectPrChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sectprchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SectPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_PPrChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_PPrChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pprchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_RPrChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_RPrChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_rprchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_ParaRPrChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ParaRPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_ParaRPrChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pararprchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ParaRPrChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_RunTrackChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RunTrackChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_RunTrackChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_runtrackchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RunTrackChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_NumPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ilvl = instance.ilvl;
      } catch (e) {}
      try {
        final c_numId = instance.numId;
      } catch (e) {}
      try {
        final c_numberingChange = instance.numberingChange;
      } catch (e) {}
      try {
        final c_ins = instance.ins;
      } catch (e) {}
    });
    test('Test W_CT_NumPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_numpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ilvl = instance.ilvl;
      } catch (e) {}
      try {
        final c_numId = instance.numId;
      } catch (e) {}
      try {
        final c_numberingChange = instance.numberingChange;
      } catch (e) {}
      try {
        final c_ins = instance.ins;
      } catch (e) {}
    });
    test('Test W_CT_PBdr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PBdr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
      try {
        final c_between = instance.between;
      } catch (e) {}
      try {
        final c_bar = instance.bar;
      } catch (e) {}
    });
    test('Test W_CT_PBdr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pbdr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PBdr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
      try {
        final c_between = instance.between;
      } catch (e) {}
      try {
        final c_bar = instance.bar;
      } catch (e) {}
    });
    test('Test W_CT_Tabs with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Tabs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tab = instance.tab;
      } catch (e) {}
    });
    test('Test W_CT_Tabs with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tabs(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Tabs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tab = instance.tab;
      } catch (e) {}
    });
    test('Test W_CT_TextboxTightWrap with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextboxTightWrap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TextboxTightWrap with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_textboxtightwrap(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_TextboxTightWrap.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TextboxTightWrap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_PPrBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pStyle = instance.pStyle;
      } catch (e) {}
      try {
        final c_keepNext = instance.keepNext;
      } catch (e) {}
      try {
        final c_keepLines = instance.keepLines;
      } catch (e) {}
      try {
        final c_pageBreakBefore = instance.pageBreakBefore;
      } catch (e) {}
      try {
        final c_framePr = instance.framePr;
      } catch (e) {}
      try {
        final c_widowControl = instance.widowControl;
      } catch (e) {}
      try {
        final c_numPr = instance.numPr;
      } catch (e) {}
      try {
        final c_suppressLineNumbers = instance.suppressLineNumbers;
      } catch (e) {}
      try {
        final c_pBdr = instance.pBdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_tabs = instance.tabs;
      } catch (e) {}
      try {
        final c_suppressAutoHyphens = instance.suppressAutoHyphens;
      } catch (e) {}
      try {
        final c_kinsoku = instance.kinsoku;
      } catch (e) {}
      try {
        final c_wordWrap = instance.wordWrap;
      } catch (e) {}
      try {
        final c_overflowPunct = instance.overflowPunct;
      } catch (e) {}
      try {
        final c_topLinePunct = instance.topLinePunct;
      } catch (e) {}
      try {
        final c_autoSpaceDE = instance.autoSpaceDE;
      } catch (e) {}
      try {
        final c_autoSpaceDN = instance.autoSpaceDN;
      } catch (e) {}
      try {
        final c_bidi = instance.bidi;
      } catch (e) {}
      try {
        final c_adjustRightInd = instance.adjustRightInd;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_ind = instance.ind;
      } catch (e) {}
      try {
        final c_contextualSpacing = instance.contextualSpacing;
      } catch (e) {}
      try {
        final c_mirrorIndents = instance.mirrorIndents;
      } catch (e) {}
      try {
        final c_suppressOverlap = instance.suppressOverlap;
      } catch (e) {}
      try {
        final c_jc = instance.jc;
      } catch (e) {}
      try {
        final c_textDirection = instance.textDirection;
      } catch (e) {}
      try {
        final c_textAlignment = instance.textAlignment;
      } catch (e) {}
      try {
        final c_textboxTightWrap = instance.textboxTightWrap;
      } catch (e) {}
      try {
        final c_outlineLvl = instance.outlineLvl;
      } catch (e) {}
      try {
        final c_divId = instance.divId;
      } catch (e) {}
      try {
        final c_cnfStyle = instance.cnfStyle;
      } catch (e) {}
    });
    test('Test W_CT_PPrBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pprbase(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pStyle = instance.pStyle;
      } catch (e) {}
      try {
        final c_keepNext = instance.keepNext;
      } catch (e) {}
      try {
        final c_keepLines = instance.keepLines;
      } catch (e) {}
      try {
        final c_pageBreakBefore = instance.pageBreakBefore;
      } catch (e) {}
      try {
        final c_framePr = instance.framePr;
      } catch (e) {}
      try {
        final c_widowControl = instance.widowControl;
      } catch (e) {}
      try {
        final c_numPr = instance.numPr;
      } catch (e) {}
      try {
        final c_suppressLineNumbers = instance.suppressLineNumbers;
      } catch (e) {}
      try {
        final c_pBdr = instance.pBdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_tabs = instance.tabs;
      } catch (e) {}
      try {
        final c_suppressAutoHyphens = instance.suppressAutoHyphens;
      } catch (e) {}
      try {
        final c_kinsoku = instance.kinsoku;
      } catch (e) {}
      try {
        final c_wordWrap = instance.wordWrap;
      } catch (e) {}
      try {
        final c_overflowPunct = instance.overflowPunct;
      } catch (e) {}
      try {
        final c_topLinePunct = instance.topLinePunct;
      } catch (e) {}
      try {
        final c_autoSpaceDE = instance.autoSpaceDE;
      } catch (e) {}
      try {
        final c_autoSpaceDN = instance.autoSpaceDN;
      } catch (e) {}
      try {
        final c_bidi = instance.bidi;
      } catch (e) {}
      try {
        final c_adjustRightInd = instance.adjustRightInd;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_ind = instance.ind;
      } catch (e) {}
      try {
        final c_contextualSpacing = instance.contextualSpacing;
      } catch (e) {}
      try {
        final c_mirrorIndents = instance.mirrorIndents;
      } catch (e) {}
      try {
        final c_suppressOverlap = instance.suppressOverlap;
      } catch (e) {}
      try {
        final c_jc = instance.jc;
      } catch (e) {}
      try {
        final c_textDirection = instance.textDirection;
      } catch (e) {}
      try {
        final c_textAlignment = instance.textAlignment;
      } catch (e) {}
      try {
        final c_textboxTightWrap = instance.textboxTightWrap;
      } catch (e) {}
      try {
        final c_outlineLvl = instance.outlineLvl;
      } catch (e) {}
      try {
        final c_divId = instance.divId;
      } catch (e) {}
      try {
        final c_cnfStyle = instance.cnfStyle;
      } catch (e) {}
    });
    test('Test W_CT_PPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_PPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ppr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_PPrGeneral with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPrGeneral(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_PPrGeneral with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pprgeneral(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPrGeneral(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Control with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Control(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_shapeid = instance.shapeid;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test W_CT_Control with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_control(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            name: 'test',
            shapeid: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Control(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_shapeid = instance.shapeid;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test W_CT_Background with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Background(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
    });
    test('Test W_CT_Background with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_background(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            themeColor: W_ST_ThemeColor.values.first,
            themeTint: 'test',
            themeShade: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Background(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_themeColor = instance.themeColor;
      } catch (e) {}
      try {
        final v_themeTint = instance.themeTint;
      } catch (e) {}
      try {
        final v_themeShade = instance.themeShade;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
    });
    test('Test W_CT_Rel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Rel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test W_CT_Rel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_rel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Rel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test W_CT_Object with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Object(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_control = instance.control;
      } catch (e) {}
      try {
        final c_objectLink = instance.objectLink;
      } catch (e) {}
      try {
        final c_objectEmbed = instance.objectEmbed;
      } catch (e) {}
      try {
        final c_movie = instance.movie;
      } catch (e) {}
    });
    test('Test W_CT_Object with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_object(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Object(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_control = instance.control;
      } catch (e) {}
      try {
        final c_objectLink = instance.objectLink;
      } catch (e) {}
      try {
        final c_objectEmbed = instance.objectEmbed;
      } catch (e) {}
      try {
        final c_movie = instance.movie;
      } catch (e) {}
    });
    test('Test W_CT_Picture with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Picture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_movie = instance.movie;
      } catch (e) {}
      try {
        final c_control = instance.control;
      } catch (e) {}
    });
    test('Test W_CT_Picture with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_picture(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Picture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_movie = instance.movie;
      } catch (e) {}
      try {
        final c_control = instance.control;
      } catch (e) {}
    });
    test('Test W_CT_ObjectEmbed with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ObjectEmbed(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_drawAspect = instance.drawAspect;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_progId = instance.progId;
      } catch (e) {}
      try {
        final v_shapeId = instance.shapeId;
      } catch (e) {}
      try {
        final v_fieldCodes = instance.fieldCodes;
      } catch (e) {}
    });
    test('Test W_CT_ObjectEmbed with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_objectembed(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            drawAspect: W_ST_ObjectDrawAspect.values.first,
            r_id: 'test',
            progId: 'test',
            shapeId: 'test',
            fieldCodes: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ObjectEmbed(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_drawAspect = instance.drawAspect;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_progId = instance.progId;
      } catch (e) {}
      try {
        final v_shapeId = instance.shapeId;
      } catch (e) {}
      try {
        final v_fieldCodes = instance.fieldCodes;
      } catch (e) {}
    });
    test('Test W_CT_ObjectLink with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ObjectLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_updateMode = instance.updateMode;
      } catch (e) {}
    });
    test('Test W_CT_ObjectLink with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_objectlink(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            updateMode: W_ST_ObjectUpdateMode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ObjectLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_updateMode = instance.updateMode;
      } catch (e) {}
    });
    test('Test W_CT_Drawing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Drawing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Drawing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_drawing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Drawing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_SimpleField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SimpleField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_instr = instance.instr;
      } catch (e) {}
      try {
        final c_fldData = instance.fldData;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_SimpleField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_simplefield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            instr: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SimpleField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_instr = instance.instr;
      } catch (e) {}
      try {
        final c_fldData = instance.fldData;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_FFTextType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFTextType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FFTextType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fftexttype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_FFTextType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFTextType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FFName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FFName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ffname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FldChar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FldChar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fldCharType = instance.fldCharType;
      } catch (e) {}
      try {
        final c_fldData = instance.fldData;
      } catch (e) {}
      try {
        final c_ffData = instance.ffData;
      } catch (e) {}
      try {
        final c_numberingChange = instance.numberingChange;
      } catch (e) {}
    });
    test('Test W_CT_FldChar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fldchar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            fldCharType: W_ST_FldCharType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FldChar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fldCharType = instance.fldCharType;
      } catch (e) {}
      try {
        final c_fldData = instance.fldData;
      } catch (e) {}
      try {
        final c_ffData = instance.ffData;
      } catch (e) {}
      try {
        final c_numberingChange = instance.numberingChange;
      } catch (e) {}
    });
    test('Test W_CT_Hyperlink with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Hyperlink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_tgtFrame = instance.tgtFrame;
      } catch (e) {}
      try {
        final v_tooltip = instance.tooltip;
      } catch (e) {}
      try {
        final v_docLocation = instance.docLocation;
      } catch (e) {}
      try {
        final v_anchor = instance.anchor;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_Hyperlink with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_hyperlink(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            tgtFrame: 'test',
            tooltip: 'test',
            docLocation: 'test',
            anchor: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Hyperlink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_tgtFrame = instance.tgtFrame;
      } catch (e) {}
      try {
        final v_tooltip = instance.tooltip;
      } catch (e) {}
      try {
        final v_docLocation = instance.docLocation;
      } catch (e) {}
      try {
        final v_anchor = instance.anchor;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_FFData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_label = instance.label;
      } catch (e) {}
      try {
        final c_tabIndex = instance.tabIndex;
      } catch (e) {}
      try {
        final c_enabled = instance.enabled;
      } catch (e) {}
      try {
        final c_calcOnExit = instance.calcOnExit;
      } catch (e) {}
      try {
        final c_entryMacro = instance.entryMacro;
      } catch (e) {}
      try {
        final c_exitMacro = instance.exitMacro;
      } catch (e) {}
      try {
        final c_helpText = instance.helpText;
      } catch (e) {}
      try {
        final c_statusText = instance.statusText;
      } catch (e) {}
      try {
        final c_checkBox = instance.checkBox;
      } catch (e) {}
      try {
        final c_ddList = instance.ddList;
      } catch (e) {}
      try {
        final c_textInput = instance.textInput;
      } catch (e) {}
    });
    test('Test W_CT_FFData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ffdata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_label = instance.label;
      } catch (e) {}
      try {
        final c_tabIndex = instance.tabIndex;
      } catch (e) {}
      try {
        final c_enabled = instance.enabled;
      } catch (e) {}
      try {
        final c_calcOnExit = instance.calcOnExit;
      } catch (e) {}
      try {
        final c_entryMacro = instance.entryMacro;
      } catch (e) {}
      try {
        final c_exitMacro = instance.exitMacro;
      } catch (e) {}
      try {
        final c_helpText = instance.helpText;
      } catch (e) {}
      try {
        final c_statusText = instance.statusText;
      } catch (e) {}
      try {
        final c_checkBox = instance.checkBox;
      } catch (e) {}
      try {
        final c_ddList = instance.ddList;
      } catch (e) {}
      try {
        final c_textInput = instance.textInput;
      } catch (e) {}
    });
    test('Test W_CT_FFHelpText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFHelpText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FFHelpText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ffhelptext(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_InfoTextType.values.first,
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFHelpText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FFStatusText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFStatusText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FFStatusText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ffstatustext(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_InfoTextType.values.first,
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFStatusText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FFCheckBox with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFCheckBox(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_size = instance.size;
      } catch (e) {}
      try {
        final c_sizeAuto = instance.sizeAuto;
      } catch (e) {}
      try {
        final c_default_ = instance.default_;
      } catch (e) {}
      try {
        final c_checked = instance.checked;
      } catch (e) {}
    });
    test('Test W_CT_FFCheckBox with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ffcheckbox(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFCheckBox(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_size = instance.size;
      } catch (e) {}
      try {
        final c_sizeAuto = instance.sizeAuto;
      } catch (e) {}
      try {
        final c_default_ = instance.default_;
      } catch (e) {}
      try {
        final c_checked = instance.checked;
      } catch (e) {}
    });
    test('Test W_CT_FFDDList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFDDList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_result = instance.result;
      } catch (e) {}
      try {
        final c_default_ = instance.default_;
      } catch (e) {}
      try {
        final c_listEntry = instance.listEntry;
      } catch (e) {}
    });
    test('Test W_CT_FFDDList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ffddlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFDDList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_result = instance.result;
      } catch (e) {}
      try {
        final c_default_ = instance.default_;
      } catch (e) {}
      try {
        final c_listEntry = instance.listEntry;
      } catch (e) {}
    });
    test('Test W_CT_FFTextInput with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFTextInput(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_default_ = instance.default_;
      } catch (e) {}
      try {
        final c_maxLength = instance.maxLength;
      } catch (e) {}
      try {
        final c_format = instance.format;
      } catch (e) {}
    });
    test('Test W_CT_FFTextInput with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fftextinput(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FFTextInput(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_default_ = instance.default_;
      } catch (e) {}
      try {
        final c_maxLength = instance.maxLength;
      } catch (e) {}
      try {
        final c_format = instance.format;
      } catch (e) {}
    });
    test('Test W_CT_SectType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SectType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_SectType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_secttype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_SectionMark.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SectType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_PaperSource with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PaperSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_first = instance.first;
      } catch (e) {}
      try {
        final v_other = instance.other;
      } catch (e) {}
    });
    test('Test W_CT_PaperSource with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_papersource(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            first: 'test',
            other: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PaperSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_first = instance.first;
      } catch (e) {}
      try {
        final v_other = instance.other;
      } catch (e) {}
    });
    test('Test W_CT_PageSz with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageSz(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_orient = instance.orient;
      } catch (e) {}
      try {
        final v_code = instance.code;
      } catch (e) {}
    });
    test('Test W_CT_PageSz with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pagesz(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            orient: W_ST_PageOrientation.values.first,
            code: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageSz(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_orient = instance.orient;
      } catch (e) {}
      try {
        final v_code = instance.code;
      } catch (e) {}
    });
    test('Test W_CT_PageMar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageMar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_PageMar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pagemar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageMar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_PageBorders with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageBorders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_zOrder = instance.zOrder;
      } catch (e) {}
      try {
        final v_display = instance.display;
      } catch (e) {}
      try {
        final v_offsetFrom = instance.offsetFrom;
      } catch (e) {}
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
    });
    test('Test W_CT_PageBorders with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pageborders(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            zOrder: W_ST_PageBorderZOrder.values.first,
            display: W_ST_PageBorderDisplay.values.first,
            offsetFrom: W_ST_PageBorderOffset.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageBorders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_zOrder = instance.zOrder;
      } catch (e) {}
      try {
        final v_display = instance.display;
      } catch (e) {}
      try {
        final v_offsetFrom = instance.offsetFrom;
      } catch (e) {}
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
    });
    test('Test W_CT_PageBorder with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageBorder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test W_CT_PageBorder with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_pageborder(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageBorder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test W_CT_BottomPageBorder with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_BottomPageBorder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_bottomLeft = instance.r_bottomLeft;
      } catch (e) {}
      try {
        final v_r_bottomRight = instance.r_bottomRight;
      } catch (e) {}
    });
    test('Test W_CT_BottomPageBorder with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_bottompageborder(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            r_bottomLeft: 'test',
            r_bottomRight: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_BottomPageBorder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_bottomLeft = instance.r_bottomLeft;
      } catch (e) {}
      try {
        final v_r_bottomRight = instance.r_bottomRight;
      } catch (e) {}
    });
    test('Test W_CT_TopPageBorder with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TopPageBorder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_topLeft = instance.r_topLeft;
      } catch (e) {}
      try {
        final v_r_topRight = instance.r_topRight;
      } catch (e) {}
    });
    test('Test W_CT_TopPageBorder with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_toppageborder(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            r_topLeft: 'test',
            r_topRight: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TopPageBorder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_topLeft = instance.r_topLeft;
      } catch (e) {}
      try {
        final v_r_topRight = instance.r_topRight;
      } catch (e) {}
    });
    test('Test W_CT_LineNumber with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LineNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_countBy = instance.countBy;
      } catch (e) {}
      try {
        final v_start = instance.start;
      } catch (e) {}
      try {
        final v_restart = instance.restart;
      } catch (e) {}
    });
    test('Test W_CT_LineNumber with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_linenumber(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            countBy: 'test',
            start: 'test',
            restart: W_ST_LineNumberRestart.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LineNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_countBy = instance.countBy;
      } catch (e) {}
      try {
        final v_start = instance.start;
      } catch (e) {}
      try {
        final v_restart = instance.restart;
      } catch (e) {}
    });
    test('Test W_CT_PageNumber with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fmt = instance.fmt;
      } catch (e) {}
      try {
        final v_start = instance.start;
      } catch (e) {}
      try {
        final v_chapStyle = instance.chapStyle;
      } catch (e) {}
      try {
        final v_chapSep = instance.chapSep;
      } catch (e) {}
    });
    test('Test W_CT_PageNumber with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pagenumber(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            fmt: W_ST_NumberFormat.values.first,
            start: 'test',
            chapStyle: 'test',
            chapSep: W_ST_ChapterSep.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PageNumber(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fmt = instance.fmt;
      } catch (e) {}
      try {
        final v_start = instance.start;
      } catch (e) {}
      try {
        final v_chapStyle = instance.chapStyle;
      } catch (e) {}
      try {
        final v_chapSep = instance.chapSep;
      } catch (e) {}
    });
    test('Test W_CT_Column with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Column(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Column with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_column(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Column(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Columns with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Columns(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_num_ = instance.num_;
      } catch (e) {}
      try {
        final c_col = instance.col;
      } catch (e) {}
    });
    test('Test W_CT_Columns with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_columns(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            num_: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Columns(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_num_ = instance.num_;
      } catch (e) {}
      try {
        final c_col = instance.col;
      } catch (e) {}
    });
    test('Test W_CT_VerticalJc with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_VerticalJc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_VerticalJc with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_verticaljc(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_VerticalJc.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_VerticalJc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocGrid with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocGrid(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_linePitch = instance.linePitch;
      } catch (e) {}
      try {
        final v_charSpace = instance.charSpace;
      } catch (e) {}
    });
    test('Test W_CT_DocGrid with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docgrid(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_DocGrid.values.first,
            linePitch: 'test',
            charSpace: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocGrid(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_linePitch = instance.linePitch;
      } catch (e) {}
      try {
        final v_charSpace = instance.charSpace;
      } catch (e) {}
    });
    test('Test W_CT_HdrFtrRef with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_HdrFtrRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_HdrFtrRef with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_hdrftrref(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_HdrFtr.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_HdrFtrRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_HdrFtr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_HdrFtr(node);
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
    test('Test W_CT_HdrFtr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_hdrftr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_HdrFtr(node);
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
    test('Test W_CT_SectPrBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SectPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_footnotePr = instance.footnotePr;
      } catch (e) {}
      try {
        final c_endnotePr = instance.endnotePr;
      } catch (e) {}
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_pgSz = instance.pgSz;
      } catch (e) {}
      try {
        final c_pgMar = instance.pgMar;
      } catch (e) {}
      try {
        final c_paperSrc = instance.paperSrc;
      } catch (e) {}
      try {
        final c_pgBorders = instance.pgBorders;
      } catch (e) {}
      try {
        final c_lnNumType = instance.lnNumType;
      } catch (e) {}
      try {
        final c_pgNumType = instance.pgNumType;
      } catch (e) {}
      try {
        final c_cols = instance.cols;
      } catch (e) {}
      try {
        final c_formProt = instance.formProt;
      } catch (e) {}
      try {
        final c_vAlign = instance.vAlign;
      } catch (e) {}
      try {
        final c_noEndnote = instance.noEndnote;
      } catch (e) {}
      try {
        final c_titlePg = instance.titlePg;
      } catch (e) {}
      try {
        final c_textDirection = instance.textDirection;
      } catch (e) {}
      try {
        final c_bidi = instance.bidi;
      } catch (e) {}
      try {
        final c_rtlGutter = instance.rtlGutter;
      } catch (e) {}
      try {
        final c_docGrid = instance.docGrid;
      } catch (e) {}
      try {
        final c_printerSettings = instance.printerSettings;
      } catch (e) {}
    });
    test('Test W_CT_SectPrBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sectprbase(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SectPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_footnotePr = instance.footnotePr;
      } catch (e) {}
      try {
        final c_endnotePr = instance.endnotePr;
      } catch (e) {}
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_pgSz = instance.pgSz;
      } catch (e) {}
      try {
        final c_pgMar = instance.pgMar;
      } catch (e) {}
      try {
        final c_paperSrc = instance.paperSrc;
      } catch (e) {}
      try {
        final c_pgBorders = instance.pgBorders;
      } catch (e) {}
      try {
        final c_lnNumType = instance.lnNumType;
      } catch (e) {}
      try {
        final c_pgNumType = instance.pgNumType;
      } catch (e) {}
      try {
        final c_cols = instance.cols;
      } catch (e) {}
      try {
        final c_formProt = instance.formProt;
      } catch (e) {}
      try {
        final c_vAlign = instance.vAlign;
      } catch (e) {}
      try {
        final c_noEndnote = instance.noEndnote;
      } catch (e) {}
      try {
        final c_titlePg = instance.titlePg;
      } catch (e) {}
      try {
        final c_textDirection = instance.textDirection;
      } catch (e) {}
      try {
        final c_bidi = instance.bidi;
      } catch (e) {}
      try {
        final c_rtlGutter = instance.rtlGutter;
      } catch (e) {}
      try {
        final c_docGrid = instance.docGrid;
      } catch (e) {}
      try {
        final c_printerSettings = instance.printerSettings;
      } catch (e) {}
    });
    test('Test W_CT_SectPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SectPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_headerReference = instance.headerReference;
      } catch (e) {}
      try {
        final c_footerReference = instance.footerReference;
      } catch (e) {}
      try {
        final c_footnotePr = instance.footnotePr;
      } catch (e) {}
      try {
        final c_endnotePr = instance.endnotePr;
      } catch (e) {}
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_pgSz = instance.pgSz;
      } catch (e) {}
      try {
        final c_pgMar = instance.pgMar;
      } catch (e) {}
      try {
        final c_paperSrc = instance.paperSrc;
      } catch (e) {}
      try {
        final c_pgBorders = instance.pgBorders;
      } catch (e) {}
      try {
        final c_lnNumType = instance.lnNumType;
      } catch (e) {}
      try {
        final c_pgNumType = instance.pgNumType;
      } catch (e) {}
      try {
        final c_cols = instance.cols;
      } catch (e) {}
      try {
        final c_formProt = instance.formProt;
      } catch (e) {}
      try {
        final c_vAlign = instance.vAlign;
      } catch (e) {}
      try {
        final c_noEndnote = instance.noEndnote;
      } catch (e) {}
      try {
        final c_titlePg = instance.titlePg;
      } catch (e) {}
      try {
        final c_textDirection = instance.textDirection;
      } catch (e) {}
      try {
        final c_bidi = instance.bidi;
      } catch (e) {}
      try {
        final c_rtlGutter = instance.rtlGutter;
      } catch (e) {}
      try {
        final c_docGrid = instance.docGrid;
      } catch (e) {}
      try {
        final c_printerSettings = instance.printerSettings;
      } catch (e) {}
      try {
        final c_sectPrChange = instance.sectPrChange;
      } catch (e) {}
    });
    test('Test W_CT_SectPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sectpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SectPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_headerReference = instance.headerReference;
      } catch (e) {}
      try {
        final c_footerReference = instance.footerReference;
      } catch (e) {}
      try {
        final c_footnotePr = instance.footnotePr;
      } catch (e) {}
      try {
        final c_endnotePr = instance.endnotePr;
      } catch (e) {}
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_pgSz = instance.pgSz;
      } catch (e) {}
      try {
        final c_pgMar = instance.pgMar;
      } catch (e) {}
      try {
        final c_paperSrc = instance.paperSrc;
      } catch (e) {}
      try {
        final c_pgBorders = instance.pgBorders;
      } catch (e) {}
      try {
        final c_lnNumType = instance.lnNumType;
      } catch (e) {}
      try {
        final c_pgNumType = instance.pgNumType;
      } catch (e) {}
      try {
        final c_cols = instance.cols;
      } catch (e) {}
      try {
        final c_formProt = instance.formProt;
      } catch (e) {}
      try {
        final c_vAlign = instance.vAlign;
      } catch (e) {}
      try {
        final c_noEndnote = instance.noEndnote;
      } catch (e) {}
      try {
        final c_titlePg = instance.titlePg;
      } catch (e) {}
      try {
        final c_textDirection = instance.textDirection;
      } catch (e) {}
      try {
        final c_bidi = instance.bidi;
      } catch (e) {}
      try {
        final c_rtlGutter = instance.rtlGutter;
      } catch (e) {}
      try {
        final c_docGrid = instance.docGrid;
      } catch (e) {}
      try {
        final c_printerSettings = instance.printerSettings;
      } catch (e) {}
      try {
        final c_sectPrChange = instance.sectPrChange;
      } catch (e) {}
    });
    test('Test W_CT_Br with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Br(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_clear = instance.clear;
      } catch (e) {}
    });
    test('Test W_CT_Br with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_br(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_BrType.values.first,
            clear: W_ST_BrClear.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Br(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_clear = instance.clear;
      } catch (e) {}
    });
    test('Test W_CT_PTab with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PTab(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_alignment = instance.alignment;
      } catch (e) {}
      try {
        final v_relativeTo = instance.relativeTo;
      } catch (e) {}
      try {
        final v_leader = instance.leader;
      } catch (e) {}
    });
    test('Test W_CT_PTab with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ptab(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            alignment: W_ST_PTabAlignment.values.first,
            relativeTo: W_ST_PTabRelativeTo.values.first,
            leader: W_ST_PTabLeader.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PTab(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_alignment = instance.alignment;
      } catch (e) {}
      try {
        final v_relativeTo = instance.relativeTo;
      } catch (e) {}
      try {
        final v_leader = instance.leader;
      } catch (e) {}
    });
    test('Test W_CT_Sym with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Sym(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_font = instance.font;
      } catch (e) {}
      try {
        final v_char = instance.char;
      } catch (e) {}
    });
    test('Test W_CT_Sym with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sym(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            font: 'test',
            char: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Sym(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_font = instance.font;
      } catch (e) {}
      try {
        final v_char = instance.char;
      } catch (e) {}
    });
    test('Test W_CT_ProofErr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ProofErr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_ProofErr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_prooferr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_ProofErr.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ProofErr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_Perm with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Perm(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_displacedByCustomXml = instance.displacedByCustomXml;
      } catch (e) {}
    });
    test('Test W_CT_Perm with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_perm(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            id: 'test',
            displacedByCustomXml: W_ST_DisplacedByCustomXml.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Perm(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_displacedByCustomXml = instance.displacedByCustomXml;
      } catch (e) {}
    });
    test('Test W_CT_PermStart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PermStart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_edGrp = instance.edGrp;
      } catch (e) {}
      try {
        final v_ed = instance.ed;
      } catch (e) {}
      try {
        final v_colFirst = instance.colFirst;
      } catch (e) {}
      try {
        final v_colLast = instance.colLast;
      } catch (e) {}
    });
    test('Test W_CT_PermStart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_permstart(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            edGrp: W_ST_EdGrp.values.first,
            ed: 'test',
            colFirst: 'test',
            colLast: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PermStart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_edGrp = instance.edGrp;
      } catch (e) {}
      try {
        final v_ed = instance.ed;
      } catch (e) {}
      try {
        final v_colFirst = instance.colFirst;
      } catch (e) {}
      try {
        final v_colLast = instance.colLast;
      } catch (e) {}
    });
    test('Test W_CT_Text with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Text(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_xml_space = instance.xml_space;
      } catch (e) {}
    });
    test('Test W_CT_Text with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_text(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            xml_space: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Text(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_xml_space = instance.xml_space;
      } catch (e) {}
    });
    test('Test W_CT_R with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_R(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rsidRPr = instance.rsidRPr;
      } catch (e) {}
      try {
        final v_rsidDel = instance.rsidDel;
      } catch (e) {}
      try {
        final v_rsidR = instance.rsidR;
      } catch (e) {}
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
    test('Test W_CT_R with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_r(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            rsidRPr: 'test',
            rsidDel: 'test',
            rsidR: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_R(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rsidRPr = instance.rsidRPr;
      } catch (e) {}
      try {
        final v_rsidDel = instance.rsidDel;
      } catch (e) {}
      try {
        final v_rsidR = instance.rsidR;
      } catch (e) {}
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
    test('Test W_CT_Fonts with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Fonts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hint = instance.hint;
      } catch (e) {}
      try {
        final v_ascii = instance.ascii;
      } catch (e) {}
      try {
        final v_hAnsi = instance.hAnsi;
      } catch (e) {}
      try {
        final v_eastAsia = instance.eastAsia;
      } catch (e) {}
      try {
        final v_cs = instance.cs;
      } catch (e) {}
      try {
        final v_asciiTheme = instance.asciiTheme;
      } catch (e) {}
      try {
        final v_hAnsiTheme = instance.hAnsiTheme;
      } catch (e) {}
      try {
        final v_eastAsiaTheme = instance.eastAsiaTheme;
      } catch (e) {}
      try {
        final v_cstheme = instance.cstheme;
      } catch (e) {}
    });
    test('Test W_CT_Fonts with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fonts(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            hint: W_ST_Hint.values.first,
            ascii: 'test',
            hAnsi: 'test',
            eastAsia: 'test',
            cs: 'test',
            asciiTheme: W_ST_Theme.values.first,
            hAnsiTheme: W_ST_Theme.values.first,
            eastAsiaTheme: W_ST_Theme.values.first,
            cstheme: W_ST_Theme.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Fonts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hint = instance.hint;
      } catch (e) {}
      try {
        final v_ascii = instance.ascii;
      } catch (e) {}
      try {
        final v_hAnsi = instance.hAnsi;
      } catch (e) {}
      try {
        final v_eastAsia = instance.eastAsia;
      } catch (e) {}
      try {
        final v_cs = instance.cs;
      } catch (e) {}
      try {
        final v_asciiTheme = instance.asciiTheme;
      } catch (e) {}
      try {
        final v_hAnsiTheme = instance.hAnsiTheme;
      } catch (e) {}
      try {
        final v_eastAsiaTheme = instance.eastAsiaTheme;
      } catch (e) {}
      try {
        final v_cstheme = instance.cstheme;
      } catch (e) {}
    });
    test('Test W_CT_RPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rStyle = instance.rStyle;
      } catch (e) {}
      try {
        final c_rFonts = instance.rFonts;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_bCs = instance.bCs;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_iCs = instance.iCs;
      } catch (e) {}
      try {
        final c_caps = instance.caps;
      } catch (e) {}
      try {
        final c_smallCaps = instance.smallCaps;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_dstrike = instance.dstrike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_emboss = instance.emboss;
      } catch (e) {}
      try {
        final c_imprint = instance.imprint;
      } catch (e) {}
      try {
        final c_noProof = instance.noProof;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_vanish = instance.vanish;
      } catch (e) {}
      try {
        final c_webHidden = instance.webHidden;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_kern = instance.kern;
      } catch (e) {}
      try {
        final c_position = instance.position;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_szCs = instance.szCs;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_bdr = instance.bdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_fitText = instance.fitText;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_em = instance.em;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_eastAsianLayout = instance.eastAsianLayout;
      } catch (e) {}
      try {
        final c_specVanish = instance.specVanish;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
      try {
        final c_rPrChange = instance.rPrChange;
      } catch (e) {}
    });
    test('Test W_CT_RPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_rpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rStyle = instance.rStyle;
      } catch (e) {}
      try {
        final c_rFonts = instance.rFonts;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_bCs = instance.bCs;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_iCs = instance.iCs;
      } catch (e) {}
      try {
        final c_caps = instance.caps;
      } catch (e) {}
      try {
        final c_smallCaps = instance.smallCaps;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_dstrike = instance.dstrike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_emboss = instance.emboss;
      } catch (e) {}
      try {
        final c_imprint = instance.imprint;
      } catch (e) {}
      try {
        final c_noProof = instance.noProof;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_vanish = instance.vanish;
      } catch (e) {}
      try {
        final c_webHidden = instance.webHidden;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_kern = instance.kern;
      } catch (e) {}
      try {
        final c_position = instance.position;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_szCs = instance.szCs;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_bdr = instance.bdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_fitText = instance.fitText;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_em = instance.em;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_eastAsianLayout = instance.eastAsianLayout;
      } catch (e) {}
      try {
        final c_specVanish = instance.specVanish;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
      try {
        final c_rPrChange = instance.rPrChange;
      } catch (e) {}
    });
    test('Test W_CT_MathCtrlIns with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MathCtrlIns(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_MathCtrlIns with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_mathctrlins(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MathCtrlIns(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_MathCtrlDel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MathCtrlDel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_MathCtrlDel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_mathctrldel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MathCtrlDel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_RPrOriginal with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RPrOriginal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rStyle = instance.rStyle;
      } catch (e) {}
      try {
        final c_rFonts = instance.rFonts;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_bCs = instance.bCs;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_iCs = instance.iCs;
      } catch (e) {}
      try {
        final c_caps = instance.caps;
      } catch (e) {}
      try {
        final c_smallCaps = instance.smallCaps;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_dstrike = instance.dstrike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_emboss = instance.emboss;
      } catch (e) {}
      try {
        final c_imprint = instance.imprint;
      } catch (e) {}
      try {
        final c_noProof = instance.noProof;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_vanish = instance.vanish;
      } catch (e) {}
      try {
        final c_webHidden = instance.webHidden;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_kern = instance.kern;
      } catch (e) {}
      try {
        final c_position = instance.position;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_szCs = instance.szCs;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_bdr = instance.bdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_fitText = instance.fitText;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_em = instance.em;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_eastAsianLayout = instance.eastAsianLayout;
      } catch (e) {}
      try {
        final c_specVanish = instance.specVanish;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
    });
    test('Test W_CT_RPrOriginal with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_rproriginal(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RPrOriginal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rStyle = instance.rStyle;
      } catch (e) {}
      try {
        final c_rFonts = instance.rFonts;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_bCs = instance.bCs;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_iCs = instance.iCs;
      } catch (e) {}
      try {
        final c_caps = instance.caps;
      } catch (e) {}
      try {
        final c_smallCaps = instance.smallCaps;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_dstrike = instance.dstrike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_emboss = instance.emboss;
      } catch (e) {}
      try {
        final c_imprint = instance.imprint;
      } catch (e) {}
      try {
        final c_noProof = instance.noProof;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_vanish = instance.vanish;
      } catch (e) {}
      try {
        final c_webHidden = instance.webHidden;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_kern = instance.kern;
      } catch (e) {}
      try {
        final c_position = instance.position;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_szCs = instance.szCs;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_bdr = instance.bdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_fitText = instance.fitText;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_em = instance.em;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_eastAsianLayout = instance.eastAsianLayout;
      } catch (e) {}
      try {
        final c_specVanish = instance.specVanish;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
    });
    test('Test W_CT_ParaRPrOriginal with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ParaRPrOriginal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
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
        final c_rStyle = instance.rStyle;
      } catch (e) {}
      try {
        final c_rFonts = instance.rFonts;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_bCs = instance.bCs;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_iCs = instance.iCs;
      } catch (e) {}
      try {
        final c_caps = instance.caps;
      } catch (e) {}
      try {
        final c_smallCaps = instance.smallCaps;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_dstrike = instance.dstrike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_emboss = instance.emboss;
      } catch (e) {}
      try {
        final c_imprint = instance.imprint;
      } catch (e) {}
      try {
        final c_noProof = instance.noProof;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_vanish = instance.vanish;
      } catch (e) {}
      try {
        final c_webHidden = instance.webHidden;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_kern = instance.kern;
      } catch (e) {}
      try {
        final c_position = instance.position;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_szCs = instance.szCs;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_bdr = instance.bdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_fitText = instance.fitText;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_em = instance.em;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_eastAsianLayout = instance.eastAsianLayout;
      } catch (e) {}
      try {
        final c_specVanish = instance.specVanish;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
    });
    test('Test W_CT_ParaRPrOriginal with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pararproriginal(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ParaRPrOriginal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
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
        final c_rStyle = instance.rStyle;
      } catch (e) {}
      try {
        final c_rFonts = instance.rFonts;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_bCs = instance.bCs;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_iCs = instance.iCs;
      } catch (e) {}
      try {
        final c_caps = instance.caps;
      } catch (e) {}
      try {
        final c_smallCaps = instance.smallCaps;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_dstrike = instance.dstrike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_emboss = instance.emboss;
      } catch (e) {}
      try {
        final c_imprint = instance.imprint;
      } catch (e) {}
      try {
        final c_noProof = instance.noProof;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_vanish = instance.vanish;
      } catch (e) {}
      try {
        final c_webHidden = instance.webHidden;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_kern = instance.kern;
      } catch (e) {}
      try {
        final c_position = instance.position;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_szCs = instance.szCs;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_bdr = instance.bdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_fitText = instance.fitText;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_em = instance.em;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_eastAsianLayout = instance.eastAsianLayout;
      } catch (e) {}
      try {
        final c_specVanish = instance.specVanish;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
    });
    test('Test W_CT_ParaRPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ParaRPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
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
        final c_rStyle = instance.rStyle;
      } catch (e) {}
      try {
        final c_rFonts = instance.rFonts;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_bCs = instance.bCs;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_iCs = instance.iCs;
      } catch (e) {}
      try {
        final c_caps = instance.caps;
      } catch (e) {}
      try {
        final c_smallCaps = instance.smallCaps;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_dstrike = instance.dstrike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_emboss = instance.emboss;
      } catch (e) {}
      try {
        final c_imprint = instance.imprint;
      } catch (e) {}
      try {
        final c_noProof = instance.noProof;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_vanish = instance.vanish;
      } catch (e) {}
      try {
        final c_webHidden = instance.webHidden;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_kern = instance.kern;
      } catch (e) {}
      try {
        final c_position = instance.position;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_szCs = instance.szCs;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_bdr = instance.bdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_fitText = instance.fitText;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_em = instance.em;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_eastAsianLayout = instance.eastAsianLayout;
      } catch (e) {}
      try {
        final c_specVanish = instance.specVanish;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
      try {
        final c_rPrChange = instance.rPrChange;
      } catch (e) {}
    });
    test('Test W_CT_ParaRPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pararpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ParaRPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
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
        final c_rStyle = instance.rStyle;
      } catch (e) {}
      try {
        final c_rFonts = instance.rFonts;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_bCs = instance.bCs;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_iCs = instance.iCs;
      } catch (e) {}
      try {
        final c_caps = instance.caps;
      } catch (e) {}
      try {
        final c_smallCaps = instance.smallCaps;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_dstrike = instance.dstrike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_emboss = instance.emboss;
      } catch (e) {}
      try {
        final c_imprint = instance.imprint;
      } catch (e) {}
      try {
        final c_noProof = instance.noProof;
      } catch (e) {}
      try {
        final c_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final c_vanish = instance.vanish;
      } catch (e) {}
      try {
        final c_webHidden = instance.webHidden;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_spacing = instance.spacing;
      } catch (e) {}
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_kern = instance.kern;
      } catch (e) {}
      try {
        final c_position = instance.position;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_szCs = instance.szCs;
      } catch (e) {}
      try {
        final c_highlight = instance.highlight;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_effect = instance.effect;
      } catch (e) {}
      try {
        final c_bdr = instance.bdr;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_fitText = instance.fitText;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_rtl = instance.rtl;
      } catch (e) {}
      try {
        final c_cs = instance.cs;
      } catch (e) {}
      try {
        final c_em = instance.em;
      } catch (e) {}
      try {
        final c_lang = instance.lang;
      } catch (e) {}
      try {
        final c_eastAsianLayout = instance.eastAsianLayout;
      } catch (e) {}
      try {
        final c_specVanish = instance.specVanish;
      } catch (e) {}
      try {
        final c_oMath = instance.oMath;
      } catch (e) {}
      try {
        final c_rPrChange = instance.rPrChange;
      } catch (e) {}
    });
    test('Test W_CT_AltChunk with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AltChunk(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_altChunkPr = instance.altChunkPr;
      } catch (e) {}
    });
    test('Test W_CT_AltChunk with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_altchunk(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AltChunk(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_altChunkPr = instance.altChunkPr;
      } catch (e) {}
    });
    test('Test W_CT_AltChunkPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AltChunkPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_matchSrc = instance.matchSrc;
      } catch (e) {}
    });
    test('Test W_CT_AltChunkPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_altchunkpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AltChunkPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_matchSrc = instance.matchSrc;
      } catch (e) {}
    });
    test('Test W_CT_RubyAlign with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RubyAlign(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_RubyAlign with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_rubyalign(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_RubyAlign.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RubyAlign(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_RubyPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RubyPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rubyAlign = instance.rubyAlign;
      } catch (e) {}
      try {
        final c_hps = instance.hps;
      } catch (e) {}
      try {
        final c_hpsRaise = instance.hpsRaise;
      } catch (e) {}
      try {
        final c_hpsBaseText = instance.hpsBaseText;
      } catch (e) {}
      try {
        final c_lid = instance.lid;
      } catch (e) {}
      try {
        final c_dirty = instance.dirty;
      } catch (e) {}
    });
    test('Test W_CT_RubyPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_rubypr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RubyPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rubyAlign = instance.rubyAlign;
      } catch (e) {}
      try {
        final c_hps = instance.hps;
      } catch (e) {}
      try {
        final c_hpsRaise = instance.hpsRaise;
      } catch (e) {}
      try {
        final c_hpsBaseText = instance.hpsBaseText;
      } catch (e) {}
      try {
        final c_lid = instance.lid;
      } catch (e) {}
      try {
        final c_dirty = instance.dirty;
      } catch (e) {}
    });
    test('Test W_CT_RubyContent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RubyContent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_r = instance.r;
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
    test('Test W_CT_RubyContent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_rubycontent(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RubyContent(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_r = instance.r;
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
    test('Test W_CT_Ruby with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Ruby(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rubyPr = instance.rubyPr;
      } catch (e) {}
      try {
        final c_rt = instance.rt;
      } catch (e) {}
      try {
        final c_rubyBase = instance.rubyBase;
      } catch (e) {}
    });
    test('Test W_CT_Ruby with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ruby(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Ruby(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rubyPr = instance.rubyPr;
      } catch (e) {}
      try {
        final c_rt = instance.rt;
      } catch (e) {}
      try {
        final c_rubyBase = instance.rubyBase;
      } catch (e) {}
    });
    test('Test W_CT_Lock with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Lock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Lock with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_lock(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Lock.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Lock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_SdtListItem with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtListItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_displayText = instance.displayText;
      } catch (e) {}
      try {
        final v_value_ = instance.value_;
      } catch (e) {}
    });
    test('Test W_CT_SdtListItem with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtlistitem(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            displayText: 'test',
            value_: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtListItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_displayText = instance.displayText;
      } catch (e) {}
      try {
        final v_value_ = instance.value_;
      } catch (e) {}
    });
    test('Test W_CT_SdtDateMappingType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtDateMappingType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_SdtDateMappingType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtdatemappingtype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_SdtDateMappingType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtDateMappingType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_CalendarType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CalendarType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_CalendarType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_calendartype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: ST_CalendarType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CalendarType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_SdtDate with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtDate(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fullDate = instance.fullDate;
      } catch (e) {}
      try {
        final c_dateFormat = instance.dateFormat;
      } catch (e) {}
      try {
        final c_lid = instance.lid;
      } catch (e) {}
      try {
        final c_storeMappedDataAs = instance.storeMappedDataAs;
      } catch (e) {}
      try {
        final c_calendar = instance.calendar;
      } catch (e) {}
    });
    test('Test W_CT_SdtDate with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtdate(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            fullDate: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtDate(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fullDate = instance.fullDate;
      } catch (e) {}
      try {
        final c_dateFormat = instance.dateFormat;
      } catch (e) {}
      try {
        final c_lid = instance.lid;
      } catch (e) {}
      try {
        final c_storeMappedDataAs = instance.storeMappedDataAs;
      } catch (e) {}
      try {
        final c_calendar = instance.calendar;
      } catch (e) {}
    });
    test('Test W_CT_SdtComboBox with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtComboBox(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lastValue = instance.lastValue;
      } catch (e) {}
      try {
        final c_listItem = instance.listItem;
      } catch (e) {}
    });
    test('Test W_CT_SdtComboBox with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtcombobox(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            lastValue: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtComboBox(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lastValue = instance.lastValue;
      } catch (e) {}
      try {
        final c_listItem = instance.listItem;
      } catch (e) {}
    });
    test('Test W_CT_SdtDocPart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtDocPart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docPartGallery = instance.docPartGallery;
      } catch (e) {}
      try {
        final c_docPartCategory = instance.docPartCategory;
      } catch (e) {}
      try {
        final c_docPartUnique = instance.docPartUnique;
      } catch (e) {}
    });
    test('Test W_CT_SdtDocPart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtdocpart(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtDocPart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docPartGallery = instance.docPartGallery;
      } catch (e) {}
      try {
        final c_docPartCategory = instance.docPartCategory;
      } catch (e) {}
      try {
        final c_docPartUnique = instance.docPartUnique;
      } catch (e) {}
    });
    test('Test W_CT_SdtDropDownList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtDropDownList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lastValue = instance.lastValue;
      } catch (e) {}
      try {
        final c_listItem = instance.listItem;
      } catch (e) {}
    });
    test('Test W_CT_SdtDropDownList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtdropdownlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            lastValue: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtDropDownList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lastValue = instance.lastValue;
      } catch (e) {}
      try {
        final c_listItem = instance.listItem;
      } catch (e) {}
    });
    test('Test W_CT_Placeholder with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Placeholder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docPart = instance.docPart;
      } catch (e) {}
    });
    test('Test W_CT_Placeholder with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_placeholder(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Placeholder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docPart = instance.docPart;
      } catch (e) {}
    });
    test('Test W_CT_SdtText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_SdtText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdttext(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_DataBinding with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DataBinding(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prefixMappings = instance.prefixMappings;
      } catch (e) {}
      try {
        final v_xpath = instance.xpath;
      } catch (e) {}
      try {
        final v_storeItemID = instance.storeItemID;
      } catch (e) {}
    });
    test('Test W_CT_DataBinding with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_databinding(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            prefixMappings: 'test',
            xpath: 'test',
            storeItemID: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DataBinding(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prefixMappings = instance.prefixMappings;
      } catch (e) {}
      try {
        final v_xpath = instance.xpath;
      } catch (e) {}
      try {
        final v_storeItemID = instance.storeItemID;
      } catch (e) {}
    });
    test('Test W_CT_SdtPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_alias = instance.alias;
      } catch (e) {}
      try {
        final c_tag = instance.tag;
      } catch (e) {}
      try {
        final c_id = instance.id;
      } catch (e) {}
      try {
        final c_lock = instance.lock;
      } catch (e) {}
      try {
        final c_placeholder = instance.placeholder;
      } catch (e) {}
      try {
        final c_temporary = instance.temporary;
      } catch (e) {}
      try {
        final c_showingPlcHdr = instance.showingPlcHdr;
      } catch (e) {}
      try {
        final c_dataBinding = instance.dataBinding;
      } catch (e) {}
      try {
        final c_label = instance.label;
      } catch (e) {}
      try {
        final c_tabIndex = instance.tabIndex;
      } catch (e) {}
      try {
        final c_equation = instance.equation;
      } catch (e) {}
      try {
        final c_comboBox = instance.comboBox;
      } catch (e) {}
      try {
        final c_date = instance.date;
      } catch (e) {}
      try {
        final c_docPartObj = instance.docPartObj;
      } catch (e) {}
      try {
        final c_docPartList = instance.docPartList;
      } catch (e) {}
      try {
        final c_dropDownList = instance.dropDownList;
      } catch (e) {}
      try {
        final c_picture = instance.picture;
      } catch (e) {}
      try {
        final c_richText = instance.richText;
      } catch (e) {}
      try {
        final c_text = instance.text;
      } catch (e) {}
      try {
        final c_citation = instance.citation;
      } catch (e) {}
      try {
        final c_group = instance.group;
      } catch (e) {}
      try {
        final c_bibliography = instance.bibliography;
      } catch (e) {}
    });
    test('Test W_CT_SdtPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_alias = instance.alias;
      } catch (e) {}
      try {
        final c_tag = instance.tag;
      } catch (e) {}
      try {
        final c_id = instance.id;
      } catch (e) {}
      try {
        final c_lock = instance.lock;
      } catch (e) {}
      try {
        final c_placeholder = instance.placeholder;
      } catch (e) {}
      try {
        final c_temporary = instance.temporary;
      } catch (e) {}
      try {
        final c_showingPlcHdr = instance.showingPlcHdr;
      } catch (e) {}
      try {
        final c_dataBinding = instance.dataBinding;
      } catch (e) {}
      try {
        final c_label = instance.label;
      } catch (e) {}
      try {
        final c_tabIndex = instance.tabIndex;
      } catch (e) {}
      try {
        final c_equation = instance.equation;
      } catch (e) {}
      try {
        final c_comboBox = instance.comboBox;
      } catch (e) {}
      try {
        final c_date = instance.date;
      } catch (e) {}
      try {
        final c_docPartObj = instance.docPartObj;
      } catch (e) {}
      try {
        final c_docPartList = instance.docPartList;
      } catch (e) {}
      try {
        final c_dropDownList = instance.dropDownList;
      } catch (e) {}
      try {
        final c_picture = instance.picture;
      } catch (e) {}
      try {
        final c_richText = instance.richText;
      } catch (e) {}
      try {
        final c_text = instance.text;
      } catch (e) {}
      try {
        final c_citation = instance.citation;
      } catch (e) {}
      try {
        final c_group = instance.group;
      } catch (e) {}
      try {
        final c_bibliography = instance.bibliography;
      } catch (e) {}
    });
    test('Test W_CT_SdtEndPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtEndPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
    });
    test('Test W_CT_SdtEndPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtendpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtEndPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
    });
    test('Test W_CT_DirContentRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DirContentRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_DirContentRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_dircontentrun(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Direction.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DirContentRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_BdoContentRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_BdoContentRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_BdoContentRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_bdocontentrun(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Direction.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_BdoContentRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_SdtContentRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtContentRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_SdtContentRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtcontentrun(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtContentRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_SdtContentBlock with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtContentBlock(node);
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
    });
    test('Test W_CT_SdtContentBlock with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtcontentblock(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtContentBlock(node);
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
    });
    test('Test W_CT_SdtContentRow with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtContentRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tr = instance.tr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_SdtContentRow with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtcontentrow(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtContentRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tr = instance.tr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_SdtContentCell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtContentCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tc = instance.tc;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_SdtContentCell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtcontentcell(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtContentCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tc = instance.tc;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_SdtBlock with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtBlock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sdtPr = instance.sdtPr;
      } catch (e) {}
      try {
        final c_sdtEndPr = instance.sdtEndPr;
      } catch (e) {}
      try {
        final c_sdtContent = instance.sdtContent;
      } catch (e) {}
    });
    test('Test W_CT_SdtBlock with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtblock(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtBlock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sdtPr = instance.sdtPr;
      } catch (e) {}
      try {
        final c_sdtEndPr = instance.sdtEndPr;
      } catch (e) {}
      try {
        final c_sdtContent = instance.sdtContent;
      } catch (e) {}
    });
    test('Test W_CT_SdtRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sdtPr = instance.sdtPr;
      } catch (e) {}
      try {
        final c_sdtEndPr = instance.sdtEndPr;
      } catch (e) {}
      try {
        final c_sdtContent = instance.sdtContent;
      } catch (e) {}
    });
    test('Test W_CT_SdtRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtrun(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sdtPr = instance.sdtPr;
      } catch (e) {}
      try {
        final c_sdtEndPr = instance.sdtEndPr;
      } catch (e) {}
      try {
        final c_sdtContent = instance.sdtContent;
      } catch (e) {}
    });
    test('Test W_CT_SdtCell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sdtPr = instance.sdtPr;
      } catch (e) {}
      try {
        final c_sdtEndPr = instance.sdtEndPr;
      } catch (e) {}
      try {
        final c_sdtContent = instance.sdtContent;
      } catch (e) {}
    });
    test('Test W_CT_SdtCell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtcell(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sdtPr = instance.sdtPr;
      } catch (e) {}
      try {
        final c_sdtEndPr = instance.sdtEndPr;
      } catch (e) {}
      try {
        final c_sdtContent = instance.sdtContent;
      } catch (e) {}
    });
    test('Test W_CT_SdtRow with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sdtPr = instance.sdtPr;
      } catch (e) {}
      try {
        final c_sdtEndPr = instance.sdtEndPr;
      } catch (e) {}
      try {
        final c_sdtContent = instance.sdtContent;
      } catch (e) {}
    });
    test('Test W_CT_SdtRow with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_sdtrow(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SdtRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sdtPr = instance.sdtPr;
      } catch (e) {}
      try {
        final c_sdtEndPr = instance.sdtEndPr;
      } catch (e) {}
      try {
        final c_sdtContent = instance.sdtContent;
      } catch (e) {}
    });
    test('Test W_CT_Attr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Attr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Attr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_attr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            uri: 'test',
            name: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Attr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_CustomXmlRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_customXmlPr = instance.customXmlPr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_CustomXmlRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_customxmlrun(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            uri: 'test',
            element: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_customXmlPr = instance.customXmlPr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_SmartTagRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SmartTagRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_smartTagPr = instance.smartTagPr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_SmartTagRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_smarttagrun(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            uri: 'test',
            element: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SmartTagRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_smartTagPr = instance.smartTagPr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_CustomXmlBlock with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlBlock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_customXmlPr = instance.customXmlPr;
      } catch (e) {}
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
    });
    test('Test W_CT_CustomXmlBlock with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_customxmlblock(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            uri: 'test',
            element: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlBlock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_customXmlPr = instance.customXmlPr;
      } catch (e) {}
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
    });
    test('Test W_CT_CustomXmlPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_placeholder = instance.placeholder;
      } catch (e) {}
      try {
        final c_attr = instance.attr;
      } catch (e) {}
    });
    test('Test W_CT_CustomXmlPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_customxmlpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_placeholder = instance.placeholder;
      } catch (e) {}
      try {
        final c_attr = instance.attr;
      } catch (e) {}
    });
    test('Test W_CT_CustomXmlRow with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_customXmlPr = instance.customXmlPr;
      } catch (e) {}
      try {
        final c_tr = instance.tr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_CustomXmlRow with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_customxmlrow(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            uri: 'test',
            element: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_customXmlPr = instance.customXmlPr;
      } catch (e) {}
      try {
        final c_tr = instance.tr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_CustomXmlCell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_customXmlPr = instance.customXmlPr;
      } catch (e) {}
      try {
        final c_tc = instance.tc;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_CustomXmlCell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_customxmlcell(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            uri: 'test',
            element: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CustomXmlCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_element = instance.element;
      } catch (e) {}
      try {
        final c_customXmlPr = instance.customXmlPr;
      } catch (e) {}
      try {
        final c_tc = instance.tc;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_SmartTagPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SmartTagPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_attr = instance.attr;
      } catch (e) {}
    });
    test('Test W_CT_SmartTagPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_smarttagpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SmartTagPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_attr = instance.attr;
      } catch (e) {}
    });
    test('Test W_CT_P with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_P(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rsidRPr = instance.rsidRPr;
      } catch (e) {}
      try {
        final v_rsidR = instance.rsidR;
      } catch (e) {}
      try {
        final v_rsidDel = instance.rsidDel;
      } catch (e) {}
      try {
        final v_rsidP = instance.rsidP;
      } catch (e) {}
      try {
        final v_rsidRDefault = instance.rsidRDefault;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_P with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_p(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            rsidRPr: 'test',
            rsidR: 'test',
            rsidDel: 'test',
            rsidP: 'test',
            rsidRDefault: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_P(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rsidRPr = instance.rsidRPr;
      } catch (e) {}
      try {
        final v_rsidR = instance.rsidR;
      } catch (e) {}
      try {
        final v_rsidDel = instance.rsidDel;
      } catch (e) {}
      try {
        final v_rsidP = instance.rsidP;
      } catch (e) {}
      try {
        final v_rsidRDefault = instance.rsidRDefault;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
      } catch (e) {}
      try {
        final c_smartTag = instance.smartTag;
      } catch (e) {}
      try {
        final c_sdt = instance.sdt;
      } catch (e) {}
      try {
        final c_dir = instance.dir;
      } catch (e) {}
      try {
        final c_bdo = instance.bdo;
      } catch (e) {}
      try {
        final c_r = instance.r;
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
        final c_fldSimple = instance.fldSimple;
      } catch (e) {}
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final c_subDoc = instance.subDoc;
      } catch (e) {}
    });
    test('Test W_CT_Height with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Height(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hRule = instance.hRule;
      } catch (e) {}
    });
    test('Test W_CT_Height with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_height(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            hRule: W_ST_HeightRule.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Height(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hRule = instance.hRule;
      } catch (e) {}
    });
    test('Test W_CT_TblWidth with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblWidth(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_TblWidth with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblwidth(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_TblWidth.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblWidth(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_TblGridCol with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblGridCol(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblGridCol with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblgridcol(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblGridCol(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblGridBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblGridBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gridCol = instance.gridCol;
      } catch (e) {}
    });
    test('Test W_CT_TblGridBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblgridbase(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblGridBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_gridCol = instance.gridCol;
      } catch (e) {}
    });
    test('Test W_CT_TblGrid with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblGrid(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblGrid with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblgrid(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblGrid(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TcBorders with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcBorders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_right = instance.right;
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
    });
    test('Test W_CT_TcBorders with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tcborders(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcBorders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_right = instance.right;
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
    });
    test('Test W_CT_TcMar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcMar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
    });
    test('Test W_CT_TcMar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tcmar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcMar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
    });
    test('Test W_CT_VMerge with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_VMerge(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_VMerge with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_vmerge(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Merge.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_VMerge(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_HMerge with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_HMerge(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_HMerge with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_hmerge(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Merge.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_HMerge(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TcPrBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cnfStyle = instance.cnfStyle;
      } catch (e) {}
      try {
        final c_tcW = instance.tcW;
      } catch (e) {}
      try {
        final c_gridSpan = instance.gridSpan;
      } catch (e) {}
      try {
        final c_hMerge = instance.hMerge;
      } catch (e) {}
      try {
        final c_vMerge = instance.vMerge;
      } catch (e) {}
      try {
        final c_tcBorders = instance.tcBorders;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_noWrap = instance.noWrap;
      } catch (e) {}
      try {
        final c_tcMar = instance.tcMar;
      } catch (e) {}
      try {
        final c_textDirection = instance.textDirection;
      } catch (e) {}
      try {
        final c_tcFitText = instance.tcFitText;
      } catch (e) {}
      try {
        final c_vAlign = instance.vAlign;
      } catch (e) {}
      try {
        final c_hideMark = instance.hideMark;
      } catch (e) {}
      try {
        final c_headers = instance.headers;
      } catch (e) {}
    });
    test('Test W_CT_TcPrBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tcprbase(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cnfStyle = instance.cnfStyle;
      } catch (e) {}
      try {
        final c_tcW = instance.tcW;
      } catch (e) {}
      try {
        final c_gridSpan = instance.gridSpan;
      } catch (e) {}
      try {
        final c_hMerge = instance.hMerge;
      } catch (e) {}
      try {
        final c_vMerge = instance.vMerge;
      } catch (e) {}
      try {
        final c_tcBorders = instance.tcBorders;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_noWrap = instance.noWrap;
      } catch (e) {}
      try {
        final c_tcMar = instance.tcMar;
      } catch (e) {}
      try {
        final c_textDirection = instance.textDirection;
      } catch (e) {}
      try {
        final c_tcFitText = instance.tcFitText;
      } catch (e) {}
      try {
        final c_vAlign = instance.vAlign;
      } catch (e) {}
      try {
        final c_hideMark = instance.hideMark;
      } catch (e) {}
      try {
        final c_headers = instance.headers;
      } catch (e) {}
    });
    test('Test W_CT_TcPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TcPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tcpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TcPrInner with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcPrInner(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TcPrInner with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tcprinner(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TcPrInner(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Tc with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Tc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_tcPr = instance.tcPr;
      } catch (e) {}
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
    test('Test W_CT_Tc with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tc(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Tc(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_tcPr = instance.tcPr;
      } catch (e) {}
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
    test('Test W_CT_Cnf with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Cnf(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Cnf with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_cnf(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Cnf(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Headers with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Headers(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_header = instance.header;
      } catch (e) {}
    });
    test('Test W_CT_Headers with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_headers(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Headers(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_header = instance.header;
      } catch (e) {}
    });
    test('Test W_CT_TrPrBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cnfStyle = instance.cnfStyle;
      } catch (e) {}
      try {
        final c_divId = instance.divId;
      } catch (e) {}
      try {
        final c_gridBefore = instance.gridBefore;
      } catch (e) {}
      try {
        final c_gridAfter = instance.gridAfter;
      } catch (e) {}
      try {
        final c_wBefore = instance.wBefore;
      } catch (e) {}
      try {
        final c_wAfter = instance.wAfter;
      } catch (e) {}
      try {
        final c_cantSplit = instance.cantSplit;
      } catch (e) {}
      try {
        final c_trHeight = instance.trHeight;
      } catch (e) {}
      try {
        final c_tblHeader = instance.tblHeader;
      } catch (e) {}
      try {
        final c_tblCellSpacing = instance.tblCellSpacing;
      } catch (e) {}
      try {
        final c_jc = instance.jc;
      } catch (e) {}
      try {
        final c_hidden = instance.hidden;
      } catch (e) {}
    });
    test('Test W_CT_TrPrBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_trprbase(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cnfStyle = instance.cnfStyle;
      } catch (e) {}
      try {
        final c_divId = instance.divId;
      } catch (e) {}
      try {
        final c_gridBefore = instance.gridBefore;
      } catch (e) {}
      try {
        final c_gridAfter = instance.gridAfter;
      } catch (e) {}
      try {
        final c_wBefore = instance.wBefore;
      } catch (e) {}
      try {
        final c_wAfter = instance.wAfter;
      } catch (e) {}
      try {
        final c_cantSplit = instance.cantSplit;
      } catch (e) {}
      try {
        final c_trHeight = instance.trHeight;
      } catch (e) {}
      try {
        final c_tblHeader = instance.tblHeader;
      } catch (e) {}
      try {
        final c_tblCellSpacing = instance.tblCellSpacing;
      } catch (e) {}
      try {
        final c_jc = instance.jc;
      } catch (e) {}
      try {
        final c_hidden = instance.hidden;
      } catch (e) {}
    });
    test('Test W_CT_TrPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TrPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_trpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TrPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Row with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Row(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rsidRPr = instance.rsidRPr;
      } catch (e) {}
      try {
        final v_rsidR = instance.rsidR;
      } catch (e) {}
      try {
        final v_rsidDel = instance.rsidDel;
      } catch (e) {}
      try {
        final v_rsidTr = instance.rsidTr;
      } catch (e) {}
      try {
        final c_tblPrEx = instance.tblPrEx;
      } catch (e) {}
      try {
        final c_trPr = instance.trPr;
      } catch (e) {}
      try {
        final c_tc = instance.tc;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_Row with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_row(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            rsidRPr: 'test',
            rsidR: 'test',
            rsidDel: 'test',
            rsidTr: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Row(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rsidRPr = instance.rsidRPr;
      } catch (e) {}
      try {
        final v_rsidR = instance.rsidR;
      } catch (e) {}
      try {
        final v_rsidDel = instance.rsidDel;
      } catch (e) {}
      try {
        final v_rsidTr = instance.rsidTr;
      } catch (e) {}
      try {
        final c_tblPrEx = instance.tblPrEx;
      } catch (e) {}
      try {
        final c_trPr = instance.trPr;
      } catch (e) {}
      try {
        final c_tc = instance.tc;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_TblLayoutType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblLayoutType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_TblLayoutType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tbllayouttype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_TblLayoutType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblLayoutType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_TblOverlap with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblOverlap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TblOverlap with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tbloverlap(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_TblOverlap.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblOverlap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TblPPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_vertAnchor = instance.vertAnchor;
      } catch (e) {}
      try {
        final v_horzAnchor = instance.horzAnchor;
      } catch (e) {}
      try {
        final v_tblpXSpec = instance.tblpXSpec;
      } catch (e) {}
      try {
        final v_tblpYSpec = instance.tblpYSpec;
      } catch (e) {}
    });
    test('Test W_CT_TblPPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblppr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            vertAnchor: W_ST_VAnchor.values.first,
            horzAnchor: W_ST_HAnchor.values.first,
            tblpXSpec: ST_XAlign.values.first,
            tblpYSpec: ST_YAlign.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_vertAnchor = instance.vertAnchor;
      } catch (e) {}
      try {
        final v_horzAnchor = instance.horzAnchor;
      } catch (e) {}
      try {
        final v_tblpXSpec = instance.tblpXSpec;
      } catch (e) {}
      try {
        final v_tblpYSpec = instance.tblpYSpec;
      } catch (e) {}
    });
    test('Test W_CT_TblCellMar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblCellMar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
    });
    test('Test W_CT_TblCellMar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblcellmar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblCellMar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
    });
    test('Test W_CT_TblBorders with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblBorders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
      try {
        final c_insideH = instance.insideH;
      } catch (e) {}
      try {
        final c_insideV = instance.insideV;
      } catch (e) {}
    });
    test('Test W_CT_TblBorders with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblborders(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblBorders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
      try {
        final c_insideH = instance.insideH;
      } catch (e) {}
      try {
        final c_insideV = instance.insideV;
      } catch (e) {}
    });
    test('Test W_CT_TblPrBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tblStyle = instance.tblStyle;
      } catch (e) {}
      try {
        final c_tblpPr = instance.tblpPr;
      } catch (e) {}
      try {
        final c_tblOverlap = instance.tblOverlap;
      } catch (e) {}
      try {
        final c_bidiVisual = instance.bidiVisual;
      } catch (e) {}
      try {
        final c_tblStyleRowBandSize = instance.tblStyleRowBandSize;
      } catch (e) {}
      try {
        final c_tblStyleColBandSize = instance.tblStyleColBandSize;
      } catch (e) {}
      try {
        final c_tblW = instance.tblW;
      } catch (e) {}
      try {
        final c_jc = instance.jc;
      } catch (e) {}
      try {
        final c_tblCellSpacing = instance.tblCellSpacing;
      } catch (e) {}
      try {
        final c_tblInd = instance.tblInd;
      } catch (e) {}
      try {
        final c_tblBorders = instance.tblBorders;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_tblLayout = instance.tblLayout;
      } catch (e) {}
      try {
        final c_tblCellMar = instance.tblCellMar;
      } catch (e) {}
      try {
        final c_tblLook = instance.tblLook;
      } catch (e) {}
      try {
        final c_tblCaption = instance.tblCaption;
      } catch (e) {}
      try {
        final c_tblDescription = instance.tblDescription;
      } catch (e) {}
    });
    test('Test W_CT_TblPrBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblprbase(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tblStyle = instance.tblStyle;
      } catch (e) {}
      try {
        final c_tblpPr = instance.tblpPr;
      } catch (e) {}
      try {
        final c_tblOverlap = instance.tblOverlap;
      } catch (e) {}
      try {
        final c_bidiVisual = instance.bidiVisual;
      } catch (e) {}
      try {
        final c_tblStyleRowBandSize = instance.tblStyleRowBandSize;
      } catch (e) {}
      try {
        final c_tblStyleColBandSize = instance.tblStyleColBandSize;
      } catch (e) {}
      try {
        final c_tblW = instance.tblW;
      } catch (e) {}
      try {
        final c_jc = instance.jc;
      } catch (e) {}
      try {
        final c_tblCellSpacing = instance.tblCellSpacing;
      } catch (e) {}
      try {
        final c_tblInd = instance.tblInd;
      } catch (e) {}
      try {
        final c_tblBorders = instance.tblBorders;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_tblLayout = instance.tblLayout;
      } catch (e) {}
      try {
        final c_tblCellMar = instance.tblCellMar;
      } catch (e) {}
      try {
        final c_tblLook = instance.tblLook;
      } catch (e) {}
      try {
        final c_tblCaption = instance.tblCaption;
      } catch (e) {}
      try {
        final c_tblDescription = instance.tblDescription;
      } catch (e) {}
    });
    test('Test W_CT_TblPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblPrExBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrExBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tblW = instance.tblW;
      } catch (e) {}
      try {
        final c_jc = instance.jc;
      } catch (e) {}
      try {
        final c_tblCellSpacing = instance.tblCellSpacing;
      } catch (e) {}
      try {
        final c_tblInd = instance.tblInd;
      } catch (e) {}
      try {
        final c_tblBorders = instance.tblBorders;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_tblLayout = instance.tblLayout;
      } catch (e) {}
      try {
        final c_tblCellMar = instance.tblCellMar;
      } catch (e) {}
      try {
        final c_tblLook = instance.tblLook;
      } catch (e) {}
    });
    test('Test W_CT_TblPrExBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblprexbase(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrExBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tblW = instance.tblW;
      } catch (e) {}
      try {
        final c_jc = instance.jc;
      } catch (e) {}
      try {
        final c_tblCellSpacing = instance.tblCellSpacing;
      } catch (e) {}
      try {
        final c_tblInd = instance.tblInd;
      } catch (e) {}
      try {
        final c_tblBorders = instance.tblBorders;
      } catch (e) {}
      try {
        final c_shd = instance.shd;
      } catch (e) {}
      try {
        final c_tblLayout = instance.tblLayout;
      } catch (e) {}
      try {
        final c_tblCellMar = instance.tblCellMar;
      } catch (e) {}
      try {
        final c_tblLook = instance.tblLook;
      } catch (e) {}
    });
    test('Test W_CT_TblPrEx with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrEx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_TblPrEx with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblprex(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblPrEx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Tbl with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Tbl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
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
        final c_tblPr = instance.tblPr;
      } catch (e) {}
      try {
        final c_tblGrid = instance.tblGrid;
      } catch (e) {}
      try {
        final c_tr = instance.tr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_Tbl with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tbl(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Tbl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
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
        final c_tblPr = instance.tblPr;
      } catch (e) {}
      try {
        final c_tblGrid = instance.tblGrid;
      } catch (e) {}
      try {
        final c_tr = instance.tr;
      } catch (e) {}
      try {
        final c_customXml = instance.customXml;
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
    test('Test W_CT_TblLook with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblLook(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TblLook with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tbllook(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblLook(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FtnPos with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FtnPos with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ftnpos(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_FtnPos.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_EdnPos with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_EdnPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_EdnPos with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ednpos(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_EdnPos.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_EdnPos(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_NumFmt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_format = instance.format;
      } catch (e) {}
    });
    test('Test W_CT_NumFmt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_numfmt(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_NumberFormat.values.first,
            format: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_format = instance.format;
      } catch (e) {}
    });
    test('Test W_CT_NumRestart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumRestart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_NumRestart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_numrestart(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_RestartNumber.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumRestart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FtnEdnRef with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnEdnRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test W_CT_FtnEdnRef with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ftnednref(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnEdnRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test W_CT_FtnEdnSepRef with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnEdnSepRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test W_CT_FtnEdnSepRef with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ftnednsepref(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnEdnSepRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test W_CT_FtnEdn with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnEdn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
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
    test('Test W_CT_FtnEdn with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ftnedn(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_FtnEdn.values.first,
            id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnEdn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
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
    test('Test W_CT_FtnProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_numStart = instance.numStart;
      } catch (e) {}
      try {
        final c_numRestart = instance.numRestart;
      } catch (e) {}
    });
    test('Test W_CT_FtnProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ftnprops(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_numStart = instance.numStart;
      } catch (e) {}
      try {
        final c_numRestart = instance.numRestart;
      } catch (e) {}
    });
    test('Test W_CT_EdnProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_EdnProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_numStart = instance.numStart;
      } catch (e) {}
      try {
        final c_numRestart = instance.numRestart;
      } catch (e) {}
    });
    test('Test W_CT_EdnProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ednprops(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_EdnProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_numStart = instance.numStart;
      } catch (e) {}
      try {
        final c_numRestart = instance.numRestart;
      } catch (e) {}
    });
    test('Test W_CT_FtnDocProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnDocProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_FtnDocProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_ftndocprops(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FtnDocProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_EdnDocProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_EdnDocProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_EdnDocProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_edndocprops(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_EdnDocProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_RecipientData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RecipientData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_active = instance.active;
      } catch (e) {}
      try {
        final c_column = instance.column;
      } catch (e) {}
      try {
        final c_uniqueTag = instance.uniqueTag;
      } catch (e) {}
    });
    test('Test W_CT_RecipientData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_recipientdata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RecipientData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_active = instance.active;
      } catch (e) {}
      try {
        final c_column = instance.column;
      } catch (e) {}
      try {
        final c_uniqueTag = instance.uniqueTag;
      } catch (e) {}
    });
    test('Test W_CT_Base64Binary with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Base64Binary(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Base64Binary with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_base64binary(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Base64Binary(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Recipients with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Recipients(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_recipientData = instance.recipientData;
      } catch (e) {}
    });
    test('Test W_CT_Recipients with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_recipients(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Recipients(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_recipientData = instance.recipientData;
      } catch (e) {}
    });
    test('Test W_CT_OdsoFieldMapData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_OdsoFieldMapData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_mappedName = instance.mappedName;
      } catch (e) {}
      try {
        final c_column = instance.column;
      } catch (e) {}
      try {
        final c_lid = instance.lid;
      } catch (e) {}
      try {
        final c_dynamicAddress = instance.dynamicAddress;
      } catch (e) {}
    });
    test('Test W_CT_OdsoFieldMapData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_odsofieldmapdata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_OdsoFieldMapData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_mappedName = instance.mappedName;
      } catch (e) {}
      try {
        final c_column = instance.column;
      } catch (e) {}
      try {
        final c_lid = instance.lid;
      } catch (e) {}
      try {
        final c_dynamicAddress = instance.dynamicAddress;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeSourceType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeSourceType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MailMergeSourceType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_mailmergesourcetype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_MailMergeSourceType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMergeSourceType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Odso with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Odso(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_udl = instance.udl;
      } catch (e) {}
      try {
        final c_table = instance.table;
      } catch (e) {}
      try {
        final c_src = instance.src;
      } catch (e) {}
      try {
        final c_colDelim = instance.colDelim;
      } catch (e) {}
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_fHdr = instance.fHdr;
      } catch (e) {}
      try {
        final c_fieldMapData = instance.fieldMapData;
      } catch (e) {}
      try {
        final c_recipientData = instance.recipientData;
      } catch (e) {}
    });
    test('Test W_CT_Odso with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_odso(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Odso(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_udl = instance.udl;
      } catch (e) {}
      try {
        final c_table = instance.table;
      } catch (e) {}
      try {
        final c_src = instance.src;
      } catch (e) {}
      try {
        final c_colDelim = instance.colDelim;
      } catch (e) {}
      try {
        final c_type = instance.type;
      } catch (e) {}
      try {
        final c_fHdr = instance.fHdr;
      } catch (e) {}
      try {
        final c_fieldMapData = instance.fieldMapData;
      } catch (e) {}
      try {
        final c_recipientData = instance.recipientData;
      } catch (e) {}
    });
    test('Test W_CT_MailMerge with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMerge(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mainDocumentType = instance.mainDocumentType;
      } catch (e) {}
      try {
        final c_linkToQuery = instance.linkToQuery;
      } catch (e) {}
      try {
        final c_dataType = instance.dataType;
      } catch (e) {}
      try {
        final c_connectString = instance.connectString;
      } catch (e) {}
      try {
        final c_query = instance.query;
      } catch (e) {}
      try {
        final c_dataSource = instance.dataSource;
      } catch (e) {}
      try {
        final c_headerSource = instance.headerSource;
      } catch (e) {}
      try {
        final c_doNotSuppressBlankLines = instance.doNotSuppressBlankLines;
      } catch (e) {}
      try {
        final c_destination = instance.destination;
      } catch (e) {}
      try {
        final c_addressFieldName = instance.addressFieldName;
      } catch (e) {}
      try {
        final c_mailSubject = instance.mailSubject;
      } catch (e) {}
      try {
        final c_mailAsAttachment = instance.mailAsAttachment;
      } catch (e) {}
      try {
        final c_viewMergedData = instance.viewMergedData;
      } catch (e) {}
      try {
        final c_activeRecord = instance.activeRecord;
      } catch (e) {}
      try {
        final c_checkErrors = instance.checkErrors;
      } catch (e) {}
      try {
        final c_odso = instance.odso;
      } catch (e) {}
    });
    test('Test W_CT_MailMerge with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_mailmerge(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MailMerge(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_mainDocumentType = instance.mainDocumentType;
      } catch (e) {}
      try {
        final c_linkToQuery = instance.linkToQuery;
      } catch (e) {}
      try {
        final c_dataType = instance.dataType;
      } catch (e) {}
      try {
        final c_connectString = instance.connectString;
      } catch (e) {}
      try {
        final c_query = instance.query;
      } catch (e) {}
      try {
        final c_dataSource = instance.dataSource;
      } catch (e) {}
      try {
        final c_headerSource = instance.headerSource;
      } catch (e) {}
      try {
        final c_doNotSuppressBlankLines = instance.doNotSuppressBlankLines;
      } catch (e) {}
      try {
        final c_destination = instance.destination;
      } catch (e) {}
      try {
        final c_addressFieldName = instance.addressFieldName;
      } catch (e) {}
      try {
        final c_mailSubject = instance.mailSubject;
      } catch (e) {}
      try {
        final c_mailAsAttachment = instance.mailAsAttachment;
      } catch (e) {}
      try {
        final c_viewMergedData = instance.viewMergedData;
      } catch (e) {}
      try {
        final c_activeRecord = instance.activeRecord;
      } catch (e) {}
      try {
        final c_checkErrors = instance.checkErrors;
      } catch (e) {}
      try {
        final c_odso = instance.odso;
      } catch (e) {}
    });
    test('Test W_CT_TargetScreenSz with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TargetScreenSz(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_TargetScreenSz with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_targetscreensz(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_TargetScreenSz.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TargetScreenSz(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Compat with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Compat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_useSingleBorderforContiguousCells =
            instance.useSingleBorderforContiguousCells;
      } catch (e) {}
      try {
        final c_wpJustification = instance.wpJustification;
      } catch (e) {}
      try {
        final c_noTabHangInd = instance.noTabHangInd;
      } catch (e) {}
      try {
        final c_noLeading = instance.noLeading;
      } catch (e) {}
      try {
        final c_spaceForUL = instance.spaceForUL;
      } catch (e) {}
      try {
        final c_noColumnBalance = instance.noColumnBalance;
      } catch (e) {}
      try {
        final c_balanceSingleByteDoubleByteWidth =
            instance.balanceSingleByteDoubleByteWidth;
      } catch (e) {}
      try {
        final c_noExtraLineSpacing = instance.noExtraLineSpacing;
      } catch (e) {}
      try {
        final c_doNotLeaveBackslashAlone = instance.doNotLeaveBackslashAlone;
      } catch (e) {}
      try {
        final c_ulTrailSpace = instance.ulTrailSpace;
      } catch (e) {}
      try {
        final c_doNotExpandShiftReturn = instance.doNotExpandShiftReturn;
      } catch (e) {}
      try {
        final c_spacingInWholePoints = instance.spacingInWholePoints;
      } catch (e) {}
      try {
        final c_lineWrapLikeWord6 = instance.lineWrapLikeWord6;
      } catch (e) {}
      try {
        final c_printBodyTextBeforeHeader = instance.printBodyTextBeforeHeader;
      } catch (e) {}
      try {
        final c_printColBlack = instance.printColBlack;
      } catch (e) {}
      try {
        final c_wpSpaceWidth = instance.wpSpaceWidth;
      } catch (e) {}
      try {
        final c_showBreaksInFrames = instance.showBreaksInFrames;
      } catch (e) {}
      try {
        final c_subFontBySize = instance.subFontBySize;
      } catch (e) {}
      try {
        final c_suppressBottomSpacing = instance.suppressBottomSpacing;
      } catch (e) {}
      try {
        final c_suppressTopSpacing = instance.suppressTopSpacing;
      } catch (e) {}
      try {
        final c_suppressSpacingAtTopOfPage =
            instance.suppressSpacingAtTopOfPage;
      } catch (e) {}
      try {
        final c_suppressTopSpacingWP = instance.suppressTopSpacingWP;
      } catch (e) {}
      try {
        final c_suppressSpBfAfterPgBrk = instance.suppressSpBfAfterPgBrk;
      } catch (e) {}
      try {
        final c_swapBordersFacingPages = instance.swapBordersFacingPages;
      } catch (e) {}
      try {
        final c_convMailMergeEsc = instance.convMailMergeEsc;
      } catch (e) {}
      try {
        final c_truncateFontHeightsLikeWP6 =
            instance.truncateFontHeightsLikeWP6;
      } catch (e) {}
      try {
        final c_mwSmallCaps = instance.mwSmallCaps;
      } catch (e) {}
      try {
        final c_usePrinterMetrics = instance.usePrinterMetrics;
      } catch (e) {}
      try {
        final c_doNotSuppressParagraphBorders =
            instance.doNotSuppressParagraphBorders;
      } catch (e) {}
      try {
        final c_wrapTrailSpaces = instance.wrapTrailSpaces;
      } catch (e) {}
      try {
        final c_footnoteLayoutLikeWW8 = instance.footnoteLayoutLikeWW8;
      } catch (e) {}
      try {
        final c_shapeLayoutLikeWW8 = instance.shapeLayoutLikeWW8;
      } catch (e) {}
      try {
        final c_alignTablesRowByRow = instance.alignTablesRowByRow;
      } catch (e) {}
      try {
        final c_forgetLastTabAlignment = instance.forgetLastTabAlignment;
      } catch (e) {}
      try {
        final c_adjustLineHeightInTable = instance.adjustLineHeightInTable;
      } catch (e) {}
      try {
        final c_autoSpaceLikeWord95 = instance.autoSpaceLikeWord95;
      } catch (e) {}
      try {
        final c_noSpaceRaiseLower = instance.noSpaceRaiseLower;
      } catch (e) {}
      try {
        final c_doNotUseHTMLParagraphAutoSpacing =
            instance.doNotUseHTMLParagraphAutoSpacing;
      } catch (e) {}
      try {
        final c_layoutRawTableWidth = instance.layoutRawTableWidth;
      } catch (e) {}
      try {
        final c_layoutTableRowsApart = instance.layoutTableRowsApart;
      } catch (e) {}
      try {
        final c_useWord97LineBreakRules = instance.useWord97LineBreakRules;
      } catch (e) {}
      try {
        final c_doNotBreakWrappedTables = instance.doNotBreakWrappedTables;
      } catch (e) {}
      try {
        final c_doNotSnapToGridInCell = instance.doNotSnapToGridInCell;
      } catch (e) {}
      try {
        final c_selectFldWithFirstOrLastChar =
            instance.selectFldWithFirstOrLastChar;
      } catch (e) {}
      try {
        final c_applyBreakingRules = instance.applyBreakingRules;
      } catch (e) {}
      try {
        final c_doNotWrapTextWithPunct = instance.doNotWrapTextWithPunct;
      } catch (e) {}
      try {
        final c_doNotUseEastAsianBreakRules =
            instance.doNotUseEastAsianBreakRules;
      } catch (e) {}
      try {
        final c_useWord2002TableStyleRules =
            instance.useWord2002TableStyleRules;
      } catch (e) {}
      try {
        final c_growAutofit = instance.growAutofit;
      } catch (e) {}
      try {
        final c_useFELayout = instance.useFELayout;
      } catch (e) {}
      try {
        final c_useNormalStyleForList = instance.useNormalStyleForList;
      } catch (e) {}
      try {
        final c_doNotUseIndentAsNumberingTabStop =
            instance.doNotUseIndentAsNumberingTabStop;
      } catch (e) {}
      try {
        final c_useAltKinsokuLineBreakRules =
            instance.useAltKinsokuLineBreakRules;
      } catch (e) {}
      try {
        final c_allowSpaceOfSameStyleInTable =
            instance.allowSpaceOfSameStyleInTable;
      } catch (e) {}
      try {
        final c_doNotSuppressIndentation = instance.doNotSuppressIndentation;
      } catch (e) {}
      try {
        final c_doNotAutofitConstrainedTables =
            instance.doNotAutofitConstrainedTables;
      } catch (e) {}
      try {
        final c_autofitToFirstFixedWidthCell =
            instance.autofitToFirstFixedWidthCell;
      } catch (e) {}
      try {
        final c_underlineTabInNumList = instance.underlineTabInNumList;
      } catch (e) {}
      try {
        final c_displayHangulFixedWidth = instance.displayHangulFixedWidth;
      } catch (e) {}
      try {
        final c_splitPgBreakAndParaMark = instance.splitPgBreakAndParaMark;
      } catch (e) {}
      try {
        final c_doNotVertAlignCellWithSp = instance.doNotVertAlignCellWithSp;
      } catch (e) {}
      try {
        final c_doNotBreakConstrainedForcedTable =
            instance.doNotBreakConstrainedForcedTable;
      } catch (e) {}
      try {
        final c_doNotVertAlignInTxbx = instance.doNotVertAlignInTxbx;
      } catch (e) {}
      try {
        final c_useAnsiKerningPairs = instance.useAnsiKerningPairs;
      } catch (e) {}
      try {
        final c_cachedColBalance = instance.cachedColBalance;
      } catch (e) {}
      try {
        final c_compatSetting = instance.compatSetting;
      } catch (e) {}
    });
    test('Test W_CT_Compat with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_compat(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Compat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_useSingleBorderforContiguousCells =
            instance.useSingleBorderforContiguousCells;
      } catch (e) {}
      try {
        final c_wpJustification = instance.wpJustification;
      } catch (e) {}
      try {
        final c_noTabHangInd = instance.noTabHangInd;
      } catch (e) {}
      try {
        final c_noLeading = instance.noLeading;
      } catch (e) {}
      try {
        final c_spaceForUL = instance.spaceForUL;
      } catch (e) {}
      try {
        final c_noColumnBalance = instance.noColumnBalance;
      } catch (e) {}
      try {
        final c_balanceSingleByteDoubleByteWidth =
            instance.balanceSingleByteDoubleByteWidth;
      } catch (e) {}
      try {
        final c_noExtraLineSpacing = instance.noExtraLineSpacing;
      } catch (e) {}
      try {
        final c_doNotLeaveBackslashAlone = instance.doNotLeaveBackslashAlone;
      } catch (e) {}
      try {
        final c_ulTrailSpace = instance.ulTrailSpace;
      } catch (e) {}
      try {
        final c_doNotExpandShiftReturn = instance.doNotExpandShiftReturn;
      } catch (e) {}
      try {
        final c_spacingInWholePoints = instance.spacingInWholePoints;
      } catch (e) {}
      try {
        final c_lineWrapLikeWord6 = instance.lineWrapLikeWord6;
      } catch (e) {}
      try {
        final c_printBodyTextBeforeHeader = instance.printBodyTextBeforeHeader;
      } catch (e) {}
      try {
        final c_printColBlack = instance.printColBlack;
      } catch (e) {}
      try {
        final c_wpSpaceWidth = instance.wpSpaceWidth;
      } catch (e) {}
      try {
        final c_showBreaksInFrames = instance.showBreaksInFrames;
      } catch (e) {}
      try {
        final c_subFontBySize = instance.subFontBySize;
      } catch (e) {}
      try {
        final c_suppressBottomSpacing = instance.suppressBottomSpacing;
      } catch (e) {}
      try {
        final c_suppressTopSpacing = instance.suppressTopSpacing;
      } catch (e) {}
      try {
        final c_suppressSpacingAtTopOfPage =
            instance.suppressSpacingAtTopOfPage;
      } catch (e) {}
      try {
        final c_suppressTopSpacingWP = instance.suppressTopSpacingWP;
      } catch (e) {}
      try {
        final c_suppressSpBfAfterPgBrk = instance.suppressSpBfAfterPgBrk;
      } catch (e) {}
      try {
        final c_swapBordersFacingPages = instance.swapBordersFacingPages;
      } catch (e) {}
      try {
        final c_convMailMergeEsc = instance.convMailMergeEsc;
      } catch (e) {}
      try {
        final c_truncateFontHeightsLikeWP6 =
            instance.truncateFontHeightsLikeWP6;
      } catch (e) {}
      try {
        final c_mwSmallCaps = instance.mwSmallCaps;
      } catch (e) {}
      try {
        final c_usePrinterMetrics = instance.usePrinterMetrics;
      } catch (e) {}
      try {
        final c_doNotSuppressParagraphBorders =
            instance.doNotSuppressParagraphBorders;
      } catch (e) {}
      try {
        final c_wrapTrailSpaces = instance.wrapTrailSpaces;
      } catch (e) {}
      try {
        final c_footnoteLayoutLikeWW8 = instance.footnoteLayoutLikeWW8;
      } catch (e) {}
      try {
        final c_shapeLayoutLikeWW8 = instance.shapeLayoutLikeWW8;
      } catch (e) {}
      try {
        final c_alignTablesRowByRow = instance.alignTablesRowByRow;
      } catch (e) {}
      try {
        final c_forgetLastTabAlignment = instance.forgetLastTabAlignment;
      } catch (e) {}
      try {
        final c_adjustLineHeightInTable = instance.adjustLineHeightInTable;
      } catch (e) {}
      try {
        final c_autoSpaceLikeWord95 = instance.autoSpaceLikeWord95;
      } catch (e) {}
      try {
        final c_noSpaceRaiseLower = instance.noSpaceRaiseLower;
      } catch (e) {}
      try {
        final c_doNotUseHTMLParagraphAutoSpacing =
            instance.doNotUseHTMLParagraphAutoSpacing;
      } catch (e) {}
      try {
        final c_layoutRawTableWidth = instance.layoutRawTableWidth;
      } catch (e) {}
      try {
        final c_layoutTableRowsApart = instance.layoutTableRowsApart;
      } catch (e) {}
      try {
        final c_useWord97LineBreakRules = instance.useWord97LineBreakRules;
      } catch (e) {}
      try {
        final c_doNotBreakWrappedTables = instance.doNotBreakWrappedTables;
      } catch (e) {}
      try {
        final c_doNotSnapToGridInCell = instance.doNotSnapToGridInCell;
      } catch (e) {}
      try {
        final c_selectFldWithFirstOrLastChar =
            instance.selectFldWithFirstOrLastChar;
      } catch (e) {}
      try {
        final c_applyBreakingRules = instance.applyBreakingRules;
      } catch (e) {}
      try {
        final c_doNotWrapTextWithPunct = instance.doNotWrapTextWithPunct;
      } catch (e) {}
      try {
        final c_doNotUseEastAsianBreakRules =
            instance.doNotUseEastAsianBreakRules;
      } catch (e) {}
      try {
        final c_useWord2002TableStyleRules =
            instance.useWord2002TableStyleRules;
      } catch (e) {}
      try {
        final c_growAutofit = instance.growAutofit;
      } catch (e) {}
      try {
        final c_useFELayout = instance.useFELayout;
      } catch (e) {}
      try {
        final c_useNormalStyleForList = instance.useNormalStyleForList;
      } catch (e) {}
      try {
        final c_doNotUseIndentAsNumberingTabStop =
            instance.doNotUseIndentAsNumberingTabStop;
      } catch (e) {}
      try {
        final c_useAltKinsokuLineBreakRules =
            instance.useAltKinsokuLineBreakRules;
      } catch (e) {}
      try {
        final c_allowSpaceOfSameStyleInTable =
            instance.allowSpaceOfSameStyleInTable;
      } catch (e) {}
      try {
        final c_doNotSuppressIndentation = instance.doNotSuppressIndentation;
      } catch (e) {}
      try {
        final c_doNotAutofitConstrainedTables =
            instance.doNotAutofitConstrainedTables;
      } catch (e) {}
      try {
        final c_autofitToFirstFixedWidthCell =
            instance.autofitToFirstFixedWidthCell;
      } catch (e) {}
      try {
        final c_underlineTabInNumList = instance.underlineTabInNumList;
      } catch (e) {}
      try {
        final c_displayHangulFixedWidth = instance.displayHangulFixedWidth;
      } catch (e) {}
      try {
        final c_splitPgBreakAndParaMark = instance.splitPgBreakAndParaMark;
      } catch (e) {}
      try {
        final c_doNotVertAlignCellWithSp = instance.doNotVertAlignCellWithSp;
      } catch (e) {}
      try {
        final c_doNotBreakConstrainedForcedTable =
            instance.doNotBreakConstrainedForcedTable;
      } catch (e) {}
      try {
        final c_doNotVertAlignInTxbx = instance.doNotVertAlignInTxbx;
      } catch (e) {}
      try {
        final c_useAnsiKerningPairs = instance.useAnsiKerningPairs;
      } catch (e) {}
      try {
        final c_cachedColBalance = instance.cachedColBalance;
      } catch (e) {}
      try {
        final c_compatSetting = instance.compatSetting;
      } catch (e) {}
    });
    test('Test W_CT_CompatSetting with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CompatSetting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_CompatSetting with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_compatsetting(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            name: 'test',
            uri: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CompatSetting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_uri = instance.uri;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocVar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocVar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocVar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docvar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            name: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocVar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocVars with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocVars(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docVar = instance.docVar;
      } catch (e) {}
    });
    test('Test W_CT_DocVars with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docvars(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocVars(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docVar = instance.docVar;
      } catch (e) {}
    });
    test('Test W_CT_DocRsids with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocRsids(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rsidRoot = instance.rsidRoot;
      } catch (e) {}
      try {
        final c_rsid = instance.rsid;
      } catch (e) {}
    });
    test('Test W_CT_DocRsids with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docrsids(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocRsids(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rsidRoot = instance.rsidRoot;
      } catch (e) {}
      try {
        final c_rsid = instance.rsid;
      } catch (e) {}
    });
    test('Test W_CT_CharacterSpacing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CharacterSpacing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_CharacterSpacing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_characterspacing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_CharacterSpacing.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_CharacterSpacing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_SaveThroughXslt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SaveThroughXslt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_solutionID = instance.solutionID;
      } catch (e) {}
    });
    test('Test W_CT_SaveThroughXslt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.w_ct_savethroughxslt(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            r_id: 'test',
            solutionID: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SaveThroughXslt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_solutionID = instance.solutionID;
      } catch (e) {}
    });
    test('Test W_CT_RPrDefault with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RPrDefault(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
    });
    test('Test W_CT_RPrDefault with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_rprdefault(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_RPrDefault(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
    });
    test('Test W_CT_PPrDefault with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPrDefault(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
    });
    test('Test W_CT_PPrDefault with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pprdefault(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_PPrDefault(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
    });
    test('Test W_CT_DocDefaults with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocDefaults(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPrDefault = instance.rPrDefault;
      } catch (e) {}
      try {
        final c_pPrDefault = instance.pPrDefault;
      } catch (e) {}
    });
    test('Test W_CT_DocDefaults with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docdefaults(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocDefaults(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPrDefault = instance.rPrDefault;
      } catch (e) {}
      try {
        final c_pPrDefault = instance.pPrDefault;
      } catch (e) {}
    });
    test('Test W_CT_ColorSchemeMapping with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ColorSchemeMapping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bg1 = instance.bg1;
      } catch (e) {}
      try {
        final v_t1 = instance.t1;
      } catch (e) {}
      try {
        final v_bg2 = instance.bg2;
      } catch (e) {}
      try {
        final v_t2 = instance.t2;
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
        final v_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final v_followedHyperlink = instance.followedHyperlink;
      } catch (e) {}
    });
    test('Test W_CT_ColorSchemeMapping with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_colorschememapping(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            bg1: W_ST_WmlColorSchemeIndex.values.first,
            t1: W_ST_WmlColorSchemeIndex.values.first,
            bg2: W_ST_WmlColorSchemeIndex.values.first,
            t2: W_ST_WmlColorSchemeIndex.values.first,
            accent1: W_ST_WmlColorSchemeIndex.values.first,
            accent2: W_ST_WmlColorSchemeIndex.values.first,
            accent3: W_ST_WmlColorSchemeIndex.values.first,
            accent4: W_ST_WmlColorSchemeIndex.values.first,
            accent5: W_ST_WmlColorSchemeIndex.values.first,
            accent6: W_ST_WmlColorSchemeIndex.values.first,
            hyperlink: W_ST_WmlColorSchemeIndex.values.first,
            followedHyperlink: W_ST_WmlColorSchemeIndex.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ColorSchemeMapping(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bg1 = instance.bg1;
      } catch (e) {}
      try {
        final v_t1 = instance.t1;
      } catch (e) {}
      try {
        final v_bg2 = instance.bg2;
      } catch (e) {}
      try {
        final v_t2 = instance.t2;
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
        final v_hyperlink = instance.hyperlink;
      } catch (e) {}
      try {
        final v_followedHyperlink = instance.followedHyperlink;
      } catch (e) {}
    });
    test('Test W_CT_ReadingModeInkLockDown with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ReadingModeInkLockDown(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_h = instance.h;
      } catch (e) {}
    });
    test('Test W_CT_ReadingModeInkLockDown with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_readingmodeinklockdown(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            w: 'test',
            h: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ReadingModeInkLockDown(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_w = instance.w;
      } catch (e) {}
      try {
        final v_h = instance.h;
      } catch (e) {}
    });
    test('Test W_CT_WriteProtection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_WriteProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_WriteProtection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_writeprotection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_WriteProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Settings with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Settings(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_writeProtection = instance.writeProtection;
      } catch (e) {}
      try {
        final c_view = instance.view;
      } catch (e) {}
      try {
        final c_zoom = instance.zoom;
      } catch (e) {}
      try {
        final c_removePersonalInformation = instance.removePersonalInformation;
      } catch (e) {}
      try {
        final c_removeDateAndTime = instance.removeDateAndTime;
      } catch (e) {}
      try {
        final c_doNotDisplayPageBoundaries =
            instance.doNotDisplayPageBoundaries;
      } catch (e) {}
      try {
        final c_displayBackgroundShape = instance.displayBackgroundShape;
      } catch (e) {}
      try {
        final c_printPostScriptOverText = instance.printPostScriptOverText;
      } catch (e) {}
      try {
        final c_printFractionalCharacterWidth =
            instance.printFractionalCharacterWidth;
      } catch (e) {}
      try {
        final c_printFormsData = instance.printFormsData;
      } catch (e) {}
      try {
        final c_embedTrueTypeFonts = instance.embedTrueTypeFonts;
      } catch (e) {}
      try {
        final c_embedSystemFonts = instance.embedSystemFonts;
      } catch (e) {}
      try {
        final c_saveSubsetFonts = instance.saveSubsetFonts;
      } catch (e) {}
      try {
        final c_saveFormsData = instance.saveFormsData;
      } catch (e) {}
      try {
        final c_mirrorMargins = instance.mirrorMargins;
      } catch (e) {}
      try {
        final c_alignBordersAndEdges = instance.alignBordersAndEdges;
      } catch (e) {}
      try {
        final c_bordersDoNotSurroundHeader =
            instance.bordersDoNotSurroundHeader;
      } catch (e) {}
      try {
        final c_bordersDoNotSurroundFooter =
            instance.bordersDoNotSurroundFooter;
      } catch (e) {}
      try {
        final c_gutterAtTop = instance.gutterAtTop;
      } catch (e) {}
      try {
        final c_hideSpellingErrors = instance.hideSpellingErrors;
      } catch (e) {}
      try {
        final c_hideGrammaticalErrors = instance.hideGrammaticalErrors;
      } catch (e) {}
      try {
        final c_activeWritingStyle = instance.activeWritingStyle;
      } catch (e) {}
      try {
        final c_proofState = instance.proofState;
      } catch (e) {}
      try {
        final c_formsDesign = instance.formsDesign;
      } catch (e) {}
      try {
        final c_attachedTemplate = instance.attachedTemplate;
      } catch (e) {}
      try {
        final c_linkStyles = instance.linkStyles;
      } catch (e) {}
      try {
        final c_stylePaneFormatFilter = instance.stylePaneFormatFilter;
      } catch (e) {}
      try {
        final c_stylePaneSortMethod = instance.stylePaneSortMethod;
      } catch (e) {}
      try {
        final c_documentType = instance.documentType;
      } catch (e) {}
      try {
        final c_mailMerge = instance.mailMerge;
      } catch (e) {}
      try {
        final c_revisionView = instance.revisionView;
      } catch (e) {}
      try {
        final c_trackRevisions = instance.trackRevisions;
      } catch (e) {}
      try {
        final c_doNotTrackMoves = instance.doNotTrackMoves;
      } catch (e) {}
      try {
        final c_doNotTrackFormatting = instance.doNotTrackFormatting;
      } catch (e) {}
      try {
        final c_documentProtection = instance.documentProtection;
      } catch (e) {}
      try {
        final c_autoFormatOverride = instance.autoFormatOverride;
      } catch (e) {}
      try {
        final c_styleLockTheme = instance.styleLockTheme;
      } catch (e) {}
      try {
        final c_styleLockQFSet = instance.styleLockQFSet;
      } catch (e) {}
      try {
        final c_defaultTabStop = instance.defaultTabStop;
      } catch (e) {}
      try {
        final c_autoHyphenation = instance.autoHyphenation;
      } catch (e) {}
      try {
        final c_consecutiveHyphenLimit = instance.consecutiveHyphenLimit;
      } catch (e) {}
      try {
        final c_hyphenationZone = instance.hyphenationZone;
      } catch (e) {}
      try {
        final c_doNotHyphenateCaps = instance.doNotHyphenateCaps;
      } catch (e) {}
      try {
        final c_showEnvelope = instance.showEnvelope;
      } catch (e) {}
      try {
        final c_summaryLength = instance.summaryLength;
      } catch (e) {}
      try {
        final c_clickAndTypeStyle = instance.clickAndTypeStyle;
      } catch (e) {}
      try {
        final c_defaultTableStyle = instance.defaultTableStyle;
      } catch (e) {}
      try {
        final c_evenAndOddHeaders = instance.evenAndOddHeaders;
      } catch (e) {}
      try {
        final c_bookFoldRevPrinting = instance.bookFoldRevPrinting;
      } catch (e) {}
      try {
        final c_bookFoldPrinting = instance.bookFoldPrinting;
      } catch (e) {}
      try {
        final c_bookFoldPrintingSheets = instance.bookFoldPrintingSheets;
      } catch (e) {}
      try {
        final c_drawingGridHorizontalSpacing =
            instance.drawingGridHorizontalSpacing;
      } catch (e) {}
      try {
        final c_drawingGridVerticalSpacing =
            instance.drawingGridVerticalSpacing;
      } catch (e) {}
      try {
        final c_displayHorizontalDrawingGridEvery =
            instance.displayHorizontalDrawingGridEvery;
      } catch (e) {}
      try {
        final c_displayVerticalDrawingGridEvery =
            instance.displayVerticalDrawingGridEvery;
      } catch (e) {}
      try {
        final c_doNotUseMarginsForDrawingGridOrigin =
            instance.doNotUseMarginsForDrawingGridOrigin;
      } catch (e) {}
      try {
        final c_drawingGridHorizontalOrigin =
            instance.drawingGridHorizontalOrigin;
      } catch (e) {}
      try {
        final c_drawingGridVerticalOrigin = instance.drawingGridVerticalOrigin;
      } catch (e) {}
      try {
        final c_doNotShadeFormData = instance.doNotShadeFormData;
      } catch (e) {}
      try {
        final c_noPunctuationKerning = instance.noPunctuationKerning;
      } catch (e) {}
      try {
        final c_characterSpacingControl = instance.characterSpacingControl;
      } catch (e) {}
      try {
        final c_printTwoOnOne = instance.printTwoOnOne;
      } catch (e) {}
      try {
        final c_strictFirstAndLastChars = instance.strictFirstAndLastChars;
      } catch (e) {}
      try {
        final c_noLineBreaksAfter = instance.noLineBreaksAfter;
      } catch (e) {}
      try {
        final c_noLineBreaksBefore = instance.noLineBreaksBefore;
      } catch (e) {}
      try {
        final c_savePreviewPicture = instance.savePreviewPicture;
      } catch (e) {}
      try {
        final c_doNotValidateAgainstSchema =
            instance.doNotValidateAgainstSchema;
      } catch (e) {}
      try {
        final c_saveInvalidXml = instance.saveInvalidXml;
      } catch (e) {}
      try {
        final c_ignoreMixedContent = instance.ignoreMixedContent;
      } catch (e) {}
      try {
        final c_alwaysShowPlaceholderText = instance.alwaysShowPlaceholderText;
      } catch (e) {}
      try {
        final c_doNotDemarcateInvalidXml = instance.doNotDemarcateInvalidXml;
      } catch (e) {}
      try {
        final c_saveXmlDataOnly = instance.saveXmlDataOnly;
      } catch (e) {}
      try {
        final c_useXSLTWhenSaving = instance.useXSLTWhenSaving;
      } catch (e) {}
      try {
        final c_saveThroughXslt = instance.saveThroughXslt;
      } catch (e) {}
      try {
        final c_showXMLTags = instance.showXMLTags;
      } catch (e) {}
      try {
        final c_alwaysMergeEmptyNamespace = instance.alwaysMergeEmptyNamespace;
      } catch (e) {}
      try {
        final c_updateFields = instance.updateFields;
      } catch (e) {}
      try {
        final c_hdrShapeDefaults = instance.hdrShapeDefaults;
      } catch (e) {}
      try {
        final c_footnotePr = instance.footnotePr;
      } catch (e) {}
      try {
        final c_endnotePr = instance.endnotePr;
      } catch (e) {}
      try {
        final c_compat = instance.compat;
      } catch (e) {}
      try {
        final c_docVars = instance.docVars;
      } catch (e) {}
      try {
        final c_rsids = instance.rsids;
      } catch (e) {}
      try {
        final c_attachedSchema = instance.attachedSchema;
      } catch (e) {}
      try {
        final c_themeFontLang = instance.themeFontLang;
      } catch (e) {}
      try {
        final c_clrSchemeMapping = instance.clrSchemeMapping;
      } catch (e) {}
      try {
        final c_doNotIncludeSubdocsInStats =
            instance.doNotIncludeSubdocsInStats;
      } catch (e) {}
      try {
        final c_doNotAutoCompressPictures = instance.doNotAutoCompressPictures;
      } catch (e) {}
      try {
        final c_forceUpgrade = instance.forceUpgrade;
      } catch (e) {}
      try {
        final c_captions = instance.captions;
      } catch (e) {}
      try {
        final c_readModeInkLockDown = instance.readModeInkLockDown;
      } catch (e) {}
      try {
        final c_smartTagType = instance.smartTagType;
      } catch (e) {}
      try {
        final c_shapeDefaults = instance.shapeDefaults;
      } catch (e) {}
      try {
        final c_doNotEmbedSmartTags = instance.doNotEmbedSmartTags;
      } catch (e) {}
      try {
        final c_decimalSymbol = instance.decimalSymbol;
      } catch (e) {}
      try {
        final c_listSeparator = instance.listSeparator;
      } catch (e) {}
    });
    test('Test W_CT_Settings with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_settings(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Settings(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_writeProtection = instance.writeProtection;
      } catch (e) {}
      try {
        final c_view = instance.view;
      } catch (e) {}
      try {
        final c_zoom = instance.zoom;
      } catch (e) {}
      try {
        final c_removePersonalInformation = instance.removePersonalInformation;
      } catch (e) {}
      try {
        final c_removeDateAndTime = instance.removeDateAndTime;
      } catch (e) {}
      try {
        final c_doNotDisplayPageBoundaries =
            instance.doNotDisplayPageBoundaries;
      } catch (e) {}
      try {
        final c_displayBackgroundShape = instance.displayBackgroundShape;
      } catch (e) {}
      try {
        final c_printPostScriptOverText = instance.printPostScriptOverText;
      } catch (e) {}
      try {
        final c_printFractionalCharacterWidth =
            instance.printFractionalCharacterWidth;
      } catch (e) {}
      try {
        final c_printFormsData = instance.printFormsData;
      } catch (e) {}
      try {
        final c_embedTrueTypeFonts = instance.embedTrueTypeFonts;
      } catch (e) {}
      try {
        final c_embedSystemFonts = instance.embedSystemFonts;
      } catch (e) {}
      try {
        final c_saveSubsetFonts = instance.saveSubsetFonts;
      } catch (e) {}
      try {
        final c_saveFormsData = instance.saveFormsData;
      } catch (e) {}
      try {
        final c_mirrorMargins = instance.mirrorMargins;
      } catch (e) {}
      try {
        final c_alignBordersAndEdges = instance.alignBordersAndEdges;
      } catch (e) {}
      try {
        final c_bordersDoNotSurroundHeader =
            instance.bordersDoNotSurroundHeader;
      } catch (e) {}
      try {
        final c_bordersDoNotSurroundFooter =
            instance.bordersDoNotSurroundFooter;
      } catch (e) {}
      try {
        final c_gutterAtTop = instance.gutterAtTop;
      } catch (e) {}
      try {
        final c_hideSpellingErrors = instance.hideSpellingErrors;
      } catch (e) {}
      try {
        final c_hideGrammaticalErrors = instance.hideGrammaticalErrors;
      } catch (e) {}
      try {
        final c_activeWritingStyle = instance.activeWritingStyle;
      } catch (e) {}
      try {
        final c_proofState = instance.proofState;
      } catch (e) {}
      try {
        final c_formsDesign = instance.formsDesign;
      } catch (e) {}
      try {
        final c_attachedTemplate = instance.attachedTemplate;
      } catch (e) {}
      try {
        final c_linkStyles = instance.linkStyles;
      } catch (e) {}
      try {
        final c_stylePaneFormatFilter = instance.stylePaneFormatFilter;
      } catch (e) {}
      try {
        final c_stylePaneSortMethod = instance.stylePaneSortMethod;
      } catch (e) {}
      try {
        final c_documentType = instance.documentType;
      } catch (e) {}
      try {
        final c_mailMerge = instance.mailMerge;
      } catch (e) {}
      try {
        final c_revisionView = instance.revisionView;
      } catch (e) {}
      try {
        final c_trackRevisions = instance.trackRevisions;
      } catch (e) {}
      try {
        final c_doNotTrackMoves = instance.doNotTrackMoves;
      } catch (e) {}
      try {
        final c_doNotTrackFormatting = instance.doNotTrackFormatting;
      } catch (e) {}
      try {
        final c_documentProtection = instance.documentProtection;
      } catch (e) {}
      try {
        final c_autoFormatOverride = instance.autoFormatOverride;
      } catch (e) {}
      try {
        final c_styleLockTheme = instance.styleLockTheme;
      } catch (e) {}
      try {
        final c_styleLockQFSet = instance.styleLockQFSet;
      } catch (e) {}
      try {
        final c_defaultTabStop = instance.defaultTabStop;
      } catch (e) {}
      try {
        final c_autoHyphenation = instance.autoHyphenation;
      } catch (e) {}
      try {
        final c_consecutiveHyphenLimit = instance.consecutiveHyphenLimit;
      } catch (e) {}
      try {
        final c_hyphenationZone = instance.hyphenationZone;
      } catch (e) {}
      try {
        final c_doNotHyphenateCaps = instance.doNotHyphenateCaps;
      } catch (e) {}
      try {
        final c_showEnvelope = instance.showEnvelope;
      } catch (e) {}
      try {
        final c_summaryLength = instance.summaryLength;
      } catch (e) {}
      try {
        final c_clickAndTypeStyle = instance.clickAndTypeStyle;
      } catch (e) {}
      try {
        final c_defaultTableStyle = instance.defaultTableStyle;
      } catch (e) {}
      try {
        final c_evenAndOddHeaders = instance.evenAndOddHeaders;
      } catch (e) {}
      try {
        final c_bookFoldRevPrinting = instance.bookFoldRevPrinting;
      } catch (e) {}
      try {
        final c_bookFoldPrinting = instance.bookFoldPrinting;
      } catch (e) {}
      try {
        final c_bookFoldPrintingSheets = instance.bookFoldPrintingSheets;
      } catch (e) {}
      try {
        final c_drawingGridHorizontalSpacing =
            instance.drawingGridHorizontalSpacing;
      } catch (e) {}
      try {
        final c_drawingGridVerticalSpacing =
            instance.drawingGridVerticalSpacing;
      } catch (e) {}
      try {
        final c_displayHorizontalDrawingGridEvery =
            instance.displayHorizontalDrawingGridEvery;
      } catch (e) {}
      try {
        final c_displayVerticalDrawingGridEvery =
            instance.displayVerticalDrawingGridEvery;
      } catch (e) {}
      try {
        final c_doNotUseMarginsForDrawingGridOrigin =
            instance.doNotUseMarginsForDrawingGridOrigin;
      } catch (e) {}
      try {
        final c_drawingGridHorizontalOrigin =
            instance.drawingGridHorizontalOrigin;
      } catch (e) {}
      try {
        final c_drawingGridVerticalOrigin = instance.drawingGridVerticalOrigin;
      } catch (e) {}
      try {
        final c_doNotShadeFormData = instance.doNotShadeFormData;
      } catch (e) {}
      try {
        final c_noPunctuationKerning = instance.noPunctuationKerning;
      } catch (e) {}
      try {
        final c_characterSpacingControl = instance.characterSpacingControl;
      } catch (e) {}
      try {
        final c_printTwoOnOne = instance.printTwoOnOne;
      } catch (e) {}
      try {
        final c_strictFirstAndLastChars = instance.strictFirstAndLastChars;
      } catch (e) {}
      try {
        final c_noLineBreaksAfter = instance.noLineBreaksAfter;
      } catch (e) {}
      try {
        final c_noLineBreaksBefore = instance.noLineBreaksBefore;
      } catch (e) {}
      try {
        final c_savePreviewPicture = instance.savePreviewPicture;
      } catch (e) {}
      try {
        final c_doNotValidateAgainstSchema =
            instance.doNotValidateAgainstSchema;
      } catch (e) {}
      try {
        final c_saveInvalidXml = instance.saveInvalidXml;
      } catch (e) {}
      try {
        final c_ignoreMixedContent = instance.ignoreMixedContent;
      } catch (e) {}
      try {
        final c_alwaysShowPlaceholderText = instance.alwaysShowPlaceholderText;
      } catch (e) {}
      try {
        final c_doNotDemarcateInvalidXml = instance.doNotDemarcateInvalidXml;
      } catch (e) {}
      try {
        final c_saveXmlDataOnly = instance.saveXmlDataOnly;
      } catch (e) {}
      try {
        final c_useXSLTWhenSaving = instance.useXSLTWhenSaving;
      } catch (e) {}
      try {
        final c_saveThroughXslt = instance.saveThroughXslt;
      } catch (e) {}
      try {
        final c_showXMLTags = instance.showXMLTags;
      } catch (e) {}
      try {
        final c_alwaysMergeEmptyNamespace = instance.alwaysMergeEmptyNamespace;
      } catch (e) {}
      try {
        final c_updateFields = instance.updateFields;
      } catch (e) {}
      try {
        final c_hdrShapeDefaults = instance.hdrShapeDefaults;
      } catch (e) {}
      try {
        final c_footnotePr = instance.footnotePr;
      } catch (e) {}
      try {
        final c_endnotePr = instance.endnotePr;
      } catch (e) {}
      try {
        final c_compat = instance.compat;
      } catch (e) {}
      try {
        final c_docVars = instance.docVars;
      } catch (e) {}
      try {
        final c_rsids = instance.rsids;
      } catch (e) {}
      try {
        final c_attachedSchema = instance.attachedSchema;
      } catch (e) {}
      try {
        final c_themeFontLang = instance.themeFontLang;
      } catch (e) {}
      try {
        final c_clrSchemeMapping = instance.clrSchemeMapping;
      } catch (e) {}
      try {
        final c_doNotIncludeSubdocsInStats =
            instance.doNotIncludeSubdocsInStats;
      } catch (e) {}
      try {
        final c_doNotAutoCompressPictures = instance.doNotAutoCompressPictures;
      } catch (e) {}
      try {
        final c_forceUpgrade = instance.forceUpgrade;
      } catch (e) {}
      try {
        final c_captions = instance.captions;
      } catch (e) {}
      try {
        final c_readModeInkLockDown = instance.readModeInkLockDown;
      } catch (e) {}
      try {
        final c_smartTagType = instance.smartTagType;
      } catch (e) {}
      try {
        final c_shapeDefaults = instance.shapeDefaults;
      } catch (e) {}
      try {
        final c_doNotEmbedSmartTags = instance.doNotEmbedSmartTags;
      } catch (e) {}
      try {
        final c_decimalSymbol = instance.decimalSymbol;
      } catch (e) {}
      try {
        final c_listSeparator = instance.listSeparator;
      } catch (e) {}
    });
    test('Test W_CT_StyleSort with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_StyleSort(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_StyleSort with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_stylesort(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_StyleSort.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_StyleSort(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_StylePaneFilter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_StylePaneFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_StylePaneFilter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_stylepanefilter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_StylePaneFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_WebSettings with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_WebSettings(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_frameset = instance.frameset;
      } catch (e) {}
      try {
        final c_divs = instance.divs;
      } catch (e) {}
      try {
        final c_encoding = instance.encoding;
      } catch (e) {}
      try {
        final c_optimizeForBrowser = instance.optimizeForBrowser;
      } catch (e) {}
      try {
        final c_relyOnVML = instance.relyOnVML;
      } catch (e) {}
      try {
        final c_allowPNG = instance.allowPNG;
      } catch (e) {}
      try {
        final c_doNotRelyOnCSS = instance.doNotRelyOnCSS;
      } catch (e) {}
      try {
        final c_doNotSaveAsSingleFile = instance.doNotSaveAsSingleFile;
      } catch (e) {}
      try {
        final c_doNotOrganizeInFolder = instance.doNotOrganizeInFolder;
      } catch (e) {}
      try {
        final c_doNotUseLongFileNames = instance.doNotUseLongFileNames;
      } catch (e) {}
      try {
        final c_pixelsPerInch = instance.pixelsPerInch;
      } catch (e) {}
      try {
        final c_targetScreenSz = instance.targetScreenSz;
      } catch (e) {}
      try {
        final c_saveSmartTagsAsXml = instance.saveSmartTagsAsXml;
      } catch (e) {}
    });
    test('Test W_CT_WebSettings with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_websettings(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_WebSettings(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_frameset = instance.frameset;
      } catch (e) {}
      try {
        final c_divs = instance.divs;
      } catch (e) {}
      try {
        final c_encoding = instance.encoding;
      } catch (e) {}
      try {
        final c_optimizeForBrowser = instance.optimizeForBrowser;
      } catch (e) {}
      try {
        final c_relyOnVML = instance.relyOnVML;
      } catch (e) {}
      try {
        final c_allowPNG = instance.allowPNG;
      } catch (e) {}
      try {
        final c_doNotRelyOnCSS = instance.doNotRelyOnCSS;
      } catch (e) {}
      try {
        final c_doNotSaveAsSingleFile = instance.doNotSaveAsSingleFile;
      } catch (e) {}
      try {
        final c_doNotOrganizeInFolder = instance.doNotOrganizeInFolder;
      } catch (e) {}
      try {
        final c_doNotUseLongFileNames = instance.doNotUseLongFileNames;
      } catch (e) {}
      try {
        final c_pixelsPerInch = instance.pixelsPerInch;
      } catch (e) {}
      try {
        final c_targetScreenSz = instance.targetScreenSz;
      } catch (e) {}
      try {
        final c_saveSmartTagsAsXml = instance.saveSmartTagsAsXml;
      } catch (e) {}
    });
    test('Test W_CT_FrameScrollbar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FrameScrollbar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FrameScrollbar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_framescrollbar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_FrameScrollbar.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FrameScrollbar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_OptimizeForBrowser with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_OptimizeForBrowser(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_target = instance.target;
      } catch (e) {}
    });
    test('Test W_CT_OptimizeForBrowser with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_optimizeforbrowser(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            target: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_OptimizeForBrowser(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_target = instance.target;
      } catch (e) {}
    });
    test('Test W_CT_Frame with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Frame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_longDesc = instance.longDesc;
      } catch (e) {}
      try {
        final c_sourceFileName = instance.sourceFileName;
      } catch (e) {}
      try {
        final c_marW = instance.marW;
      } catch (e) {}
      try {
        final c_marH = instance.marH;
      } catch (e) {}
      try {
        final c_scrollbar = instance.scrollbar;
      } catch (e) {}
      try {
        final c_noResizeAllowed = instance.noResizeAllowed;
      } catch (e) {}
      try {
        final c_linkedToFile = instance.linkedToFile;
      } catch (e) {}
    });
    test('Test W_CT_Frame with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_frame(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Frame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_longDesc = instance.longDesc;
      } catch (e) {}
      try {
        final c_sourceFileName = instance.sourceFileName;
      } catch (e) {}
      try {
        final c_marW = instance.marW;
      } catch (e) {}
      try {
        final c_marH = instance.marH;
      } catch (e) {}
      try {
        final c_scrollbar = instance.scrollbar;
      } catch (e) {}
      try {
        final c_noResizeAllowed = instance.noResizeAllowed;
      } catch (e) {}
      try {
        final c_linkedToFile = instance.linkedToFile;
      } catch (e) {}
    });
    test('Test W_CT_FrameLayout with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FrameLayout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FrameLayout with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_framelayout(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_FrameLayout.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FrameLayout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FramesetSplitbar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FramesetSplitbar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_noBorder = instance.noBorder;
      } catch (e) {}
      try {
        final c_flatBorders = instance.flatBorders;
      } catch (e) {}
    });
    test('Test W_CT_FramesetSplitbar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_framesetsplitbar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FramesetSplitbar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_w = instance.w;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_noBorder = instance.noBorder;
      } catch (e) {}
      try {
        final c_flatBorders = instance.flatBorders;
      } catch (e) {}
    });
    test('Test W_CT_Frameset with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Frameset(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_framesetSplitbar = instance.framesetSplitbar;
      } catch (e) {}
      try {
        final c_frameLayout = instance.frameLayout;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_frameset = instance.frameset;
      } catch (e) {}
      try {
        final c_frame = instance.frame;
      } catch (e) {}
    });
    test('Test W_CT_Frameset with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_frameset(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Frameset(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_framesetSplitbar = instance.framesetSplitbar;
      } catch (e) {}
      try {
        final c_frameLayout = instance.frameLayout;
      } catch (e) {}
      try {
        final c_title = instance.title;
      } catch (e) {}
      try {
        final c_frameset = instance.frameset;
      } catch (e) {}
      try {
        final c_frame = instance.frame;
      } catch (e) {}
    });
    test('Test W_CT_NumPicBullet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumPicBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_numPicBulletId = instance.numPicBulletId;
      } catch (e) {}
      try {
        final c_pict = instance.pict;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
    });
    test('Test W_CT_NumPicBullet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_numpicbullet(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            numPicBulletId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumPicBullet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_numPicBulletId = instance.numPicBulletId;
      } catch (e) {}
      try {
        final c_pict = instance.pict;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
    });
    test('Test W_CT_LevelSuffix with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LevelSuffix(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_LevelSuffix with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_levelsuffix(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_LevelSuffix.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LevelSuffix(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_LevelText with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LevelText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_LevelText with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_leveltext(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LevelText(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_LvlLegacy with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LvlLegacy(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_LvlLegacy with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_lvllegacy(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LvlLegacy(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Lvl with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Lvl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ilvl = instance.ilvl;
      } catch (e) {}
      try {
        final v_tplc = instance.tplc;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_lvlRestart = instance.lvlRestart;
      } catch (e) {}
      try {
        final c_pStyle = instance.pStyle;
      } catch (e) {}
      try {
        final c_isLgl = instance.isLgl;
      } catch (e) {}
      try {
        final c_suff = instance.suff;
      } catch (e) {}
      try {
        final c_lvlText = instance.lvlText;
      } catch (e) {}
      try {
        final c_lvlPicBulletId = instance.lvlPicBulletId;
      } catch (e) {}
      try {
        final c_legacy = instance.legacy;
      } catch (e) {}
      try {
        final c_lvlJc = instance.lvlJc;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
    });
    test('Test W_CT_Lvl with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_lvl(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ilvl: 'test',
            tplc: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Lvl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ilvl = instance.ilvl;
      } catch (e) {}
      try {
        final v_tplc = instance.tplc;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_lvlRestart = instance.lvlRestart;
      } catch (e) {}
      try {
        final c_pStyle = instance.pStyle;
      } catch (e) {}
      try {
        final c_isLgl = instance.isLgl;
      } catch (e) {}
      try {
        final c_suff = instance.suff;
      } catch (e) {}
      try {
        final c_lvlText = instance.lvlText;
      } catch (e) {}
      try {
        final c_lvlPicBulletId = instance.lvlPicBulletId;
      } catch (e) {}
      try {
        final c_legacy = instance.legacy;
      } catch (e) {}
      try {
        final c_lvlJc = instance.lvlJc;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
    });
    test('Test W_CT_MultiLevelType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MultiLevelType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_MultiLevelType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_multileveltype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_MultiLevelType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_MultiLevelType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_AbstractNum with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AbstractNum(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_abstractNumId = instance.abstractNumId;
      } catch (e) {}
      try {
        final c_nsid = instance.nsid;
      } catch (e) {}
      try {
        final c_multiLevelType = instance.multiLevelType;
      } catch (e) {}
      try {
        final c_tmpl = instance.tmpl;
      } catch (e) {}
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_styleLink = instance.styleLink;
      } catch (e) {}
      try {
        final c_numStyleLink = instance.numStyleLink;
      } catch (e) {}
      try {
        final c_lvl = instance.lvl;
      } catch (e) {}
    });
    test('Test W_CT_AbstractNum with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_abstractnum(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            abstractNumId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AbstractNum(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_abstractNumId = instance.abstractNumId;
      } catch (e) {}
      try {
        final c_nsid = instance.nsid;
      } catch (e) {}
      try {
        final c_multiLevelType = instance.multiLevelType;
      } catch (e) {}
      try {
        final c_tmpl = instance.tmpl;
      } catch (e) {}
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_styleLink = instance.styleLink;
      } catch (e) {}
      try {
        final c_numStyleLink = instance.numStyleLink;
      } catch (e) {}
      try {
        final c_lvl = instance.lvl;
      } catch (e) {}
    });
    test('Test W_CT_NumLvl with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumLvl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ilvl = instance.ilvl;
      } catch (e) {}
      try {
        final c_startOverride = instance.startOverride;
      } catch (e) {}
      try {
        final c_lvl = instance.lvl;
      } catch (e) {}
    });
    test('Test W_CT_NumLvl with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_numlvl(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ilvl: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_NumLvl(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ilvl = instance.ilvl;
      } catch (e) {}
      try {
        final c_startOverride = instance.startOverride;
      } catch (e) {}
      try {
        final c_lvl = instance.lvl;
      } catch (e) {}
    });
    test('Test W_CT_Num with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Num(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_numId = instance.numId;
      } catch (e) {}
      try {
        final c_abstractNumId = instance.abstractNumId;
      } catch (e) {}
      try {
        final c_lvlOverride = instance.lvlOverride;
      } catch (e) {}
    });
    test('Test W_CT_Num with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_num(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            numId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Num(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_numId = instance.numId;
      } catch (e) {}
      try {
        final c_abstractNumId = instance.abstractNumId;
      } catch (e) {}
      try {
        final c_lvlOverride = instance.lvlOverride;
      } catch (e) {}
    });
    test('Test W_CT_Numbering with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Numbering(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_numPicBullet = instance.numPicBullet;
      } catch (e) {}
      try {
        final c_abstractNum = instance.abstractNum;
      } catch (e) {}
      try {
        final c_num_ = instance.num_;
      } catch (e) {}
      try {
        final c_numIdMacAtCleanup = instance.numIdMacAtCleanup;
      } catch (e) {}
    });
    test('Test W_CT_Numbering with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_numbering(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Numbering(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_numPicBullet = instance.numPicBullet;
      } catch (e) {}
      try {
        final c_abstractNum = instance.abstractNum;
      } catch (e) {}
      try {
        final c_num_ = instance.num_;
      } catch (e) {}
      try {
        final c_numIdMacAtCleanup = instance.numIdMacAtCleanup;
      } catch (e) {}
    });
    test('Test W_CT_TblStylePr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblStylePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_tblPr = instance.tblPr;
      } catch (e) {}
      try {
        final c_trPr = instance.trPr;
      } catch (e) {}
      try {
        final c_tcPr = instance.tcPr;
      } catch (e) {}
    });
    test('Test W_CT_TblStylePr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_tblstylepr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_TblStyleOverrideType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TblStylePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_tblPr = instance.tblPr;
      } catch (e) {}
      try {
        final c_trPr = instance.trPr;
      } catch (e) {}
      try {
        final c_tcPr = instance.tcPr;
      } catch (e) {}
    });
    test('Test W_CT_Style with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Style(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_styleId = instance.styleId;
      } catch (e) {}
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_aliases = instance.aliases;
      } catch (e) {}
      try {
        final c_basedOn = instance.basedOn;
      } catch (e) {}
      try {
        final c_next = instance.next;
      } catch (e) {}
      try {
        final c_link = instance.link;
      } catch (e) {}
      try {
        final c_autoRedefine = instance.autoRedefine;
      } catch (e) {}
      try {
        final c_hidden = instance.hidden;
      } catch (e) {}
      try {
        final c_uiPriority = instance.uiPriority;
      } catch (e) {}
      try {
        final c_semiHidden = instance.semiHidden;
      } catch (e) {}
      try {
        final c_unhideWhenUsed = instance.unhideWhenUsed;
      } catch (e) {}
      try {
        final c_qFormat = instance.qFormat;
      } catch (e) {}
      try {
        final c_locked = instance.locked;
      } catch (e) {}
      try {
        final c_personal = instance.personal;
      } catch (e) {}
      try {
        final c_personalCompose = instance.personalCompose;
      } catch (e) {}
      try {
        final c_personalReply = instance.personalReply;
      } catch (e) {}
      try {
        final c_rsid = instance.rsid;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_tblPr = instance.tblPr;
      } catch (e) {}
      try {
        final c_trPr = instance.trPr;
      } catch (e) {}
      try {
        final c_tcPr = instance.tcPr;
      } catch (e) {}
      try {
        final c_tblStylePr = instance.tblStylePr;
      } catch (e) {}
    });
    test('Test W_CT_Style with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_style(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            type: W_ST_StyleType.values.first,
            styleId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Style(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_styleId = instance.styleId;
      } catch (e) {}
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_aliases = instance.aliases;
      } catch (e) {}
      try {
        final c_basedOn = instance.basedOn;
      } catch (e) {}
      try {
        final c_next = instance.next;
      } catch (e) {}
      try {
        final c_link = instance.link;
      } catch (e) {}
      try {
        final c_autoRedefine = instance.autoRedefine;
      } catch (e) {}
      try {
        final c_hidden = instance.hidden;
      } catch (e) {}
      try {
        final c_uiPriority = instance.uiPriority;
      } catch (e) {}
      try {
        final c_semiHidden = instance.semiHidden;
      } catch (e) {}
      try {
        final c_unhideWhenUsed = instance.unhideWhenUsed;
      } catch (e) {}
      try {
        final c_qFormat = instance.qFormat;
      } catch (e) {}
      try {
        final c_locked = instance.locked;
      } catch (e) {}
      try {
        final c_personal = instance.personal;
      } catch (e) {}
      try {
        final c_personalCompose = instance.personalCompose;
      } catch (e) {}
      try {
        final c_personalReply = instance.personalReply;
      } catch (e) {}
      try {
        final c_rsid = instance.rsid;
      } catch (e) {}
      try {
        final c_pPr = instance.pPr;
      } catch (e) {}
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_tblPr = instance.tblPr;
      } catch (e) {}
      try {
        final c_trPr = instance.trPr;
      } catch (e) {}
      try {
        final c_tcPr = instance.tcPr;
      } catch (e) {}
      try {
        final c_tblStylePr = instance.tblStylePr;
      } catch (e) {}
    });
    test('Test W_CT_LsdException with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LsdException(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_uiPriority = instance.uiPriority;
      } catch (e) {}
    });
    test('Test W_CT_LsdException with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_lsdexception(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            name: 'test',
            uiPriority: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LsdException(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_uiPriority = instance.uiPriority;
      } catch (e) {}
    });
    test('Test W_CT_LatentStyles with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LatentStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_defUIPriority = instance.defUIPriority;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_lsdException = instance.lsdException;
      } catch (e) {}
    });
    test('Test W_CT_LatentStyles with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_latentstyles(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            defUIPriority: 'test',
            count: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_LatentStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_defUIPriority = instance.defUIPriority;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_lsdException = instance.lsdException;
      } catch (e) {}
    });
    test('Test W_CT_Styles with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Styles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docDefaults = instance.docDefaults;
      } catch (e) {}
      try {
        final c_latentStyles = instance.latentStyles;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
    });
    test('Test W_CT_Styles with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_styles(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Styles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docDefaults = instance.docDefaults;
      } catch (e) {}
      try {
        final c_latentStyles = instance.latentStyles;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
    });
    test('Test W_CT_Panose with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Panose(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Panose with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_panose(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Panose(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FontFamily with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FontFamily(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FontFamily with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fontfamily(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_FontFamily.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FontFamily(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Pitch with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Pitch(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_Pitch with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_pitch(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_Pitch.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Pitch(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_FontSig with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FontSig(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_usb0 = instance.usb0;
      } catch (e) {}
      try {
        final v_usb1 = instance.usb1;
      } catch (e) {}
      try {
        final v_usb2 = instance.usb2;
      } catch (e) {}
      try {
        final v_usb3 = instance.usb3;
      } catch (e) {}
      try {
        final v_csb0 = instance.csb0;
      } catch (e) {}
      try {
        final v_csb1 = instance.csb1;
      } catch (e) {}
    });
    test('Test W_CT_FontSig with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fontsig(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            usb0: 'test',
            usb1: 'test',
            usb2: 'test',
            usb3: 'test',
            csb0: 'test',
            csb1: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FontSig(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_usb0 = instance.usb0;
      } catch (e) {}
      try {
        final v_usb1 = instance.usb1;
      } catch (e) {}
      try {
        final v_usb2 = instance.usb2;
      } catch (e) {}
      try {
        final v_usb3 = instance.usb3;
      } catch (e) {}
      try {
        final v_csb0 = instance.csb0;
      } catch (e) {}
      try {
        final v_csb1 = instance.csb1;
      } catch (e) {}
    });
    test('Test W_CT_FontRel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FontRel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fontKey = instance.fontKey;
      } catch (e) {}
    });
    test('Test W_CT_FontRel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fontrel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            fontKey: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FontRel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fontKey = instance.fontKey;
      } catch (e) {}
    });
    test('Test W_CT_Font with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Font(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_altName = instance.altName;
      } catch (e) {}
      try {
        final c_panose1 = instance.panose1;
      } catch (e) {}
      try {
        final c_charset = instance.charset;
      } catch (e) {}
      try {
        final c_family = instance.family;
      } catch (e) {}
      try {
        final c_notTrueType = instance.notTrueType;
      } catch (e) {}
      try {
        final c_pitch = instance.pitch;
      } catch (e) {}
      try {
        final c_sig = instance.sig;
      } catch (e) {}
      try {
        final c_embedRegular = instance.embedRegular;
      } catch (e) {}
      try {
        final c_embedBold = instance.embedBold;
      } catch (e) {}
      try {
        final c_embedItalic = instance.embedItalic;
      } catch (e) {}
      try {
        final c_embedBoldItalic = instance.embedBoldItalic;
      } catch (e) {}
    });
    test('Test W_CT_Font with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_font(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Font(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_altName = instance.altName;
      } catch (e) {}
      try {
        final c_panose1 = instance.panose1;
      } catch (e) {}
      try {
        final c_charset = instance.charset;
      } catch (e) {}
      try {
        final c_family = instance.family;
      } catch (e) {}
      try {
        final c_notTrueType = instance.notTrueType;
      } catch (e) {}
      try {
        final c_pitch = instance.pitch;
      } catch (e) {}
      try {
        final c_sig = instance.sig;
      } catch (e) {}
      try {
        final c_embedRegular = instance.embedRegular;
      } catch (e) {}
      try {
        final c_embedBold = instance.embedBold;
      } catch (e) {}
      try {
        final c_embedItalic = instance.embedItalic;
      } catch (e) {}
      try {
        final c_embedBoldItalic = instance.embedBoldItalic;
      } catch (e) {}
    });
    test('Test W_CT_FontsList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FontsList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_font = instance.font;
      } catch (e) {}
    });
    test('Test W_CT_FontsList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_fontslist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_FontsList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_font = instance.font;
      } catch (e) {}
    });
    test('Test W_CT_DivBdr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DivBdr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
    });
    test('Test W_CT_DivBdr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_divbdr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DivBdr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_top = instance.top;
      } catch (e) {}
      try {
        final c_left = instance.left;
      } catch (e) {}
      try {
        final c_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_right = instance.right;
      } catch (e) {}
    });
    test('Test W_CT_Div with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Div(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_blockQuote = instance.blockQuote;
      } catch (e) {}
      try {
        final c_bodyDiv = instance.bodyDiv;
      } catch (e) {}
      try {
        final c_marLeft = instance.marLeft;
      } catch (e) {}
      try {
        final c_marRight = instance.marRight;
      } catch (e) {}
      try {
        final c_marTop = instance.marTop;
      } catch (e) {}
      try {
        final c_marBottom = instance.marBottom;
      } catch (e) {}
      try {
        final c_divBdr = instance.divBdr;
      } catch (e) {}
      try {
        final c_divsChild = instance.divsChild;
      } catch (e) {}
    });
    test('Test W_CT_Div with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_div(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Div(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_blockQuote = instance.blockQuote;
      } catch (e) {}
      try {
        final c_bodyDiv = instance.bodyDiv;
      } catch (e) {}
      try {
        final c_marLeft = instance.marLeft;
      } catch (e) {}
      try {
        final c_marRight = instance.marRight;
      } catch (e) {}
      try {
        final c_marTop = instance.marTop;
      } catch (e) {}
      try {
        final c_marBottom = instance.marBottom;
      } catch (e) {}
      try {
        final c_divBdr = instance.divBdr;
      } catch (e) {}
      try {
        final c_divsChild = instance.divsChild;
      } catch (e) {}
    });
    test('Test W_CT_Divs with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Divs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_div = instance.div;
      } catch (e) {}
    });
    test('Test W_CT_Divs with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_divs(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Divs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_div = instance.div;
      } catch (e) {}
    });
    test('Test W_CT_TxbxContent with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TxbxContent(node);
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
    test('Test W_CT_TxbxContent with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_txbxcontent(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_TxbxContent(node);
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
    test('Test W_CT_Body with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Body(node);
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
      try {
        final c_sectPr = instance.sectPr;
      } catch (e) {}
    });
    test('Test W_CT_Body with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_body(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Body(node);
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
      try {
        final c_sectPr = instance.sectPr;
      } catch (e) {}
    });
    test('Test W_CT_ShapeDefaults with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ShapeDefaults(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_ShapeDefaults with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_shapedefaults(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_ShapeDefaults(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_Comments with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Comments(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_comment = instance.comment;
      } catch (e) {}
    });
    test('Test W_CT_Comments with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_comments(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Comments(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_comment = instance.comment;
      } catch (e) {}
    });
    test('Test W_CT_Footnotes with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Footnotes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_footnote = instance.footnote;
      } catch (e) {}
    });
    test('Test W_CT_Footnotes with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_footnotes(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Footnotes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_footnote = instance.footnote;
      } catch (e) {}
    });
    test('Test W_CT_Endnotes with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Endnotes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_endnote = instance.endnote;
      } catch (e) {}
    });
    test('Test W_CT_Endnotes with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_endnotes(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Endnotes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_endnote = instance.endnote;
      } catch (e) {}
    });
    test('Test W_CT_SmartTagType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SmartTagType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_namespaceuri = instance.namespaceuri;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_url = instance.url;
      } catch (e) {}
    });
    test('Test W_CT_SmartTagType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_smarttagtype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            namespaceuri: 'test',
            name: 'test',
            url: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_SmartTagType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_namespaceuri = instance.namespaceuri;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_url = instance.url;
      } catch (e) {}
    });
    test('Test W_CT_DocPartBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocPartBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docpartbehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_DocPartBehavior.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocPartBehaviors with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartBehaviors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_behavior = instance.behavior;
      } catch (e) {}
    });
    test('Test W_CT_DocPartBehaviors with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docpartbehaviors(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartBehaviors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_behavior = instance.behavior;
      } catch (e) {}
    });
    test('Test W_CT_DocPartType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocPartType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docparttype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_DocPartType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocPartTypes with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartTypes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_DocPartTypes with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docparttypes(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartTypes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_type = instance.type;
      } catch (e) {}
    });
    test('Test W_CT_DocPartGallery with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartGallery(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocPartGallery with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docpartgallery(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: W_ST_DocPartGallery.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartGallery(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocPartCategory with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartCategory(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_gallery = instance.gallery;
      } catch (e) {}
    });
    test('Test W_CT_DocPartCategory with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docpartcategory(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartCategory(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_gallery = instance.gallery;
      } catch (e) {}
    });
    test('Test W_CT_DocPartName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocPartName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docpartname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test W_CT_DocPartPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_category = instance.category;
      } catch (e) {}
      try {
        final c_types = instance.types;
      } catch (e) {}
      try {
        final c_behaviors = instance.behaviors;
      } catch (e) {}
      try {
        final c_description = instance.description;
      } catch (e) {}
      try {
        final c_guid = instance.guid;
      } catch (e) {}
    });
    test('Test W_CT_DocPartPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docpartpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPartPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_category = instance.category;
      } catch (e) {}
      try {
        final c_types = instance.types;
      } catch (e) {}
      try {
        final c_behaviors = instance.behaviors;
      } catch (e) {}
      try {
        final c_description = instance.description;
      } catch (e) {}
      try {
        final c_guid = instance.guid;
      } catch (e) {}
    });
    test('Test W_CT_DocPart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docPartPr = instance.docPartPr;
      } catch (e) {}
      try {
        final c_docPartBody = instance.docPartBody;
      } catch (e) {}
    });
    test('Test W_CT_DocPart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docpart(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocPart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docPartPr = instance.docPartPr;
      } catch (e) {}
      try {
        final c_docPartBody = instance.docPartBody;
      } catch (e) {}
    });
    test('Test W_CT_DocParts with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocParts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docPart = instance.docPart;
      } catch (e) {}
    });
    test('Test W_CT_DocParts with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_docparts(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocParts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_docPart = instance.docPart;
      } catch (e) {}
    });
    test('Test W_CT_Caption with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Caption(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_pos = instance.pos;
      } catch (e) {}
      try {
        final v_heading = instance.heading;
      } catch (e) {}
      try {
        final v_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final v_sep = instance.sep;
      } catch (e) {}
    });
    test('Test W_CT_Caption with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_caption(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            name: 'test',
            pos: W_ST_CaptionPos.values.first,
            heading: 'test',
            numFmt: W_ST_NumberFormat.values.first,
            sep: W_ST_ChapterSep.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Caption(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_pos = instance.pos;
      } catch (e) {}
      try {
        final v_heading = instance.heading;
      } catch (e) {}
      try {
        final v_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final v_sep = instance.sep;
      } catch (e) {}
    });
    test('Test W_CT_AutoCaption with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AutoCaption(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
    });
    test('Test W_CT_AutoCaption with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_autocaption(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            name: 'test',
            caption: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AutoCaption(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
    });
    test('Test W_CT_AutoCaptions with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AutoCaptions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_autoCaption = instance.autoCaption;
      } catch (e) {}
    });
    test('Test W_CT_AutoCaptions with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_autocaptions(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_AutoCaptions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_autoCaption = instance.autoCaption;
      } catch (e) {}
    });
    test('Test W_CT_Captions with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Captions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_caption = instance.caption;
      } catch (e) {}
      try {
        final c_autoCaptions = instance.autoCaptions;
      } catch (e) {}
    });
    test('Test W_CT_Captions with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_captions(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Captions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_caption = instance.caption;
      } catch (e) {}
      try {
        final c_autoCaptions = instance.autoCaptions;
      } catch (e) {}
    });
    test('Test W_CT_DocumentBase with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocumentBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_background = instance.background;
      } catch (e) {}
    });
    test('Test W_CT_DocumentBase with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_documentbase(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_DocumentBase(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_background = instance.background;
      } catch (e) {}
    });
    test('Test W_CT_Document with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/markup-compatibility/2006',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Document(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_conformance = instance.conformance;
      } catch (e) {}
      try {
        final v_mc_Ignorable = instance.mc_Ignorable;
      } catch (e) {}
    });
    test('Test W_CT_Document with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/markup-compatibility/2006',
            'ns1',
          );
          builder.w_ct_document(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            conformance: ST_ConformanceClass.values.first,
            mc_Ignorable: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_Document(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_conformance = instance.conformance;
      } catch (e) {}
      try {
        final v_mc_Ignorable = instance.mc_Ignorable;
      } catch (e) {}
    });
    test('Test W_CT_GlossaryDocument with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_GlossaryDocument(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test W_CT_GlossaryDocument with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            'ns0',
          );
          builder.w_ct_glossarydocument(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = W_CT_GlossaryDocument(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
  });
}
