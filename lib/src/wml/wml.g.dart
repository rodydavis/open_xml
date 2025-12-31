// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:xml/xml.dart' as _i1;
import 'package:xml/xml.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';

extension type W_CT_Empty(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_OnOff(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_LongHexNumber(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_Charset(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get characterSet {
    return node.getAttribute(
      'characterSet',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_DecimalNumber(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_UnsignedDecimalNumber(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_DecimalNumberOrPrecent(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_TwipsMeasure(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_SignedTwipsMeasure(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_PixelsMeasure(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_HpsMeasure(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_SignedHpsMeasure(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_MacroName(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_String(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_TextScale(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_Highlight(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_HighlightColor get val {
    return W_ST_HighlightColor.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Color(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_ThemeColor? get themeColor {
    return node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ThemeColor.fromValue(
            node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get themeTint {
    return node.getAttribute(
      'themeTint',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get themeShade {
    return node.getAttribute(
      'themeShade',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Lang(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_Guid(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Underline(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Underline? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Underline.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_ThemeColor? get themeColor {
    return node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ThemeColor.fromValue(
            node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get themeTint {
    return node.getAttribute(
      'themeTint',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get themeShade {
    return node.getAttribute(
      'themeShade',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_TextEffect(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_TextEffect get val {
    return W_ST_TextEffect.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Border(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Border get val {
    return W_ST_Border.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }

  W_ST_ThemeColor? get themeColor {
    return node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ThemeColor.fromValue(
            node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get themeTint {
    return node.getAttribute(
      'themeTint',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get themeShade {
    return node.getAttribute(
      'themeShade',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get sz {
    return node.getAttribute(
      'sz',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get space {
    return node.getAttribute(
      'space',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Shd(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Shd get val {
    return W_ST_Shd.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }

  W_ST_ThemeColor? get themeColor {
    return node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ThemeColor.fromValue(
            node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get themeTint {
    return node.getAttribute(
      'themeTint',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get themeShade {
    return node.getAttribute(
      'themeShade',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_ST_ThemeColor? get themeFill {
    return node.getAttribute(
              'themeFill',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ThemeColor.fromValue(
            node.getAttribute(
              'themeFill',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get themeFillTint {
    return node.getAttribute(
      'themeFillTint',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get themeFillShade {
    return node.getAttribute(
      'themeFillShade',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_VerticalAlignRun(_i1.XmlElement node)
    implements _i1.XmlElement {
  ST_VerticalAlignRun get val {
    return ST_VerticalAlignRun.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_FitText(_i1.XmlElement node) implements _i1.XmlElement {
  String? get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Em(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Em get val {
    return W_ST_Em.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Language(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get eastAsia {
    return node.getAttribute(
      'eastAsia',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get bidi {
    return node.getAttribute(
      'bidi',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_EastAsianLayout(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_ST_CombineBrackets? get combineBrackets {
    return node.getAttribute(
              'combineBrackets',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_CombineBrackets.fromValue(
            node.getAttribute(
              'combineBrackets',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_FramePr(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_DropCap? get dropCap {
    return node.getAttribute(
              'dropCap',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_DropCap.fromValue(
            node.getAttribute(
              'dropCap',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get lines {
    return node.getAttribute(
      'lines',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_ST_Wrap? get wrap {
    return node.getAttribute(
              'wrap',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Wrap.fromValue(
            node.getAttribute(
              'wrap',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_HAnchor? get hAnchor {
    return node.getAttribute(
              'hAnchor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_HAnchor.fromValue(
            node.getAttribute(
              'hAnchor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_VAnchor? get vAnchor {
    return node.getAttribute(
              'vAnchor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_VAnchor.fromValue(
            node.getAttribute(
              'vAnchor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  ST_XAlign? get xAlign {
    return node.getAttribute(
              'xAlign',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? ST_XAlign.fromValue(
            node.getAttribute(
              'xAlign',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  ST_YAlign? get yAlign {
    return node.getAttribute(
              'yAlign',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? ST_YAlign.fromValue(
            node.getAttribute(
              'yAlign',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_HeightRule? get hRule {
    return node.getAttribute(
              'hRule',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_HeightRule.fromValue(
            node.getAttribute(
              'hRule',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_TabStop(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_TabJc get val {
    return W_ST_TabJc.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }

  W_ST_TabTlc? get leader {
    return node.getAttribute(
              'leader',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_TabTlc.fromValue(
            node.getAttribute(
              'leader',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_Spacing(_i1.XmlElement node) implements _i1.XmlElement {
  String? get beforeLines {
    return node.getAttribute(
      'beforeLines',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get afterLines {
    return node.getAttribute(
      'afterLines',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_ST_LineSpacingRule? get lineRule {
    return node.getAttribute(
              'lineRule',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_LineSpacingRule.fromValue(
            node.getAttribute(
              'lineRule',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_Ind(_i1.XmlElement node) implements _i1.XmlElement {
  String? get startChars {
    return node.getAttribute(
      'startChars',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get endChars {
    return node.getAttribute(
      'endChars',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get leftChars {
    return node.getAttribute(
      'leftChars',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rightChars {
    return node.getAttribute(
      'rightChars',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get hangingChars {
    return node.getAttribute(
      'hangingChars',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get firstLineChars {
    return node.getAttribute(
      'firstLineChars',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Jc(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Jc get val {
    return W_ST_Jc.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_JcTable(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_JcTable get val {
    return W_ST_JcTable.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_View(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_View get val {
    return W_ST_View.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Zoom(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Zoom? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Zoom.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_WritingStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get vendorID {
    return node.getAttribute(
      'vendorID',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get dllVersion {
    return node.getAttribute(
      'dllVersion',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get appName {
    return node.getAttribute(
      'appName',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_Proof(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Proof? get spelling {
    return node.getAttribute(
              'spelling',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Proof.fromValue(
            node.getAttribute(
              'spelling',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_Proof? get grammar {
    return node.getAttribute(
              'grammar',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Proof.fromValue(
            node.getAttribute(
              'grammar',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_DocType(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_DocProtect(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_DocProtect? get edit {
    return node.getAttribute(
              'edit',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_DocProtect.fromValue(
            node.getAttribute(
              'edit',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_MailMergeDocType(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_MailMergeDocType get val {
    return W_ST_MailMergeDocType.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_MailMergeDataType(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_MailMergeDest(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_MailMergeDest get val {
    return W_ST_MailMergeDest.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_MailMergeOdsoFMDFieldType(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_MailMergeOdsoFMDFieldType get val {
    return W_ST_MailMergeOdsoFMDFieldType.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_TrackChangesView(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_Kinsoku(_i1.XmlElement node) implements _i1.XmlElement {
  String get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_TextDirection(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_TextDirection get val {
    return W_ST_TextDirection.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_TextAlignment(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_TextAlignment get val {
    return W_ST_TextAlignment.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Markup(_i1.XmlElement node) implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_TrackChange(_i1.XmlElement node) implements _i1.XmlElement {
  String get author {
    return node.getAttribute(
      'author',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String? get date {
    return node.getAttribute(
      'date',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_CellMergeTrackChange(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_AnnotationVMerge? get vMerge {
    return node.getAttribute(
              'vMerge',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_AnnotationVMerge.fromValue(
            node.getAttribute(
              'vMerge',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_AnnotationVMerge? get vMergeOrig {
    return node.getAttribute(
              'vMergeOrig',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_AnnotationVMerge.fromValue(
            node.getAttribute(
              'vMergeOrig',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_TrackChangeRange(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_DisplacedByCustomXml? get displacedByCustomXml {
    return node.getAttribute(
              'displacedByCustomXml',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_DisplacedByCustomXml.fromValue(
            node.getAttribute(
              'displacedByCustomXml',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_MarkupRange(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_DisplacedByCustomXml? get displacedByCustomXml {
    return node.getAttribute(
              'displacedByCustomXml',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_DisplacedByCustomXml.fromValue(
            node.getAttribute(
              'displacedByCustomXml',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_BookmarkRange(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get colFirst {
    return node.getAttribute(
      'colFirst',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get colLast {
    return node.getAttribute(
      'colLast',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Bookmark(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_MoveBookmark(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get author {
    return node.getAttribute(
      'author',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get date {
    return node.getAttribute(
      'date',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_Comment(_i1.XmlElement node) implements _i1.XmlElement {
  String? get initials {
    return node.getAttribute(
      'initials',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_TrackChangeNumbering(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get original {
    return node.getAttribute(
      'original',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_TblPrExChange(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_TcPrChange(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_TrPrChange(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_TblGridChange(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_TblPrChange(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_SectPrChange(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_PPrChange(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_RPrChange(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_ParaRPrChange(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_RunTrackChange(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_NumPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_DecimalNumber? get ilvl {
    final e = node.getElement(
      'ilvl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_DecimalNumber? get numId {
    final e = node.getElement(
      'numId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_TrackChangeNumbering? get numberingChange {
    final e = node.getElement(
      'numberingChange',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChangeNumbering(e) : null;
  }

  W_CT_TrackChange? get ins {
    final e = node.getElement(
      'ins',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }
}
extension type W_CT_PBdr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_Border? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get between {
    final e = node.getElement(
      'between',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get bar {
    final e = node.getElement(
      'bar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }
}
extension type W_CT_Tabs(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_TabStop> get tab {
    return node
        .findElements(
          'tab',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TabStop.new);
  }
}
extension type W_CT_TextboxTightWrap(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_TextboxTightWrap get val {
    return W_ST_TextboxTightWrap.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_PPr(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_PPrBase(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_String? get pStyle {
    final e = node.getElement(
      'pStyle',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_OnOff? get keepNext {
    final e = node.getElement(
      'keepNext',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get keepLines {
    final e = node.getElement(
      'keepLines',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get pageBreakBefore {
    final e = node.getElement(
      'pageBreakBefore',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_FramePr? get framePr {
    final e = node.getElement(
      'framePr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FramePr(e) : null;
  }

  W_CT_OnOff? get widowControl {
    final e = node.getElement(
      'widowControl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_NumPr? get numPr {
    final e = node.getElement(
      'numPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_NumPr(e) : null;
  }

  W_CT_OnOff? get suppressLineNumbers {
    final e = node.getElement(
      'suppressLineNumbers',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_PBdr? get pBdr {
    final e = node.getElement(
      'pBdr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PBdr(e) : null;
  }

  W_CT_Shd? get shd {
    final e = node.getElement(
      'shd',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Shd(e) : null;
  }

  W_CT_Tabs? get tabs {
    final e = node.getElement(
      'tabs',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Tabs(e) : null;
  }

  W_CT_OnOff? get suppressAutoHyphens {
    final e = node.getElement(
      'suppressAutoHyphens',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get kinsoku {
    final e = node.getElement(
      'kinsoku',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get wordWrap {
    final e = node.getElement(
      'wordWrap',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get overflowPunct {
    final e = node.getElement(
      'overflowPunct',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get topLinePunct {
    final e = node.getElement(
      'topLinePunct',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get autoSpaceDE {
    final e = node.getElement(
      'autoSpaceDE',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get autoSpaceDN {
    final e = node.getElement(
      'autoSpaceDN',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get bidi {
    final e = node.getElement(
      'bidi',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get adjustRightInd {
    final e = node.getElement(
      'adjustRightInd',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get snapToGrid {
    final e = node.getElement(
      'snapToGrid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_Spacing? get spacing {
    final e = node.getElement(
      'spacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Spacing(e) : null;
  }

  W_CT_Ind? get ind {
    final e = node.getElement(
      'ind',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Ind(e) : null;
  }

  W_CT_OnOff? get contextualSpacing {
    final e = node.getElement(
      'contextualSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get mirrorIndents {
    final e = node.getElement(
      'mirrorIndents',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get suppressOverlap {
    final e = node.getElement(
      'suppressOverlap',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_Jc? get jc {
    final e = node.getElement(
      'jc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Jc(e) : null;
  }

  W_CT_TextDirection? get textDirection {
    final e = node.getElement(
      'textDirection',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TextDirection(e) : null;
  }

  W_CT_TextAlignment? get textAlignment {
    final e = node.getElement(
      'textAlignment',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TextAlignment(e) : null;
  }

  W_CT_TextboxTightWrap? get textboxTightWrap {
    final e = node.getElement(
      'textboxTightWrap',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TextboxTightWrap(e) : null;
  }

  W_CT_DecimalNumber? get outlineLvl {
    final e = node.getElement(
      'outlineLvl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_DecimalNumber? get divId {
    final e = node.getElement(
      'divId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_Cnf? get cnfStyle {
    final e = node.getElement(
      'cnfStyle',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Cnf(e) : null;
  }
}
extension type W_CT_PPrGeneral(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_Control(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get shapeid {
    return node.getAttribute(
      'shapeid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Background(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_ThemeColor? get themeColor {
    return node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ThemeColor.fromValue(
            node.getAttribute(
              'themeColor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get themeTint {
    return node.getAttribute(
      'themeTint',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get themeShade {
    return node.getAttribute(
      'themeShade',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_CT_Drawing? get drawing {
    final e = node.getElement(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Drawing(e) : null;
  }
}
extension type W_CT_Rel(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_Object(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_Drawing? get drawing {
    final e = node.getElement(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Drawing(e) : null;
  }

  W_CT_Control? get control {
    final e = node.getElement(
      'control',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Control(e) : null;
  }

  W_CT_ObjectLink? get objectLink {
    final e = node.getElement(
      'objectLink',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_ObjectLink(e) : null;
  }

  W_CT_ObjectEmbed? get objectEmbed {
    final e = node.getElement(
      'objectEmbed',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_ObjectEmbed(e) : null;
  }

  W_CT_Rel? get movie {
    final e = node.getElement(
      'movie',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }
}
extension type W_CT_Picture(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_Rel? get movie {
    final e = node.getElement(
      'movie',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }

  W_CT_Control? get control {
    final e = node.getElement(
      'control',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Control(e) : null;
  }
}
extension type W_CT_ObjectEmbed(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_ObjectDrawAspect? get drawAspect {
    return node.getAttribute(
              'drawAspect',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ObjectDrawAspect.fromValue(
            node.getAttribute(
              'drawAspect',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get progId {
    return node.getAttribute(
      'progId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get shapeId {
    return node.getAttribute(
      'shapeId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get fieldCodes {
    return node.getAttribute(
      'fieldCodes',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_ObjectLink(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_ObjectUpdateMode get updateMode {
    return W_ST_ObjectUpdateMode.fromValue(
      node.getAttribute(
        'updateMode',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Drawing(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_SimpleField(_i1.XmlElement node) implements _i1.XmlElement {
  String get instr {
    return node.getAttribute(
      'instr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_Text? get fldData {
    final e = node.getElement(
      'fldData',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Text(e) : null;
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_DirContentRun> get dir {
    return node
        .findElements(
          'dir',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DirContentRun.new);
  }

  Iterable<W_CT_BdoContentRun> get bdo {
    return node
        .findElements(
          'bdo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_BdoContentRun.new);
  }

  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_Rel> get subDoc {
    return node
        .findElements(
          'subDoc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_FFTextType(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_FFTextType get val {
    return W_ST_FFTextType.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_FFName(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_FldChar(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_FldCharType get fldCharType {
    return W_ST_FldCharType.fromValue(
      node.getAttribute(
        'fldCharType',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }

  W_CT_Text? get fldData {
    final e = node.getElement(
      'fldData',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Text(e) : null;
  }

  W_CT_FFData? get ffData {
    final e = node.getElement(
      'ffData',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FFData(e) : null;
  }

  W_CT_TrackChangeNumbering? get numberingChange {
    final e = node.getElement(
      'numberingChange',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChangeNumbering(e) : null;
  }
}
extension type W_CT_Hyperlink(_i1.XmlElement node) implements _i1.XmlElement {
  String? get tgtFrame {
    return node.getAttribute(
      'tgtFrame',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get tooltip {
    return node.getAttribute(
      'tooltip',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get docLocation {
    return node.getAttribute(
      'docLocation',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get anchor {
    return node.getAttribute(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_DirContentRun> get dir {
    return node
        .findElements(
          'dir',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DirContentRun.new);
  }

  Iterable<W_CT_BdoContentRun> get bdo {
    return node
        .findElements(
          'bdo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_BdoContentRun.new);
  }

  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_Rel> get subDoc {
    return node
        .findElements(
          'subDoc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_FFData(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_FFName> get name {
    return node
        .findElements(
          'name',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FFName.new);
  }

  Iterable<W_CT_DecimalNumber> get label {
    return node
        .findElements(
          'label',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DecimalNumber.new);
  }

  Iterable<W_CT_UnsignedDecimalNumber> get tabIndex {
    return node
        .findElements(
          'tabIndex',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_UnsignedDecimalNumber.new);
  }

  Iterable<W_CT_OnOff> get enabled {
    return node
        .findElements(
          'enabled',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get calcOnExit {
    return node
        .findElements(
          'calcOnExit',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_MacroName> get entryMacro {
    return node
        .findElements(
          'entryMacro',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MacroName.new);
  }

  Iterable<W_CT_MacroName> get exitMacro {
    return node
        .findElements(
          'exitMacro',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MacroName.new);
  }

  Iterable<W_CT_FFHelpText> get helpText {
    return node
        .findElements(
          'helpText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FFHelpText.new);
  }

  Iterable<W_CT_FFStatusText> get statusText {
    return node
        .findElements(
          'statusText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FFStatusText.new);
  }

  Iterable<W_CT_FFCheckBox> get checkBox {
    return node
        .findElements(
          'checkBox',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FFCheckBox.new);
  }

  Iterable<W_CT_FFDDList> get ddList {
    return node
        .findElements(
          'ddList',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FFDDList.new);
  }

  Iterable<W_CT_FFTextInput> get textInput {
    return node
        .findElements(
          'textInput',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FFTextInput.new);
  }
}
extension type W_CT_FFHelpText(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_InfoTextType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_InfoTextType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_FFStatusText(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_InfoTextType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_InfoTextType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_FFCheckBox(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_HpsMeasure? get size {
    final e = node.getElement(
      'size',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_HpsMeasure(e) : null;
  }

  W_CT_OnOff? get sizeAuto {
    final e = node.getElement(
      'sizeAuto',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get default_ {
    final e = node.getElement(
      'default',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get checked {
    final e = node.getElement(
      'checked',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }
}
extension type W_CT_FFDDList(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_DecimalNumber? get result {
    final e = node.getElement(
      'result',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_DecimalNumber? get default_ {
    final e = node.getElement(
      'default',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  Iterable<W_CT_String> get listEntry {
    return node
        .findElements(
          'listEntry',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_String.new);
  }
}
extension type W_CT_FFTextInput(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_FFTextType? get type {
    final e = node.getElement(
      'type',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FFTextType(e) : null;
  }

  W_CT_String? get default_ {
    final e = node.getElement(
      'default',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_DecimalNumber? get maxLength {
    final e = node.getElement(
      'maxLength',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_String? get format {
    final e = node.getElement(
      'format',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }
}
extension type W_CT_SectType(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_SectionMark? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_SectionMark.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_PaperSource(_i1.XmlElement node) implements _i1.XmlElement {
  String? get first {
    return node.getAttribute(
      'first',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get other {
    return node.getAttribute(
      'other',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_PageSz(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_PageOrientation? get orient {
    return node.getAttribute(
              'orient',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_PageOrientation.fromValue(
            node.getAttribute(
              'orient',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get code {
    return node.getAttribute(
      'code',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_PageMar(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_PageBorders(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_PageBorderZOrder? get zOrder {
    return node.getAttribute(
              'zOrder',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_PageBorderZOrder.fromValue(
            node.getAttribute(
              'zOrder',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_PageBorderDisplay? get display {
    return node.getAttribute(
              'display',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_PageBorderDisplay.fromValue(
            node.getAttribute(
              'display',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_PageBorderOffset? get offsetFrom {
    return node.getAttribute(
              'offsetFrom',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_PageBorderOffset.fromValue(
            node.getAttribute(
              'offsetFrom',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_CT_TopPageBorder? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TopPageBorder(e) : null;
  }

  W_CT_PageBorder? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageBorder(e) : null;
  }

  W_CT_BottomPageBorder? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_BottomPageBorder(e) : null;
  }

  W_CT_PageBorder? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageBorder(e) : null;
  }
}
extension type W_CT_PageBorder(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_BottomPageBorder(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_TopPageBorder(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_LineNumber(_i1.XmlElement node) implements _i1.XmlElement {
  String? get countBy {
    return node.getAttribute(
      'countBy',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get start {
    return node.getAttribute(
      'start',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_ST_LineNumberRestart? get restart {
    return node.getAttribute(
              'restart',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_LineNumberRestart.fromValue(
            node.getAttribute(
              'restart',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_PageNumber(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_NumberFormat? get fmt {
    return node.getAttribute(
              'fmt',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_NumberFormat.fromValue(
            node.getAttribute(
              'fmt',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get start {
    return node.getAttribute(
      'start',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get chapStyle {
    return node.getAttribute(
      'chapStyle',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_ST_ChapterSep? get chapSep {
    return node.getAttribute(
              'chapSep',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ChapterSep.fromValue(
            node.getAttribute(
              'chapSep',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_Column(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_Columns(_i1.XmlElement node) implements _i1.XmlElement {
  String? get num_ {
    return node.getAttribute(
      'num',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  Iterable<W_CT_Column> get col {
    return node
        .findElements(
          'col',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Column.new);
  }
}
extension type W_CT_VerticalJc(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_VerticalJc get val {
    return W_ST_VerticalJc.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_DocGrid(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_DocGrid? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_DocGrid.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get linePitch {
    return node.getAttribute(
      'linePitch',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get charSpace {
    return node.getAttribute(
      'charSpace',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_HdrFtrRef(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_HdrFtr get type {
    return W_ST_HdrFtr.fromValue(
      node.getAttribute(
        'type',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_HdrFtr(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_CustomXmlBlock> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlBlock.new);
  }

  Iterable<W_CT_SdtBlock> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtBlock.new);
  }

  Iterable<W_CT_P> get p {
    return node
        .findElements(
          'p',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_P.new);
  }

  Iterable<W_CT_Tbl> get tbl {
    return node
        .findElements(
          'tbl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tbl.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_AltChunk> get altChunk {
    return node
        .findElements(
          'altChunk',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_AltChunk.new);
  }
}
extension type W_CT_SectPrBase(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_FtnProps? get footnotePr {
    final e = node.getElement(
      'footnotePr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FtnProps(e) : null;
  }

  W_CT_EdnProps? get endnotePr {
    final e = node.getElement(
      'endnotePr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_EdnProps(e) : null;
  }

  W_CT_SectType? get type {
    final e = node.getElement(
      'type',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SectType(e) : null;
  }

  W_CT_PageSz? get pgSz {
    final e = node.getElement(
      'pgSz',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageSz(e) : null;
  }

  W_CT_PageMar? get pgMar {
    final e = node.getElement(
      'pgMar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageMar(e) : null;
  }

  W_CT_PaperSource? get paperSrc {
    final e = node.getElement(
      'paperSrc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PaperSource(e) : null;
  }

  W_CT_PageBorders? get pgBorders {
    final e = node.getElement(
      'pgBorders',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageBorders(e) : null;
  }

  W_CT_LineNumber? get lnNumType {
    final e = node.getElement(
      'lnNumType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LineNumber(e) : null;
  }

  W_CT_PageNumber? get pgNumType {
    final e = node.getElement(
      'pgNumType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageNumber(e) : null;
  }

  W_CT_Columns? get cols {
    final e = node.getElement(
      'cols',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Columns(e) : null;
  }

  W_CT_OnOff? get formProt {
    final e = node.getElement(
      'formProt',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_VerticalJc? get vAlign {
    final e = node.getElement(
      'vAlign',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_VerticalJc(e) : null;
  }

  W_CT_OnOff? get noEndnote {
    final e = node.getElement(
      'noEndnote',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get titlePg {
    final e = node.getElement(
      'titlePg',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_TextDirection? get textDirection {
    final e = node.getElement(
      'textDirection',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TextDirection(e) : null;
  }

  W_CT_OnOff? get bidi {
    final e = node.getElement(
      'bidi',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get rtlGutter {
    final e = node.getElement(
      'rtlGutter',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DocGrid? get docGrid {
    final e = node.getElement(
      'docGrid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocGrid(e) : null;
  }

  W_CT_Rel? get printerSettings {
    final e = node.getElement(
      'printerSettings',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }
}
extension type W_CT_SectPr(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_HdrFtrRef> get headerReference {
    return node
        .findElements(
          'headerReference',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HdrFtrRef.new);
  }

  Iterable<W_CT_HdrFtrRef> get footerReference {
    return node
        .findElements(
          'footerReference',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HdrFtrRef.new);
  }

  W_CT_FtnProps? get footnotePr {
    final e = node.getElement(
      'footnotePr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FtnProps(e) : null;
  }

  W_CT_EdnProps? get endnotePr {
    final e = node.getElement(
      'endnotePr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_EdnProps(e) : null;
  }

  W_CT_SectType? get type {
    final e = node.getElement(
      'type',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SectType(e) : null;
  }

  W_CT_PageSz? get pgSz {
    final e = node.getElement(
      'pgSz',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageSz(e) : null;
  }

  W_CT_PageMar? get pgMar {
    final e = node.getElement(
      'pgMar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageMar(e) : null;
  }

  W_CT_PaperSource? get paperSrc {
    final e = node.getElement(
      'paperSrc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PaperSource(e) : null;
  }

  W_CT_PageBorders? get pgBorders {
    final e = node.getElement(
      'pgBorders',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageBorders(e) : null;
  }

  W_CT_LineNumber? get lnNumType {
    final e = node.getElement(
      'lnNumType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LineNumber(e) : null;
  }

  W_CT_PageNumber? get pgNumType {
    final e = node.getElement(
      'pgNumType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PageNumber(e) : null;
  }

  W_CT_Columns? get cols {
    final e = node.getElement(
      'cols',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Columns(e) : null;
  }

  W_CT_OnOff? get formProt {
    final e = node.getElement(
      'formProt',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_VerticalJc? get vAlign {
    final e = node.getElement(
      'vAlign',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_VerticalJc(e) : null;
  }

  W_CT_OnOff? get noEndnote {
    final e = node.getElement(
      'noEndnote',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get titlePg {
    final e = node.getElement(
      'titlePg',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_TextDirection? get textDirection {
    final e = node.getElement(
      'textDirection',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TextDirection(e) : null;
  }

  W_CT_OnOff? get bidi {
    final e = node.getElement(
      'bidi',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get rtlGutter {
    final e = node.getElement(
      'rtlGutter',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DocGrid? get docGrid {
    final e = node.getElement(
      'docGrid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocGrid(e) : null;
  }

  W_CT_Rel? get printerSettings {
    final e = node.getElement(
      'printerSettings',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }

  W_CT_SectPrChange? get sectPrChange {
    final e = node.getElement(
      'sectPrChange',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SectPrChange(e) : null;
  }
}
extension type W_CT_Br(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_BrType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_BrType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_BrClear? get clear {
    return node.getAttribute(
              'clear',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_BrClear.fromValue(
            node.getAttribute(
              'clear',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_PTab(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_PTabAlignment get alignment {
    return W_ST_PTabAlignment.fromValue(
      node.getAttribute(
        'alignment',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }

  W_ST_PTabRelativeTo get relativeTo {
    return W_ST_PTabRelativeTo.fromValue(
      node.getAttribute(
        'relativeTo',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }

  W_ST_PTabLeader get leader {
    return W_ST_PTabLeader.fromValue(
      node.getAttribute(
        'leader',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Sym(_i1.XmlElement node) implements _i1.XmlElement {
  String? get font {
    return node.getAttribute(
      'font',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get char {
    return node.getAttribute(
      'char',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_ProofErr(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_ProofErr get type {
    return W_ST_ProofErr.fromValue(
      node.getAttribute(
        'type',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Perm(_i1.XmlElement node) implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_ST_DisplacedByCustomXml? get displacedByCustomXml {
    return node.getAttribute(
              'displacedByCustomXml',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_DisplacedByCustomXml.fromValue(
            node.getAttribute(
              'displacedByCustomXml',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_PermStart(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_EdGrp? get edGrp {
    return node.getAttribute(
              'edGrp',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_EdGrp.fromValue(
            node.getAttribute(
              'edGrp',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get ed {
    return node.getAttribute(
      'ed',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get colFirst {
    return node.getAttribute(
      'colFirst',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get colLast {
    return node.getAttribute(
      'colLast',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Text(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_R(_i1.XmlElement node) implements _i1.XmlElement {
  String? get rsidRPr {
    return node.getAttribute(
      'rsidRPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidDel {
    return node.getAttribute(
      'rsidDel',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidR {
    return node.getAttribute(
      'rsidR',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_CT_RPr? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RPr(e) : null;
  }

  Iterable<W_CT_Br> get br {
    return node
        .findElements(
          'br',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Br.new);
  }

  Iterable<W_CT_Text> get t {
    return node
        .findElements(
          't',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Text.new);
  }

  Iterable<W_CT_Rel> get contentPart {
    return node
        .findElements(
          'contentPart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }

  Iterable<W_CT_Text> get delText {
    return node
        .findElements(
          'delText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Text.new);
  }

  Iterable<W_CT_Text> get instrText {
    return node
        .findElements(
          'instrText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Text.new);
  }

  Iterable<W_CT_Text> get delInstrText {
    return node
        .findElements(
          'delInstrText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Text.new);
  }

  Iterable<W_CT_Empty> get noBreakHyphen {
    return node
        .findElements(
          'noBreakHyphen',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get softHyphen {
    return node
        .findElements(
          'softHyphen',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get dayShort {
    return node
        .findElements(
          'dayShort',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get monthShort {
    return node
        .findElements(
          'monthShort',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get yearShort {
    return node
        .findElements(
          'yearShort',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get dayLong {
    return node
        .findElements(
          'dayLong',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get monthLong {
    return node
        .findElements(
          'monthLong',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get yearLong {
    return node
        .findElements(
          'yearLong',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get annotationRef {
    return node
        .findElements(
          'annotationRef',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get footnoteRef {
    return node
        .findElements(
          'footnoteRef',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get endnoteRef {
    return node
        .findElements(
          'endnoteRef',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get separator {
    return node
        .findElements(
          'separator',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get continuationSeparator {
    return node
        .findElements(
          'continuationSeparator',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Sym> get sym {
    return node
        .findElements(
          'sym',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Sym.new);
  }

  Iterable<W_CT_Empty> get pgNum {
    return node
        .findElements(
          'pgNum',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get cr {
    return node
        .findElements(
          'cr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get tab {
    return node
        .findElements(
          'tab',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Object> get object {
    return node
        .findElements(
          'object',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Object.new);
  }

  Iterable<W_CT_Picture> get pict {
    return node
        .findElements(
          'pict',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Picture.new);
  }

  Iterable<W_CT_FldChar> get fldChar {
    return node
        .findElements(
          'fldChar',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FldChar.new);
  }

  Iterable<W_CT_Ruby> get ruby {
    return node
        .findElements(
          'ruby',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Ruby.new);
  }

  Iterable<W_CT_FtnEdnRef> get footnoteReference {
    return node
        .findElements(
          'footnoteReference',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FtnEdnRef.new);
  }

  Iterable<W_CT_FtnEdnRef> get endnoteReference {
    return node
        .findElements(
          'endnoteReference',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FtnEdnRef.new);
  }

  Iterable<W_CT_Markup> get commentReference {
    return node
        .findElements(
          'commentReference',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_Drawing> get drawing {
    return node
        .findElements(
          'drawing',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Drawing.new);
  }

  Iterable<W_CT_PTab> get ptab {
    return node
        .findElements(
          'ptab',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PTab.new);
  }

  Iterable<W_CT_Empty> get lastRenderedPageBreak {
    return node
        .findElements(
          'lastRenderedPageBreak',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Empty.new);
  }
}
extension type W_CT_Fonts(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Hint? get hint {
    return node.getAttribute(
              'hint',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Hint.fromValue(
            node.getAttribute(
              'hint',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get ascii {
    return node.getAttribute(
      'ascii',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get hAnsi {
    return node.getAttribute(
      'hAnsi',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get eastAsia {
    return node.getAttribute(
      'eastAsia',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get cs {
    return node.getAttribute(
      'cs',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_ST_Theme? get asciiTheme {
    return node.getAttribute(
              'asciiTheme',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Theme.fromValue(
            node.getAttribute(
              'asciiTheme',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_Theme? get hAnsiTheme {
    return node.getAttribute(
              'hAnsiTheme',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Theme.fromValue(
            node.getAttribute(
              'hAnsiTheme',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_Theme? get eastAsiaTheme {
    return node.getAttribute(
              'eastAsiaTheme',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Theme.fromValue(
            node.getAttribute(
              'eastAsiaTheme',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_Theme? get cstheme {
    return node.getAttribute(
              'cstheme',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Theme.fromValue(
            node.getAttribute(
              'cstheme',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_RPr(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_String> get rStyle {
    return node
        .findElements(
          'rStyle',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_String.new);
  }

  Iterable<W_CT_Fonts> get rFonts {
    return node
        .findElements(
          'rFonts',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Fonts.new);
  }

  Iterable<W_CT_OnOff> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get bCs {
    return node
        .findElements(
          'bCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get i {
    return node
        .findElements(
          'i',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get iCs {
    return node
        .findElements(
          'iCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get caps {
    return node
        .findElements(
          'caps',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get smallCaps {
    return node
        .findElements(
          'smallCaps',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get strike {
    return node
        .findElements(
          'strike',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get dstrike {
    return node
        .findElements(
          'dstrike',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get outline {
    return node
        .findElements(
          'outline',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get shadow {
    return node
        .findElements(
          'shadow',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get emboss {
    return node
        .findElements(
          'emboss',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get imprint {
    return node
        .findElements(
          'imprint',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get noProof {
    return node
        .findElements(
          'noProof',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get snapToGrid {
    return node
        .findElements(
          'snapToGrid',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get vanish {
    return node
        .findElements(
          'vanish',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get webHidden {
    return node
        .findElements(
          'webHidden',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Color> get color {
    return node
        .findElements(
          'color',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Color.new);
  }

  Iterable<W_CT_SignedTwipsMeasure> get spacing {
    return node
        .findElements(
          'spacing',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SignedTwipsMeasure.new);
  }

  Iterable<W_CT_TextScale> get w {
    return node
        .findElements(
          'w',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TextScale.new);
  }

  Iterable<W_CT_HpsMeasure> get kern {
    return node
        .findElements(
          'kern',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_SignedHpsMeasure> get position {
    return node
        .findElements(
          'position',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SignedHpsMeasure.new);
  }

  Iterable<W_CT_HpsMeasure> get sz {
    return node
        .findElements(
          'sz',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_HpsMeasure> get szCs {
    return node
        .findElements(
          'szCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_Highlight> get highlight {
    return node
        .findElements(
          'highlight',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Highlight.new);
  }

  Iterable<W_CT_Underline> get u {
    return node
        .findElements(
          'u',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Underline.new);
  }

  Iterable<W_CT_TextEffect> get effect {
    return node
        .findElements(
          'effect',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TextEffect.new);
  }

  Iterable<W_CT_Border> get bdr {
    return node
        .findElements(
          'bdr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Border.new);
  }

  Iterable<W_CT_Shd> get shd {
    return node
        .findElements(
          'shd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Shd.new);
  }

  Iterable<W_CT_FitText> get fitText {
    return node
        .findElements(
          'fitText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FitText.new);
  }

  Iterable<W_CT_VerticalAlignRun> get vertAlign {
    return node
        .findElements(
          'vertAlign',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_VerticalAlignRun.new);
  }

  Iterable<W_CT_OnOff> get rtl {
    return node
        .findElements(
          'rtl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get cs {
    return node
        .findElements(
          'cs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Em> get em {
    return node
        .findElements(
          'em',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Em.new);
  }

  Iterable<W_CT_Language> get lang {
    return node
        .findElements(
          'lang',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Language.new);
  }

  Iterable<W_CT_EastAsianLayout> get eastAsianLayout {
    return node
        .findElements(
          'eastAsianLayout',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_EastAsianLayout.new);
  }

  Iterable<W_CT_OnOff> get specVanish {
    return node
        .findElements(
          'specVanish',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get oMath {
    return node
        .findElements(
          'oMath',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  W_CT_RPrChange? get rPrChange {
    final e = node.getElement(
      'rPrChange',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RPrChange(e) : null;
  }
}
extension type W_CT_MathCtrlIns(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_MathCtrlDel(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_RPrOriginal(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_String> get rStyle {
    return node
        .findElements(
          'rStyle',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_String.new);
  }

  Iterable<W_CT_Fonts> get rFonts {
    return node
        .findElements(
          'rFonts',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Fonts.new);
  }

  Iterable<W_CT_OnOff> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get bCs {
    return node
        .findElements(
          'bCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get i {
    return node
        .findElements(
          'i',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get iCs {
    return node
        .findElements(
          'iCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get caps {
    return node
        .findElements(
          'caps',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get smallCaps {
    return node
        .findElements(
          'smallCaps',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get strike {
    return node
        .findElements(
          'strike',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get dstrike {
    return node
        .findElements(
          'dstrike',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get outline {
    return node
        .findElements(
          'outline',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get shadow {
    return node
        .findElements(
          'shadow',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get emboss {
    return node
        .findElements(
          'emboss',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get imprint {
    return node
        .findElements(
          'imprint',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get noProof {
    return node
        .findElements(
          'noProof',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get snapToGrid {
    return node
        .findElements(
          'snapToGrid',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get vanish {
    return node
        .findElements(
          'vanish',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get webHidden {
    return node
        .findElements(
          'webHidden',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Color> get color {
    return node
        .findElements(
          'color',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Color.new);
  }

  Iterable<W_CT_SignedTwipsMeasure> get spacing {
    return node
        .findElements(
          'spacing',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SignedTwipsMeasure.new);
  }

  Iterable<W_CT_TextScale> get w {
    return node
        .findElements(
          'w',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TextScale.new);
  }

  Iterable<W_CT_HpsMeasure> get kern {
    return node
        .findElements(
          'kern',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_SignedHpsMeasure> get position {
    return node
        .findElements(
          'position',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SignedHpsMeasure.new);
  }

  Iterable<W_CT_HpsMeasure> get sz {
    return node
        .findElements(
          'sz',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_HpsMeasure> get szCs {
    return node
        .findElements(
          'szCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_Highlight> get highlight {
    return node
        .findElements(
          'highlight',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Highlight.new);
  }

  Iterable<W_CT_Underline> get u {
    return node
        .findElements(
          'u',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Underline.new);
  }

  Iterable<W_CT_TextEffect> get effect {
    return node
        .findElements(
          'effect',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TextEffect.new);
  }

  Iterable<W_CT_Border> get bdr {
    return node
        .findElements(
          'bdr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Border.new);
  }

  Iterable<W_CT_Shd> get shd {
    return node
        .findElements(
          'shd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Shd.new);
  }

  Iterable<W_CT_FitText> get fitText {
    return node
        .findElements(
          'fitText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FitText.new);
  }

  Iterable<W_CT_VerticalAlignRun> get vertAlign {
    return node
        .findElements(
          'vertAlign',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_VerticalAlignRun.new);
  }

  Iterable<W_CT_OnOff> get rtl {
    return node
        .findElements(
          'rtl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get cs {
    return node
        .findElements(
          'cs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Em> get em {
    return node
        .findElements(
          'em',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Em.new);
  }

  Iterable<W_CT_Language> get lang {
    return node
        .findElements(
          'lang',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Language.new);
  }

  Iterable<W_CT_EastAsianLayout> get eastAsianLayout {
    return node
        .findElements(
          'eastAsianLayout',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_EastAsianLayout.new);
  }

  Iterable<W_CT_OnOff> get specVanish {
    return node
        .findElements(
          'specVanish',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get oMath {
    return node
        .findElements(
          'oMath',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }
}
extension type W_CT_ParaRPrOriginal(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_CT_TrackChange? get ins {
    final e = node.getElement(
      'ins',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }

  W_CT_TrackChange? get del {
    final e = node.getElement(
      'del',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }

  W_CT_TrackChange? get moveFrom {
    final e = node.getElement(
      'moveFrom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }

  W_CT_TrackChange? get moveTo {
    final e = node.getElement(
      'moveTo',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }

  Iterable<W_CT_String> get rStyle {
    return node
        .findElements(
          'rStyle',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_String.new);
  }

  Iterable<W_CT_Fonts> get rFonts {
    return node
        .findElements(
          'rFonts',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Fonts.new);
  }

  Iterable<W_CT_OnOff> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get bCs {
    return node
        .findElements(
          'bCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get i {
    return node
        .findElements(
          'i',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get iCs {
    return node
        .findElements(
          'iCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get caps {
    return node
        .findElements(
          'caps',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get smallCaps {
    return node
        .findElements(
          'smallCaps',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get strike {
    return node
        .findElements(
          'strike',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get dstrike {
    return node
        .findElements(
          'dstrike',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get outline {
    return node
        .findElements(
          'outline',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get shadow {
    return node
        .findElements(
          'shadow',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get emboss {
    return node
        .findElements(
          'emboss',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get imprint {
    return node
        .findElements(
          'imprint',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get noProof {
    return node
        .findElements(
          'noProof',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get snapToGrid {
    return node
        .findElements(
          'snapToGrid',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get vanish {
    return node
        .findElements(
          'vanish',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get webHidden {
    return node
        .findElements(
          'webHidden',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Color> get color {
    return node
        .findElements(
          'color',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Color.new);
  }

  Iterable<W_CT_SignedTwipsMeasure> get spacing {
    return node
        .findElements(
          'spacing',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SignedTwipsMeasure.new);
  }

  Iterable<W_CT_TextScale> get w {
    return node
        .findElements(
          'w',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TextScale.new);
  }

  Iterable<W_CT_HpsMeasure> get kern {
    return node
        .findElements(
          'kern',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_SignedHpsMeasure> get position {
    return node
        .findElements(
          'position',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SignedHpsMeasure.new);
  }

  Iterable<W_CT_HpsMeasure> get sz {
    return node
        .findElements(
          'sz',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_HpsMeasure> get szCs {
    return node
        .findElements(
          'szCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_Highlight> get highlight {
    return node
        .findElements(
          'highlight',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Highlight.new);
  }

  Iterable<W_CT_Underline> get u {
    return node
        .findElements(
          'u',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Underline.new);
  }

  Iterable<W_CT_TextEffect> get effect {
    return node
        .findElements(
          'effect',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TextEffect.new);
  }

  Iterable<W_CT_Border> get bdr {
    return node
        .findElements(
          'bdr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Border.new);
  }

  Iterable<W_CT_Shd> get shd {
    return node
        .findElements(
          'shd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Shd.new);
  }

  Iterable<W_CT_FitText> get fitText {
    return node
        .findElements(
          'fitText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FitText.new);
  }

  Iterable<W_CT_VerticalAlignRun> get vertAlign {
    return node
        .findElements(
          'vertAlign',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_VerticalAlignRun.new);
  }

  Iterable<W_CT_OnOff> get rtl {
    return node
        .findElements(
          'rtl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get cs {
    return node
        .findElements(
          'cs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Em> get em {
    return node
        .findElements(
          'em',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Em.new);
  }

  Iterable<W_CT_Language> get lang {
    return node
        .findElements(
          'lang',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Language.new);
  }

  Iterable<W_CT_EastAsianLayout> get eastAsianLayout {
    return node
        .findElements(
          'eastAsianLayout',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_EastAsianLayout.new);
  }

  Iterable<W_CT_OnOff> get specVanish {
    return node
        .findElements(
          'specVanish',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get oMath {
    return node
        .findElements(
          'oMath',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }
}
extension type W_CT_ParaRPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_TrackChange? get ins {
    final e = node.getElement(
      'ins',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }

  W_CT_TrackChange? get del {
    final e = node.getElement(
      'del',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }

  W_CT_TrackChange? get moveFrom {
    final e = node.getElement(
      'moveFrom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }

  W_CT_TrackChange? get moveTo {
    final e = node.getElement(
      'moveTo',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChange(e) : null;
  }

  Iterable<W_CT_String> get rStyle {
    return node
        .findElements(
          'rStyle',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_String.new);
  }

  Iterable<W_CT_Fonts> get rFonts {
    return node
        .findElements(
          'rFonts',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Fonts.new);
  }

  Iterable<W_CT_OnOff> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get bCs {
    return node
        .findElements(
          'bCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get i {
    return node
        .findElements(
          'i',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get iCs {
    return node
        .findElements(
          'iCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get caps {
    return node
        .findElements(
          'caps',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get smallCaps {
    return node
        .findElements(
          'smallCaps',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get strike {
    return node
        .findElements(
          'strike',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get dstrike {
    return node
        .findElements(
          'dstrike',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get outline {
    return node
        .findElements(
          'outline',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get shadow {
    return node
        .findElements(
          'shadow',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get emboss {
    return node
        .findElements(
          'emboss',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get imprint {
    return node
        .findElements(
          'imprint',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get noProof {
    return node
        .findElements(
          'noProof',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get snapToGrid {
    return node
        .findElements(
          'snapToGrid',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get vanish {
    return node
        .findElements(
          'vanish',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get webHidden {
    return node
        .findElements(
          'webHidden',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Color> get color {
    return node
        .findElements(
          'color',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Color.new);
  }

  Iterable<W_CT_SignedTwipsMeasure> get spacing {
    return node
        .findElements(
          'spacing',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SignedTwipsMeasure.new);
  }

  Iterable<W_CT_TextScale> get w {
    return node
        .findElements(
          'w',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TextScale.new);
  }

  Iterable<W_CT_HpsMeasure> get kern {
    return node
        .findElements(
          'kern',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_SignedHpsMeasure> get position {
    return node
        .findElements(
          'position',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SignedHpsMeasure.new);
  }

  Iterable<W_CT_HpsMeasure> get sz {
    return node
        .findElements(
          'sz',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_HpsMeasure> get szCs {
    return node
        .findElements(
          'szCs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_HpsMeasure.new);
  }

  Iterable<W_CT_Highlight> get highlight {
    return node
        .findElements(
          'highlight',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Highlight.new);
  }

  Iterable<W_CT_Underline> get u {
    return node
        .findElements(
          'u',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Underline.new);
  }

  Iterable<W_CT_TextEffect> get effect {
    return node
        .findElements(
          'effect',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TextEffect.new);
  }

  Iterable<W_CT_Border> get bdr {
    return node
        .findElements(
          'bdr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Border.new);
  }

  Iterable<W_CT_Shd> get shd {
    return node
        .findElements(
          'shd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Shd.new);
  }

  Iterable<W_CT_FitText> get fitText {
    return node
        .findElements(
          'fitText',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FitText.new);
  }

  Iterable<W_CT_VerticalAlignRun> get vertAlign {
    return node
        .findElements(
          'vertAlign',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_VerticalAlignRun.new);
  }

  Iterable<W_CT_OnOff> get rtl {
    return node
        .findElements(
          'rtl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get cs {
    return node
        .findElements(
          'cs',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Em> get em {
    return node
        .findElements(
          'em',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Em.new);
  }

  Iterable<W_CT_Language> get lang {
    return node
        .findElements(
          'lang',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Language.new);
  }

  Iterable<W_CT_EastAsianLayout> get eastAsianLayout {
    return node
        .findElements(
          'eastAsianLayout',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_EastAsianLayout.new);
  }

  Iterable<W_CT_OnOff> get specVanish {
    return node
        .findElements(
          'specVanish',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_OnOff> get oMath {
    return node
        .findElements(
          'oMath',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  W_CT_ParaRPrChange? get rPrChange {
    final e = node.getElement(
      'rPrChange',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_ParaRPrChange(e) : null;
  }
}
extension type W_CT_AltChunk(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_AltChunkPr? get altChunkPr {
    final e = node.getElement(
      'altChunkPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_AltChunkPr(e) : null;
  }
}
extension type W_CT_AltChunkPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_OnOff? get matchSrc {
    final e = node.getElement(
      'matchSrc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }
}
extension type W_CT_RubyAlign(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_RubyAlign get val {
    return W_ST_RubyAlign.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_RubyPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_RubyAlign? get rubyAlign {
    final e = node.getElement(
      'rubyAlign',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RubyAlign(e) : null;
  }

  W_CT_HpsMeasure? get hps {
    final e = node.getElement(
      'hps',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_HpsMeasure(e) : null;
  }

  W_CT_HpsMeasure? get hpsRaise {
    final e = node.getElement(
      'hpsRaise',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_HpsMeasure(e) : null;
  }

  W_CT_HpsMeasure? get hpsBaseText {
    final e = node.getElement(
      'hpsBaseText',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_HpsMeasure(e) : null;
  }

  W_CT_Lang? get lid {
    final e = node.getElement(
      'lid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Lang(e) : null;
  }

  W_CT_OnOff? get dirty {
    final e = node.getElement(
      'dirty',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }
}
extension type W_CT_RubyContent(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_Ruby(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_RubyPr? get rubyPr {
    final e = node.getElement(
      'rubyPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RubyPr(e) : null;
  }

  W_CT_RubyContent? get rt {
    final e = node.getElement(
      'rt',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RubyContent(e) : null;
  }

  W_CT_RubyContent? get rubyBase {
    final e = node.getElement(
      'rubyBase',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RubyContent(e) : null;
  }
}
extension type W_CT_Lock(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Lock? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Lock.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_SdtListItem(_i1.XmlElement node) implements _i1.XmlElement {
  String? get displayText {
    return node.getAttribute(
      'displayText',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get value_ {
    return node.getAttribute(
      'value',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_SdtDateMappingType(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_SdtDateMappingType? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_SdtDateMappingType.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_CalendarType(_i1.XmlElement node)
    implements _i1.XmlElement {
  ST_CalendarType? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? ST_CalendarType.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_SdtDate(_i1.XmlElement node) implements _i1.XmlElement {
  String? get fullDate {
    return node.getAttribute(
      'fullDate',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_CT_String? get dateFormat {
    final e = node.getElement(
      'dateFormat',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_Lang? get lid {
    final e = node.getElement(
      'lid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Lang(e) : null;
  }

  W_CT_SdtDateMappingType? get storeMappedDataAs {
    final e = node.getElement(
      'storeMappedDataAs',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtDateMappingType(e) : null;
  }

  W_CT_CalendarType? get calendar {
    final e = node.getElement(
      'calendar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_CalendarType(e) : null;
  }
}
extension type W_CT_SdtComboBox(_i1.XmlElement node) implements _i1.XmlElement {
  String? get lastValue {
    return node.getAttribute(
      'lastValue',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  Iterable<W_CT_SdtListItem> get listItem {
    return node
        .findElements(
          'listItem',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtListItem.new);
  }
}
extension type W_CT_SdtDocPart(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_String? get docPartGallery {
    final e = node.getElement(
      'docPartGallery',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get docPartCategory {
    final e = node.getElement(
      'docPartCategory',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_OnOff? get docPartUnique {
    final e = node.getElement(
      'docPartUnique',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }
}
extension type W_CT_SdtDropDownList(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get lastValue {
    return node.getAttribute(
      'lastValue',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  Iterable<W_CT_SdtListItem> get listItem {
    return node
        .findElements(
          'listItem',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtListItem.new);
  }
}
extension type W_CT_Placeholder(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_String? get docPart {
    final e = node.getElement(
      'docPart',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }
}
extension type W_CT_SdtText(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_DataBinding(_i1.XmlElement node) implements _i1.XmlElement {
  String? get prefixMappings {
    return node.getAttribute(
      'prefixMappings',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String get xpath {
    return node.getAttribute(
      'xpath',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get storeItemID {
    return node.getAttribute(
      'storeItemID',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_SdtPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_RPr? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RPr(e) : null;
  }

  W_CT_String? get alias {
    final e = node.getElement(
      'alias',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get tag {
    final e = node.getElement(
      'tag',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_DecimalNumber? get id {
    final e = node.getElement(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_Lock? get lock {
    final e = node.getElement(
      'lock',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Lock(e) : null;
  }

  W_CT_Placeholder? get placeholder {
    final e = node.getElement(
      'placeholder',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Placeholder(e) : null;
  }

  W_CT_OnOff? get temporary {
    final e = node.getElement(
      'temporary',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get showingPlcHdr {
    final e = node.getElement(
      'showingPlcHdr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DataBinding? get dataBinding {
    final e = node.getElement(
      'dataBinding',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DataBinding(e) : null;
  }

  W_CT_DecimalNumber? get label {
    final e = node.getElement(
      'label',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_UnsignedDecimalNumber? get tabIndex {
    final e = node.getElement(
      'tabIndex',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_UnsignedDecimalNumber(e) : null;
  }

  W_CT_Empty? get equation {
    final e = node.getElement(
      'equation',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Empty(e) : null;
  }

  W_CT_SdtComboBox? get comboBox {
    final e = node.getElement(
      'comboBox',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtComboBox(e) : null;
  }

  W_CT_SdtDate? get date {
    final e = node.getElement(
      'date',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtDate(e) : null;
  }

  W_CT_SdtDocPart? get docPartObj {
    final e = node.getElement(
      'docPartObj',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtDocPart(e) : null;
  }

  W_CT_SdtDocPart? get docPartList {
    final e = node.getElement(
      'docPartList',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtDocPart(e) : null;
  }

  W_CT_SdtDropDownList? get dropDownList {
    final e = node.getElement(
      'dropDownList',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtDropDownList(e) : null;
  }

  W_CT_Empty? get picture {
    final e = node.getElement(
      'picture',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Empty(e) : null;
  }

  W_CT_Empty? get richText {
    final e = node.getElement(
      'richText',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Empty(e) : null;
  }

  W_CT_SdtText? get text {
    final e = node.getElement(
      'text',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtText(e) : null;
  }

  W_CT_Empty? get citation {
    final e = node.getElement(
      'citation',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Empty(e) : null;
  }

  W_CT_Empty? get group {
    final e = node.getElement(
      'group',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Empty(e) : null;
  }

  W_CT_Empty? get bibliography {
    final e = node.getElement(
      'bibliography',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Empty(e) : null;
  }
}
extension type W_CT_SdtEndPr(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_RPr> get rPr {
    return node
        .findElements(
          'rPr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RPr.new);
  }
}
extension type W_CT_DirContentRun(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_Direction? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Direction.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_DirContentRun> get dir {
    return node
        .findElements(
          'dir',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DirContentRun.new);
  }

  Iterable<W_CT_BdoContentRun> get bdo {
    return node
        .findElements(
          'bdo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_BdoContentRun.new);
  }

  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_Rel> get subDoc {
    return node
        .findElements(
          'subDoc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_BdoContentRun(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_Direction? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Direction.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_DirContentRun> get dir {
    return node
        .findElements(
          'dir',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DirContentRun.new);
  }

  Iterable<W_CT_BdoContentRun> get bdo {
    return node
        .findElements(
          'bdo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_BdoContentRun.new);
  }

  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_Rel> get subDoc {
    return node
        .findElements(
          'subDoc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_SdtContentRun(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_DirContentRun> get dir {
    return node
        .findElements(
          'dir',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DirContentRun.new);
  }

  Iterable<W_CT_BdoContentRun> get bdo {
    return node
        .findElements(
          'bdo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_BdoContentRun.new);
  }

  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_Rel> get subDoc {
    return node
        .findElements(
          'subDoc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_SdtContentBlock(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<W_CT_CustomXmlBlock> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlBlock.new);
  }

  Iterable<W_CT_SdtBlock> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtBlock.new);
  }

  Iterable<W_CT_P> get p {
    return node
        .findElements(
          'p',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_P.new);
  }

  Iterable<W_CT_Tbl> get tbl {
    return node
        .findElements(
          'tbl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tbl.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_SdtContentRow(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<W_CT_Row> get tr {
    return node
        .findElements(
          'tr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Row.new);
  }

  Iterable<W_CT_CustomXmlRow> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRow.new);
  }

  Iterable<W_CT_SdtRow> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRow.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_SdtContentCell(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<W_CT_Tc> get tc {
    return node
        .findElements(
          'tc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tc.new);
  }

  Iterable<W_CT_CustomXmlCell> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlCell.new);
  }

  Iterable<W_CT_SdtCell> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtCell.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_SdtBlock(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_SdtPr? get sdtPr {
    final e = node.getElement(
      'sdtPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtPr(e) : null;
  }

  W_CT_SdtEndPr? get sdtEndPr {
    final e = node.getElement(
      'sdtEndPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtEndPr(e) : null;
  }

  W_CT_SdtContentBlock? get sdtContent {
    final e = node.getElement(
      'sdtContent',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtContentBlock(e) : null;
  }
}
extension type W_CT_SdtRun(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_SdtPr? get sdtPr {
    final e = node.getElement(
      'sdtPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtPr(e) : null;
  }

  W_CT_SdtEndPr? get sdtEndPr {
    final e = node.getElement(
      'sdtEndPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtEndPr(e) : null;
  }

  W_CT_SdtContentRun? get sdtContent {
    final e = node.getElement(
      'sdtContent',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtContentRun(e) : null;
  }
}
extension type W_CT_SdtCell(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_SdtPr? get sdtPr {
    final e = node.getElement(
      'sdtPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtPr(e) : null;
  }

  W_CT_SdtEndPr? get sdtEndPr {
    final e = node.getElement(
      'sdtEndPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtEndPr(e) : null;
  }

  W_CT_SdtContentCell? get sdtContent {
    final e = node.getElement(
      'sdtContent',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtContentCell(e) : null;
  }
}
extension type W_CT_SdtRow(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_SdtPr? get sdtPr {
    final e = node.getElement(
      'sdtPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtPr(e) : null;
  }

  W_CT_SdtEndPr? get sdtEndPr {
    final e = node.getElement(
      'sdtEndPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtEndPr(e) : null;
  }

  W_CT_SdtContentRow? get sdtContent {
    final e = node.getElement(
      'sdtContent',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SdtContentRow(e) : null;
  }
}
extension type W_CT_Attr(_i1.XmlElement node) implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_CustomXmlRun(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String get element {
    return node.getAttribute(
      'element',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_CustomXmlPr? get customXmlPr {
    final e = node.getElement(
      'customXmlPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_CustomXmlPr(e) : null;
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_DirContentRun> get dir {
    return node
        .findElements(
          'dir',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DirContentRun.new);
  }

  Iterable<W_CT_BdoContentRun> get bdo {
    return node
        .findElements(
          'bdo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_BdoContentRun.new);
  }

  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_Rel> get subDoc {
    return node
        .findElements(
          'subDoc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_SmartTagRun(_i1.XmlElement node) implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String get element {
    return node.getAttribute(
      'element',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_SmartTagPr? get smartTagPr {
    final e = node.getElement(
      'smartTagPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SmartTagPr(e) : null;
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_DirContentRun> get dir {
    return node
        .findElements(
          'dir',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DirContentRun.new);
  }

  Iterable<W_CT_BdoContentRun> get bdo {
    return node
        .findElements(
          'bdo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_BdoContentRun.new);
  }

  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_Rel> get subDoc {
    return node
        .findElements(
          'subDoc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_CustomXmlBlock(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String get element {
    return node.getAttribute(
      'element',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_CustomXmlPr? get customXmlPr {
    final e = node.getElement(
      'customXmlPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_CustomXmlPr(e) : null;
  }

  Iterable<W_CT_CustomXmlBlock> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlBlock.new);
  }

  Iterable<W_CT_SdtBlock> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtBlock.new);
  }

  Iterable<W_CT_P> get p {
    return node
        .findElements(
          'p',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_P.new);
  }

  Iterable<W_CT_Tbl> get tbl {
    return node
        .findElements(
          'tbl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tbl.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_CustomXmlPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_String? get placeholder {
    final e = node.getElement(
      'placeholder',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  Iterable<W_CT_Attr> get attr {
    return node
        .findElements(
          'attr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Attr.new);
  }
}
extension type W_CT_CustomXmlRow(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String get element {
    return node.getAttribute(
      'element',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_CustomXmlPr? get customXmlPr {
    final e = node.getElement(
      'customXmlPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_CustomXmlPr(e) : null;
  }

  Iterable<W_CT_Row> get tr {
    return node
        .findElements(
          'tr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Row.new);
  }

  Iterable<W_CT_CustomXmlRow> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRow.new);
  }

  Iterable<W_CT_SdtRow> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRow.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_CustomXmlCell(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String get element {
    return node.getAttribute(
      'element',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_CustomXmlPr? get customXmlPr {
    final e = node.getElement(
      'customXmlPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_CustomXmlPr(e) : null;
  }

  Iterable<W_CT_Tc> get tc {
    return node
        .findElements(
          'tc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tc.new);
  }

  Iterable<W_CT_CustomXmlCell> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlCell.new);
  }

  Iterable<W_CT_SdtCell> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtCell.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_SmartTagPr(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_Attr> get attr {
    return node
        .findElements(
          'attr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Attr.new);
  }
}
extension type W_CT_P(_i1.XmlElement node) implements _i1.XmlElement {
  String? get rsidRPr {
    return node.getAttribute(
      'rsidRPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidR {
    return node.getAttribute(
      'rsidR',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidDel {
    return node.getAttribute(
      'rsidDel',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidP {
    return node.getAttribute(
      'rsidP',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidRDefault {
    return node.getAttribute(
      'rsidRDefault',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_CT_PPr? get pPr {
    final e = node.getElement(
      'pPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PPr(e) : null;
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_DirContentRun> get dir {
    return node
        .findElements(
          'dir',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DirContentRun.new);
  }

  Iterable<W_CT_BdoContentRun> get bdo {
    return node
        .findElements(
          'bdo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_BdoContentRun.new);
  }

  Iterable<W_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_R.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_Rel> get subDoc {
    return node
        .findElements(
          'subDoc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_Height(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_HeightRule? get hRule {
    return node.getAttribute(
              'hRule',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_HeightRule.fromValue(
            node.getAttribute(
              'hRule',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_TblWidth(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_TblWidth? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_TblWidth.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_TblGridCol(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_TblGridBase(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_TblGridCol> get gridCol {
    return node
        .findElements(
          'gridCol',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TblGridCol.new);
  }
}
extension type W_CT_TblGrid(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_TcBorders(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_Border? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get start {
    final e = node.getElement(
      'start',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get end {
    final e = node.getElement(
      'end',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get insideH {
    final e = node.getElement(
      'insideH',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get insideV {
    final e = node.getElement(
      'insideV',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get tl2br {
    final e = node.getElement(
      'tl2br',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get tr2bl {
    final e = node.getElement(
      'tr2bl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }
}
extension type W_CT_TcMar(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_TblWidth? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get start {
    final e = node.getElement(
      'start',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get end {
    final e = node.getElement(
      'end',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }
}
extension type W_CT_VMerge(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Merge? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Merge.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_HMerge(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Merge? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_Merge.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_TcPrBase(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_Cnf? get cnfStyle {
    final e = node.getElement(
      'cnfStyle',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Cnf(e) : null;
  }

  W_CT_TblWidth? get tcW {
    final e = node.getElement(
      'tcW',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_DecimalNumber? get gridSpan {
    final e = node.getElement(
      'gridSpan',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_HMerge? get hMerge {
    final e = node.getElement(
      'hMerge',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_HMerge(e) : null;
  }

  W_CT_VMerge? get vMerge {
    final e = node.getElement(
      'vMerge',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_VMerge(e) : null;
  }

  W_CT_TcBorders? get tcBorders {
    final e = node.getElement(
      'tcBorders',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TcBorders(e) : null;
  }

  W_CT_Shd? get shd {
    final e = node.getElement(
      'shd',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Shd(e) : null;
  }

  W_CT_OnOff? get noWrap {
    final e = node.getElement(
      'noWrap',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_TcMar? get tcMar {
    final e = node.getElement(
      'tcMar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TcMar(e) : null;
  }

  W_CT_TextDirection? get textDirection {
    final e = node.getElement(
      'textDirection',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TextDirection(e) : null;
  }

  W_CT_OnOff? get tcFitText {
    final e = node.getElement(
      'tcFitText',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_VerticalJc? get vAlign {
    final e = node.getElement(
      'vAlign',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_VerticalJc(e) : null;
  }

  W_CT_OnOff? get hideMark {
    final e = node.getElement(
      'hideMark',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_Headers? get headers {
    final e = node.getElement(
      'headers',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Headers(e) : null;
  }
}
extension type W_CT_TcPr(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_TcPrInner(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_Tc(_i1.XmlElement node) implements _i1.XmlElement {
  String? get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_CT_TcPr? get tcPr {
    final e = node.getElement(
      'tcPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TcPr(e) : null;
  }

  Iterable<W_CT_CustomXmlBlock> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlBlock.new);
  }

  Iterable<W_CT_SdtBlock> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtBlock.new);
  }

  Iterable<W_CT_P> get p {
    return node
        .findElements(
          'p',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_P.new);
  }

  Iterable<W_CT_Tbl> get tbl {
    return node
        .findElements(
          'tbl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tbl.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_AltChunk> get altChunk {
    return node
        .findElements(
          'altChunk',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_AltChunk.new);
  }
}
extension type W_CT_Cnf(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Headers(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_String> get header {
    return node
        .findElements(
          'header',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_String.new);
  }
}
extension type W_CT_TrPrBase(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_Cnf> get cnfStyle {
    return node
        .findElements(
          'cnfStyle',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Cnf.new);
  }

  Iterable<W_CT_DecimalNumber> get divId {
    return node
        .findElements(
          'divId',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DecimalNumber.new);
  }

  Iterable<W_CT_DecimalNumber> get gridBefore {
    return node
        .findElements(
          'gridBefore',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DecimalNumber.new);
  }

  Iterable<W_CT_DecimalNumber> get gridAfter {
    return node
        .findElements(
          'gridAfter',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DecimalNumber.new);
  }

  Iterable<W_CT_TblWidth> get wBefore {
    return node
        .findElements(
          'wBefore',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TblWidth.new);
  }

  Iterable<W_CT_TblWidth> get wAfter {
    return node
        .findElements(
          'wAfter',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TblWidth.new);
  }

  Iterable<W_CT_OnOff> get cantSplit {
    return node
        .findElements(
          'cantSplit',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_Height> get trHeight {
    return node
        .findElements(
          'trHeight',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Height.new);
  }

  Iterable<W_CT_OnOff> get tblHeader {
    return node
        .findElements(
          'tblHeader',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }

  Iterable<W_CT_TblWidth> get tblCellSpacing {
    return node
        .findElements(
          'tblCellSpacing',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TblWidth.new);
  }

  Iterable<W_CT_JcTable> get jc {
    return node
        .findElements(
          'jc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_JcTable.new);
  }

  Iterable<W_CT_OnOff> get hidden {
    return node
        .findElements(
          'hidden',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OnOff.new);
  }
}
extension type W_CT_TrPr(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_Row(_i1.XmlElement node) implements _i1.XmlElement {
  String? get rsidRPr {
    return node.getAttribute(
      'rsidRPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidR {
    return node.getAttribute(
      'rsidR',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidDel {
    return node.getAttribute(
      'rsidDel',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get rsidTr {
    return node.getAttribute(
      'rsidTr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_CT_TblPrEx? get tblPrEx {
    final e = node.getElement(
      'tblPrEx',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblPrEx(e) : null;
  }

  W_CT_TrPr? get trPr {
    final e = node.getElement(
      'trPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrPr(e) : null;
  }

  Iterable<W_CT_Tc> get tc {
    return node
        .findElements(
          'tc',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tc.new);
  }

  Iterable<W_CT_CustomXmlCell> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlCell.new);
  }

  Iterable<W_CT_SdtCell> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtCell.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_TblLayoutType(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_TblLayoutType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_TblLayoutType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_TblOverlap(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_TblOverlap get val {
    return W_ST_TblOverlap.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_TblPPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_VAnchor? get vertAnchor {
    return node.getAttribute(
              'vertAnchor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_VAnchor.fromValue(
            node.getAttribute(
              'vertAnchor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_HAnchor? get horzAnchor {
    return node.getAttribute(
              'horzAnchor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_HAnchor.fromValue(
            node.getAttribute(
              'horzAnchor',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  ST_XAlign? get tblpXSpec {
    return node.getAttribute(
              'tblpXSpec',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? ST_XAlign.fromValue(
            node.getAttribute(
              'tblpXSpec',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  ST_YAlign? get tblpYSpec {
    return node.getAttribute(
              'tblpYSpec',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? ST_YAlign.fromValue(
            node.getAttribute(
              'tblpYSpec',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_TblCellMar(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_TblWidth? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get start {
    final e = node.getElement(
      'start',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get end {
    final e = node.getElement(
      'end',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }
}
extension type W_CT_TblBorders(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_Border? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get start {
    final e = node.getElement(
      'start',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get end {
    final e = node.getElement(
      'end',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get insideH {
    final e = node.getElement(
      'insideH',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get insideV {
    final e = node.getElement(
      'insideV',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }
}
extension type W_CT_TblPrBase(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_String? get tblStyle {
    final e = node.getElement(
      'tblStyle',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_TblPPr? get tblpPr {
    final e = node.getElement(
      'tblpPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblPPr(e) : null;
  }

  W_CT_TblOverlap? get tblOverlap {
    final e = node.getElement(
      'tblOverlap',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblOverlap(e) : null;
  }

  W_CT_OnOff? get bidiVisual {
    final e = node.getElement(
      'bidiVisual',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DecimalNumber? get tblStyleRowBandSize {
    final e = node.getElement(
      'tblStyleRowBandSize',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_DecimalNumber? get tblStyleColBandSize {
    final e = node.getElement(
      'tblStyleColBandSize',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_TblWidth? get tblW {
    final e = node.getElement(
      'tblW',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_JcTable? get jc {
    final e = node.getElement(
      'jc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_JcTable(e) : null;
  }

  W_CT_TblWidth? get tblCellSpacing {
    final e = node.getElement(
      'tblCellSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get tblInd {
    final e = node.getElement(
      'tblInd',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblBorders? get tblBorders {
    final e = node.getElement(
      'tblBorders',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblBorders(e) : null;
  }

  W_CT_Shd? get shd {
    final e = node.getElement(
      'shd',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Shd(e) : null;
  }

  W_CT_TblLayoutType? get tblLayout {
    final e = node.getElement(
      'tblLayout',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblLayoutType(e) : null;
  }

  W_CT_TblCellMar? get tblCellMar {
    final e = node.getElement(
      'tblCellMar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblCellMar(e) : null;
  }

  W_CT_TblLook? get tblLook {
    final e = node.getElement(
      'tblLook',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblLook(e) : null;
  }

  W_CT_String? get tblCaption {
    final e = node.getElement(
      'tblCaption',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get tblDescription {
    final e = node.getElement(
      'tblDescription',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }
}
extension type W_CT_TblPr(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_TblPrExBase(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_TblWidth? get tblW {
    final e = node.getElement(
      'tblW',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_JcTable? get jc {
    final e = node.getElement(
      'jc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_JcTable(e) : null;
  }

  W_CT_TblWidth? get tblCellSpacing {
    final e = node.getElement(
      'tblCellSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblWidth? get tblInd {
    final e = node.getElement(
      'tblInd',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblWidth(e) : null;
  }

  W_CT_TblBorders? get tblBorders {
    final e = node.getElement(
      'tblBorders',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblBorders(e) : null;
  }

  W_CT_Shd? get shd {
    final e = node.getElement(
      'shd',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Shd(e) : null;
  }

  W_CT_TblLayoutType? get tblLayout {
    final e = node.getElement(
      'tblLayout',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblLayoutType(e) : null;
  }

  W_CT_TblCellMar? get tblCellMar {
    final e = node.getElement(
      'tblCellMar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblCellMar(e) : null;
  }

  W_CT_TblLook? get tblLook {
    final e = node.getElement(
      'tblLook',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblLook(e) : null;
  }
}
extension type W_CT_TblPrEx(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_Tbl(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  W_CT_TblPr? get tblPr {
    final e = node.getElement(
      'tblPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblPr(e) : null;
  }

  W_CT_TblGrid? get tblGrid {
    final e = node.getElement(
      'tblGrid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblGrid(e) : null;
  }

  Iterable<W_CT_Row> get tr {
    return node
        .findElements(
          'tr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Row.new);
  }

  Iterable<W_CT_CustomXmlRow> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlRow.new);
  }

  Iterable<W_CT_SdtRow> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtRow.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }
}
extension type W_CT_TblLook(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_FtnPos(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_FtnPos get val {
    return W_ST_FtnPos.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_EdnPos(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_EdnPos get val {
    return W_ST_EdnPos.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_NumFmt(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_NumberFormat get val {
    return W_ST_NumberFormat.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }

  String? get format {
    return node.getAttribute(
      'format',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_NumRestart(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_RestartNumber get val {
    return W_ST_RestartNumber.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_FtnEdnRef(_i1.XmlElement node) implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_FtnEdnSepRef(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_FtnEdn(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_FtnEdn? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_FtnEdn.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  Iterable<W_CT_CustomXmlBlock> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlBlock.new);
  }

  Iterable<W_CT_SdtBlock> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtBlock.new);
  }

  Iterable<W_CT_P> get p {
    return node
        .findElements(
          'p',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_P.new);
  }

  Iterable<W_CT_Tbl> get tbl {
    return node
        .findElements(
          'tbl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tbl.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_AltChunk> get altChunk {
    return node
        .findElements(
          'altChunk',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_AltChunk.new);
  }
}
extension type W_CT_FtnProps(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_FtnPos? get pos {
    final e = node.getElement(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FtnPos(e) : null;
  }

  W_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_NumFmt(e) : null;
  }

  W_CT_DecimalNumber? get numStart {
    final e = node.getElement(
      'numStart',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_NumRestart? get numRestart {
    final e = node.getElement(
      'numRestart',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_NumRestart(e) : null;
  }
}
extension type W_CT_EdnProps(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_EdnPos? get pos {
    final e = node.getElement(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_EdnPos(e) : null;
  }

  W_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_NumFmt(e) : null;
  }

  W_CT_DecimalNumber? get numStart {
    final e = node.getElement(
      'numStart',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_NumRestart? get numRestart {
    final e = node.getElement(
      'numRestart',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_NumRestart(e) : null;
  }
}
extension type W_CT_FtnDocProps(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_EdnDocProps(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_RecipientData(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_CT_OnOff? get active {
    final e = node.getElement(
      'active',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DecimalNumber? get column {
    final e = node.getElement(
      'column',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_Base64Binary? get uniqueTag {
    final e = node.getElement(
      'uniqueTag',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Base64Binary(e) : null;
  }
}
extension type W_CT_Base64Binary(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_Recipients(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_RecipientData> get recipientData {
    return node
        .findElements(
          'recipientData',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RecipientData.new);
  }
}
extension type W_CT_OdsoFieldMapData(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_CT_MailMergeOdsoFMDFieldType? get type {
    final e = node.getElement(
      'type',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_MailMergeOdsoFMDFieldType(e) : null;
  }

  W_CT_String? get name {
    final e = node.getElement(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get mappedName {
    final e = node.getElement(
      'mappedName',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_DecimalNumber? get column {
    final e = node.getElement(
      'column',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_Lang? get lid {
    final e = node.getElement(
      'lid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Lang(e) : null;
  }

  W_CT_OnOff? get dynamicAddress {
    final e = node.getElement(
      'dynamicAddress',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }
}
extension type W_CT_MailMergeSourceType(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_MailMergeSourceType get val {
    return W_ST_MailMergeSourceType.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Odso(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_String? get udl {
    final e = node.getElement(
      'udl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get table {
    final e = node.getElement(
      'table',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_Rel? get src {
    final e = node.getElement(
      'src',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }

  W_CT_DecimalNumber? get colDelim {
    final e = node.getElement(
      'colDelim',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_MailMergeSourceType? get type {
    final e = node.getElement(
      'type',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_MailMergeSourceType(e) : null;
  }

  W_CT_OnOff? get fHdr {
    final e = node.getElement(
      'fHdr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  Iterable<W_CT_OdsoFieldMapData> get fieldMapData {
    return node
        .findElements(
          'fieldMapData',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_OdsoFieldMapData.new);
  }

  Iterable<W_CT_Rel> get recipientData {
    return node
        .findElements(
          'recipientData',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Rel.new);
  }
}
extension type W_CT_MailMerge(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_MailMergeDocType? get mainDocumentType {
    final e = node.getElement(
      'mainDocumentType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_MailMergeDocType(e) : null;
  }

  W_CT_OnOff? get linkToQuery {
    final e = node.getElement(
      'linkToQuery',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_MailMergeDataType? get dataType {
    final e = node.getElement(
      'dataType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_MailMergeDataType(e) : null;
  }

  W_CT_String? get connectString {
    final e = node.getElement(
      'connectString',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get query {
    final e = node.getElement(
      'query',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_Rel? get dataSource {
    final e = node.getElement(
      'dataSource',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }

  W_CT_Rel? get headerSource {
    final e = node.getElement(
      'headerSource',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }

  W_CT_OnOff? get doNotSuppressBlankLines {
    final e = node.getElement(
      'doNotSuppressBlankLines',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_MailMergeDest? get destination {
    final e = node.getElement(
      'destination',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_MailMergeDest(e) : null;
  }

  W_CT_String? get addressFieldName {
    final e = node.getElement(
      'addressFieldName',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get mailSubject {
    final e = node.getElement(
      'mailSubject',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_OnOff? get mailAsAttachment {
    final e = node.getElement(
      'mailAsAttachment',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get viewMergedData {
    final e = node.getElement(
      'viewMergedData',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DecimalNumber? get activeRecord {
    final e = node.getElement(
      'activeRecord',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_DecimalNumber? get checkErrors {
    final e = node.getElement(
      'checkErrors',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_Odso? get odso {
    final e = node.getElement(
      'odso',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Odso(e) : null;
  }
}
extension type W_CT_TargetScreenSz(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_TargetScreenSz get val {
    return W_ST_TargetScreenSz.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Compat(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_OnOff? get useSingleBorderforContiguousCells {
    final e = node.getElement(
      'useSingleBorderforContiguousCells',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get wpJustification {
    final e = node.getElement(
      'wpJustification',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get noTabHangInd {
    final e = node.getElement(
      'noTabHangInd',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get noLeading {
    final e = node.getElement(
      'noLeading',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get spaceForUL {
    final e = node.getElement(
      'spaceForUL',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get noColumnBalance {
    final e = node.getElement(
      'noColumnBalance',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get balanceSingleByteDoubleByteWidth {
    final e = node.getElement(
      'balanceSingleByteDoubleByteWidth',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get noExtraLineSpacing {
    final e = node.getElement(
      'noExtraLineSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotLeaveBackslashAlone {
    final e = node.getElement(
      'doNotLeaveBackslashAlone',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get ulTrailSpace {
    final e = node.getElement(
      'ulTrailSpace',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotExpandShiftReturn {
    final e = node.getElement(
      'doNotExpandShiftReturn',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get spacingInWholePoints {
    final e = node.getElement(
      'spacingInWholePoints',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get lineWrapLikeWord6 {
    final e = node.getElement(
      'lineWrapLikeWord6',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get printBodyTextBeforeHeader {
    final e = node.getElement(
      'printBodyTextBeforeHeader',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get printColBlack {
    final e = node.getElement(
      'printColBlack',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get wpSpaceWidth {
    final e = node.getElement(
      'wpSpaceWidth',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get showBreaksInFrames {
    final e = node.getElement(
      'showBreaksInFrames',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get subFontBySize {
    final e = node.getElement(
      'subFontBySize',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get suppressBottomSpacing {
    final e = node.getElement(
      'suppressBottomSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get suppressTopSpacing {
    final e = node.getElement(
      'suppressTopSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get suppressSpacingAtTopOfPage {
    final e = node.getElement(
      'suppressSpacingAtTopOfPage',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get suppressTopSpacingWP {
    final e = node.getElement(
      'suppressTopSpacingWP',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get suppressSpBfAfterPgBrk {
    final e = node.getElement(
      'suppressSpBfAfterPgBrk',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get swapBordersFacingPages {
    final e = node.getElement(
      'swapBordersFacingPages',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get convMailMergeEsc {
    final e = node.getElement(
      'convMailMergeEsc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get truncateFontHeightsLikeWP6 {
    final e = node.getElement(
      'truncateFontHeightsLikeWP6',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get mwSmallCaps {
    final e = node.getElement(
      'mwSmallCaps',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get usePrinterMetrics {
    final e = node.getElement(
      'usePrinterMetrics',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotSuppressParagraphBorders {
    final e = node.getElement(
      'doNotSuppressParagraphBorders',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get wrapTrailSpaces {
    final e = node.getElement(
      'wrapTrailSpaces',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get footnoteLayoutLikeWW8 {
    final e = node.getElement(
      'footnoteLayoutLikeWW8',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get shapeLayoutLikeWW8 {
    final e = node.getElement(
      'shapeLayoutLikeWW8',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get alignTablesRowByRow {
    final e = node.getElement(
      'alignTablesRowByRow',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get forgetLastTabAlignment {
    final e = node.getElement(
      'forgetLastTabAlignment',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get adjustLineHeightInTable {
    final e = node.getElement(
      'adjustLineHeightInTable',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get autoSpaceLikeWord95 {
    final e = node.getElement(
      'autoSpaceLikeWord95',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get noSpaceRaiseLower {
    final e = node.getElement(
      'noSpaceRaiseLower',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotUseHTMLParagraphAutoSpacing {
    final e = node.getElement(
      'doNotUseHTMLParagraphAutoSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get layoutRawTableWidth {
    final e = node.getElement(
      'layoutRawTableWidth',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get layoutTableRowsApart {
    final e = node.getElement(
      'layoutTableRowsApart',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get useWord97LineBreakRules {
    final e = node.getElement(
      'useWord97LineBreakRules',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotBreakWrappedTables {
    final e = node.getElement(
      'doNotBreakWrappedTables',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotSnapToGridInCell {
    final e = node.getElement(
      'doNotSnapToGridInCell',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get selectFldWithFirstOrLastChar {
    final e = node.getElement(
      'selectFldWithFirstOrLastChar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get applyBreakingRules {
    final e = node.getElement(
      'applyBreakingRules',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotWrapTextWithPunct {
    final e = node.getElement(
      'doNotWrapTextWithPunct',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotUseEastAsianBreakRules {
    final e = node.getElement(
      'doNotUseEastAsianBreakRules',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get useWord2002TableStyleRules {
    final e = node.getElement(
      'useWord2002TableStyleRules',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get growAutofit {
    final e = node.getElement(
      'growAutofit',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get useFELayout {
    final e = node.getElement(
      'useFELayout',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get useNormalStyleForList {
    final e = node.getElement(
      'useNormalStyleForList',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotUseIndentAsNumberingTabStop {
    final e = node.getElement(
      'doNotUseIndentAsNumberingTabStop',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get useAltKinsokuLineBreakRules {
    final e = node.getElement(
      'useAltKinsokuLineBreakRules',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get allowSpaceOfSameStyleInTable {
    final e = node.getElement(
      'allowSpaceOfSameStyleInTable',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotSuppressIndentation {
    final e = node.getElement(
      'doNotSuppressIndentation',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotAutofitConstrainedTables {
    final e = node.getElement(
      'doNotAutofitConstrainedTables',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get autofitToFirstFixedWidthCell {
    final e = node.getElement(
      'autofitToFirstFixedWidthCell',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get underlineTabInNumList {
    final e = node.getElement(
      'underlineTabInNumList',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get displayHangulFixedWidth {
    final e = node.getElement(
      'displayHangulFixedWidth',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get splitPgBreakAndParaMark {
    final e = node.getElement(
      'splitPgBreakAndParaMark',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotVertAlignCellWithSp {
    final e = node.getElement(
      'doNotVertAlignCellWithSp',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotBreakConstrainedForcedTable {
    final e = node.getElement(
      'doNotBreakConstrainedForcedTable',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotVertAlignInTxbx {
    final e = node.getElement(
      'doNotVertAlignInTxbx',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get useAnsiKerningPairs {
    final e = node.getElement(
      'useAnsiKerningPairs',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get cachedColBalance {
    final e = node.getElement(
      'cachedColBalance',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  Iterable<W_CT_CompatSetting> get compatSetting {
    return node
        .findElements(
          'compatSetting',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CompatSetting.new);
  }
}
extension type W_CT_CompatSetting(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_DocVar(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_DocVars(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_DocVar> get docVar {
    return node
        .findElements(
          'docVar',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DocVar.new);
  }
}
extension type W_CT_DocRsids(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_LongHexNumber? get rsidRoot {
    final e = node.getElement(
      'rsidRoot',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LongHexNumber(e) : null;
  }

  Iterable<W_CT_LongHexNumber> get rsid {
    return node
        .findElements(
          'rsid',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_LongHexNumber.new);
  }
}
extension type W_CT_CharacterSpacing(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_CharacterSpacing get val {
    return W_ST_CharacterSpacing.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_SaveThroughXslt(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get solutionID {
    return node.getAttribute(
      'solutionID',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_RPrDefault(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_RPr? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RPr(e) : null;
  }
}
extension type W_CT_PPrDefault(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_PPrGeneral? get pPr {
    final e = node.getElement(
      'pPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PPrGeneral(e) : null;
  }
}
extension type W_CT_DocDefaults(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_RPrDefault? get rPrDefault {
    final e = node.getElement(
      'rPrDefault',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RPrDefault(e) : null;
  }

  W_CT_PPrDefault? get pPrDefault {
    final e = node.getElement(
      'pPrDefault',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PPrDefault(e) : null;
  }
}
extension type W_CT_ColorSchemeMapping(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_WmlColorSchemeIndex? get bg1 {
    return node.getAttribute(
              'bg1',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'bg1',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get t1 {
    return node.getAttribute(
              't1',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              't1',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get bg2 {
    return node.getAttribute(
              'bg2',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'bg2',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get t2 {
    return node.getAttribute(
              't2',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              't2',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get accent1 {
    return node.getAttribute(
              'accent1',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'accent1',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get accent2 {
    return node.getAttribute(
              'accent2',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'accent2',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get accent3 {
    return node.getAttribute(
              'accent3',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'accent3',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get accent4 {
    return node.getAttribute(
              'accent4',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'accent4',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get accent5 {
    return node.getAttribute(
              'accent5',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'accent5',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get accent6 {
    return node.getAttribute(
              'accent6',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'accent6',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get hyperlink {
    return node.getAttribute(
              'hyperlink',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'hyperlink',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_WmlColorSchemeIndex? get followedHyperlink {
    return node.getAttribute(
              'followedHyperlink',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_WmlColorSchemeIndex.fromValue(
            node.getAttribute(
              'followedHyperlink',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_ReadingModeInkLockDown(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get w {
    return node.getAttribute(
      'w',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get h {
    return node.getAttribute(
      'h',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_WriteProtection(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_Settings(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_WriteProtection? get writeProtection {
    final e = node.getElement(
      'writeProtection',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_WriteProtection(e) : null;
  }

  W_CT_View? get view {
    final e = node.getElement(
      'view',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_View(e) : null;
  }

  W_CT_Zoom? get zoom {
    final e = node.getElement(
      'zoom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Zoom(e) : null;
  }

  W_CT_OnOff? get removePersonalInformation {
    final e = node.getElement(
      'removePersonalInformation',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get removeDateAndTime {
    final e = node.getElement(
      'removeDateAndTime',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotDisplayPageBoundaries {
    final e = node.getElement(
      'doNotDisplayPageBoundaries',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get displayBackgroundShape {
    final e = node.getElement(
      'displayBackgroundShape',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get printPostScriptOverText {
    final e = node.getElement(
      'printPostScriptOverText',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get printFractionalCharacterWidth {
    final e = node.getElement(
      'printFractionalCharacterWidth',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get printFormsData {
    final e = node.getElement(
      'printFormsData',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get embedTrueTypeFonts {
    final e = node.getElement(
      'embedTrueTypeFonts',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get embedSystemFonts {
    final e = node.getElement(
      'embedSystemFonts',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get saveSubsetFonts {
    final e = node.getElement(
      'saveSubsetFonts',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get saveFormsData {
    final e = node.getElement(
      'saveFormsData',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get mirrorMargins {
    final e = node.getElement(
      'mirrorMargins',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get alignBordersAndEdges {
    final e = node.getElement(
      'alignBordersAndEdges',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get bordersDoNotSurroundHeader {
    final e = node.getElement(
      'bordersDoNotSurroundHeader',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get bordersDoNotSurroundFooter {
    final e = node.getElement(
      'bordersDoNotSurroundFooter',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get gutterAtTop {
    final e = node.getElement(
      'gutterAtTop',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get hideSpellingErrors {
    final e = node.getElement(
      'hideSpellingErrors',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get hideGrammaticalErrors {
    final e = node.getElement(
      'hideGrammaticalErrors',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  Iterable<W_CT_WritingStyle> get activeWritingStyle {
    return node
        .findElements(
          'activeWritingStyle',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_WritingStyle.new);
  }

  W_CT_Proof? get proofState {
    final e = node.getElement(
      'proofState',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Proof(e) : null;
  }

  W_CT_OnOff? get formsDesign {
    final e = node.getElement(
      'formsDesign',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_Rel? get attachedTemplate {
    final e = node.getElement(
      'attachedTemplate',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }

  W_CT_OnOff? get linkStyles {
    final e = node.getElement(
      'linkStyles',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_StylePaneFilter? get stylePaneFormatFilter {
    final e = node.getElement(
      'stylePaneFormatFilter',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_StylePaneFilter(e) : null;
  }

  W_CT_StyleSort? get stylePaneSortMethod {
    final e = node.getElement(
      'stylePaneSortMethod',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_StyleSort(e) : null;
  }

  W_CT_DocType? get documentType {
    final e = node.getElement(
      'documentType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocType(e) : null;
  }

  W_CT_MailMerge? get mailMerge {
    final e = node.getElement(
      'mailMerge',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_MailMerge(e) : null;
  }

  W_CT_TrackChangesView? get revisionView {
    final e = node.getElement(
      'revisionView',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrackChangesView(e) : null;
  }

  W_CT_OnOff? get trackRevisions {
    final e = node.getElement(
      'trackRevisions',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotTrackMoves {
    final e = node.getElement(
      'doNotTrackMoves',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotTrackFormatting {
    final e = node.getElement(
      'doNotTrackFormatting',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DocProtect? get documentProtection {
    final e = node.getElement(
      'documentProtection',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocProtect(e) : null;
  }

  W_CT_OnOff? get autoFormatOverride {
    final e = node.getElement(
      'autoFormatOverride',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get styleLockTheme {
    final e = node.getElement(
      'styleLockTheme',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get styleLockQFSet {
    final e = node.getElement(
      'styleLockQFSet',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_TwipsMeasure? get defaultTabStop {
    final e = node.getElement(
      'defaultTabStop',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TwipsMeasure(e) : null;
  }

  W_CT_OnOff? get autoHyphenation {
    final e = node.getElement(
      'autoHyphenation',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DecimalNumber? get consecutiveHyphenLimit {
    final e = node.getElement(
      'consecutiveHyphenLimit',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_TwipsMeasure? get hyphenationZone {
    final e = node.getElement(
      'hyphenationZone',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TwipsMeasure(e) : null;
  }

  W_CT_OnOff? get doNotHyphenateCaps {
    final e = node.getElement(
      'doNotHyphenateCaps',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get showEnvelope {
    final e = node.getElement(
      'showEnvelope',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DecimalNumberOrPrecent? get summaryLength {
    final e = node.getElement(
      'summaryLength',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumberOrPrecent(e) : null;
  }

  W_CT_String? get clickAndTypeStyle {
    final e = node.getElement(
      'clickAndTypeStyle',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get defaultTableStyle {
    final e = node.getElement(
      'defaultTableStyle',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_OnOff? get evenAndOddHeaders {
    final e = node.getElement(
      'evenAndOddHeaders',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get bookFoldRevPrinting {
    final e = node.getElement(
      'bookFoldRevPrinting',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get bookFoldPrinting {
    final e = node.getElement(
      'bookFoldPrinting',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DecimalNumber? get bookFoldPrintingSheets {
    final e = node.getElement(
      'bookFoldPrintingSheets',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_TwipsMeasure? get drawingGridHorizontalSpacing {
    final e = node.getElement(
      'drawingGridHorizontalSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TwipsMeasure(e) : null;
  }

  W_CT_TwipsMeasure? get drawingGridVerticalSpacing {
    final e = node.getElement(
      'drawingGridVerticalSpacing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TwipsMeasure(e) : null;
  }

  W_CT_DecimalNumber? get displayHorizontalDrawingGridEvery {
    final e = node.getElement(
      'displayHorizontalDrawingGridEvery',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_DecimalNumber? get displayVerticalDrawingGridEvery {
    final e = node.getElement(
      'displayVerticalDrawingGridEvery',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_OnOff? get doNotUseMarginsForDrawingGridOrigin {
    final e = node.getElement(
      'doNotUseMarginsForDrawingGridOrigin',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_TwipsMeasure? get drawingGridHorizontalOrigin {
    final e = node.getElement(
      'drawingGridHorizontalOrigin',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TwipsMeasure(e) : null;
  }

  W_CT_TwipsMeasure? get drawingGridVerticalOrigin {
    final e = node.getElement(
      'drawingGridVerticalOrigin',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TwipsMeasure(e) : null;
  }

  W_CT_OnOff? get doNotShadeFormData {
    final e = node.getElement(
      'doNotShadeFormData',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get noPunctuationKerning {
    final e = node.getElement(
      'noPunctuationKerning',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_CharacterSpacing? get characterSpacingControl {
    final e = node.getElement(
      'characterSpacingControl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_CharacterSpacing(e) : null;
  }

  W_CT_OnOff? get printTwoOnOne {
    final e = node.getElement(
      'printTwoOnOne',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get strictFirstAndLastChars {
    final e = node.getElement(
      'strictFirstAndLastChars',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_Kinsoku? get noLineBreaksAfter {
    final e = node.getElement(
      'noLineBreaksAfter',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Kinsoku(e) : null;
  }

  W_CT_Kinsoku? get noLineBreaksBefore {
    final e = node.getElement(
      'noLineBreaksBefore',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Kinsoku(e) : null;
  }

  W_CT_OnOff? get savePreviewPicture {
    final e = node.getElement(
      'savePreviewPicture',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotValidateAgainstSchema {
    final e = node.getElement(
      'doNotValidateAgainstSchema',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get saveInvalidXml {
    final e = node.getElement(
      'saveInvalidXml',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get ignoreMixedContent {
    final e = node.getElement(
      'ignoreMixedContent',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get alwaysShowPlaceholderText {
    final e = node.getElement(
      'alwaysShowPlaceholderText',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotDemarcateInvalidXml {
    final e = node.getElement(
      'doNotDemarcateInvalidXml',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get saveXmlDataOnly {
    final e = node.getElement(
      'saveXmlDataOnly',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get useXSLTWhenSaving {
    final e = node.getElement(
      'useXSLTWhenSaving',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_SaveThroughXslt? get saveThroughXslt {
    final e = node.getElement(
      'saveThroughXslt',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SaveThroughXslt(e) : null;
  }

  W_CT_OnOff? get showXMLTags {
    final e = node.getElement(
      'showXMLTags',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get alwaysMergeEmptyNamespace {
    final e = node.getElement(
      'alwaysMergeEmptyNamespace',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get updateFields {
    final e = node.getElement(
      'updateFields',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_ShapeDefaults? get hdrShapeDefaults {
    final e = node.getElement(
      'hdrShapeDefaults',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_ShapeDefaults(e) : null;
  }

  W_CT_FtnDocProps? get footnotePr {
    final e = node.getElement(
      'footnotePr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FtnDocProps(e) : null;
  }

  W_CT_EdnDocProps? get endnotePr {
    final e = node.getElement(
      'endnotePr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_EdnDocProps(e) : null;
  }

  W_CT_Compat? get compat {
    final e = node.getElement(
      'compat',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Compat(e) : null;
  }

  W_CT_DocVars? get docVars {
    final e = node.getElement(
      'docVars',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocVars(e) : null;
  }

  W_CT_DocRsids? get rsids {
    final e = node.getElement(
      'rsids',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocRsids(e) : null;
  }

  Iterable<W_CT_String> get attachedSchema {
    return node
        .findElements(
          'attachedSchema',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_String.new);
  }

  W_CT_Language? get themeFontLang {
    final e = node.getElement(
      'themeFontLang',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Language(e) : null;
  }

  W_CT_ColorSchemeMapping? get clrSchemeMapping {
    final e = node.getElement(
      'clrSchemeMapping',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_ColorSchemeMapping(e) : null;
  }

  W_CT_OnOff? get doNotIncludeSubdocsInStats {
    final e = node.getElement(
      'doNotIncludeSubdocsInStats',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotAutoCompressPictures {
    final e = node.getElement(
      'doNotAutoCompressPictures',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_Empty? get forceUpgrade {
    final e = node.getElement(
      'forceUpgrade',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Empty(e) : null;
  }

  W_CT_Captions? get captions {
    final e = node.getElement(
      'captions',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Captions(e) : null;
  }

  W_CT_ReadingModeInkLockDown? get readModeInkLockDown {
    final e = node.getElement(
      'readModeInkLockDown',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_ReadingModeInkLockDown(e) : null;
  }

  Iterable<W_CT_SmartTagType> get smartTagType {
    return node
        .findElements(
          'smartTagType',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SmartTagType.new);
  }

  W_CT_ShapeDefaults? get shapeDefaults {
    final e = node.getElement(
      'shapeDefaults',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_ShapeDefaults(e) : null;
  }

  W_CT_OnOff? get doNotEmbedSmartTags {
    final e = node.getElement(
      'doNotEmbedSmartTags',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_String? get decimalSymbol {
    final e = node.getElement(
      'decimalSymbol',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get listSeparator {
    final e = node.getElement(
      'listSeparator',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }
}
extension type W_CT_StyleSort(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_StyleSort get val {
    return W_ST_StyleSort.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_StylePaneFilter(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_WebSettings(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_Frameset? get frameset {
    final e = node.getElement(
      'frameset',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Frameset(e) : null;
  }

  W_CT_Divs? get divs {
    final e = node.getElement(
      'divs',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Divs(e) : null;
  }

  W_CT_String? get encoding {
    final e = node.getElement(
      'encoding',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_OptimizeForBrowser? get optimizeForBrowser {
    final e = node.getElement(
      'optimizeForBrowser',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OptimizeForBrowser(e) : null;
  }

  W_CT_OnOff? get relyOnVML {
    final e = node.getElement(
      'relyOnVML',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get allowPNG {
    final e = node.getElement(
      'allowPNG',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotRelyOnCSS {
    final e = node.getElement(
      'doNotRelyOnCSS',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotSaveAsSingleFile {
    final e = node.getElement(
      'doNotSaveAsSingleFile',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotOrganizeInFolder {
    final e = node.getElement(
      'doNotOrganizeInFolder',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get doNotUseLongFileNames {
    final e = node.getElement(
      'doNotUseLongFileNames',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DecimalNumber? get pixelsPerInch {
    final e = node.getElement(
      'pixelsPerInch',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_TargetScreenSz? get targetScreenSz {
    final e = node.getElement(
      'targetScreenSz',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TargetScreenSz(e) : null;
  }

  W_CT_OnOff? get saveSmartTagsAsXml {
    final e = node.getElement(
      'saveSmartTagsAsXml',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }
}
extension type W_CT_FrameScrollbar(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_FrameScrollbar get val {
    return W_ST_FrameScrollbar.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_OptimizeForBrowser(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get target {
    return node.getAttribute(
      'target',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Frame(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_String? get sz {
    final e = node.getElement(
      'sz',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get name {
    final e = node.getElement(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get title {
    final e = node.getElement(
      'title',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_Rel? get longDesc {
    final e = node.getElement(
      'longDesc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }

  W_CT_Rel? get sourceFileName {
    final e = node.getElement(
      'sourceFileName',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Rel(e) : null;
  }

  W_CT_PixelsMeasure? get marW {
    final e = node.getElement(
      'marW',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PixelsMeasure(e) : null;
  }

  W_CT_PixelsMeasure? get marH {
    final e = node.getElement(
      'marH',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PixelsMeasure(e) : null;
  }

  W_CT_FrameScrollbar? get scrollbar {
    final e = node.getElement(
      'scrollbar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FrameScrollbar(e) : null;
  }

  W_CT_OnOff? get noResizeAllowed {
    final e = node.getElement(
      'noResizeAllowed',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get linkedToFile {
    final e = node.getElement(
      'linkedToFile',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }
}
extension type W_CT_FrameLayout(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_FrameLayout get val {
    return W_ST_FrameLayout.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_FramesetSplitbar(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_CT_TwipsMeasure? get w {
    final e = node.getElement(
      'w',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TwipsMeasure(e) : null;
  }

  W_CT_Color? get color {
    final e = node.getElement(
      'color',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Color(e) : null;
  }

  W_CT_OnOff? get noBorder {
    final e = node.getElement(
      'noBorder',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get flatBorders {
    final e = node.getElement(
      'flatBorders',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }
}
extension type W_CT_Frameset(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_String? get sz {
    final e = node.getElement(
      'sz',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_FramesetSplitbar? get framesetSplitbar {
    final e = node.getElement(
      'framesetSplitbar',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FramesetSplitbar(e) : null;
  }

  W_CT_FrameLayout? get frameLayout {
    final e = node.getElement(
      'frameLayout',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FrameLayout(e) : null;
  }

  W_CT_String? get title {
    final e = node.getElement(
      'title',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  Iterable<W_CT_Frameset> get frameset {
    return node
        .findElements(
          'frameset',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Frameset.new);
  }

  Iterable<W_CT_Frame> get frame {
    return node
        .findElements(
          'frame',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Frame.new);
  }
}
extension type W_CT_NumPicBullet(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get numPicBulletId {
    return node.getAttribute(
      'numPicBulletId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_Picture? get pict {
    final e = node.getElement(
      'pict',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Picture(e) : null;
  }

  W_CT_Drawing? get drawing {
    final e = node.getElement(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Drawing(e) : null;
  }
}
extension type W_CT_LevelSuffix(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_LevelSuffix get val {
    return W_ST_LevelSuffix.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_LevelText(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_LvlLegacy(_i1.XmlElement node) implements _i1.XmlElement {}
extension type W_CT_Lvl(_i1.XmlElement node) implements _i1.XmlElement {
  String get ilvl {
    return node.getAttribute(
      'ilvl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String? get tplc {
    return node.getAttribute(
      'tplc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_CT_DecimalNumber? get start {
    final e = node.getElement(
      'start',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_NumFmt(e) : null;
  }

  W_CT_DecimalNumber? get lvlRestart {
    final e = node.getElement(
      'lvlRestart',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_String? get pStyle {
    final e = node.getElement(
      'pStyle',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_OnOff? get isLgl {
    final e = node.getElement(
      'isLgl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_LevelSuffix? get suff {
    final e = node.getElement(
      'suff',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LevelSuffix(e) : null;
  }

  W_CT_LevelText? get lvlText {
    final e = node.getElement(
      'lvlText',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LevelText(e) : null;
  }

  W_CT_DecimalNumber? get lvlPicBulletId {
    final e = node.getElement(
      'lvlPicBulletId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_LvlLegacy? get legacy {
    final e = node.getElement(
      'legacy',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LvlLegacy(e) : null;
  }

  W_CT_Jc? get lvlJc {
    final e = node.getElement(
      'lvlJc',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Jc(e) : null;
  }

  W_CT_PPrGeneral? get pPr {
    final e = node.getElement(
      'pPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PPrGeneral(e) : null;
  }

  W_CT_RPr? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RPr(e) : null;
  }
}
extension type W_CT_MultiLevelType(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_MultiLevelType get val {
    return W_ST_MultiLevelType.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_AbstractNum(_i1.XmlElement node) implements _i1.XmlElement {
  String get abstractNumId {
    return node.getAttribute(
      'abstractNumId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_LongHexNumber? get nsid {
    final e = node.getElement(
      'nsid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LongHexNumber(e) : null;
  }

  W_CT_MultiLevelType? get multiLevelType {
    final e = node.getElement(
      'multiLevelType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_MultiLevelType(e) : null;
  }

  W_CT_LongHexNumber? get tmpl {
    final e = node.getElement(
      'tmpl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LongHexNumber(e) : null;
  }

  W_CT_String? get name {
    final e = node.getElement(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get styleLink {
    final e = node.getElement(
      'styleLink',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get numStyleLink {
    final e = node.getElement(
      'numStyleLink',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  Iterable<W_CT_Lvl> get lvl {
    return node
        .findElements(
          'lvl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Lvl.new);
  }
}
extension type W_CT_NumLvl(_i1.XmlElement node) implements _i1.XmlElement {
  String get ilvl {
    return node.getAttribute(
      'ilvl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_DecimalNumber? get startOverride {
    final e = node.getElement(
      'startOverride',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_Lvl? get lvl {
    final e = node.getElement(
      'lvl',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Lvl(e) : null;
  }
}
extension type W_CT_Num(_i1.XmlElement node) implements _i1.XmlElement {
  String get numId {
    return node.getAttribute(
      'numId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_DecimalNumber? get abstractNumId {
    final e = node.getElement(
      'abstractNumId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  Iterable<W_CT_NumLvl> get lvlOverride {
    return node
        .findElements(
          'lvlOverride',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_NumLvl.new);
  }
}
extension type W_CT_Numbering(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_NumPicBullet> get numPicBullet {
    return node
        .findElements(
          'numPicBullet',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_NumPicBullet.new);
  }

  Iterable<W_CT_AbstractNum> get abstractNum {
    return node
        .findElements(
          'abstractNum',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_AbstractNum.new);
  }

  Iterable<W_CT_Num> get num_ {
    return node
        .findElements(
          'num',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Num.new);
  }

  W_CT_DecimalNumber? get numIdMacAtCleanup {
    final e = node.getElement(
      'numIdMacAtCleanup',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }
}
extension type W_CT_TblStylePr(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_TblStyleOverrideType get type {
    return W_ST_TblStyleOverrideType.fromValue(
      node.getAttribute(
        'type',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }

  W_CT_PPrGeneral? get pPr {
    final e = node.getElement(
      'pPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PPrGeneral(e) : null;
  }

  W_CT_RPr? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RPr(e) : null;
  }

  W_CT_TblPrBase? get tblPr {
    final e = node.getElement(
      'tblPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblPrBase(e) : null;
  }

  W_CT_TrPr? get trPr {
    final e = node.getElement(
      'trPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrPr(e) : null;
  }

  W_CT_TcPr? get tcPr {
    final e = node.getElement(
      'tcPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TcPr(e) : null;
  }
}
extension type W_CT_Style(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_StyleType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_StyleType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get styleId {
    return node.getAttribute(
      'styleId',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_CT_String? get name {
    final e = node.getElement(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get aliases {
    final e = node.getElement(
      'aliases',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get basedOn {
    final e = node.getElement(
      'basedOn',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get next {
    final e = node.getElement(
      'next',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_String? get link {
    final e = node.getElement(
      'link',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_OnOff? get autoRedefine {
    final e = node.getElement(
      'autoRedefine',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get hidden {
    final e = node.getElement(
      'hidden',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_DecimalNumber? get uiPriority {
    final e = node.getElement(
      'uiPriority',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DecimalNumber(e) : null;
  }

  W_CT_OnOff? get semiHidden {
    final e = node.getElement(
      'semiHidden',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get unhideWhenUsed {
    final e = node.getElement(
      'unhideWhenUsed',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get qFormat {
    final e = node.getElement(
      'qFormat',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get locked {
    final e = node.getElement(
      'locked',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get personal {
    final e = node.getElement(
      'personal',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get personalCompose {
    final e = node.getElement(
      'personalCompose',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get personalReply {
    final e = node.getElement(
      'personalReply',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_LongHexNumber? get rsid {
    final e = node.getElement(
      'rsid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LongHexNumber(e) : null;
  }

  W_CT_PPrGeneral? get pPr {
    final e = node.getElement(
      'pPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_PPrGeneral(e) : null;
  }

  W_CT_RPr? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_RPr(e) : null;
  }

  W_CT_TblPrBase? get tblPr {
    final e = node.getElement(
      'tblPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TblPrBase(e) : null;
  }

  W_CT_TrPr? get trPr {
    final e = node.getElement(
      'trPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TrPr(e) : null;
  }

  W_CT_TcPr? get tcPr {
    final e = node.getElement(
      'tcPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_TcPr(e) : null;
  }

  Iterable<W_CT_TblStylePr> get tblStylePr {
    return node
        .findElements(
          'tblStylePr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TblStylePr.new);
  }
}
extension type W_CT_LsdException(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String? get uiPriority {
    return node.getAttribute(
      'uiPriority',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_LatentStyles(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get defUIPriority {
    return node.getAttribute(
      'defUIPriority',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get count {
    return node.getAttribute(
      'count',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  Iterable<W_CT_LsdException> get lsdException {
    return node
        .findElements(
          'lsdException',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_LsdException.new);
  }
}
extension type W_CT_Styles(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_DocDefaults? get docDefaults {
    final e = node.getElement(
      'docDefaults',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocDefaults(e) : null;
  }

  W_CT_LatentStyles? get latentStyles {
    final e = node.getElement(
      'latentStyles',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_LatentStyles(e) : null;
  }

  Iterable<W_CT_Style> get style {
    return node
        .findElements(
          'style',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Style.new);
  }
}
extension type W_CT_Panose(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_FontFamily(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_FontFamily get val {
    return W_ST_FontFamily.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_Pitch(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_Pitch get val {
    return W_ST_Pitch.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_FontSig(_i1.XmlElement node) implements _i1.XmlElement {
  String get usb0 {
    return node.getAttribute(
      'usb0',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get usb1 {
    return node.getAttribute(
      'usb1',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get usb2 {
    return node.getAttribute(
      'usb2',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get usb3 {
    return node.getAttribute(
      'usb3',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get csb0 {
    return node.getAttribute(
      'csb0',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get csb1 {
    return node.getAttribute(
      'csb1',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_FontRel(_i1.XmlElement node) implements _i1.XmlElement {
  String? get fontKey {
    return node.getAttribute(
      'fontKey',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_Font(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_String? get altName {
    final e = node.getElement(
      'altName',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_Panose? get panose1 {
    final e = node.getElement(
      'panose1',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Panose(e) : null;
  }

  W_CT_Charset? get charset {
    final e = node.getElement(
      'charset',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Charset(e) : null;
  }

  W_CT_FontFamily? get family {
    final e = node.getElement(
      'family',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FontFamily(e) : null;
  }

  W_CT_OnOff? get notTrueType {
    final e = node.getElement(
      'notTrueType',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_Pitch? get pitch {
    final e = node.getElement(
      'pitch',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Pitch(e) : null;
  }

  W_CT_FontSig? get sig {
    final e = node.getElement(
      'sig',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FontSig(e) : null;
  }

  W_CT_FontRel? get embedRegular {
    final e = node.getElement(
      'embedRegular',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FontRel(e) : null;
  }

  W_CT_FontRel? get embedBold {
    final e = node.getElement(
      'embedBold',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FontRel(e) : null;
  }

  W_CT_FontRel? get embedItalic {
    final e = node.getElement(
      'embedItalic',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FontRel(e) : null;
  }

  W_CT_FontRel? get embedBoldItalic {
    final e = node.getElement(
      'embedBoldItalic',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_FontRel(e) : null;
  }
}
extension type W_CT_FontsList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_Font> get font {
    return node
        .findElements(
          'font',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Font.new);
  }
}
extension type W_CT_DivBdr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_Border? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }

  W_CT_Border? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Border(e) : null;
  }
}
extension type W_CT_Div(_i1.XmlElement node) implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_CT_OnOff? get blockQuote {
    final e = node.getElement(
      'blockQuote',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_OnOff? get bodyDiv {
    final e = node.getElement(
      'bodyDiv',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_OnOff(e) : null;
  }

  W_CT_SignedTwipsMeasure? get marLeft {
    final e = node.getElement(
      'marLeft',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SignedTwipsMeasure(e) : null;
  }

  W_CT_SignedTwipsMeasure? get marRight {
    final e = node.getElement(
      'marRight',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SignedTwipsMeasure(e) : null;
  }

  W_CT_SignedTwipsMeasure? get marTop {
    final e = node.getElement(
      'marTop',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SignedTwipsMeasure(e) : null;
  }

  W_CT_SignedTwipsMeasure? get marBottom {
    final e = node.getElement(
      'marBottom',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SignedTwipsMeasure(e) : null;
  }

  W_CT_DivBdr? get divBdr {
    final e = node.getElement(
      'divBdr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DivBdr(e) : null;
  }

  Iterable<W_CT_Divs> get divsChild {
    return node
        .findElements(
          'divsChild',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Divs.new);
  }
}
extension type W_CT_Divs(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_Div> get div {
    return node
        .findElements(
          'div',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Div.new);
  }
}
extension type W_CT_TxbxContent(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_CustomXmlBlock> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlBlock.new);
  }

  Iterable<W_CT_SdtBlock> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtBlock.new);
  }

  Iterable<W_CT_P> get p {
    return node
        .findElements(
          'p',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_P.new);
  }

  Iterable<W_CT_Tbl> get tbl {
    return node
        .findElements(
          'tbl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tbl.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_AltChunk> get altChunk {
    return node
        .findElements(
          'altChunk',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_AltChunk.new);
  }
}
extension type W_CT_Body(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_CustomXmlBlock> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_CustomXmlBlock.new);
  }

  Iterable<W_CT_SdtBlock> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_SdtBlock.new);
  }

  Iterable<W_CT_P> get p {
    return node
        .findElements(
          'p',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_P.new);
  }

  Iterable<W_CT_Tbl> get tbl {
    return node
        .findElements(
          'tbl',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Tbl.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_AltChunk> get altChunk {
    return node
        .findElements(
          'altChunk',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_AltChunk.new);
  }

  W_CT_SectPr? get sectPr {
    final e = node.getElement(
      'sectPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_SectPr(e) : null;
  }
}
extension type W_CT_ShapeDefaults(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type W_CT_Comments(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_Comment> get comment {
    return node
        .findElements(
          'comment',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Comment.new);
  }
}
extension type W_CT_Footnotes(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_FtnEdn> get footnote {
    return node
        .findElements(
          'footnote',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FtnEdn.new);
  }
}
extension type W_CT_Endnotes(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_FtnEdn> get endnote {
    return node
        .findElements(
          'endnote',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_FtnEdn.new);
  }
}
extension type W_CT_SmartTagType(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get namespaceuri {
    return node.getAttribute(
      'namespaceuri',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  String? get url {
    return node.getAttribute(
      'url',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }
}
extension type W_CT_DocPartBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_DocPartBehavior get val {
    return W_ST_DocPartBehavior.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_DocPartBehaviors(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<W_CT_DocPartBehavior> get behavior {
    return node
        .findElements(
          'behavior',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DocPartBehavior.new);
  }
}
extension type W_CT_DocPartType(_i1.XmlElement node) implements _i1.XmlElement {
  W_ST_DocPartType get val {
    return W_ST_DocPartType.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_DocPartTypes(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<W_CT_DocPartType> get type {
    return node
        .findElements(
          'type',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DocPartType.new);
  }
}
extension type W_CT_DocPartGallery(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_ST_DocPartGallery get val {
    return W_ST_DocPartGallery.fromValue(
      node.getAttribute(
        'val',
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      )!,
    )!;
  }
}
extension type W_CT_DocPartCategory(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_CT_String? get name {
    final e = node.getElement(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_DocPartGallery? get gallery {
    final e = node.getElement(
      'gallery',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocPartGallery(e) : null;
  }
}
extension type W_CT_DocPartName(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_DocPartPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_DocPartName? get name {
    final e = node.getElement(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocPartName(e) : null;
  }

  W_CT_String? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_DocPartCategory? get category {
    final e = node.getElement(
      'category',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocPartCategory(e) : null;
  }

  W_CT_DocPartTypes? get types {
    final e = node.getElement(
      'types',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocPartTypes(e) : null;
  }

  W_CT_DocPartBehaviors? get behaviors {
    final e = node.getElement(
      'behaviors',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocPartBehaviors(e) : null;
  }

  W_CT_String? get description {
    final e = node.getElement(
      'description',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_String(e) : null;
  }

  W_CT_Guid? get guid {
    final e = node.getElement(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Guid(e) : null;
  }
}
extension type W_CT_DocPart(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_DocPartPr? get docPartPr {
    final e = node.getElement(
      'docPartPr',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_DocPartPr(e) : null;
  }

  W_CT_Body? get docPartBody {
    final e = node.getElement(
      'docPartBody',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Body(e) : null;
  }
}
extension type W_CT_DocParts(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_DocPart> get docPart {
    return node
        .findElements(
          'docPart',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_DocPart.new);
  }
}
extension type W_CT_Caption(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  W_ST_CaptionPos? get pos {
    return node.getAttribute(
              'pos',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_CaptionPos.fromValue(
            node.getAttribute(
              'pos',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  String? get heading {
    return node.getAttribute(
      'heading',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
  }

  W_ST_NumberFormat? get numFmt {
    return node.getAttribute(
              'numFmt',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_NumberFormat.fromValue(
            node.getAttribute(
              'numFmt',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }

  W_ST_ChapterSep? get sep {
    return node.getAttribute(
              'sep',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? W_ST_ChapterSep.fromValue(
            node.getAttribute(
              'sep',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_AutoCaption(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }

  String get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    )!;
  }
}
extension type W_CT_AutoCaptions(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<W_CT_AutoCaption> get autoCaption {
    return node
        .findElements(
          'autoCaption',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_AutoCaption.new);
  }
}
extension type W_CT_Captions(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_Caption> get caption {
    return node
        .findElements(
          'caption',
          namespace:
              'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
        )
        .map(W_CT_Caption.new);
  }

  W_CT_AutoCaptions? get autoCaptions {
    final e = node.getElement(
      'autoCaptions',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_AutoCaptions(e) : null;
  }
}
extension type W_CT_DocumentBase(_i1.XmlElement node)
    implements _i1.XmlElement {
  W_CT_Background? get background {
    final e = node.getElement(
      'background',
      namespace: 'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    );
    return e != null ? W_CT_Background(e) : null;
  }
}
extension type W_CT_Document(_i1.XmlElement node) implements _i1.XmlElement {
  ST_ConformanceClass? get conformance {
    return node.getAttribute(
              'conformance',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            ) !=
            null
        ? ST_ConformanceClass.fromValue(
            node.getAttribute(
              'conformance',
              namespace:
                  'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type W_CT_GlossaryDocument(_i1.XmlElement node)
    implements _i1.XmlElement {}

enum W_ST_HighlightColor {
  black('black'),
  blue('blue'),
  cyan('cyan'),
  green('green'),
  magenta('magenta'),
  red('red'),
  yellow('yellow'),
  white('white'),
  darkBlue('darkBlue'),
  darkCyan('darkCyan'),
  darkGreen('darkGreen'),
  darkMagenta('darkMagenta'),
  darkRed('darkRed'),
  darkYellow('darkYellow'),
  darkGray('darkGray'),
  lightGray('lightGray'),
  none('none');

  const W_ST_HighlightColor(this.value);

  final String value;

  static W_ST_HighlightColor? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_HexColorAuto {
  auto('auto');

  const W_ST_HexColorAuto(this.value);

  final String value;

  static W_ST_HexColorAuto? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Underline {
  single('single'),
  words('words'),
  double_('double'),
  thick('thick'),
  dotted('dotted'),
  dottedHeavy('dottedHeavy'),
  dash('dash'),
  dashedHeavy('dashedHeavy'),
  dashLong('dashLong'),
  dashLongHeavy('dashLongHeavy'),
  dotDash('dotDash'),
  dashDotHeavy('dashDotHeavy'),
  dotDotDash('dotDotDash'),
  dashDotDotHeavy('dashDotDotHeavy'),
  wave('wave'),
  wavyHeavy('wavyHeavy'),
  wavyDouble('wavyDouble'),
  none('none');

  const W_ST_Underline(this.value);

  final String value;

  static W_ST_Underline? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TextEffect {
  blinkBackground('blinkBackground'),
  lights('lights'),
  antsBlack('antsBlack'),
  antsRed('antsRed'),
  shimmer('shimmer'),
  sparkle('sparkle'),
  none('none');

  const W_ST_TextEffect(this.value);

  final String value;

  static W_ST_TextEffect? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Border {
  nil('nil'),
  none('none'),
  single('single'),
  thick('thick'),
  double_('double'),
  dotted('dotted'),
  dashed('dashed'),
  dotDash('dotDash'),
  dotDotDash('dotDotDash'),
  triple('triple'),
  thinThickSmallGap('thinThickSmallGap'),
  thickThinSmallGap('thickThinSmallGap'),
  thinThickThinSmallGap('thinThickThinSmallGap'),
  thinThickMediumGap('thinThickMediumGap'),
  thickThinMediumGap('thickThinMediumGap'),
  thinThickThinMediumGap('thinThickThinMediumGap'),
  thinThickLargeGap('thinThickLargeGap'),
  thickThinLargeGap('thickThinLargeGap'),
  thinThickThinLargeGap('thinThickThinLargeGap'),
  wave('wave'),
  doubleWave('doubleWave'),
  dashSmallGap('dashSmallGap'),
  dashDotStroked('dashDotStroked'),
  threeDEmboss('threeDEmboss'),
  threeDEngrave('threeDEngrave'),
  outset('outset'),
  inset('inset'),
  apples('apples'),
  archedScallops('archedScallops'),
  babyPacifier('babyPacifier'),
  babyRattle('babyRattle'),
  balloons3Colors('balloons3Colors'),
  balloonsHotAir('balloonsHotAir'),
  basicBlackDashes('basicBlackDashes'),
  basicBlackDots('basicBlackDots'),
  basicBlackSquares('basicBlackSquares'),
  basicThinLines('basicThinLines'),
  basicWhiteDashes('basicWhiteDashes'),
  basicWhiteDots('basicWhiteDots'),
  basicWhiteSquares('basicWhiteSquares'),
  basicWideInline('basicWideInline'),
  basicWideMidline('basicWideMidline'),
  basicWideOutline('basicWideOutline'),
  bats('bats'),
  birds('birds'),
  birdsFlight('birdsFlight'),
  cabins('cabins'),
  cakeSlice('cakeSlice'),
  candyCorn('candyCorn'),
  celticKnotwork('celticKnotwork'),
  certificateBanner('certificateBanner'),
  chainLink('chainLink'),
  champagneBottle('champagneBottle'),
  checkedBarBlack('checkedBarBlack'),
  checkedBarColor('checkedBarColor'),
  checkered('checkered'),
  christmasTree('christmasTree'),
  circlesLines('circlesLines'),
  circlesRectangles('circlesRectangles'),
  classicalWave('classicalWave'),
  clocks('clocks'),
  compass('compass'),
  confetti('confetti'),
  confettiGrays('confettiGrays'),
  confettiOutline('confettiOutline'),
  confettiStreamers('confettiStreamers'),
  confettiWhite('confettiWhite'),
  cornerTriangles('cornerTriangles'),
  couponCutoutDashes('couponCutoutDashes'),
  couponCutoutDots('couponCutoutDots'),
  crazyMaze('crazyMaze'),
  creaturesButterfly('creaturesButterfly'),
  creaturesFish('creaturesFish'),
  creaturesInsects('creaturesInsects'),
  creaturesLadyBug('creaturesLadyBug'),
  crossStitch('crossStitch'),
  cup('cup'),
  decoArch('decoArch'),
  decoArchColor('decoArchColor'),
  decoBlocks('decoBlocks'),
  diamondsGray('diamondsGray'),
  doubleD('doubleD'),
  doubleDiamonds('doubleDiamonds'),
  earth1('earth1'),
  earth2('earth2'),
  earth3('earth3'),
  eclipsingSquares1('eclipsingSquares1'),
  eclipsingSquares2('eclipsingSquares2'),
  eggsBlack('eggsBlack'),
  fans('fans'),
  film('film'),
  firecrackers('firecrackers'),
  flowersBlockPrint('flowersBlockPrint'),
  flowersDaisies('flowersDaisies'),
  flowersModern1('flowersModern1'),
  flowersModern2('flowersModern2'),
  flowersPansy('flowersPansy'),
  flowersRedRose('flowersRedRose'),
  flowersRoses('flowersRoses'),
  flowersTeacup('flowersTeacup'),
  flowersTiny('flowersTiny'),
  gems('gems'),
  gingerbreadMan('gingerbreadMan'),
  gradient('gradient'),
  handmade1('handmade1'),
  handmade2('handmade2'),
  heartBalloon('heartBalloon'),
  heartGray('heartGray'),
  hearts('hearts'),
  heebieJeebies('heebieJeebies'),
  holly('holly'),
  houseFunky('houseFunky'),
  hypnotic('hypnotic'),
  iceCreamCones('iceCreamCones'),
  lightBulb('lightBulb'),
  lightning1('lightning1'),
  lightning2('lightning2'),
  mapPins('mapPins'),
  mapleLeaf('mapleLeaf'),
  mapleMuffins('mapleMuffins'),
  marquee('marquee'),
  marqueeToothed('marqueeToothed'),
  moons('moons'),
  mosaic('mosaic'),
  musicNotes('musicNotes'),
  northwest('northwest'),
  ovals('ovals'),
  packages('packages'),
  palmsBlack('palmsBlack'),
  palmsColor('palmsColor'),
  paperClips('paperClips'),
  papyrus('papyrus'),
  partyFavor('partyFavor'),
  partyGlass('partyGlass'),
  pencils('pencils'),
  people('people'),
  peopleWaving('peopleWaving'),
  peopleHats('peopleHats'),
  poinsettias('poinsettias'),
  postageStamp('postageStamp'),
  pumpkin1('pumpkin1'),
  pushPinNote2('pushPinNote2'),
  pushPinNote1('pushPinNote1'),
  pyramids('pyramids'),
  pyramidsAbove('pyramidsAbove'),
  quadrants('quadrants'),
  rings('rings'),
  safari('safari'),
  sawtooth('sawtooth'),
  sawtoothGray('sawtoothGray'),
  scaredCat('scaredCat'),
  seattle('seattle'),
  shadowedSquares('shadowedSquares'),
  sharksTeeth('sharksTeeth'),
  shorebirdTracks('shorebirdTracks'),
  skyrocket('skyrocket'),
  snowflakeFancy('snowflakeFancy'),
  snowflakes('snowflakes'),
  sombrero('sombrero'),
  southwest('southwest'),
  stars('stars'),
  starsTop('starsTop'),
  stars3d('stars3d'),
  starsBlack('starsBlack'),
  starsShadowed('starsShadowed'),
  sun('sun'),
  swirligig('swirligig'),
  tornPaper('tornPaper'),
  tornPaperBlack('tornPaperBlack'),
  trees('trees'),
  triangleParty('triangleParty'),
  triangles('triangles'),
  triangle1('triangle1'),
  triangle2('triangle2'),
  triangleCircle1('triangleCircle1'),
  triangleCircle2('triangleCircle2'),
  shapes1('shapes1'),
  shapes2('shapes2'),
  twistedLines1('twistedLines1'),
  twistedLines2('twistedLines2'),
  vine('vine'),
  waveline('waveline'),
  weavingAngles('weavingAngles'),
  weavingBraid('weavingBraid'),
  weavingRibbon('weavingRibbon'),
  weavingStrips('weavingStrips'),
  whiteFlowers('whiteFlowers'),
  woodwork('woodwork'),
  xIllusions('xIllusions'),
  zanyTriangles('zanyTriangles'),
  zigZag('zigZag'),
  zigZagStitch('zigZagStitch'),
  custom('custom');

  const W_ST_Border(this.value);

  final String value;

  static W_ST_Border? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Shd {
  nil('nil'),
  clear('clear'),
  solid('solid'),
  horzStripe('horzStripe'),
  vertStripe('vertStripe'),
  reverseDiagStripe('reverseDiagStripe'),
  diagStripe('diagStripe'),
  horzCross('horzCross'),
  diagCross('diagCross'),
  thinHorzStripe('thinHorzStripe'),
  thinVertStripe('thinVertStripe'),
  thinReverseDiagStripe('thinReverseDiagStripe'),
  thinDiagStripe('thinDiagStripe'),
  thinHorzCross('thinHorzCross'),
  thinDiagCross('thinDiagCross'),
  pct5('pct5'),
  pct10('pct10'),
  pct12('pct12'),
  pct15('pct15'),
  pct20('pct20'),
  pct25('pct25'),
  pct30('pct30'),
  pct35('pct35'),
  pct37('pct37'),
  pct40('pct40'),
  pct45('pct45'),
  pct50('pct50'),
  pct55('pct55'),
  pct60('pct60'),
  pct62('pct62'),
  pct65('pct65'),
  pct70('pct70'),
  pct75('pct75'),
  pct80('pct80'),
  pct85('pct85'),
  pct87('pct87'),
  pct90('pct90'),
  pct95('pct95');

  const W_ST_Shd(this.value);

  final String value;

  static W_ST_Shd? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Em {
  none('none'),
  dot('dot'),
  comma('comma'),
  circle('circle'),
  underDot('underDot');

  const W_ST_Em(this.value);

  final String value;

  static W_ST_Em? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_CombineBrackets {
  none('none'),
  round('round'),
  square('square'),
  angle('angle'),
  curly('curly');

  const W_ST_CombineBrackets(this.value);

  final String value;

  static W_ST_CombineBrackets? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_HeightRule {
  auto('auto'),
  exact('exact'),
  atLeast('atLeast');

  const W_ST_HeightRule(this.value);

  final String value;

  static W_ST_HeightRule? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Wrap {
  auto('auto'),
  notBeside('notBeside'),
  around('around'),
  tight('tight'),
  through('through'),
  none('none');

  const W_ST_Wrap(this.value);

  final String value;

  static W_ST_Wrap? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_VAnchor {
  text('text'),
  margin('margin'),
  page('page');

  const W_ST_VAnchor(this.value);

  final String value;

  static W_ST_VAnchor? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_HAnchor {
  text('text'),
  margin('margin'),
  page('page');

  const W_ST_HAnchor(this.value);

  final String value;

  static W_ST_HAnchor? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_DropCap {
  none('none'),
  drop('drop'),
  margin('margin');

  const W_ST_DropCap(this.value);

  final String value;

  static W_ST_DropCap? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TabJc {
  clear('clear'),
  start('start'),
  center('center'),
  end('end'),
  decimal('decimal'),
  bar('bar'),
  num_('num'),
  left('left'),
  right('right');

  const W_ST_TabJc(this.value);

  final String value;

  static W_ST_TabJc? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TabTlc {
  none('none'),
  dot('dot'),
  hyphen('hyphen'),
  underscore('underscore'),
  heavy('heavy'),
  middleDot('middleDot');

  const W_ST_TabTlc(this.value);

  final String value;

  static W_ST_TabTlc? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_LineSpacingRule {
  auto('auto'),
  exact('exact'),
  atLeast('atLeast');

  const W_ST_LineSpacingRule(this.value);

  final String value;

  static W_ST_LineSpacingRule? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Jc {
  start('start'),
  center('center'),
  end('end'),
  both('both'),
  mediumKashida('mediumKashida'),
  distribute('distribute'),
  numTab('numTab'),
  highKashida('highKashida'),
  lowKashida('lowKashida'),
  thaiDistribute('thaiDistribute'),
  left('left'),
  right('right');

  const W_ST_Jc(this.value);

  final String value;

  static W_ST_Jc? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_JcTable {
  center('center'),
  end('end'),
  left('left'),
  right('right'),
  start('start');

  const W_ST_JcTable(this.value);

  final String value;

  static W_ST_JcTable? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_View {
  none('none'),
  print('print'),
  outline('outline'),
  masterPages('masterPages'),
  normal('normal'),
  web('web');

  const W_ST_View(this.value);

  final String value;

  static W_ST_View? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Zoom {
  none('none'),
  fullPage('fullPage'),
  bestFit('bestFit'),
  textFit('textFit');

  const W_ST_Zoom(this.value);

  final String value;

  static W_ST_Zoom? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Proof {
  clean('clean'),
  dirty('dirty');

  const W_ST_Proof(this.value);

  final String value;

  static W_ST_Proof? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_DocProtect {
  none('none'),
  readOnly('readOnly'),
  comments('comments'),
  trackedChanges('trackedChanges'),
  forms('forms');

  const W_ST_DocProtect(this.value);

  final String value;

  static W_ST_DocProtect? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_MailMergeDocType {
  catalog('catalog'),
  envelopes('envelopes'),
  mailingLabels('mailingLabels'),
  formLetters('formLetters'),
  email('email'),
  fax('fax');

  const W_ST_MailMergeDocType(this.value);

  final String value;

  static W_ST_MailMergeDocType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_MailMergeDest {
  newDocument('newDocument'),
  printer('printer'),
  email('email'),
  fax('fax');

  const W_ST_MailMergeDest(this.value);

  final String value;

  static W_ST_MailMergeDest? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_MailMergeOdsoFMDFieldType {
  null_('null'),
  dbColumn('dbColumn');

  const W_ST_MailMergeOdsoFMDFieldType(this.value);

  final String value;

  static W_ST_MailMergeOdsoFMDFieldType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TextDirection {
  tb('tb'),
  rl('rl'),
  lr('lr'),
  tbV('tbV'),
  rlV('rlV'),
  lrV('lrV'),
  btLr('btLr'),
  lrTb('lrTb'),
  lrTbV('lrTbV'),
  tbLrV('tbLrV'),
  tbRl('tbRl'),
  tbRlV('tbRlV');

  const W_ST_TextDirection(this.value);

  final String value;

  static W_ST_TextDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TextAlignment {
  top('top'),
  center('center'),
  baseline('baseline'),
  bottom('bottom'),
  auto('auto');

  const W_ST_TextAlignment(this.value);

  final String value;

  static W_ST_TextAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_DisplacedByCustomXml {
  next('next'),
  prev('prev');

  const W_ST_DisplacedByCustomXml(this.value);

  final String value;

  static W_ST_DisplacedByCustomXml? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_AnnotationVMerge {
  cont('cont'),
  rest('rest');

  const W_ST_AnnotationVMerge(this.value);

  final String value;

  static W_ST_AnnotationVMerge? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TextboxTightWrap {
  none('none'),
  allLines('allLines'),
  firstAndLastLine('firstAndLastLine'),
  firstLineOnly('firstLineOnly'),
  lastLineOnly('lastLineOnly');

  const W_ST_TextboxTightWrap(this.value);

  final String value;

  static W_ST_TextboxTightWrap? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_ObjectDrawAspect {
  content('content'),
  icon('icon');

  const W_ST_ObjectDrawAspect(this.value);

  final String value;

  static W_ST_ObjectDrawAspect? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_ObjectUpdateMode {
  always('always'),
  onCall('onCall');

  const W_ST_ObjectUpdateMode(this.value);

  final String value;

  static W_ST_ObjectUpdateMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_FldCharType {
  begin('begin'),
  separate('separate'),
  end('end');

  const W_ST_FldCharType(this.value);

  final String value;

  static W_ST_FldCharType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_InfoTextType {
  text('text'),
  autoText('autoText');

  const W_ST_InfoTextType(this.value);

  final String value;

  static W_ST_InfoTextType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_FFTextType {
  regular('regular'),
  number('number'),
  date('date'),
  currentTime('currentTime'),
  currentDate('currentDate'),
  calculated('calculated');

  const W_ST_FFTextType(this.value);

  final String value;

  static W_ST_FFTextType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_SectionMark {
  nextPage('nextPage'),
  nextColumn('nextColumn'),
  continuous('continuous'),
  evenPage('evenPage'),
  oddPage('oddPage');

  const W_ST_SectionMark(this.value);

  final String value;

  static W_ST_SectionMark? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_NumberFormat {
  decimal('decimal'),
  upperRoman('upperRoman'),
  lowerRoman('lowerRoman'),
  upperLetter('upperLetter'),
  lowerLetter('lowerLetter'),
  ordinal('ordinal'),
  cardinalText('cardinalText'),
  ordinalText('ordinalText'),
  hex('hex'),
  chicago('chicago'),
  ideographDigital('ideographDigital'),
  japaneseCounting('japaneseCounting'),
  aiueo('aiueo'),
  iroha('iroha'),
  decimalFullWidth('decimalFullWidth'),
  decimalHalfWidth('decimalHalfWidth'),
  japaneseLegal('japaneseLegal'),
  japaneseDigitalTenThousand('japaneseDigitalTenThousand'),
  decimalEnclosedCircle('decimalEnclosedCircle'),
  decimalFullWidth2('decimalFullWidth2'),
  aiueoFullWidth('aiueoFullWidth'),
  irohaFullWidth('irohaFullWidth'),
  decimalZero('decimalZero'),
  bullet('bullet'),
  ganada('ganada'),
  chosung('chosung'),
  decimalEnclosedFullstop('decimalEnclosedFullstop'),
  decimalEnclosedParen('decimalEnclosedParen'),
  decimalEnclosedCircleChinese('decimalEnclosedCircleChinese'),
  ideographEnclosedCircle('ideographEnclosedCircle'),
  ideographTraditional('ideographTraditional'),
  ideographZodiac('ideographZodiac'),
  ideographZodiacTraditional('ideographZodiacTraditional'),
  taiwaneseCounting('taiwaneseCounting'),
  ideographLegalTraditional('ideographLegalTraditional'),
  taiwaneseCountingThousand('taiwaneseCountingThousand'),
  taiwaneseDigital('taiwaneseDigital'),
  chineseCounting('chineseCounting'),
  chineseLegalSimplified('chineseLegalSimplified'),
  chineseCountingThousand('chineseCountingThousand'),
  koreanDigital('koreanDigital'),
  koreanCounting('koreanCounting'),
  koreanLegal('koreanLegal'),
  koreanDigital2('koreanDigital2'),
  vietnameseCounting('vietnameseCounting'),
  russianLower('russianLower'),
  russianUpper('russianUpper'),
  none('none'),
  numberInDash('numberInDash'),
  hebrew1('hebrew1'),
  hebrew2('hebrew2'),
  arabicAlpha('arabicAlpha'),
  arabicAbjad('arabicAbjad'),
  hindiVowels('hindiVowels'),
  hindiConsonants('hindiConsonants'),
  hindiNumbers('hindiNumbers'),
  hindiCounting('hindiCounting'),
  thaiLetters('thaiLetters'),
  thaiNumbers('thaiNumbers'),
  thaiCounting('thaiCounting'),
  bahtText('bahtText'),
  dollarText('dollarText'),
  custom('custom');

  const W_ST_NumberFormat(this.value);

  final String value;

  static W_ST_NumberFormat? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_PageOrientation {
  portrait('portrait'),
  landscape('landscape');

  const W_ST_PageOrientation(this.value);

  final String value;

  static W_ST_PageOrientation? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_PageBorderZOrder {
  front('front'),
  back('back');

  const W_ST_PageBorderZOrder(this.value);

  final String value;

  static W_ST_PageBorderZOrder? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_PageBorderDisplay {
  allPages('allPages'),
  firstPage('firstPage'),
  notFirstPage('notFirstPage');

  const W_ST_PageBorderDisplay(this.value);

  final String value;

  static W_ST_PageBorderDisplay? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_PageBorderOffset {
  page('page'),
  text('text');

  const W_ST_PageBorderOffset(this.value);

  final String value;

  static W_ST_PageBorderOffset? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_ChapterSep {
  hyphen('hyphen'),
  period('period'),
  colon('colon'),
  emDash('emDash'),
  enDash('enDash');

  const W_ST_ChapterSep(this.value);

  final String value;

  static W_ST_ChapterSep? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_LineNumberRestart {
  newPage('newPage'),
  newSection('newSection'),
  continuous('continuous');

  const W_ST_LineNumberRestart(this.value);

  final String value;

  static W_ST_LineNumberRestart? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_VerticalJc {
  top('top'),
  center('center'),
  both('both'),
  bottom('bottom');

  const W_ST_VerticalJc(this.value);

  final String value;

  static W_ST_VerticalJc? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_DocGrid {
  default_('default'),
  lines('lines'),
  linesAndChars('linesAndChars'),
  snapToChars('snapToChars');

  const W_ST_DocGrid(this.value);

  final String value;

  static W_ST_DocGrid? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_HdrFtr {
  even('even'),
  default_('default'),
  first('first');

  const W_ST_HdrFtr(this.value);

  final String value;

  static W_ST_HdrFtr? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_FtnEdn {
  normal('normal'),
  separator('separator'),
  continuationSeparator('continuationSeparator'),
  continuationNotice('continuationNotice');

  const W_ST_FtnEdn(this.value);

  final String value;

  static W_ST_FtnEdn? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_BrType {
  page('page'),
  column('column'),
  textWrapping('textWrapping');

  const W_ST_BrType(this.value);

  final String value;

  static W_ST_BrType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_BrClear {
  none('none'),
  left('left'),
  right('right'),
  all('all');

  const W_ST_BrClear(this.value);

  final String value;

  static W_ST_BrClear? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_PTabAlignment {
  left('left'),
  center('center'),
  right('right');

  const W_ST_PTabAlignment(this.value);

  final String value;

  static W_ST_PTabAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_PTabRelativeTo {
  margin('margin'),
  indent('indent');

  const W_ST_PTabRelativeTo(this.value);

  final String value;

  static W_ST_PTabRelativeTo? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_PTabLeader {
  none('none'),
  dot('dot'),
  hyphen('hyphen'),
  underscore('underscore'),
  middleDot('middleDot');

  const W_ST_PTabLeader(this.value);

  final String value;

  static W_ST_PTabLeader? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_ProofErr {
  spellStart('spellStart'),
  spellEnd('spellEnd'),
  gramStart('gramStart'),
  gramEnd('gramEnd');

  const W_ST_ProofErr(this.value);

  final String value;

  static W_ST_ProofErr? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_EdGrp {
  none('none'),
  everyone('everyone'),
  administrators('administrators'),
  contributors('contributors'),
  editors('editors'),
  owners('owners'),
  current('current');

  const W_ST_EdGrp(this.value);

  final String value;

  static W_ST_EdGrp? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Hint {
  default_('default'),
  eastAsia('eastAsia');

  const W_ST_Hint(this.value);

  final String value;

  static W_ST_Hint? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Theme {
  majorEastAsia('majorEastAsia'),
  majorBidi('majorBidi'),
  majorAscii('majorAscii'),
  majorHAnsi('majorHAnsi'),
  minorEastAsia('minorEastAsia'),
  minorBidi('minorBidi'),
  minorAscii('minorAscii'),
  minorHAnsi('minorHAnsi');

  const W_ST_Theme(this.value);

  final String value;

  static W_ST_Theme? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_RubyAlign {
  center('center'),
  distributeLetter('distributeLetter'),
  distributeSpace('distributeSpace'),
  left('left'),
  right('right'),
  rightVertical('rightVertical');

  const W_ST_RubyAlign(this.value);

  final String value;

  static W_ST_RubyAlign? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Lock {
  sdtLocked('sdtLocked'),
  contentLocked('contentLocked'),
  unlocked('unlocked'),
  sdtContentLocked('sdtContentLocked');

  const W_ST_Lock(this.value);

  final String value;

  static W_ST_Lock? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_SdtDateMappingType {
  text('text'),
  date('date'),
  dateTime('dateTime');

  const W_ST_SdtDateMappingType(this.value);

  final String value;

  static W_ST_SdtDateMappingType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Direction {
  ltr('ltr'),
  rtl('rtl');

  const W_ST_Direction(this.value);

  final String value;

  static W_ST_Direction? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TblWidth {
  nil('nil'),
  pct('pct'),
  dxa('dxa'),
  auto('auto');

  const W_ST_TblWidth(this.value);

  final String value;

  static W_ST_TblWidth? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Merge {
  continue_('continue'),
  restart('restart');

  const W_ST_Merge(this.value);

  final String value;

  static W_ST_Merge? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TblLayoutType {
  fixed('fixed'),
  autofit('autofit');

  const W_ST_TblLayoutType(this.value);

  final String value;

  static W_ST_TblLayoutType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TblOverlap {
  never('never'),
  overlap('overlap');

  const W_ST_TblOverlap(this.value);

  final String value;

  static W_ST_TblOverlap? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_FtnPos {
  pageBottom('pageBottom'),
  beneathText('beneathText'),
  sectEnd('sectEnd'),
  docEnd('docEnd');

  const W_ST_FtnPos(this.value);

  final String value;

  static W_ST_FtnPos? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_EdnPos {
  sectEnd('sectEnd'),
  docEnd('docEnd');

  const W_ST_EdnPos(this.value);

  final String value;

  static W_ST_EdnPos? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_RestartNumber {
  continuous('continuous'),
  eachSect('eachSect'),
  eachPage('eachPage');

  const W_ST_RestartNumber(this.value);

  final String value;

  static W_ST_RestartNumber? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_MailMergeSourceType {
  database('database'),
  addressBook('addressBook'),
  document1('document1'),
  document2('document2'),
  text('text'),
  email('email'),
  native('native'),
  legacy('legacy'),
  master('master');

  const W_ST_MailMergeSourceType(this.value);

  final String value;

  static W_ST_MailMergeSourceType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TargetScreenSz {
  v544x376('544x376'),
  v640x480('640x480'),
  v720x512('720x512'),
  v800x600('800x600'),
  v1024x768('1024x768'),
  v1152x882('1152x882'),
  v1152x900('1152x900'),
  v1280x1024('1280x1024'),
  v1600x1200('1600x1200'),
  v1800x1440('1800x1440'),
  v1920x1200('1920x1200');

  const W_ST_TargetScreenSz(this.value);

  final String value;

  static W_ST_TargetScreenSz? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_CharacterSpacing {
  doNotCompress('doNotCompress'),
  compressPunctuation('compressPunctuation'),
  compressPunctuationAndJapaneseKana('compressPunctuationAndJapaneseKana');

  const W_ST_CharacterSpacing(this.value);

  final String value;

  static W_ST_CharacterSpacing? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_WmlColorSchemeIndex {
  dark1('dark1'),
  light1('light1'),
  dark2('dark2'),
  light2('light2'),
  accent1('accent1'),
  accent2('accent2'),
  accent3('accent3'),
  accent4('accent4'),
  accent5('accent5'),
  accent6('accent6'),
  hyperlink('hyperlink'),
  followedHyperlink('followedHyperlink');

  const W_ST_WmlColorSchemeIndex(this.value);

  final String value;

  static W_ST_WmlColorSchemeIndex? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_StyleSort {
  name('name'),
  priority('priority'),
  default_('default'),
  font('font'),
  basedOn('basedOn'),
  type('type'),
  v0000('0000'),
  v0001('0001'),
  v0002('0002'),
  v0003('0003'),
  v0004('0004'),
  v0005('0005');

  const W_ST_StyleSort(this.value);

  final String value;

  static W_ST_StyleSort? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_FrameScrollbar {
  on_('on'),
  off('off'),
  auto('auto');

  const W_ST_FrameScrollbar(this.value);

  final String value;

  static W_ST_FrameScrollbar? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_FrameLayout {
  rows('rows'),
  cols('cols'),
  none('none');

  const W_ST_FrameLayout(this.value);

  final String value;

  static W_ST_FrameLayout? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_LevelSuffix {
  tab('tab'),
  space('space'),
  nothing('nothing');

  const W_ST_LevelSuffix(this.value);

  final String value;

  static W_ST_LevelSuffix? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_MultiLevelType {
  singleLevel('singleLevel'),
  multilevel('multilevel'),
  hybridMultilevel('hybridMultilevel');

  const W_ST_MultiLevelType(this.value);

  final String value;

  static W_ST_MultiLevelType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_TblStyleOverrideType {
  wholeTable('wholeTable'),
  firstRow('firstRow'),
  lastRow('lastRow'),
  firstCol('firstCol'),
  lastCol('lastCol'),
  band1Vert('band1Vert'),
  band2Vert('band2Vert'),
  band1Horz('band1Horz'),
  band2Horz('band2Horz'),
  neCell('neCell'),
  nwCell('nwCell'),
  seCell('seCell'),
  swCell('swCell');

  const W_ST_TblStyleOverrideType(this.value);

  final String value;

  static W_ST_TblStyleOverrideType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_StyleType {
  paragraph('paragraph'),
  character('character'),
  table('table'),
  numbering('numbering');

  const W_ST_StyleType(this.value);

  final String value;

  static W_ST_StyleType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_FontFamily {
  decorative('decorative'),
  modern('modern'),
  roman('roman'),
  script('script'),
  swiss('swiss'),
  auto('auto');

  const W_ST_FontFamily(this.value);

  final String value;

  static W_ST_FontFamily? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_Pitch {
  fixed('fixed'),
  variable('variable'),
  default_('default');

  const W_ST_Pitch(this.value);

  final String value;

  static W_ST_Pitch? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_ThemeColor {
  dark1('dark1'),
  light1('light1'),
  dark2('dark2'),
  light2('light2'),
  accent1('accent1'),
  accent2('accent2'),
  accent3('accent3'),
  accent4('accent4'),
  accent5('accent5'),
  accent6('accent6'),
  hyperlink('hyperlink'),
  followedHyperlink('followedHyperlink'),
  none('none'),
  background1('background1'),
  text1('text1'),
  background2('background2'),
  text2('text2');

  const W_ST_ThemeColor(this.value);

  final String value;

  static W_ST_ThemeColor? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_DocPartBehavior {
  content('content'),
  p('p'),
  pg('pg');

  const W_ST_DocPartBehavior(this.value);

  final String value;

  static W_ST_DocPartBehavior? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_DocPartType {
  none('none'),
  normal('normal'),
  autoExp('autoExp'),
  toolbar('toolbar'),
  speller('speller'),
  formFld('formFld'),
  bbPlcHdr('bbPlcHdr');

  const W_ST_DocPartType(this.value);

  final String value;

  static W_ST_DocPartType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_DocPartGallery {
  placeholder('placeholder'),
  any('any'),
  default_('default'),
  docParts('docParts'),
  coverPg('coverPg'),
  eq('eq'),
  ftrs('ftrs'),
  hdrs('hdrs'),
  pgNum('pgNum'),
  tbls('tbls'),
  watermarks('watermarks'),
  autoTxt('autoTxt'),
  txtBox('txtBox'),
  pgNumT('pgNumT'),
  pgNumB('pgNumB'),
  pgNumMargins('pgNumMargins'),
  tblOfContents('tblOfContents'),
  bib('bib'),
  custQuickParts('custQuickParts'),
  custCoverPg('custCoverPg'),
  custEq('custEq'),
  custFtrs('custFtrs'),
  custHdrs('custHdrs'),
  custPgNum('custPgNum'),
  custTbls('custTbls'),
  custWatermarks('custWatermarks'),
  custAutoTxt('custAutoTxt'),
  custTxtBox('custTxtBox'),
  custPgNumT('custPgNumT'),
  custPgNumB('custPgNumB'),
  custPgNumMargins('custPgNumMargins'),
  custTblOfContents('custTblOfContents'),
  custBib('custBib'),
  custom1('custom1'),
  custom2('custom2'),
  custom3('custom3'),
  custom4('custom4'),
  custom5('custom5');

  const W_ST_DocPartGallery(this.value);

  final String value;

  static W_ST_DocPartGallery? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum W_ST_CaptionPos {
  above('above'),
  below('below'),
  left('left'),
  right('right');

  const W_ST_CaptionPos(this.value);

  final String value;

  static W_ST_CaptionPos? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}
