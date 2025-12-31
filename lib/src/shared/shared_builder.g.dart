// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:xml/xml.dart' as _i1;
import 'package:xml/xml.dart';
import 'package:open_xml/src/shared/shared.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';

extension M_CT_Integer255_Builder on _i1.XmlBuilder {
  void m_ct_integer255({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_Integer2_Builder on _i1.XmlBuilder {
  void m_ct_integer2({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_SpacingRule_Builder on _i1.XmlBuilder {
  void m_ct_spacingrule({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_UnSignedInteger_Builder on _i1.XmlBuilder {
  void m_ct_unsignedinteger({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_Char_Builder on _i1.XmlBuilder {
  void m_ct_char({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_OnOff_Builder on _i1.XmlBuilder {
  void m_ct_onoff({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_String_Builder on _i1.XmlBuilder {
  void m_ct_string({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_XAlign_Builder on _i1.XmlBuilder {
  void m_ct_xalign({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    ST_XAlign? val,
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

  void _buildBody(void Function(XmlBuilder)? children, ST_XAlign? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_YAlign_Builder on _i1.XmlBuilder {
  void m_ct_yalign({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    ST_YAlign? val,
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

  void _buildBody(void Function(XmlBuilder)? children, ST_YAlign? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_Shp_Builder on _i1.XmlBuilder {
  void m_ct_shp({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_Shp? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_Shp? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_FType_Builder on _i1.XmlBuilder {
  void m_ct_ftype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_FType? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_FType? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_LimLoc_Builder on _i1.XmlBuilder {
  void m_ct_limloc({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_LimLoc? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_LimLoc? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_TopBot_Builder on _i1.XmlBuilder {
  void m_ct_topbot({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_TopBot? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_TopBot? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_Script_Builder on _i1.XmlBuilder {
  void m_ct_script({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_Script? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_Script? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_Style_Builder on _i1.XmlBuilder {
  void m_ct_style({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_Style? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_Style? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_ManualBreak_Builder on _i1.XmlBuilder {
  void m_ct_manualbreak({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    String? alnAt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, alnAt);
        },
      );
    } else {
      _buildBody(children, alnAt);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? alnAt) {
    if (alnAt != null)
      this.attribute(
        'alnAt',
        alnAt,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_RPR_Builder on _i1.XmlBuilder {
  void m_ct_rpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_Text_Builder on _i1.XmlBuilder {
  void m_ct_text({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_R_Builder on _i1.XmlBuilder {
  void m_ct_r({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_CtrlPr_Builder on _i1.XmlBuilder {
  void m_ct_ctrlpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_AccPr_Builder on _i1.XmlBuilder {
  void m_ct_accpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_Acc_Builder on _i1.XmlBuilder {
  void m_ct_acc({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_BarPr_Builder on _i1.XmlBuilder {
  void m_ct_barpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_Bar_Builder on _i1.XmlBuilder {
  void m_ct_bar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_BoxPr_Builder on _i1.XmlBuilder {
  void m_ct_boxpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_Box_Builder on _i1.XmlBuilder {
  void m_ct_box({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_BorderBoxPr_Builder on _i1.XmlBuilder {
  void m_ct_borderboxpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_BorderBox_Builder on _i1.XmlBuilder {
  void m_ct_borderbox({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_DPr_Builder on _i1.XmlBuilder {
  void m_ct_dpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_D_Builder on _i1.XmlBuilder {
  void m_ct_d({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_EqArrPr_Builder on _i1.XmlBuilder {
  void m_ct_eqarrpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_EqArr_Builder on _i1.XmlBuilder {
  void m_ct_eqarr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_FPr_Builder on _i1.XmlBuilder {
  void m_ct_fpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_F_Builder on _i1.XmlBuilder {
  void m_ct_f({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_FuncPr_Builder on _i1.XmlBuilder {
  void m_ct_funcpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_Func_Builder on _i1.XmlBuilder {
  void m_ct_func({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_GroupChrPr_Builder on _i1.XmlBuilder {
  void m_ct_groupchrpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_GroupChr_Builder on _i1.XmlBuilder {
  void m_ct_groupchr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_LimLowPr_Builder on _i1.XmlBuilder {
  void m_ct_limlowpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_LimLow_Builder on _i1.XmlBuilder {
  void m_ct_limlow({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_LimUppPr_Builder on _i1.XmlBuilder {
  void m_ct_limupppr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_LimUpp_Builder on _i1.XmlBuilder {
  void m_ct_limupp({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_MCPr_Builder on _i1.XmlBuilder {
  void m_ct_mcpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_MC_Builder on _i1.XmlBuilder {
  void m_ct_mc({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_MCS_Builder on _i1.XmlBuilder {
  void m_ct_mcs({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_MPr_Builder on _i1.XmlBuilder {
  void m_ct_mpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_MR_Builder on _i1.XmlBuilder {
  void m_ct_mr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_M_Builder on _i1.XmlBuilder {
  void m_ct_m({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_NaryPr_Builder on _i1.XmlBuilder {
  void m_ct_narypr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_Nary_Builder on _i1.XmlBuilder {
  void m_ct_nary({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_PhantPr_Builder on _i1.XmlBuilder {
  void m_ct_phantpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_Phant_Builder on _i1.XmlBuilder {
  void m_ct_phant({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_RadPr_Builder on _i1.XmlBuilder {
  void m_ct_radpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_Rad_Builder on _i1.XmlBuilder {
  void m_ct_rad({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_SPrePr_Builder on _i1.XmlBuilder {
  void m_ct_sprepr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_SPre_Builder on _i1.XmlBuilder {
  void m_ct_spre({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_SSubPr_Builder on _i1.XmlBuilder {
  void m_ct_ssubpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_SSub_Builder on _i1.XmlBuilder {
  void m_ct_ssub({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_SSubSupPr_Builder on _i1.XmlBuilder {
  void m_ct_ssubsuppr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_SSubSup_Builder on _i1.XmlBuilder {
  void m_ct_ssubsup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_SSupPr_Builder on _i1.XmlBuilder {
  void m_ct_ssuppr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_SSup_Builder on _i1.XmlBuilder {
  void m_ct_ssup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_OMathArgPr_Builder on _i1.XmlBuilder {
  void m_ct_omathargpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_OMathArg_Builder on _i1.XmlBuilder {
  void m_ct_omatharg({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_OMathJc_Builder on _i1.XmlBuilder {
  void m_ct_omathjc({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_Jc? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_Jc? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_OMathParaPr_Builder on _i1.XmlBuilder {
  void m_ct_omathparapr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_TwipsMeasure_Builder on _i1.XmlBuilder {
  void m_ct_twipsmeasure({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_BreakBin_Builder on _i1.XmlBuilder {
  void m_ct_breakbin({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_BreakBin? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_BreakBin? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_BreakBinSub_Builder on _i1.XmlBuilder {
  void m_ct_breakbinsub({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
    M_ST_BreakBinSub? val,
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

  void _buildBody(void Function(XmlBuilder)? children, M_ST_BreakBinSub? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      );
    children?.call(this);
  }
}

extension M_CT_MathPr_Builder on _i1.XmlBuilder {
  void m_ct_mathpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_OMathPara_Builder on _i1.XmlBuilder {
  void m_ct_omathpara({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension M_CT_OMath_Builder on _i1.XmlBuilder {
  void m_ct_omath({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/officeDocument/2006/math',
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

extension CT_Schema_Builder on _i1.XmlBuilder {
  void ct_schema({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
    String? uri,
    String? manifestLocation,
    String? schemaLocation,
    String? schemaLanguage,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            uri,
            manifestLocation,
            schemaLocation,
            schemaLanguage,
          );
        },
      );
    } else {
      _buildBody(
        children,
        uri,
        manifestLocation,
        schemaLocation,
        schemaLanguage,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uri,
    String? manifestLocation,
    String? schemaLocation,
    String? schemaLanguage,
  ) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace: 'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
      );
    if (manifestLocation != null)
      this.attribute(
        'manifestLocation',
        manifestLocation,
        namespace: 'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
      );
    if (schemaLocation != null)
      this.attribute(
        'schemaLocation',
        schemaLocation,
        namespace: 'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
      );
    if (schemaLanguage != null)
      this.attribute(
        'schemaLanguage',
        schemaLanguage,
        namespace: 'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
      );
    children?.call(this);
  }
}

extension CT_SchemaLibrary_Builder on _i1.XmlBuilder {
  void ct_schemalibrary({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
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
