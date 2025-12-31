// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:xml/xml.dart' as _i1;
import 'package:xml/xml.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';

extension W_CT_Empty_Builder on _i1.XmlBuilder {
  void w_ct_empty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_OnOff_Builder on _i1.XmlBuilder {
  void w_ct_onoff({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_LongHexNumber_Builder on _i1.XmlBuilder {
  void w_ct_longhexnumber({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Charset_Builder on _i1.XmlBuilder {
  void w_ct_charset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    String? characterSet,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val, characterSet);
        },
      );
    } else {
      _buildBody(children, val, characterSet);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? val,
    String? characterSet,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (characterSet != null)
      this.attribute(
        'characterSet',
        characterSet,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DecimalNumber_Builder on _i1.XmlBuilder {
  void w_ct_decimalnumber({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_UnsignedDecimalNumber_Builder on _i1.XmlBuilder {
  void w_ct_unsigneddecimalnumber({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DecimalNumberOrPrecent_Builder on _i1.XmlBuilder {
  void w_ct_decimalnumberorprecent({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TwipsMeasure_Builder on _i1.XmlBuilder {
  void w_ct_twipsmeasure({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SignedTwipsMeasure_Builder on _i1.XmlBuilder {
  void w_ct_signedtwipsmeasure({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_PixelsMeasure_Builder on _i1.XmlBuilder {
  void w_ct_pixelsmeasure({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_HpsMeasure_Builder on _i1.XmlBuilder {
  void w_ct_hpsmeasure({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SignedHpsMeasure_Builder on _i1.XmlBuilder {
  void w_ct_signedhpsmeasure({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_MacroName_Builder on _i1.XmlBuilder {
  void w_ct_macroname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_String_Builder on _i1.XmlBuilder {
  void w_ct_string({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TextScale_Builder on _i1.XmlBuilder {
  void w_ct_textscale({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Highlight_Builder on _i1.XmlBuilder {
  void w_ct_highlight({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_HighlightColor? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_HighlightColor? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Color_Builder on _i1.XmlBuilder {
  void w_ct_color({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, themeColor, themeTint, themeShade);
        },
      );
    } else {
      _buildBody(children, themeColor, themeTint, themeShade);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
  ) {
    if (themeColor != null)
      this.attribute(
        'themeColor',
        themeColor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeTint != null)
      this.attribute(
        'themeTint',
        themeTint,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeShade != null)
      this.attribute(
        'themeShade',
        themeShade,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Lang_Builder on _i1.XmlBuilder {
  void w_ct_lang({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Guid_Builder on _i1.XmlBuilder {
  void w_ct_guid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Underline_Builder on _i1.XmlBuilder {
  void w_ct_underline({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Underline? val,
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val, themeColor, themeTint, themeShade);
        },
      );
    } else {
      _buildBody(children, val, themeColor, themeTint, themeShade);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_Underline? val,
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeColor != null)
      this.attribute(
        'themeColor',
        themeColor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeTint != null)
      this.attribute(
        'themeTint',
        themeTint,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeShade != null)
      this.attribute(
        'themeShade',
        themeShade,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TextEffect_Builder on _i1.XmlBuilder {
  void w_ct_texteffect({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TextEffect? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_TextEffect? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Border_Builder on _i1.XmlBuilder {
  void w_ct_border({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Border? val,
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
    String? sz,
    String? space,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            val,
            themeColor,
            themeTint,
            themeShade,
            sz,
            space,
          );
        },
      );
    } else {
      _buildBody(children, val, themeColor, themeTint, themeShade, sz, space);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_Border? val,
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
    String? sz,
    String? space,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeColor != null)
      this.attribute(
        'themeColor',
        themeColor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeTint != null)
      this.attribute(
        'themeTint',
        themeTint,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeShade != null)
      this.attribute(
        'themeShade',
        themeShade,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (sz != null)
      this.attribute(
        'sz',
        sz,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (space != null)
      this.attribute(
        'space',
        space,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Shd_Builder on _i1.XmlBuilder {
  void w_ct_shd({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Shd? val,
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
    W_ST_ThemeColor? themeFill,
    String? themeFillTint,
    String? themeFillShade,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            val,
            themeColor,
            themeTint,
            themeShade,
            themeFill,
            themeFillTint,
            themeFillShade,
          );
        },
      );
    } else {
      _buildBody(
        children,
        val,
        themeColor,
        themeTint,
        themeShade,
        themeFill,
        themeFillTint,
        themeFillShade,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_Shd? val,
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
    W_ST_ThemeColor? themeFill,
    String? themeFillTint,
    String? themeFillShade,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeColor != null)
      this.attribute(
        'themeColor',
        themeColor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeTint != null)
      this.attribute(
        'themeTint',
        themeTint,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeShade != null)
      this.attribute(
        'themeShade',
        themeShade,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeFill != null)
      this.attribute(
        'themeFill',
        themeFill!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeFillTint != null)
      this.attribute(
        'themeFillTint',
        themeFillTint,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeFillShade != null)
      this.attribute(
        'themeFillShade',
        themeFillShade,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_VerticalAlignRun_Builder on _i1.XmlBuilder {
  void w_ct_verticalalignrun({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    ST_VerticalAlignRun? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    ST_VerticalAlignRun? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FitText_Builder on _i1.XmlBuilder {
  void w_ct_fittext({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Em_Builder on _i1.XmlBuilder {
  void w_ct_em({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Em? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Em? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Language_Builder on _i1.XmlBuilder {
  void w_ct_language({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    String? eastAsia,
    String? bidi,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val, eastAsia, bidi);
        },
      );
    } else {
      _buildBody(children, val, eastAsia, bidi);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? val,
    String? eastAsia,
    String? bidi,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (eastAsia != null)
      this.attribute(
        'eastAsia',
        eastAsia,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (bidi != null)
      this.attribute(
        'bidi',
        bidi,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_EastAsianLayout_Builder on _i1.XmlBuilder {
  void w_ct_eastasianlayout({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? id,
    W_ST_CombineBrackets? combineBrackets,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, combineBrackets);
        },
      );
    } else {
      _buildBody(children, id, combineBrackets);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? id,
    W_ST_CombineBrackets? combineBrackets,
  ) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (combineBrackets != null)
      this.attribute(
        'combineBrackets',
        combineBrackets!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FramePr_Builder on _i1.XmlBuilder {
  void w_ct_framepr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_DropCap? dropCap,
    String? lines,
    W_ST_Wrap? wrap,
    W_ST_HAnchor? hAnchor,
    W_ST_VAnchor? vAnchor,
    ST_XAlign? xAlign,
    ST_YAlign? yAlign,
    W_ST_HeightRule? hRule,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            dropCap,
            lines,
            wrap,
            hAnchor,
            vAnchor,
            xAlign,
            yAlign,
            hRule,
          );
        },
      );
    } else {
      _buildBody(
        children,
        dropCap,
        lines,
        wrap,
        hAnchor,
        vAnchor,
        xAlign,
        yAlign,
        hRule,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_DropCap? dropCap,
    String? lines,
    W_ST_Wrap? wrap,
    W_ST_HAnchor? hAnchor,
    W_ST_VAnchor? vAnchor,
    ST_XAlign? xAlign,
    ST_YAlign? yAlign,
    W_ST_HeightRule? hRule,
  ) {
    if (dropCap != null)
      this.attribute(
        'dropCap',
        dropCap!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (lines != null)
      this.attribute(
        'lines',
        lines,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (wrap != null)
      this.attribute(
        'wrap',
        wrap!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (hAnchor != null)
      this.attribute(
        'hAnchor',
        hAnchor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (vAnchor != null)
      this.attribute(
        'vAnchor',
        vAnchor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (xAlign != null)
      this.attribute(
        'xAlign',
        xAlign!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (yAlign != null)
      this.attribute(
        'yAlign',
        yAlign!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (hRule != null)
      this.attribute(
        'hRule',
        hRule!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TabStop_Builder on _i1.XmlBuilder {
  void w_ct_tabstop({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TabJc? val,
    W_ST_TabTlc? leader,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val, leader);
        },
      );
    } else {
      _buildBody(children, val, leader);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_TabJc? val,
    W_ST_TabTlc? leader,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (leader != null)
      this.attribute(
        'leader',
        leader!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Spacing_Builder on _i1.XmlBuilder {
  void w_ct_spacing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? beforeLines,
    String? afterLines,
    W_ST_LineSpacingRule? lineRule,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, beforeLines, afterLines, lineRule);
        },
      );
    } else {
      _buildBody(children, beforeLines, afterLines, lineRule);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? beforeLines,
    String? afterLines,
    W_ST_LineSpacingRule? lineRule,
  ) {
    if (beforeLines != null)
      this.attribute(
        'beforeLines',
        beforeLines,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (afterLines != null)
      this.attribute(
        'afterLines',
        afterLines,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (lineRule != null)
      this.attribute(
        'lineRule',
        lineRule!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Ind_Builder on _i1.XmlBuilder {
  void w_ct_ind({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? startChars,
    String? endChars,
    String? leftChars,
    String? rightChars,
    String? hangingChars,
    String? firstLineChars,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            startChars,
            endChars,
            leftChars,
            rightChars,
            hangingChars,
            firstLineChars,
          );
        },
      );
    } else {
      _buildBody(
        children,
        startChars,
        endChars,
        leftChars,
        rightChars,
        hangingChars,
        firstLineChars,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? startChars,
    String? endChars,
    String? leftChars,
    String? rightChars,
    String? hangingChars,
    String? firstLineChars,
  ) {
    if (startChars != null)
      this.attribute(
        'startChars',
        startChars,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (endChars != null)
      this.attribute(
        'endChars',
        endChars,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (leftChars != null)
      this.attribute(
        'leftChars',
        leftChars,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rightChars != null)
      this.attribute(
        'rightChars',
        rightChars,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (hangingChars != null)
      this.attribute(
        'hangingChars',
        hangingChars,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (firstLineChars != null)
      this.attribute(
        'firstLineChars',
        firstLineChars,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Jc_Builder on _i1.XmlBuilder {
  void w_ct_jc({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Jc? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Jc? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_JcTable_Builder on _i1.XmlBuilder {
  void w_ct_jctable({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_JcTable? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_JcTable? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_View_Builder on _i1.XmlBuilder {
  void w_ct_view({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_View? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_View? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Zoom_Builder on _i1.XmlBuilder {
  void w_ct_zoom({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Zoom? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Zoom? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_WritingStyle_Builder on _i1.XmlBuilder {
  void w_ct_writingstyle({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? lang,
    String? vendorID,
    String? dllVersion,
    String? appName,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lang, vendorID, dllVersion, appName);
        },
      );
    } else {
      _buildBody(children, lang, vendorID, dllVersion, appName);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? lang,
    String? vendorID,
    String? dllVersion,
    String? appName,
  ) {
    if (lang != null)
      this.attribute(
        'lang',
        lang,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (vendorID != null)
      this.attribute(
        'vendorID',
        vendorID,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (dllVersion != null)
      this.attribute(
        'dllVersion',
        dllVersion,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (appName != null)
      this.attribute(
        'appName',
        appName,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Proof_Builder on _i1.XmlBuilder {
  void w_ct_proof({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Proof? spelling,
    W_ST_Proof? grammar,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, spelling, grammar);
        },
      );
    } else {
      _buildBody(children, spelling, grammar);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_Proof? spelling,
    W_ST_Proof? grammar,
  ) {
    if (spelling != null)
      this.attribute(
        'spelling',
        spelling!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (grammar != null)
      this.attribute(
        'grammar',
        grammar!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocType_Builder on _i1.XmlBuilder {
  void w_ct_doctype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocProtect_Builder on _i1.XmlBuilder {
  void w_ct_docprotect({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_DocProtect? edit,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, edit);
        },
      );
    } else {
      _buildBody(children, edit);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_DocProtect? edit) {
    if (edit != null)
      this.attribute(
        'edit',
        edit!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_MailMergeDocType_Builder on _i1.XmlBuilder {
  void w_ct_mailmergedoctype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_MailMergeDocType? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_MailMergeDocType? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_MailMergeDataType_Builder on _i1.XmlBuilder {
  void w_ct_mailmergedatatype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_MailMergeDest_Builder on _i1.XmlBuilder {
  void w_ct_mailmergedest({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_MailMergeDest? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_MailMergeDest? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_MailMergeOdsoFMDFieldType_Builder on _i1.XmlBuilder {
  void w_ct_mailmergeodsofmdfieldtype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_MailMergeOdsoFMDFieldType? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_MailMergeOdsoFMDFieldType? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TrackChangesView_Builder on _i1.XmlBuilder {
  void w_ct_trackchangesview({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Kinsoku_Builder on _i1.XmlBuilder {
  void w_ct_kinsoku({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? lang,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lang, val);
        },
      );
    } else {
      _buildBody(children, lang, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? lang,
    String? val,
  ) {
    if (lang != null)
      this.attribute(
        'lang',
        lang,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TextDirection_Builder on _i1.XmlBuilder {
  void w_ct_textdirection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TextDirection? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_TextDirection? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TextAlignment_Builder on _i1.XmlBuilder {
  void w_ct_textalignment({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TextAlignment? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_TextAlignment? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Markup_Builder on _i1.XmlBuilder {
  void w_ct_markup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TrackChange_Builder on _i1.XmlBuilder {
  void w_ct_trackchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? author,
    String? date,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, author, date);
        },
      );
    } else {
      _buildBody(children, author, date);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? author,
    String? date,
  ) {
    if (author != null)
      this.attribute(
        'author',
        author,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (date != null)
      this.attribute(
        'date',
        date,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_CellMergeTrackChange_Builder on _i1.XmlBuilder {
  void w_ct_cellmergetrackchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_AnnotationVMerge? vMerge,
    W_ST_AnnotationVMerge? vMergeOrig,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, vMerge, vMergeOrig);
        },
      );
    } else {
      _buildBody(children, vMerge, vMergeOrig);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_AnnotationVMerge? vMerge,
    W_ST_AnnotationVMerge? vMergeOrig,
  ) {
    if (vMerge != null)
      this.attribute(
        'vMerge',
        vMerge!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (vMergeOrig != null)
      this.attribute(
        'vMergeOrig',
        vMergeOrig!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TrackChangeRange_Builder on _i1.XmlBuilder {
  void w_ct_trackchangerange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_DisplacedByCustomXml? displacedByCustomXml,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, displacedByCustomXml);
        },
      );
    } else {
      _buildBody(children, displacedByCustomXml);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_DisplacedByCustomXml? displacedByCustomXml,
  ) {
    if (displacedByCustomXml != null)
      this.attribute(
        'displacedByCustomXml',
        displacedByCustomXml!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_MarkupRange_Builder on _i1.XmlBuilder {
  void w_ct_markuprange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_DisplacedByCustomXml? displacedByCustomXml,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, displacedByCustomXml);
        },
      );
    } else {
      _buildBody(children, displacedByCustomXml);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_DisplacedByCustomXml? displacedByCustomXml,
  ) {
    if (displacedByCustomXml != null)
      this.attribute(
        'displacedByCustomXml',
        displacedByCustomXml!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_BookmarkRange_Builder on _i1.XmlBuilder {
  void w_ct_bookmarkrange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? colFirst,
    String? colLast,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, colFirst, colLast);
        },
      );
    } else {
      _buildBody(children, colFirst, colLast);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? colFirst,
    String? colLast,
  ) {
    if (colFirst != null)
      this.attribute(
        'colFirst',
        colFirst,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (colLast != null)
      this.attribute(
        'colLast',
        colLast,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Bookmark_Builder on _i1.XmlBuilder {
  void w_ct_bookmark({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? name,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name);
        },
      );
    } else {
      _buildBody(children, name);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? name) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_MoveBookmark_Builder on _i1.XmlBuilder {
  void w_ct_movebookmark({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? author,
    String? date,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, author, date);
        },
      );
    } else {
      _buildBody(children, author, date);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? author,
    String? date,
  ) {
    if (author != null)
      this.attribute(
        'author',
        author,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (date != null)
      this.attribute(
        'date',
        date,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Comment_Builder on _i1.XmlBuilder {
  void w_ct_comment({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? initials,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, initials);
        },
      );
    } else {
      _buildBody(children, initials);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? initials) {
    if (initials != null)
      this.attribute(
        'initials',
        initials,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TrackChangeNumbering_Builder on _i1.XmlBuilder {
  void w_ct_trackchangenumbering({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? original,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, original);
        },
      );
    } else {
      _buildBody(children, original);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? original) {
    if (original != null)
      this.attribute(
        'original',
        original,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TblPrExChange_Builder on _i1.XmlBuilder {
  void w_ct_tblprexchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TcPrChange_Builder on _i1.XmlBuilder {
  void w_ct_tcprchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TrPrChange_Builder on _i1.XmlBuilder {
  void w_ct_trprchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblGridChange_Builder on _i1.XmlBuilder {
  void w_ct_tblgridchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblPrChange_Builder on _i1.XmlBuilder {
  void w_ct_tblprchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SectPrChange_Builder on _i1.XmlBuilder {
  void w_ct_sectprchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_PPrChange_Builder on _i1.XmlBuilder {
  void w_ct_pprchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_RPrChange_Builder on _i1.XmlBuilder {
  void w_ct_rprchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_ParaRPrChange_Builder on _i1.XmlBuilder {
  void w_ct_pararprchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_RunTrackChange_Builder on _i1.XmlBuilder {
  void w_ct_runtrackchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_NumPr_Builder on _i1.XmlBuilder {
  void w_ct_numpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_PBdr_Builder on _i1.XmlBuilder {
  void w_ct_pbdr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Tabs_Builder on _i1.XmlBuilder {
  void w_ct_tabs({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TextboxTightWrap_Builder on _i1.XmlBuilder {
  void w_ct_textboxtightwrap({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TextboxTightWrap? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_TextboxTightWrap? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_PPr_Builder on _i1.XmlBuilder {
  void w_ct_ppr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_PPrBase_Builder on _i1.XmlBuilder {
  void w_ct_pprbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_PPrGeneral_Builder on _i1.XmlBuilder {
  void w_ct_pprgeneral({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Control_Builder on _i1.XmlBuilder {
  void w_ct_control({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? name,
    String? shapeid,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, shapeid);
        },
      );
    } else {
      _buildBody(children, name, shapeid);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? shapeid,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (shapeid != null)
      this.attribute(
        'shapeid',
        shapeid,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Background_Builder on _i1.XmlBuilder {
  void w_ct_background({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, themeColor, themeTint, themeShade);
        },
      );
    } else {
      _buildBody(children, themeColor, themeTint, themeShade);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_ThemeColor? themeColor,
    String? themeTint,
    String? themeShade,
  ) {
    if (themeColor != null)
      this.attribute(
        'themeColor',
        themeColor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeTint != null)
      this.attribute(
        'themeTint',
        themeTint,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (themeShade != null)
      this.attribute(
        'themeShade',
        themeShade,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Rel_Builder on _i1.XmlBuilder {
  void w_ct_rel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Object_Builder on _i1.XmlBuilder {
  void w_ct_object({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Picture_Builder on _i1.XmlBuilder {
  void w_ct_picture({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_ObjectEmbed_Builder on _i1.XmlBuilder {
  void w_ct_objectembed({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_ObjectDrawAspect? drawAspect,
    String? progId,
    String? shapeId,
    String? fieldCodes,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, drawAspect, progId, shapeId, fieldCodes);
        },
      );
    } else {
      _buildBody(children, drawAspect, progId, shapeId, fieldCodes);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_ObjectDrawAspect? drawAspect,
    String? progId,
    String? shapeId,
    String? fieldCodes,
  ) {
    if (drawAspect != null)
      this.attribute(
        'drawAspect',
        drawAspect!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (progId != null)
      this.attribute(
        'progId',
        progId,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (shapeId != null)
      this.attribute(
        'shapeId',
        shapeId,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (fieldCodes != null)
      this.attribute(
        'fieldCodes',
        fieldCodes,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_ObjectLink_Builder on _i1.XmlBuilder {
  void w_ct_objectlink({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_ObjectUpdateMode? updateMode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, updateMode);
        },
      );
    } else {
      _buildBody(children, updateMode);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_ObjectUpdateMode? updateMode,
  ) {
    if (updateMode != null)
      this.attribute(
        'updateMode',
        updateMode!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Drawing_Builder on _i1.XmlBuilder {
  void w_ct_drawing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SimpleField_Builder on _i1.XmlBuilder {
  void w_ct_simplefield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? instr,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, instr);
        },
      );
    } else {
      _buildBody(children, instr);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? instr) {
    if (instr != null)
      this.attribute(
        'instr',
        instr,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FFTextType_Builder on _i1.XmlBuilder {
  void w_ct_fftexttype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_FFTextType? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_FFTextType? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FFName_Builder on _i1.XmlBuilder {
  void w_ct_ffname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FldChar_Builder on _i1.XmlBuilder {
  void w_ct_fldchar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_FldCharType? fldCharType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fldCharType);
        },
      );
    } else {
      _buildBody(children, fldCharType);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_FldCharType? fldCharType,
  ) {
    if (fldCharType != null)
      this.attribute(
        'fldCharType',
        fldCharType!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Hyperlink_Builder on _i1.XmlBuilder {
  void w_ct_hyperlink({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? tgtFrame,
    String? tooltip,
    String? docLocation,
    String? anchor,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, tgtFrame, tooltip, docLocation, anchor);
        },
      );
    } else {
      _buildBody(children, tgtFrame, tooltip, docLocation, anchor);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? tgtFrame,
    String? tooltip,
    String? docLocation,
    String? anchor,
  ) {
    if (tgtFrame != null)
      this.attribute(
        'tgtFrame',
        tgtFrame,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (tooltip != null)
      this.attribute(
        'tooltip',
        tooltip,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (docLocation != null)
      this.attribute(
        'docLocation',
        docLocation,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (anchor != null)
      this.attribute(
        'anchor',
        anchor,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FFData_Builder on _i1.XmlBuilder {
  void w_ct_ffdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_FFHelpText_Builder on _i1.XmlBuilder {
  void w_ct_ffhelptext({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_InfoTextType? type,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, val);
        },
      );
    } else {
      _buildBody(children, type, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_InfoTextType? type,
    String? val,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FFStatusText_Builder on _i1.XmlBuilder {
  void w_ct_ffstatustext({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_InfoTextType? type,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, val);
        },
      );
    } else {
      _buildBody(children, type, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_InfoTextType? type,
    String? val,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FFCheckBox_Builder on _i1.XmlBuilder {
  void w_ct_ffcheckbox({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_FFDDList_Builder on _i1.XmlBuilder {
  void w_ct_ffddlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_FFTextInput_Builder on _i1.XmlBuilder {
  void w_ct_fftextinput({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SectType_Builder on _i1.XmlBuilder {
  void w_ct_secttype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_SectionMark? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_SectionMark? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_PaperSource_Builder on _i1.XmlBuilder {
  void w_ct_papersource({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? first,
    String? other,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, first, other);
        },
      );
    } else {
      _buildBody(children, first, other);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? first,
    String? other,
  ) {
    if (first != null)
      this.attribute(
        'first',
        first,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (other != null)
      this.attribute(
        'other',
        other,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_PageSz_Builder on _i1.XmlBuilder {
  void w_ct_pagesz({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_PageOrientation? orient,
    String? code,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, orient, code);
        },
      );
    } else {
      _buildBody(children, orient, code);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_PageOrientation? orient,
    String? code,
  ) {
    if (orient != null)
      this.attribute(
        'orient',
        orient!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (code != null)
      this.attribute(
        'code',
        code,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_PageMar_Builder on _i1.XmlBuilder {
  void w_ct_pagemar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_PageBorders_Builder on _i1.XmlBuilder {
  void w_ct_pageborders({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_PageBorderZOrder? zOrder,
    W_ST_PageBorderDisplay? display,
    W_ST_PageBorderOffset? offsetFrom,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, zOrder, display, offsetFrom);
        },
      );
    } else {
      _buildBody(children, zOrder, display, offsetFrom);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_PageBorderZOrder? zOrder,
    W_ST_PageBorderDisplay? display,
    W_ST_PageBorderOffset? offsetFrom,
  ) {
    if (zOrder != null)
      this.attribute(
        'zOrder',
        zOrder!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (display != null)
      this.attribute(
        'display',
        display!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (offsetFrom != null)
      this.attribute(
        'offsetFrom',
        offsetFrom!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_PageBorder_Builder on _i1.XmlBuilder {
  void w_ct_pageborder({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_BottomPageBorder_Builder on _i1.XmlBuilder {
  void w_ct_bottompageborder({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TopPageBorder_Builder on _i1.XmlBuilder {
  void w_ct_toppageborder({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_LineNumber_Builder on _i1.XmlBuilder {
  void w_ct_linenumber({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? countBy,
    String? start,
    W_ST_LineNumberRestart? restart,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, countBy, start, restart);
        },
      );
    } else {
      _buildBody(children, countBy, start, restart);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? countBy,
    String? start,
    W_ST_LineNumberRestart? restart,
  ) {
    if (countBy != null)
      this.attribute(
        'countBy',
        countBy,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (start != null)
      this.attribute(
        'start',
        start,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (restart != null)
      this.attribute(
        'restart',
        restart!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_PageNumber_Builder on _i1.XmlBuilder {
  void w_ct_pagenumber({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_NumberFormat? fmt,
    String? start,
    String? chapStyle,
    W_ST_ChapterSep? chapSep,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fmt, start, chapStyle, chapSep);
        },
      );
    } else {
      _buildBody(children, fmt, start, chapStyle, chapSep);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_NumberFormat? fmt,
    String? start,
    String? chapStyle,
    W_ST_ChapterSep? chapSep,
  ) {
    if (fmt != null)
      this.attribute(
        'fmt',
        fmt!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (start != null)
      this.attribute(
        'start',
        start,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (chapStyle != null)
      this.attribute(
        'chapStyle',
        chapStyle,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (chapSep != null)
      this.attribute(
        'chapSep',
        chapSep!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Column_Builder on _i1.XmlBuilder {
  void w_ct_column({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Columns_Builder on _i1.XmlBuilder {
  void w_ct_columns({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? num_,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, num_);
        },
      );
    } else {
      _buildBody(children, num_);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? num_) {
    if (num_ != null)
      this.attribute(
        'num',
        num_,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_VerticalJc_Builder on _i1.XmlBuilder {
  void w_ct_verticaljc({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_VerticalJc? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_VerticalJc? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocGrid_Builder on _i1.XmlBuilder {
  void w_ct_docgrid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_DocGrid? type,
    String? linePitch,
    String? charSpace,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, linePitch, charSpace);
        },
      );
    } else {
      _buildBody(children, type, linePitch, charSpace);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_DocGrid? type,
    String? linePitch,
    String? charSpace,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (linePitch != null)
      this.attribute(
        'linePitch',
        linePitch,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (charSpace != null)
      this.attribute(
        'charSpace',
        charSpace,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_HdrFtrRef_Builder on _i1.XmlBuilder {
  void w_ct_hdrftrref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_HdrFtr? type,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type);
        },
      );
    } else {
      _buildBody(children, type);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_HdrFtr? type) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_HdrFtr_Builder on _i1.XmlBuilder {
  void w_ct_hdrftr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SectPrBase_Builder on _i1.XmlBuilder {
  void w_ct_sectprbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SectPr_Builder on _i1.XmlBuilder {
  void w_ct_sectpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Br_Builder on _i1.XmlBuilder {
  void w_ct_br({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_BrType? type,
    W_ST_BrClear? clear,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, clear);
        },
      );
    } else {
      _buildBody(children, type, clear);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_BrType? type,
    W_ST_BrClear? clear,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (clear != null)
      this.attribute(
        'clear',
        clear!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_PTab_Builder on _i1.XmlBuilder {
  void w_ct_ptab({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_PTabAlignment? alignment,
    W_ST_PTabRelativeTo? relativeTo,
    W_ST_PTabLeader? leader,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, alignment, relativeTo, leader);
        },
      );
    } else {
      _buildBody(children, alignment, relativeTo, leader);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_PTabAlignment? alignment,
    W_ST_PTabRelativeTo? relativeTo,
    W_ST_PTabLeader? leader,
  ) {
    if (alignment != null)
      this.attribute(
        'alignment',
        alignment!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (relativeTo != null)
      this.attribute(
        'relativeTo',
        relativeTo!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (leader != null)
      this.attribute(
        'leader',
        leader!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Sym_Builder on _i1.XmlBuilder {
  void w_ct_sym({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? font,
    String? char,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, font, char);
        },
      );
    } else {
      _buildBody(children, font, char);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? font,
    String? char,
  ) {
    if (font != null)
      this.attribute(
        'font',
        font,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (char != null)
      this.attribute(
        'char',
        char,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_ProofErr_Builder on _i1.XmlBuilder {
  void w_ct_prooferr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_ProofErr? type,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type);
        },
      );
    } else {
      _buildBody(children, type);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_ProofErr? type) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Perm_Builder on _i1.XmlBuilder {
  void w_ct_perm({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? id,
    W_ST_DisplacedByCustomXml? displacedByCustomXml,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, displacedByCustomXml);
        },
      );
    } else {
      _buildBody(children, id, displacedByCustomXml);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? id,
    W_ST_DisplacedByCustomXml? displacedByCustomXml,
  ) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (displacedByCustomXml != null)
      this.attribute(
        'displacedByCustomXml',
        displacedByCustomXml!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_PermStart_Builder on _i1.XmlBuilder {
  void w_ct_permstart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_EdGrp? edGrp,
    String? ed,
    String? colFirst,
    String? colLast,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, edGrp, ed, colFirst, colLast);
        },
      );
    } else {
      _buildBody(children, edGrp, ed, colFirst, colLast);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_EdGrp? edGrp,
    String? ed,
    String? colFirst,
    String? colLast,
  ) {
    if (edGrp != null)
      this.attribute(
        'edGrp',
        edGrp!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (ed != null)
      this.attribute(
        'ed',
        ed,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (colFirst != null)
      this.attribute(
        'colFirst',
        colFirst,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (colLast != null)
      this.attribute(
        'colLast',
        colLast,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Text_Builder on _i1.XmlBuilder {
  void w_ct_text({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_R_Builder on _i1.XmlBuilder {
  void w_ct_r({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? rsidRPr,
    String? rsidDel,
    String? rsidR,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rsidRPr, rsidDel, rsidR);
        },
      );
    } else {
      _buildBody(children, rsidRPr, rsidDel, rsidR);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? rsidRPr,
    String? rsidDel,
    String? rsidR,
  ) {
    if (rsidRPr != null)
      this.attribute(
        'rsidRPr',
        rsidRPr,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidDel != null)
      this.attribute(
        'rsidDel',
        rsidDel,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidR != null)
      this.attribute(
        'rsidR',
        rsidR,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Fonts_Builder on _i1.XmlBuilder {
  void w_ct_fonts({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Hint? hint,
    String? ascii,
    String? hAnsi,
    String? eastAsia,
    String? cs,
    W_ST_Theme? asciiTheme,
    W_ST_Theme? hAnsiTheme,
    W_ST_Theme? eastAsiaTheme,
    W_ST_Theme? cstheme,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            hint,
            ascii,
            hAnsi,
            eastAsia,
            cs,
            asciiTheme,
            hAnsiTheme,
            eastAsiaTheme,
            cstheme,
          );
        },
      );
    } else {
      _buildBody(
        children,
        hint,
        ascii,
        hAnsi,
        eastAsia,
        cs,
        asciiTheme,
        hAnsiTheme,
        eastAsiaTheme,
        cstheme,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_Hint? hint,
    String? ascii,
    String? hAnsi,
    String? eastAsia,
    String? cs,
    W_ST_Theme? asciiTheme,
    W_ST_Theme? hAnsiTheme,
    W_ST_Theme? eastAsiaTheme,
    W_ST_Theme? cstheme,
  ) {
    if (hint != null)
      this.attribute(
        'hint',
        hint!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (ascii != null)
      this.attribute(
        'ascii',
        ascii,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (hAnsi != null)
      this.attribute(
        'hAnsi',
        hAnsi,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (eastAsia != null)
      this.attribute(
        'eastAsia',
        eastAsia,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (cs != null)
      this.attribute(
        'cs',
        cs,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (asciiTheme != null)
      this.attribute(
        'asciiTheme',
        asciiTheme!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (hAnsiTheme != null)
      this.attribute(
        'hAnsiTheme',
        hAnsiTheme!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (eastAsiaTheme != null)
      this.attribute(
        'eastAsiaTheme',
        eastAsiaTheme!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (cstheme != null)
      this.attribute(
        'cstheme',
        cstheme!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_RPr_Builder on _i1.XmlBuilder {
  void w_ct_rpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_MathCtrlIns_Builder on _i1.XmlBuilder {
  void w_ct_mathctrlins({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_MathCtrlDel_Builder on _i1.XmlBuilder {
  void w_ct_mathctrldel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_RPrOriginal_Builder on _i1.XmlBuilder {
  void w_ct_rproriginal({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_ParaRPrOriginal_Builder on _i1.XmlBuilder {
  void w_ct_pararproriginal({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_ParaRPr_Builder on _i1.XmlBuilder {
  void w_ct_pararpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_AltChunk_Builder on _i1.XmlBuilder {
  void w_ct_altchunk({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_AltChunkPr_Builder on _i1.XmlBuilder {
  void w_ct_altchunkpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_RubyAlign_Builder on _i1.XmlBuilder {
  void w_ct_rubyalign({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_RubyAlign? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_RubyAlign? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_RubyPr_Builder on _i1.XmlBuilder {
  void w_ct_rubypr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_RubyContent_Builder on _i1.XmlBuilder {
  void w_ct_rubycontent({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Ruby_Builder on _i1.XmlBuilder {
  void w_ct_ruby({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Lock_Builder on _i1.XmlBuilder {
  void w_ct_lock({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Lock? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Lock? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SdtListItem_Builder on _i1.XmlBuilder {
  void w_ct_sdtlistitem({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? displayText,
    String? value_,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, displayText, value_);
        },
      );
    } else {
      _buildBody(children, displayText, value_);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? displayText,
    String? value_,
  ) {
    if (displayText != null)
      this.attribute(
        'displayText',
        displayText,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (value_ != null)
      this.attribute(
        'value',
        value_,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SdtDateMappingType_Builder on _i1.XmlBuilder {
  void w_ct_sdtdatemappingtype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_SdtDateMappingType? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_SdtDateMappingType? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_CalendarType_Builder on _i1.XmlBuilder {
  void w_ct_calendartype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    ST_CalendarType? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, ST_CalendarType? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SdtDate_Builder on _i1.XmlBuilder {
  void w_ct_sdtdate({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? fullDate,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fullDate);
        },
      );
    } else {
      _buildBody(children, fullDate);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? fullDate) {
    if (fullDate != null)
      this.attribute(
        'fullDate',
        fullDate,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SdtComboBox_Builder on _i1.XmlBuilder {
  void w_ct_sdtcombobox({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? lastValue,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lastValue);
        },
      );
    } else {
      _buildBody(children, lastValue);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? lastValue) {
    if (lastValue != null)
      this.attribute(
        'lastValue',
        lastValue,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SdtDocPart_Builder on _i1.XmlBuilder {
  void w_ct_sdtdocpart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtDropDownList_Builder on _i1.XmlBuilder {
  void w_ct_sdtdropdownlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? lastValue,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lastValue);
        },
      );
    } else {
      _buildBody(children, lastValue);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? lastValue) {
    if (lastValue != null)
      this.attribute(
        'lastValue',
        lastValue,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Placeholder_Builder on _i1.XmlBuilder {
  void w_ct_placeholder({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtText_Builder on _i1.XmlBuilder {
  void w_ct_sdttext({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DataBinding_Builder on _i1.XmlBuilder {
  void w_ct_databinding({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? prefixMappings,
    String? xpath,
    String? storeItemID,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, prefixMappings, xpath, storeItemID);
        },
      );
    } else {
      _buildBody(children, prefixMappings, xpath, storeItemID);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? prefixMappings,
    String? xpath,
    String? storeItemID,
  ) {
    if (prefixMappings != null)
      this.attribute(
        'prefixMappings',
        prefixMappings,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (xpath != null)
      this.attribute(
        'xpath',
        xpath,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (storeItemID != null)
      this.attribute(
        'storeItemID',
        storeItemID,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SdtPr_Builder on _i1.XmlBuilder {
  void w_ct_sdtpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtEndPr_Builder on _i1.XmlBuilder {
  void w_ct_sdtendpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DirContentRun_Builder on _i1.XmlBuilder {
  void w_ct_dircontentrun({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Direction? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Direction? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_BdoContentRun_Builder on _i1.XmlBuilder {
  void w_ct_bdocontentrun({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Direction? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Direction? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SdtContentRun_Builder on _i1.XmlBuilder {
  void w_ct_sdtcontentrun({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtContentBlock_Builder on _i1.XmlBuilder {
  void w_ct_sdtcontentblock({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtContentRow_Builder on _i1.XmlBuilder {
  void w_ct_sdtcontentrow({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtContentCell_Builder on _i1.XmlBuilder {
  void w_ct_sdtcontentcell({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtBlock_Builder on _i1.XmlBuilder {
  void w_ct_sdtblock({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtRun_Builder on _i1.XmlBuilder {
  void w_ct_sdtrun({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtCell_Builder on _i1.XmlBuilder {
  void w_ct_sdtcell({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SdtRow_Builder on _i1.XmlBuilder {
  void w_ct_sdtrow({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Attr_Builder on _i1.XmlBuilder {
  void w_ct_attr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? uri,
    String? name,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri, name, val);
        },
      );
    } else {
      _buildBody(children, uri, name, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uri,
    String? name,
    String? val,
  ) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_CustomXmlRun_Builder on _i1.XmlBuilder {
  void w_ct_customxmlrun({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? uri,
    String? element,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri, element);
        },
      );
    } else {
      _buildBody(children, uri, element);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uri,
    String? element,
  ) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (element != null)
      this.attribute(
        'element',
        element,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SmartTagRun_Builder on _i1.XmlBuilder {
  void w_ct_smarttagrun({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? uri,
    String? element,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri, element);
        },
      );
    } else {
      _buildBody(children, uri, element);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uri,
    String? element,
  ) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (element != null)
      this.attribute(
        'element',
        element,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_CustomXmlBlock_Builder on _i1.XmlBuilder {
  void w_ct_customxmlblock({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? uri,
    String? element,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri, element);
        },
      );
    } else {
      _buildBody(children, uri, element);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uri,
    String? element,
  ) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (element != null)
      this.attribute(
        'element',
        element,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_CustomXmlPr_Builder on _i1.XmlBuilder {
  void w_ct_customxmlpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_CustomXmlRow_Builder on _i1.XmlBuilder {
  void w_ct_customxmlrow({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? uri,
    String? element,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri, element);
        },
      );
    } else {
      _buildBody(children, uri, element);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uri,
    String? element,
  ) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (element != null)
      this.attribute(
        'element',
        element,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_CustomXmlCell_Builder on _i1.XmlBuilder {
  void w_ct_customxmlcell({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? uri,
    String? element,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri, element);
        },
      );
    } else {
      _buildBody(children, uri, element);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uri,
    String? element,
  ) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (element != null)
      this.attribute(
        'element',
        element,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SmartTagPr_Builder on _i1.XmlBuilder {
  void w_ct_smarttagpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_P_Builder on _i1.XmlBuilder {
  void w_ct_p({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? rsidRPr,
    String? rsidR,
    String? rsidDel,
    String? rsidP,
    String? rsidRDefault,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rsidRPr, rsidR, rsidDel, rsidP, rsidRDefault);
        },
      );
    } else {
      _buildBody(children, rsidRPr, rsidR, rsidDel, rsidP, rsidRDefault);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? rsidRPr,
    String? rsidR,
    String? rsidDel,
    String? rsidP,
    String? rsidRDefault,
  ) {
    if (rsidRPr != null)
      this.attribute(
        'rsidRPr',
        rsidRPr,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidR != null)
      this.attribute(
        'rsidR',
        rsidR,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidDel != null)
      this.attribute(
        'rsidDel',
        rsidDel,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidP != null)
      this.attribute(
        'rsidP',
        rsidP,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidRDefault != null)
      this.attribute(
        'rsidRDefault',
        rsidRDefault,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Height_Builder on _i1.XmlBuilder {
  void w_ct_height({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_HeightRule? hRule,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, hRule);
        },
      );
    } else {
      _buildBody(children, hRule);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_HeightRule? hRule) {
    if (hRule != null)
      this.attribute(
        'hRule',
        hRule!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TblWidth_Builder on _i1.XmlBuilder {
  void w_ct_tblwidth({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TblWidth? type,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type);
        },
      );
    } else {
      _buildBody(children, type);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_TblWidth? type) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TblGridCol_Builder on _i1.XmlBuilder {
  void w_ct_tblgridcol({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblGridBase_Builder on _i1.XmlBuilder {
  void w_ct_tblgridbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblGrid_Builder on _i1.XmlBuilder {
  void w_ct_tblgrid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TcBorders_Builder on _i1.XmlBuilder {
  void w_ct_tcborders({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TcMar_Builder on _i1.XmlBuilder {
  void w_ct_tcmar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_VMerge_Builder on _i1.XmlBuilder {
  void w_ct_vmerge({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Merge? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Merge? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_HMerge_Builder on _i1.XmlBuilder {
  void w_ct_hmerge({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Merge? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Merge? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TcPrBase_Builder on _i1.XmlBuilder {
  void w_ct_tcprbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TcPr_Builder on _i1.XmlBuilder {
  void w_ct_tcpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TcPrInner_Builder on _i1.XmlBuilder {
  void w_ct_tcprinner({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Tc_Builder on _i1.XmlBuilder {
  void w_ct_tc({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Cnf_Builder on _i1.XmlBuilder {
  void w_ct_cnf({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Headers_Builder on _i1.XmlBuilder {
  void w_ct_headers({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TrPrBase_Builder on _i1.XmlBuilder {
  void w_ct_trprbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TrPr_Builder on _i1.XmlBuilder {
  void w_ct_trpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Row_Builder on _i1.XmlBuilder {
  void w_ct_row({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? rsidRPr,
    String? rsidR,
    String? rsidDel,
    String? rsidTr,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rsidRPr, rsidR, rsidDel, rsidTr);
        },
      );
    } else {
      _buildBody(children, rsidRPr, rsidR, rsidDel, rsidTr);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? rsidRPr,
    String? rsidR,
    String? rsidDel,
    String? rsidTr,
  ) {
    if (rsidRPr != null)
      this.attribute(
        'rsidRPr',
        rsidRPr,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidR != null)
      this.attribute(
        'rsidR',
        rsidR,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidDel != null)
      this.attribute(
        'rsidDel',
        rsidDel,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (rsidTr != null)
      this.attribute(
        'rsidTr',
        rsidTr,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TblLayoutType_Builder on _i1.XmlBuilder {
  void w_ct_tbllayouttype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TblLayoutType? type,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type);
        },
      );
    } else {
      _buildBody(children, type);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_TblLayoutType? type,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TblOverlap_Builder on _i1.XmlBuilder {
  void w_ct_tbloverlap({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TblOverlap? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_TblOverlap? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TblPPr_Builder on _i1.XmlBuilder {
  void w_ct_tblppr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_VAnchor? vertAnchor,
    W_ST_HAnchor? horzAnchor,
    ST_XAlign? tblpXSpec,
    ST_YAlign? tblpYSpec,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, vertAnchor, horzAnchor, tblpXSpec, tblpYSpec);
        },
      );
    } else {
      _buildBody(children, vertAnchor, horzAnchor, tblpXSpec, tblpYSpec);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_VAnchor? vertAnchor,
    W_ST_HAnchor? horzAnchor,
    ST_XAlign? tblpXSpec,
    ST_YAlign? tblpYSpec,
  ) {
    if (vertAnchor != null)
      this.attribute(
        'vertAnchor',
        vertAnchor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (horzAnchor != null)
      this.attribute(
        'horzAnchor',
        horzAnchor!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (tblpXSpec != null)
      this.attribute(
        'tblpXSpec',
        tblpXSpec!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (tblpYSpec != null)
      this.attribute(
        'tblpYSpec',
        tblpYSpec!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_TblCellMar_Builder on _i1.XmlBuilder {
  void w_ct_tblcellmar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblBorders_Builder on _i1.XmlBuilder {
  void w_ct_tblborders({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblPrBase_Builder on _i1.XmlBuilder {
  void w_ct_tblprbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblPr_Builder on _i1.XmlBuilder {
  void w_ct_tblpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblPrExBase_Builder on _i1.XmlBuilder {
  void w_ct_tblprexbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblPrEx_Builder on _i1.XmlBuilder {
  void w_ct_tblprex({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Tbl_Builder on _i1.XmlBuilder {
  void w_ct_tbl({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblLook_Builder on _i1.XmlBuilder {
  void w_ct_tbllook({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FtnPos_Builder on _i1.XmlBuilder {
  void w_ct_ftnpos({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_FtnPos? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_FtnPos? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_EdnPos_Builder on _i1.XmlBuilder {
  void w_ct_ednpos({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_EdnPos? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_EdnPos? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_NumFmt_Builder on _i1.XmlBuilder {
  void w_ct_numfmt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_NumberFormat? val,
    String? format,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val, format);
        },
      );
    } else {
      _buildBody(children, val, format);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_NumberFormat? val,
    String? format,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (format != null)
      this.attribute(
        'format',
        format,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_NumRestart_Builder on _i1.XmlBuilder {
  void w_ct_numrestart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_RestartNumber? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_RestartNumber? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FtnEdnRef_Builder on _i1.XmlBuilder {
  void w_ct_ftnednref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FtnEdnSepRef_Builder on _i1.XmlBuilder {
  void w_ct_ftnednsepref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FtnEdn_Builder on _i1.XmlBuilder {
  void w_ct_ftnedn({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_FtnEdn? type,
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, id);
        },
      );
    } else {
      _buildBody(children, type, id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_FtnEdn? type,
    String? id,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FtnProps_Builder on _i1.XmlBuilder {
  void w_ct_ftnprops({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_EdnProps_Builder on _i1.XmlBuilder {
  void w_ct_ednprops({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_FtnDocProps_Builder on _i1.XmlBuilder {
  void w_ct_ftndocprops({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_EdnDocProps_Builder on _i1.XmlBuilder {
  void w_ct_edndocprops({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_RecipientData_Builder on _i1.XmlBuilder {
  void w_ct_recipientdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Base64Binary_Builder on _i1.XmlBuilder {
  void w_ct_base64binary({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Recipients_Builder on _i1.XmlBuilder {
  void w_ct_recipients({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_OdsoFieldMapData_Builder on _i1.XmlBuilder {
  void w_ct_odsofieldmapdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_MailMergeSourceType_Builder on _i1.XmlBuilder {
  void w_ct_mailmergesourcetype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_MailMergeSourceType? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_MailMergeSourceType? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Odso_Builder on _i1.XmlBuilder {
  void w_ct_odso({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_MailMerge_Builder on _i1.XmlBuilder {
  void w_ct_mailmerge({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TargetScreenSz_Builder on _i1.XmlBuilder {
  void w_ct_targetscreensz({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TargetScreenSz? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_TargetScreenSz? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Compat_Builder on _i1.XmlBuilder {
  void w_ct_compat({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_CompatSetting_Builder on _i1.XmlBuilder {
  void w_ct_compatsetting({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? name,
    String? uri,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, uri, val);
        },
      );
    } else {
      _buildBody(children, name, uri, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? uri,
    String? val,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocVar_Builder on _i1.XmlBuilder {
  void w_ct_docvar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? name,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, val);
        },
      );
    } else {
      _buildBody(children, name, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? val,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocVars_Builder on _i1.XmlBuilder {
  void w_ct_docvars({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DocRsids_Builder on _i1.XmlBuilder {
  void w_ct_docrsids({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_CharacterSpacing_Builder on _i1.XmlBuilder {
  void w_ct_characterspacing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_CharacterSpacing? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_CharacterSpacing? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_SaveThroughXslt_Builder on _i1.XmlBuilder {
  void w_ct_savethroughxslt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? solutionID,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, solutionID);
        },
      );
    } else {
      _buildBody(children, solutionID);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? solutionID) {
    if (solutionID != null)
      this.attribute(
        'solutionID',
        solutionID,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_RPrDefault_Builder on _i1.XmlBuilder {
  void w_ct_rprdefault({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_PPrDefault_Builder on _i1.XmlBuilder {
  void w_ct_pprdefault({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DocDefaults_Builder on _i1.XmlBuilder {
  void w_ct_docdefaults({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_ColorSchemeMapping_Builder on _i1.XmlBuilder {
  void w_ct_colorschememapping({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_WmlColorSchemeIndex? bg1,
    W_ST_WmlColorSchemeIndex? t1,
    W_ST_WmlColorSchemeIndex? bg2,
    W_ST_WmlColorSchemeIndex? t2,
    W_ST_WmlColorSchemeIndex? accent1,
    W_ST_WmlColorSchemeIndex? accent2,
    W_ST_WmlColorSchemeIndex? accent3,
    W_ST_WmlColorSchemeIndex? accent4,
    W_ST_WmlColorSchemeIndex? accent5,
    W_ST_WmlColorSchemeIndex? accent6,
    W_ST_WmlColorSchemeIndex? hyperlink,
    W_ST_WmlColorSchemeIndex? followedHyperlink,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            bg1,
            t1,
            bg2,
            t2,
            accent1,
            accent2,
            accent3,
            accent4,
            accent5,
            accent6,
            hyperlink,
            followedHyperlink,
          );
        },
      );
    } else {
      _buildBody(
        children,
        bg1,
        t1,
        bg2,
        t2,
        accent1,
        accent2,
        accent3,
        accent4,
        accent5,
        accent6,
        hyperlink,
        followedHyperlink,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_WmlColorSchemeIndex? bg1,
    W_ST_WmlColorSchemeIndex? t1,
    W_ST_WmlColorSchemeIndex? bg2,
    W_ST_WmlColorSchemeIndex? t2,
    W_ST_WmlColorSchemeIndex? accent1,
    W_ST_WmlColorSchemeIndex? accent2,
    W_ST_WmlColorSchemeIndex? accent3,
    W_ST_WmlColorSchemeIndex? accent4,
    W_ST_WmlColorSchemeIndex? accent5,
    W_ST_WmlColorSchemeIndex? accent6,
    W_ST_WmlColorSchemeIndex? hyperlink,
    W_ST_WmlColorSchemeIndex? followedHyperlink,
  ) {
    if (bg1 != null)
      this.attribute(
        'bg1',
        bg1!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (t1 != null)
      this.attribute(
        't1',
        t1!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (bg2 != null)
      this.attribute(
        'bg2',
        bg2!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (t2 != null)
      this.attribute(
        't2',
        t2!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (accent1 != null)
      this.attribute(
        'accent1',
        accent1!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (accent2 != null)
      this.attribute(
        'accent2',
        accent2!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (accent3 != null)
      this.attribute(
        'accent3',
        accent3!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (accent4 != null)
      this.attribute(
        'accent4',
        accent4!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (accent5 != null)
      this.attribute(
        'accent5',
        accent5!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (accent6 != null)
      this.attribute(
        'accent6',
        accent6!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (hyperlink != null)
      this.attribute(
        'hyperlink',
        hyperlink!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (followedHyperlink != null)
      this.attribute(
        'followedHyperlink',
        followedHyperlink!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_ReadingModeInkLockDown_Builder on _i1.XmlBuilder {
  void w_ct_readingmodeinklockdown({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? w,
    String? h,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, w, h);
        },
      );
    } else {
      _buildBody(children, w, h);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? w, String? h) {
    if (w != null)
      this.attribute(
        'w',
        w,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (h != null)
      this.attribute(
        'h',
        h,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_WriteProtection_Builder on _i1.XmlBuilder {
  void w_ct_writeprotection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Settings_Builder on _i1.XmlBuilder {
  void w_ct_settings({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_StyleSort_Builder on _i1.XmlBuilder {
  void w_ct_stylesort({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_StyleSort? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_StyleSort? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_StylePaneFilter_Builder on _i1.XmlBuilder {
  void w_ct_stylepanefilter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_WebSettings_Builder on _i1.XmlBuilder {
  void w_ct_websettings({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_FrameScrollbar_Builder on _i1.XmlBuilder {
  void w_ct_framescrollbar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_FrameScrollbar? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_FrameScrollbar? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_OptimizeForBrowser_Builder on _i1.XmlBuilder {
  void w_ct_optimizeforbrowser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? target,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, target);
        },
      );
    } else {
      _buildBody(children, target);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? target) {
    if (target != null)
      this.attribute(
        'target',
        target,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Frame_Builder on _i1.XmlBuilder {
  void w_ct_frame({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_FrameLayout_Builder on _i1.XmlBuilder {
  void w_ct_framelayout({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_FrameLayout? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_FrameLayout? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FramesetSplitbar_Builder on _i1.XmlBuilder {
  void w_ct_framesetsplitbar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Frameset_Builder on _i1.XmlBuilder {
  void w_ct_frameset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_NumPicBullet_Builder on _i1.XmlBuilder {
  void w_ct_numpicbullet({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? numPicBulletId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, numPicBulletId);
        },
      );
    } else {
      _buildBody(children, numPicBulletId);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? numPicBulletId) {
    if (numPicBulletId != null)
      this.attribute(
        'numPicBulletId',
        numPicBulletId,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_LevelSuffix_Builder on _i1.XmlBuilder {
  void w_ct_levelsuffix({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_LevelSuffix? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_LevelSuffix? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_LevelText_Builder on _i1.XmlBuilder {
  void w_ct_leveltext({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_LvlLegacy_Builder on _i1.XmlBuilder {
  void w_ct_lvllegacy({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Lvl_Builder on _i1.XmlBuilder {
  void w_ct_lvl({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? ilvl,
    String? tplc,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ilvl, tplc);
        },
      );
    } else {
      _buildBody(children, ilvl, tplc);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ilvl,
    String? tplc,
  ) {
    if (ilvl != null)
      this.attribute(
        'ilvl',
        ilvl,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (tplc != null)
      this.attribute(
        'tplc',
        tplc,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_MultiLevelType_Builder on _i1.XmlBuilder {
  void w_ct_multileveltype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_MultiLevelType? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_MultiLevelType? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_AbstractNum_Builder on _i1.XmlBuilder {
  void w_ct_abstractnum({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? abstractNumId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, abstractNumId);
        },
      );
    } else {
      _buildBody(children, abstractNumId);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? abstractNumId) {
    if (abstractNumId != null)
      this.attribute(
        'abstractNumId',
        abstractNumId,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_NumLvl_Builder on _i1.XmlBuilder {
  void w_ct_numlvl({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? ilvl,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ilvl);
        },
      );
    } else {
      _buildBody(children, ilvl);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? ilvl) {
    if (ilvl != null)
      this.attribute(
        'ilvl',
        ilvl,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Num_Builder on _i1.XmlBuilder {
  void w_ct_num({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? numId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, numId);
        },
      );
    } else {
      _buildBody(children, numId);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? numId) {
    if (numId != null)
      this.attribute(
        'numId',
        numId,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Numbering_Builder on _i1.XmlBuilder {
  void w_ct_numbering({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TblStylePr_Builder on _i1.XmlBuilder {
  void w_ct_tblstylepr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_TblStyleOverrideType? type,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type);
        },
      );
    } else {
      _buildBody(children, type);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_TblStyleOverrideType? type,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Style_Builder on _i1.XmlBuilder {
  void w_ct_style({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_StyleType? type,
    String? styleId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, styleId);
        },
      );
    } else {
      _buildBody(children, type, styleId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_StyleType? type,
    String? styleId,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (styleId != null)
      this.attribute(
        'styleId',
        styleId,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_LsdException_Builder on _i1.XmlBuilder {
  void w_ct_lsdexception({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? name,
    String? uiPriority,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, uiPriority);
        },
      );
    } else {
      _buildBody(children, name, uiPriority);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? uiPriority,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (uiPriority != null)
      this.attribute(
        'uiPriority',
        uiPriority,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_LatentStyles_Builder on _i1.XmlBuilder {
  void w_ct_latentstyles({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? defUIPriority,
    String? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, defUIPriority, count);
        },
      );
    } else {
      _buildBody(children, defUIPriority, count);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? defUIPriority,
    String? count,
  ) {
    if (defUIPriority != null)
      this.attribute(
        'defUIPriority',
        defUIPriority,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (count != null)
      this.attribute(
        'count',
        count,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Styles_Builder on _i1.XmlBuilder {
  void w_ct_styles({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Panose_Builder on _i1.XmlBuilder {
  void w_ct_panose({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FontFamily_Builder on _i1.XmlBuilder {
  void w_ct_fontfamily({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_FontFamily? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_FontFamily? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Pitch_Builder on _i1.XmlBuilder {
  void w_ct_pitch({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_Pitch? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_Pitch? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FontSig_Builder on _i1.XmlBuilder {
  void w_ct_fontsig({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? usb0,
    String? usb1,
    String? usb2,
    String? usb3,
    String? csb0,
    String? csb1,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, usb0, usb1, usb2, usb3, csb0, csb1);
        },
      );
    } else {
      _buildBody(children, usb0, usb1, usb2, usb3, csb0, csb1);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? usb0,
    String? usb1,
    String? usb2,
    String? usb3,
    String? csb0,
    String? csb1,
  ) {
    if (usb0 != null)
      this.attribute(
        'usb0',
        usb0,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (usb1 != null)
      this.attribute(
        'usb1',
        usb1,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (usb2 != null)
      this.attribute(
        'usb2',
        usb2,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (usb3 != null)
      this.attribute(
        'usb3',
        usb3,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (csb0 != null)
      this.attribute(
        'csb0',
        csb0,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (csb1 != null)
      this.attribute(
        'csb1',
        csb1,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FontRel_Builder on _i1.XmlBuilder {
  void w_ct_fontrel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? fontKey,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fontKey);
        },
      );
    } else {
      _buildBody(children, fontKey);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? fontKey) {
    if (fontKey != null)
      this.attribute(
        'fontKey',
        fontKey,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Font_Builder on _i1.XmlBuilder {
  void w_ct_font({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? name,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name);
        },
      );
    } else {
      _buildBody(children, name);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? name) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_FontsList_Builder on _i1.XmlBuilder {
  void w_ct_fontslist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DivBdr_Builder on _i1.XmlBuilder {
  void w_ct_divbdr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Div_Builder on _i1.XmlBuilder {
  void w_ct_div({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_Divs_Builder on _i1.XmlBuilder {
  void w_ct_divs({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_TxbxContent_Builder on _i1.XmlBuilder {
  void w_ct_txbxcontent({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Body_Builder on _i1.XmlBuilder {
  void w_ct_body({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_ShapeDefaults_Builder on _i1.XmlBuilder {
  void w_ct_shapedefaults({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Comments_Builder on _i1.XmlBuilder {
  void w_ct_comments({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Footnotes_Builder on _i1.XmlBuilder {
  void w_ct_footnotes({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Endnotes_Builder on _i1.XmlBuilder {
  void w_ct_endnotes({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_SmartTagType_Builder on _i1.XmlBuilder {
  void w_ct_smarttagtype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? namespaceuri,
    String? name,
    String? url,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, namespaceuri, name, url);
        },
      );
    } else {
      _buildBody(children, namespaceuri, name, url);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? namespaceuri,
    String? name,
    String? url,
  ) {
    if (namespaceuri != null)
      this.attribute(
        'namespaceuri',
        namespaceuri,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (url != null)
      this.attribute(
        'url',
        url,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocPartBehavior_Builder on _i1.XmlBuilder {
  void w_ct_docpartbehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_DocPartBehavior? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_DocPartBehavior? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocPartBehaviors_Builder on _i1.XmlBuilder {
  void w_ct_docpartbehaviors({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DocPartType_Builder on _i1.XmlBuilder {
  void w_ct_docparttype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_DocPartType? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, W_ST_DocPartType? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocPartTypes_Builder on _i1.XmlBuilder {
  void w_ct_docparttypes({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DocPartGallery_Builder on _i1.XmlBuilder {
  void w_ct_docpartgallery({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    W_ST_DocPartGallery? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    W_ST_DocPartGallery? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocPartCategory_Builder on _i1.XmlBuilder {
  void w_ct_docpartcategory({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DocPartName_Builder on _i1.XmlBuilder {
  void w_ct_docpartname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val);
        },
      );
    } else {
      _buildBody(children, val);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? val) {
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_DocPartPr_Builder on _i1.XmlBuilder {
  void w_ct_docpartpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DocPart_Builder on _i1.XmlBuilder {
  void w_ct_docpart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DocParts_Builder on _i1.XmlBuilder {
  void w_ct_docparts({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Caption_Builder on _i1.XmlBuilder {
  void w_ct_caption({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? name,
    W_ST_CaptionPos? pos,
    String? heading,
    W_ST_NumberFormat? numFmt,
    W_ST_ChapterSep? sep,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, pos, heading, numFmt, sep);
        },
      );
    } else {
      _buildBody(children, name, pos, heading, numFmt, sep);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    W_ST_CaptionPos? pos,
    String? heading,
    W_ST_NumberFormat? numFmt,
    W_ST_ChapterSep? sep,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (pos != null)
      this.attribute(
        'pos',
        pos!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (heading != null)
      this.attribute(
        'heading',
        heading,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (numFmt != null)
      this.attribute(
        'numFmt',
        numFmt!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (sep != null)
      this.attribute(
        'sep',
        sep!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_AutoCaption_Builder on _i1.XmlBuilder {
  void w_ct_autocaption({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    String? name,
    String? caption,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, caption);
        },
      );
    } else {
      _buildBody(children, name, caption);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? caption,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    if (caption != null)
      this.attribute(
        'caption',
        caption,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_AutoCaptions_Builder on _i1.XmlBuilder {
  void w_ct_autocaptions({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Captions_Builder on _i1.XmlBuilder {
  void w_ct_captions({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_DocumentBase_Builder on _i1.XmlBuilder {
  void w_ct_documentbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension W_CT_Document_Builder on _i1.XmlBuilder {
  void w_ct_document({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    ST_ConformanceClass? conformance,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, conformance);
        },
      );
    } else {
      _buildBody(children, conformance);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    ST_ConformanceClass? conformance,
  ) {
    if (conformance != null)
      this.attribute(
        'conformance',
        conformance!.value,
        namespace:
            'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
      );
    children?.call(this);
  }
}

extension W_CT_GlossaryDocument_Builder on _i1.XmlBuilder {
  void w_ct_glossarydocument({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/wordprocessingml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}
