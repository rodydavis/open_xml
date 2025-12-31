// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:xml/xml.dart' as _i1;
import 'package:xml/xml.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';

extension D_CT_EffectExtent_Builder on _i1.XmlBuilder {
  void d_ct_effectextent({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
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

extension D_CT_Inline_Builder on _i1.XmlBuilder {
  void d_ct_inline({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    String? distT,
    String? distB,
    String? distL,
    String? distR,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, distT, distB, distL, distR);
        },
      );
    } else {
      _buildBody(children, distT, distB, distL, distR);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? distT,
    String? distB,
    String? distL,
    String? distR,
  ) {
    if (distT != null)
      this.attribute(
        'distT',
        distT,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distB != null)
      this.attribute(
        'distB',
        distB,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distL != null)
      this.attribute(
        'distL',
        distL,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distR != null)
      this.attribute(
        'distR',
        distR,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_WrapPath_Builder on _i1.XmlBuilder {
  void d_ct_wrappath({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    bool? edited,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, edited);
        },
      );
    } else {
      _buildBody(children, edited);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? edited) {
    if (edited != null)
      this.attribute(
        'edited',
        edited == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_WrapNone_Builder on _i1.XmlBuilder {
  void d_ct_wrapnone({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
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

extension D_CT_WrapSquare_Builder on _i1.XmlBuilder {
  void d_ct_wrapsquare({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    D_ST_WrapText? wrapText,
    String? distT,
    String? distB,
    String? distL,
    String? distR,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, wrapText, distT, distB, distL, distR);
        },
      );
    } else {
      _buildBody(children, wrapText, distT, distB, distL, distR);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_WrapText? wrapText,
    String? distT,
    String? distB,
    String? distL,
    String? distR,
  ) {
    if (wrapText != null)
      this.attribute(
        'wrapText',
        wrapText!.value,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distT != null)
      this.attribute(
        'distT',
        distT,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distB != null)
      this.attribute(
        'distB',
        distB,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distL != null)
      this.attribute(
        'distL',
        distL,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distR != null)
      this.attribute(
        'distR',
        distR,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_WrapTight_Builder on _i1.XmlBuilder {
  void d_ct_wraptight({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    D_ST_WrapText? wrapText,
    String? distL,
    String? distR,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, wrapText, distL, distR);
        },
      );
    } else {
      _buildBody(children, wrapText, distL, distR);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_WrapText? wrapText,
    String? distL,
    String? distR,
  ) {
    if (wrapText != null)
      this.attribute(
        'wrapText',
        wrapText!.value,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distL != null)
      this.attribute(
        'distL',
        distL,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distR != null)
      this.attribute(
        'distR',
        distR,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_WrapThrough_Builder on _i1.XmlBuilder {
  void d_ct_wrapthrough({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    D_ST_WrapText? wrapText,
    String? distL,
    String? distR,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, wrapText, distL, distR);
        },
      );
    } else {
      _buildBody(children, wrapText, distL, distR);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_WrapText? wrapText,
    String? distL,
    String? distR,
  ) {
    if (wrapText != null)
      this.attribute(
        'wrapText',
        wrapText!.value,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distL != null)
      this.attribute(
        'distL',
        distL,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distR != null)
      this.attribute(
        'distR',
        distR,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_WrapTopBottom_Builder on _i1.XmlBuilder {
  void d_ct_wraptopbottom({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    String? distT,
    String? distB,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, distT, distB);
        },
      );
    } else {
      _buildBody(children, distT, distB);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? distT,
    String? distB,
  ) {
    if (distT != null)
      this.attribute(
        'distT',
        distT,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distB != null)
      this.attribute(
        'distB',
        distB,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_PosH_Builder on _i1.XmlBuilder {
  void d_ct_posh({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    D_ST_RelFromH? relativeFrom,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, relativeFrom);
        },
      );
    } else {
      _buildBody(children, relativeFrom);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_RelFromH? relativeFrom,
  ) {
    if (relativeFrom != null)
      this.attribute(
        'relativeFrom',
        relativeFrom!.value,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_PosV_Builder on _i1.XmlBuilder {
  void d_ct_posv({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    D_ST_RelFromV? relativeFrom,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, relativeFrom);
        },
      );
    } else {
      _buildBody(children, relativeFrom);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_RelFromV? relativeFrom,
  ) {
    if (relativeFrom != null)
      this.attribute(
        'relativeFrom',
        relativeFrom!.value,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_Anchor_Builder on _i1.XmlBuilder {
  void d_ct_anchor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    String? distT,
    String? distB,
    String? distL,
    String? distR,
    bool? simplePos,
    int? relativeHeight,
    bool? behindDoc,
    bool? locked,
    bool? layoutInCell,
    bool? hidden,
    bool? allowOverlap,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            distT,
            distB,
            distL,
            distR,
            simplePos,
            relativeHeight,
            behindDoc,
            locked,
            layoutInCell,
            hidden,
            allowOverlap,
          );
        },
      );
    } else {
      _buildBody(
        children,
        distT,
        distB,
        distL,
        distR,
        simplePos,
        relativeHeight,
        behindDoc,
        locked,
        layoutInCell,
        hidden,
        allowOverlap,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? distT,
    String? distB,
    String? distL,
    String? distR,
    bool? simplePos,
    int? relativeHeight,
    bool? behindDoc,
    bool? locked,
    bool? layoutInCell,
    bool? hidden,
    bool? allowOverlap,
  ) {
    if (distT != null)
      this.attribute(
        'distT',
        distT,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distB != null)
      this.attribute(
        'distB',
        distB,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distL != null)
      this.attribute(
        'distL',
        distL,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (distR != null)
      this.attribute(
        'distR',
        distR,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (simplePos != null)
      this.attribute(
        'simplePos',
        simplePos == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (relativeHeight != null)
      this.attribute(
        'relativeHeight',
        relativeHeight.toString(),
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (behindDoc != null)
      this.attribute(
        'behindDoc',
        behindDoc == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (locked != null)
      this.attribute(
        'locked',
        locked == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (layoutInCell != null)
      this.attribute(
        'layoutInCell',
        layoutInCell == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (hidden != null)
      this.attribute(
        'hidden',
        hidden == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (allowOverlap != null)
      this.attribute(
        'allowOverlap',
        allowOverlap == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_TxbxContent_Builder on _i1.XmlBuilder {
  void d_ct_txbxcontent({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
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

extension D_CT_TextboxInfo_Builder on _i1.XmlBuilder {
  void d_ct_textboxinfo({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    int? id,
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

  void _buildBody(void Function(XmlBuilder)? children, int? id) {
    if (id != null)
      this.attribute(
        'id',
        id.toString(),
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_LinkedTextboxInformation_Builder on _i1.XmlBuilder {
  void d_ct_linkedtextboxinformation({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    int? id,
    int? seq,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, seq);
        },
      );
    } else {
      _buildBody(children, id, seq);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? id, int? seq) {
    if (id != null)
      this.attribute(
        'id',
        id.toString(),
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    if (seq != null)
      this.attribute(
        'seq',
        seq.toString(),
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_WordprocessingShape_Builder on _i1.XmlBuilder {
  void d_ct_wordprocessingshape({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    bool? normalEastAsianFlow,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, normalEastAsianFlow);
        },
      );
    } else {
      _buildBody(children, normalEastAsianFlow);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? normalEastAsianFlow,
  ) {
    if (normalEastAsianFlow != null)
      this.attribute(
        'normalEastAsianFlow',
        normalEastAsianFlow == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_GraphicFrame_Builder on _i1.XmlBuilder {
  void d_ct_graphicframe({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    String? macro,
    bool? fPublished,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, macro, fPublished);
        },
      );
    } else {
      _buildBody(children, macro, fPublished);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? macro,
    bool? fPublished,
  ) {
    if (macro != null)
      this.attribute(
        'macro',
        macro,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
      );
    if (fPublished != null)
      this.attribute(
        'fPublished',
        fPublished == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_WordprocessingContentPartNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_wordprocessingcontentpartnonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
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

extension D_CT_WordprocessingContentPart_Builder on _i1.XmlBuilder {
  void d_ct_wordprocessingcontentpart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    D_ST_BlackWhiteMode? bwMode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bwMode);
        },
      );
    } else {
      _buildBody(children, bwMode);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_BlackWhiteMode? bwMode,
  ) {
    if (bwMode != null)
      this.attribute(
        'bwMode',
        bwMode!.value,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_WordprocessingGroup_Builder on _i1.XmlBuilder {
  void d_ct_wordprocessinggroup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
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

extension D_CT_WordprocessingCanvas_Builder on _i1.XmlBuilder {
  void d_ct_wordprocessingcanvas({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
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

extension D_CT_AudioFile_Builder on _i1.XmlBuilder {
  void d_ct_audiofile({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? contentType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, contentType);
        },
      );
    } else {
      _buildBody(children, contentType);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? contentType) {
    if (contentType != null)
      this.attribute(
        'contentType',
        contentType,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_VideoFile_Builder on _i1.XmlBuilder {
  void d_ct_videofile({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? contentType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, contentType);
        },
      );
    } else {
      _buildBody(children, contentType);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? contentType) {
    if (contentType != null)
      this.attribute(
        'contentType',
        contentType,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_QuickTimeFile_Builder on _i1.XmlBuilder {
  void d_ct_quicktimefile({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AudioCDTime_Builder on _i1.XmlBuilder {
  void d_ct_audiocdtime({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    int? track,
    int? time,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, track, time);
        },
      );
    } else {
      _buildBody(children, track, time);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? track, int? time) {
    if (track != null)
      this.attribute(
        'track',
        track.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (time != null)
      this.attribute(
        'time',
        time.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_AudioCD_Builder on _i1.XmlBuilder {
  void d_ct_audiocd({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ColorScheme_Builder on _i1.XmlBuilder {
  void d_ct_colorscheme({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_CustomColor_Builder on _i1.XmlBuilder {
  void d_ct_customcolor({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_SupplementalFont_Builder on _i1.XmlBuilder {
  void d_ct_supplementalfont({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? script,
    String? typeface,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, script, typeface);
        },
      );
    } else {
      _buildBody(children, script, typeface);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? script,
    String? typeface,
  ) {
    if (script != null)
      this.attribute(
        'script',
        script,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (typeface != null)
      this.attribute(
        'typeface',
        typeface,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_CustomColorList_Builder on _i1.XmlBuilder {
  void d_ct_customcolorlist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_FontCollection_Builder on _i1.XmlBuilder {
  void d_ct_fontcollection({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_EffectStyleItem_Builder on _i1.XmlBuilder {
  void d_ct_effectstyleitem({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_FontScheme_Builder on _i1.XmlBuilder {
  void d_ct_fontscheme({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_FillStyleList_Builder on _i1.XmlBuilder {
  void d_ct_fillstylelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_LineStyleList_Builder on _i1.XmlBuilder {
  void d_ct_linestylelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_EffectStyleList_Builder on _i1.XmlBuilder {
  void d_ct_effectstylelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_BackgroundFillStyleList_Builder on _i1.XmlBuilder {
  void d_ct_backgroundfillstylelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_StyleMatrix_Builder on _i1.XmlBuilder {
  void d_ct_stylematrix({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_BaseStyles_Builder on _i1.XmlBuilder {
  void d_ct_basestyles({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_OfficeArtExtension_Builder on _i1.XmlBuilder {
  void d_ct_officeartextension({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? uri,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri);
        },
      );
    } else {
      _buildBody(children, uri);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? uri) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Angle_Builder on _i1.XmlBuilder {
  void d_ct_angle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PositiveFixedAngle_Builder on _i1.XmlBuilder {
  void d_ct_positivefixedangle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Percentage_Builder on _i1.XmlBuilder {
  void d_ct_percentage({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PositivePercentage_Builder on _i1.XmlBuilder {
  void d_ct_positivepercentage({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_FixedPercentage_Builder on _i1.XmlBuilder {
  void d_ct_fixedpercentage({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PositiveFixedPercentage_Builder on _i1.XmlBuilder {
  void d_ct_positivefixedpercentage({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Ratio_Builder on _i1.XmlBuilder {
  void d_ct_ratio({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    int? n,
    int? d,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, n, d);
        },
      );
    } else {
      _buildBody(children, n, d);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? n, int? d) {
    if (n != null)
      this.attribute(
        'n',
        n.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (d != null)
      this.attribute(
        'd',
        d.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Point2D_Builder on _i1.XmlBuilder {
  void d_ct_point2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_PositiveSize2D_Builder on _i1.XmlBuilder {
  void d_ct_positivesize2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? cx,
    String? cy,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, cx, cy);
        },
      );
    } else {
      _buildBody(children, cx, cy);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? cx, String? cy) {
    if (cx != null)
      this.attribute(
        'cx',
        cx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (cy != null)
      this.attribute(
        'cy',
        cy,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ComplementTransform_Builder on _i1.XmlBuilder {
  void d_ct_complementtransform({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_InverseTransform_Builder on _i1.XmlBuilder {
  void d_ct_inversetransform({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GrayscaleTransform_Builder on _i1.XmlBuilder {
  void d_ct_grayscaletransform({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GammaTransform_Builder on _i1.XmlBuilder {
  void d_ct_gammatransform({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_InverseGammaTransform_Builder on _i1.XmlBuilder {
  void d_ct_inversegammatransform({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ScRgbColor_Builder on _i1.XmlBuilder {
  void d_ct_scrgbcolor({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? r,
    String? g,
    String? b,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r, g, b);
        },
      );
    } else {
      _buildBody(children, r, g, b);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? r,
    String? g,
    String? b,
  ) {
    if (r != null)
      this.attribute(
        'r',
        r,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (g != null)
      this.attribute(
        'g',
        g,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (b != null)
      this.attribute(
        'b',
        b,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_SRgbColor_Builder on _i1.XmlBuilder {
  void d_ct_srgbcolor({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_HslColor_Builder on _i1.XmlBuilder {
  void d_ct_hslcolor({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? hue,
    String? sat,
    String? lum,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, hue, sat, lum);
        },
      );
    } else {
      _buildBody(children, hue, sat, lum);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? hue,
    String? sat,
    String? lum,
  ) {
    if (hue != null)
      this.attribute(
        'hue',
        hue,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sat != null)
      this.attribute(
        'sat',
        sat,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (lum != null)
      this.attribute(
        'lum',
        lum,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_SystemColor_Builder on _i1.XmlBuilder {
  void d_ct_systemcolor({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_SystemColorVal? val,
    String? lastClr,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val, lastClr);
        },
      );
    } else {
      _buildBody(children, val, lastClr);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_SystemColorVal? val,
    String? lastClr,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (lastClr != null)
      this.attribute(
        'lastClr',
        lastClr,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_SchemeColor_Builder on _i1.XmlBuilder {
  void d_ct_schemecolor({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_SchemeColorVal? val,
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
    D_ST_SchemeColorVal? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PresetColor_Builder on _i1.XmlBuilder {
  void d_ct_presetcolor({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_PresetColorVal? val,
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
    D_ST_PresetColorVal? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_OfficeArtExtensionList_Builder on _i1.XmlBuilder {
  void d_ct_officeartextensionlist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Scale2D_Builder on _i1.XmlBuilder {
  void d_ct_scale2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Transform2D_Builder on _i1.XmlBuilder {
  void d_ct_transform2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? rot,
    bool? flipH,
    bool? flipV,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rot, flipH, flipV);
        },
      );
    } else {
      _buildBody(children, rot, flipH, flipV);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? rot,
    bool? flipH,
    bool? flipV,
  ) {
    if (rot != null)
      this.attribute(
        'rot',
        rot,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (flipH != null)
      this.attribute(
        'flipH',
        flipH == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (flipV != null)
      this.attribute(
        'flipV',
        flipV == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GroupTransform2D_Builder on _i1.XmlBuilder {
  void d_ct_grouptransform2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? rot,
    bool? flipH,
    bool? flipV,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rot, flipH, flipV);
        },
      );
    } else {
      _buildBody(children, rot, flipH, flipV);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? rot,
    bool? flipH,
    bool? flipV,
  ) {
    if (rot != null)
      this.attribute(
        'rot',
        rot,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (flipH != null)
      this.attribute(
        'flipH',
        flipH == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (flipV != null)
      this.attribute(
        'flipV',
        flipV == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Point3D_Builder on _i1.XmlBuilder {
  void d_ct_point3d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Vector3D_Builder on _i1.XmlBuilder {
  void d_ct_vector3d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_SphereCoords_Builder on _i1.XmlBuilder {
  void d_ct_spherecoords({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? lat,
    String? lon,
    String? rev,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lat, lon, rev);
        },
      );
    } else {
      _buildBody(children, lat, lon, rev);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? lat,
    String? lon,
    String? rev,
  ) {
    if (lat != null)
      this.attribute(
        'lat',
        lat,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (lon != null)
      this.attribute(
        'lon',
        lon,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (rev != null)
      this.attribute(
        'rev',
        rev,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_RelativeRect_Builder on _i1.XmlBuilder {
  void d_ct_relativerect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? l,
    String? t,
    String? r,
    String? b,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, l, t, r, b);
        },
      );
    } else {
      _buildBody(children, l, t, r, b);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? l,
    String? t,
    String? r,
    String? b,
  ) {
    if (l != null)
      this.attribute(
        'l',
        l,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (t != null)
      this.attribute(
        't',
        t,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (r != null)
      this.attribute(
        'r',
        r,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (b != null)
      this.attribute(
        'b',
        b,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Color_Builder on _i1.XmlBuilder {
  void d_ct_color({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ColorMRU_Builder on _i1.XmlBuilder {
  void d_ct_colormru({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_EmbeddedWAVAudioFile_Builder on _i1.XmlBuilder {
  void d_ct_embeddedwavaudiofile({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Hyperlink_Builder on _i1.XmlBuilder {
  void d_ct_hyperlink({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? invalidUrl,
    String? action,
    String? tgtFrame,
    String? tooltip,
    bool? history,
    bool? highlightClick,
    bool? endSnd,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            invalidUrl,
            action,
            tgtFrame,
            tooltip,
            history,
            highlightClick,
            endSnd,
          );
        },
      );
    } else {
      _buildBody(
        children,
        invalidUrl,
        action,
        tgtFrame,
        tooltip,
        history,
        highlightClick,
        endSnd,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? invalidUrl,
    String? action,
    String? tgtFrame,
    String? tooltip,
    bool? history,
    bool? highlightClick,
    bool? endSnd,
  ) {
    if (invalidUrl != null)
      this.attribute(
        'invalidUrl',
        invalidUrl,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (action != null)
      this.attribute(
        'action',
        action,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (tgtFrame != null)
      this.attribute(
        'tgtFrame',
        tgtFrame,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (tooltip != null)
      this.attribute(
        'tooltip',
        tooltip,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (history != null)
      this.attribute(
        'history',
        history == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (highlightClick != null)
      this.attribute(
        'highlightClick',
        highlightClick == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (endSnd != null)
      this.attribute(
        'endSnd',
        endSnd == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ConnectorLocking_Builder on _i1.XmlBuilder {
  void d_ct_connectorlocking({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ShapeLocking_Builder on _i1.XmlBuilder {
  void d_ct_shapelocking({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? noTextEdit,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, noTextEdit);
        },
      );
    } else {
      _buildBody(children, noTextEdit);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? noTextEdit) {
    if (noTextEdit != null)
      this.attribute(
        'noTextEdit',
        noTextEdit == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PictureLocking_Builder on _i1.XmlBuilder {
  void d_ct_picturelocking({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? noCrop,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, noCrop);
        },
      );
    } else {
      _buildBody(children, noCrop);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? noCrop) {
    if (noCrop != null)
      this.attribute(
        'noCrop',
        noCrop == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GroupLocking_Builder on _i1.XmlBuilder {
  void d_ct_grouplocking({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? noGrp,
    bool? noUngrp,
    bool? noSelect,
    bool? noRot,
    bool? noChangeAspect,
    bool? noMove,
    bool? noResize,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            noGrp,
            noUngrp,
            noSelect,
            noRot,
            noChangeAspect,
            noMove,
            noResize,
          );
        },
      );
    } else {
      _buildBody(
        children,
        noGrp,
        noUngrp,
        noSelect,
        noRot,
        noChangeAspect,
        noMove,
        noResize,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? noGrp,
    bool? noUngrp,
    bool? noSelect,
    bool? noRot,
    bool? noChangeAspect,
    bool? noMove,
    bool? noResize,
  ) {
    if (noGrp != null)
      this.attribute(
        'noGrp',
        noGrp == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noUngrp != null)
      this.attribute(
        'noUngrp',
        noUngrp == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noSelect != null)
      this.attribute(
        'noSelect',
        noSelect == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noRot != null)
      this.attribute(
        'noRot',
        noRot == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noChangeAspect != null)
      this.attribute(
        'noChangeAspect',
        noChangeAspect == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noMove != null)
      this.attribute(
        'noMove',
        noMove == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noResize != null)
      this.attribute(
        'noResize',
        noResize == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GraphicalObjectFrameLocking_Builder on _i1.XmlBuilder {
  void d_ct_graphicalobjectframelocking({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? noGrp,
    bool? noDrilldown,
    bool? noSelect,
    bool? noChangeAspect,
    bool? noMove,
    bool? noResize,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            noGrp,
            noDrilldown,
            noSelect,
            noChangeAspect,
            noMove,
            noResize,
          );
        },
      );
    } else {
      _buildBody(
        children,
        noGrp,
        noDrilldown,
        noSelect,
        noChangeAspect,
        noMove,
        noResize,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? noGrp,
    bool? noDrilldown,
    bool? noSelect,
    bool? noChangeAspect,
    bool? noMove,
    bool? noResize,
  ) {
    if (noGrp != null)
      this.attribute(
        'noGrp',
        noGrp == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noDrilldown != null)
      this.attribute(
        'noDrilldown',
        noDrilldown == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noSelect != null)
      this.attribute(
        'noSelect',
        noSelect == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noChangeAspect != null)
      this.attribute(
        'noChangeAspect',
        noChangeAspect == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noMove != null)
      this.attribute(
        'noMove',
        noMove == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noResize != null)
      this.attribute(
        'noResize',
        noResize == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ContentPartLocking_Builder on _i1.XmlBuilder {
  void d_ct_contentpartlocking({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_NonVisualDrawingProps_Builder on _i1.XmlBuilder {
  void d_ct_nonvisualdrawingprops({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? id,
    String? name,
    String? descr,
    bool? hidden,
    String? title,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, name, descr, hidden, title);
        },
      );
    } else {
      _buildBody(children, id, name, descr, hidden, title);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? id,
    String? name,
    String? descr,
    bool? hidden,
    String? title,
  ) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (descr != null)
      this.attribute(
        'descr',
        descr,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (hidden != null)
      this.attribute(
        'hidden',
        hidden == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (title != null)
      this.attribute(
        'title',
        title,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_NonVisualDrawingShapeProps_Builder on _i1.XmlBuilder {
  void d_ct_nonvisualdrawingshapeprops({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? txBox,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, txBox);
        },
      );
    } else {
      _buildBody(children, txBox);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? txBox) {
    if (txBox != null)
      this.attribute(
        'txBox',
        txBox == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_NonVisualConnectorProperties_Builder on _i1.XmlBuilder {
  void d_ct_nonvisualconnectorproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_NonVisualPictureProperties_Builder on _i1.XmlBuilder {
  void d_ct_nonvisualpictureproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? preferRelativeResize,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, preferRelativeResize);
        },
      );
    } else {
      _buildBody(children, preferRelativeResize);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? preferRelativeResize,
  ) {
    if (preferRelativeResize != null)
      this.attribute(
        'preferRelativeResize',
        preferRelativeResize == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_NonVisualGroupDrawingShapeProps_Builder on _i1.XmlBuilder {
  void d_ct_nonvisualgroupdrawingshapeprops({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_NonVisualGraphicFrameProperties_Builder on _i1.XmlBuilder {
  void d_ct_nonvisualgraphicframeproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_NonVisualContentPartProperties_Builder on _i1.XmlBuilder {
  void d_ct_nonvisualcontentpartproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? isComment,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, isComment);
        },
      );
    } else {
      _buildBody(children, isComment);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? isComment) {
    if (isComment != null)
      this.attribute(
        'isComment',
        isComment == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GraphicalObjectData_Builder on _i1.XmlBuilder {
  void d_ct_graphicalobjectdata({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? uri,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri);
        },
      );
    } else {
      _buildBody(children, uri);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? uri) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GraphicalObject_Builder on _i1.XmlBuilder {
  void d_ct_graphicalobject({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AnimationDgmElement_Builder on _i1.XmlBuilder {
  void d_ct_animationdgmelement({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? id,
    D_ST_DgmBuildStep? bldStep,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, bldStep);
        },
      );
    } else {
      _buildBody(children, id, bldStep);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? id,
    D_ST_DgmBuildStep? bldStep,
  ) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (bldStep != null)
      this.attribute(
        'bldStep',
        bldStep!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_AnimationChartElement_Builder on _i1.XmlBuilder {
  void d_ct_animationchartelement({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    int? seriesIdx,
    int? categoryIdx,
    D_ST_ChartBuildStep? bldStep,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, seriesIdx, categoryIdx, bldStep);
        },
      );
    } else {
      _buildBody(children, seriesIdx, categoryIdx, bldStep);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? seriesIdx,
    int? categoryIdx,
    D_ST_ChartBuildStep? bldStep,
  ) {
    if (seriesIdx != null)
      this.attribute(
        'seriesIdx',
        seriesIdx.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (categoryIdx != null)
      this.attribute(
        'categoryIdx',
        categoryIdx.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (bldStep != null)
      this.attribute(
        'bldStep',
        bldStep!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_AnimationElementChoice_Builder on _i1.XmlBuilder {
  void d_ct_animationelementchoice({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AnimationDgmBuildProperties_Builder on _i1.XmlBuilder {
  void d_ct_animationdgmbuildproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? rev,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rev);
        },
      );
    } else {
      _buildBody(children, rev);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? rev) {
    if (rev != null)
      this.attribute(
        'rev',
        rev == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_AnimationChartBuildProperties_Builder on _i1.XmlBuilder {
  void d_ct_animationchartbuildproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? animBg,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, animBg);
        },
      );
    } else {
      _buildBody(children, animBg);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? animBg) {
    if (animBg != null)
      this.attribute(
        'animBg',
        animBg == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_AnimationGraphicalObjectBuildProperties_Builder
    on _i1.XmlBuilder {
  void d_ct_animationgraphicalobjectbuildproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_BackgroundFormatting_Builder on _i1.XmlBuilder {
  void d_ct_backgroundformatting({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_WholeE2oFormatting_Builder on _i1.XmlBuilder {
  void d_ct_wholee2oformatting({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlUseShapeRectangle_Builder on _i1.XmlBuilder {
  void d_ct_gvmluseshaperectangle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlTextShape_Builder on _i1.XmlBuilder {
  void d_ct_gvmltextshape({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlShapeNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_gvmlshapenonvisual({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlShape_Builder on _i1.XmlBuilder {
  void d_ct_gvmlshape({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlConnectorNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_gvmlconnectornonvisual({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlConnector_Builder on _i1.XmlBuilder {
  void d_ct_gvmlconnector({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlPictureNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_gvmlpicturenonvisual({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlPicture_Builder on _i1.XmlBuilder {
  void d_ct_gvmlpicture({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlGraphicFrameNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_gvmlgraphicframenonvisual({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlGraphicalObjectFrame_Builder on _i1.XmlBuilder {
  void d_ct_gvmlgraphicalobjectframe({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlGroupShapeNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_gvmlgroupshapenonvisual({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GvmlGroupShape_Builder on _i1.XmlBuilder {
  void d_ct_gvmlgroupshape({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Camera_Builder on _i1.XmlBuilder {
  void d_ct_camera({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_PresetCameraType? prst,
    String? fov,
    String? zoom,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, prst, fov, zoom);
        },
      );
    } else {
      _buildBody(children, prst, fov, zoom);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_PresetCameraType? prst,
    String? fov,
    String? zoom,
  ) {
    if (prst != null)
      this.attribute(
        'prst',
        prst!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (fov != null)
      this.attribute(
        'fov',
        fov,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (zoom != null)
      this.attribute(
        'zoom',
        zoom,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_LightRig_Builder on _i1.XmlBuilder {
  void d_ct_lightrig({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_LightRigType? rig,
    D_ST_LightRigDirection? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rig, dir);
        },
      );
    } else {
      _buildBody(children, rig, dir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_LightRigType? rig,
    D_ST_LightRigDirection? dir,
  ) {
    if (rig != null)
      this.attribute(
        'rig',
        rig!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dir != null)
      this.attribute(
        'dir',
        dir!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Scene3D_Builder on _i1.XmlBuilder {
  void d_ct_scene3d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Backdrop_Builder on _i1.XmlBuilder {
  void d_ct_backdrop({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Bevel_Builder on _i1.XmlBuilder {
  void d_ct_bevel({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? w,
    String? h,
    D_ST_BevelPresetType? prst,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, w, h, prst);
        },
      );
    } else {
      _buildBody(children, w, h, prst);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? w,
    String? h,
    D_ST_BevelPresetType? prst,
  ) {
    if (w != null)
      this.attribute(
        'w',
        w,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (h != null)
      this.attribute(
        'h',
        h,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (prst != null)
      this.attribute(
        'prst',
        prst!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Shape3D_Builder on _i1.XmlBuilder {
  void d_ct_shape3d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? extrusionH,
    String? contourW,
    D_ST_PresetMaterialType? prstMaterial,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, extrusionH, contourW, prstMaterial);
        },
      );
    } else {
      _buildBody(children, extrusionH, contourW, prstMaterial);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? extrusionH,
    String? contourW,
    D_ST_PresetMaterialType? prstMaterial,
  ) {
    if (extrusionH != null)
      this.attribute(
        'extrusionH',
        extrusionH,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (contourW != null)
      this.attribute(
        'contourW',
        contourW,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (prstMaterial != null)
      this.attribute(
        'prstMaterial',
        prstMaterial!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_FlatText_Builder on _i1.XmlBuilder {
  void d_ct_flattext({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AlphaBiLevelEffect_Builder on _i1.XmlBuilder {
  void d_ct_alphabileveleffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? thresh,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, thresh);
        },
      );
    } else {
      _buildBody(children, thresh);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? thresh) {
    if (thresh != null)
      this.attribute(
        'thresh',
        thresh,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_AlphaCeilingEffect_Builder on _i1.XmlBuilder {
  void d_ct_alphaceilingeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AlphaFloorEffect_Builder on _i1.XmlBuilder {
  void d_ct_alphaflooreffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AlphaInverseEffect_Builder on _i1.XmlBuilder {
  void d_ct_alphainverseeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AlphaModulateFixedEffect_Builder on _i1.XmlBuilder {
  void d_ct_alphamodulatefixedeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? amt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, amt);
        },
      );
    } else {
      _buildBody(children, amt);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? amt) {
    if (amt != null)
      this.attribute(
        'amt',
        amt,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_AlphaOutsetEffect_Builder on _i1.XmlBuilder {
  void d_ct_alphaoutseteffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AlphaReplaceEffect_Builder on _i1.XmlBuilder {
  void d_ct_alphareplaceeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? a,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, a);
        },
      );
    } else {
      _buildBody(children, a);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? a) {
    if (a != null)
      this.attribute(
        'a',
        a,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_BiLevelEffect_Builder on _i1.XmlBuilder {
  void d_ct_bileveleffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? thresh,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, thresh);
        },
      );
    } else {
      _buildBody(children, thresh);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? thresh) {
    if (thresh != null)
      this.attribute(
        'thresh',
        thresh,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_BlurEffect_Builder on _i1.XmlBuilder {
  void d_ct_blureffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? rad,
    bool? grow,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rad, grow);
        },
      );
    } else {
      _buildBody(children, rad, grow);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? rad,
    bool? grow,
  ) {
    if (rad != null)
      this.attribute(
        'rad',
        rad,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (grow != null)
      this.attribute(
        'grow',
        grow == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ColorChangeEffect_Builder on _i1.XmlBuilder {
  void d_ct_colorchangeeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? useA,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, useA);
        },
      );
    } else {
      _buildBody(children, useA);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? useA) {
    if (useA != null)
      this.attribute(
        'useA',
        useA == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ColorReplaceEffect_Builder on _i1.XmlBuilder {
  void d_ct_colorreplaceeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_DuotoneEffect_Builder on _i1.XmlBuilder {
  void d_ct_duotoneeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GlowEffect_Builder on _i1.XmlBuilder {
  void d_ct_gloweffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? rad,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rad);
        },
      );
    } else {
      _buildBody(children, rad);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? rad) {
    if (rad != null)
      this.attribute(
        'rad',
        rad,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GrayscaleEffect_Builder on _i1.XmlBuilder {
  void d_ct_grayscaleeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_HSLEffect_Builder on _i1.XmlBuilder {
  void d_ct_hsleffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? hue,
    String? sat,
    String? lum,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, hue, sat, lum);
        },
      );
    } else {
      _buildBody(children, hue, sat, lum);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? hue,
    String? sat,
    String? lum,
  ) {
    if (hue != null)
      this.attribute(
        'hue',
        hue,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sat != null)
      this.attribute(
        'sat',
        sat,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (lum != null)
      this.attribute(
        'lum',
        lum,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_InnerShadowEffect_Builder on _i1.XmlBuilder {
  void d_ct_innershadoweffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? blurRad,
    String? dist,
    String? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, blurRad, dist, dir);
        },
      );
    } else {
      _buildBody(children, blurRad, dist, dir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? blurRad,
    String? dist,
    String? dir,
  ) {
    if (blurRad != null)
      this.attribute(
        'blurRad',
        blurRad,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dist != null)
      this.attribute(
        'dist',
        dist,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dir != null)
      this.attribute(
        'dir',
        dir,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_LuminanceEffect_Builder on _i1.XmlBuilder {
  void d_ct_luminanceeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? bright,
    String? contrast,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bright, contrast);
        },
      );
    } else {
      _buildBody(children, bright, contrast);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? bright,
    String? contrast,
  ) {
    if (bright != null)
      this.attribute(
        'bright',
        bright,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (contrast != null)
      this.attribute(
        'contrast',
        contrast,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_OuterShadowEffect_Builder on _i1.XmlBuilder {
  void d_ct_outershadoweffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? blurRad,
    String? dist,
    String? dir,
    String? sx,
    String? sy,
    String? kx,
    String? ky,
    D_ST_RectAlignment? algn,
    bool? rotWithShape,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            blurRad,
            dist,
            dir,
            sx,
            sy,
            kx,
            ky,
            algn,
            rotWithShape,
          );
        },
      );
    } else {
      _buildBody(
        children,
        blurRad,
        dist,
        dir,
        sx,
        sy,
        kx,
        ky,
        algn,
        rotWithShape,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? blurRad,
    String? dist,
    String? dir,
    String? sx,
    String? sy,
    String? kx,
    String? ky,
    D_ST_RectAlignment? algn,
    bool? rotWithShape,
  ) {
    if (blurRad != null)
      this.attribute(
        'blurRad',
        blurRad,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dist != null)
      this.attribute(
        'dist',
        dist,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dir != null)
      this.attribute(
        'dir',
        dir,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sx != null)
      this.attribute(
        'sx',
        sx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sy != null)
      this.attribute(
        'sy',
        sy,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (kx != null)
      this.attribute(
        'kx',
        kx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (ky != null)
      this.attribute(
        'ky',
        ky,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (algn != null)
      this.attribute(
        'algn',
        algn!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (rotWithShape != null)
      this.attribute(
        'rotWithShape',
        rotWithShape == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PresetShadowEffect_Builder on _i1.XmlBuilder {
  void d_ct_presetshadoweffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_PresetShadowVal? prst,
    String? dist,
    String? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, prst, dist, dir);
        },
      );
    } else {
      _buildBody(children, prst, dist, dir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_PresetShadowVal? prst,
    String? dist,
    String? dir,
  ) {
    if (prst != null)
      this.attribute(
        'prst',
        prst!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dist != null)
      this.attribute(
        'dist',
        dist,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dir != null)
      this.attribute(
        'dir',
        dir,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ReflectionEffect_Builder on _i1.XmlBuilder {
  void d_ct_reflectioneffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? blurRad,
    String? stA,
    String? stPos,
    String? endA,
    String? endPos,
    String? dist,
    String? dir,
    String? fadeDir,
    String? sx,
    String? sy,
    String? kx,
    String? ky,
    D_ST_RectAlignment? algn,
    bool? rotWithShape,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            blurRad,
            stA,
            stPos,
            endA,
            endPos,
            dist,
            dir,
            fadeDir,
            sx,
            sy,
            kx,
            ky,
            algn,
            rotWithShape,
          );
        },
      );
    } else {
      _buildBody(
        children,
        blurRad,
        stA,
        stPos,
        endA,
        endPos,
        dist,
        dir,
        fadeDir,
        sx,
        sy,
        kx,
        ky,
        algn,
        rotWithShape,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? blurRad,
    String? stA,
    String? stPos,
    String? endA,
    String? endPos,
    String? dist,
    String? dir,
    String? fadeDir,
    String? sx,
    String? sy,
    String? kx,
    String? ky,
    D_ST_RectAlignment? algn,
    bool? rotWithShape,
  ) {
    if (blurRad != null)
      this.attribute(
        'blurRad',
        blurRad,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (stA != null)
      this.attribute(
        'stA',
        stA,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (stPos != null)
      this.attribute(
        'stPos',
        stPos,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (endA != null)
      this.attribute(
        'endA',
        endA,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (endPos != null)
      this.attribute(
        'endPos',
        endPos,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dist != null)
      this.attribute(
        'dist',
        dist,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dir != null)
      this.attribute(
        'dir',
        dir,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (fadeDir != null)
      this.attribute(
        'fadeDir',
        fadeDir,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sx != null)
      this.attribute(
        'sx',
        sx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sy != null)
      this.attribute(
        'sy',
        sy,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (kx != null)
      this.attribute(
        'kx',
        kx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (ky != null)
      this.attribute(
        'ky',
        ky,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (algn != null)
      this.attribute(
        'algn',
        algn!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (rotWithShape != null)
      this.attribute(
        'rotWithShape',
        rotWithShape == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_RelativeOffsetEffect_Builder on _i1.XmlBuilder {
  void d_ct_relativeoffseteffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? tx,
    String? ty,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, tx, ty);
        },
      );
    } else {
      _buildBody(children, tx, ty);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? tx, String? ty) {
    if (tx != null)
      this.attribute(
        'tx',
        tx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (ty != null)
      this.attribute(
        'ty',
        ty,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_SoftEdgesEffect_Builder on _i1.XmlBuilder {
  void d_ct_softedgeseffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? rad,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rad);
        },
      );
    } else {
      _buildBody(children, rad);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? rad) {
    if (rad != null)
      this.attribute(
        'rad',
        rad,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TintEffect_Builder on _i1.XmlBuilder {
  void d_ct_tinteffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? hue,
    String? amt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, hue, amt);
        },
      );
    } else {
      _buildBody(children, hue, amt);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? hue,
    String? amt,
  ) {
    if (hue != null)
      this.attribute(
        'hue',
        hue,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (amt != null)
      this.attribute(
        'amt',
        amt,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TransformEffect_Builder on _i1.XmlBuilder {
  void d_ct_transformeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? sx,
    String? sy,
    String? kx,
    String? ky,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sx, sy, kx, ky);
        },
      );
    } else {
      _buildBody(children, sx, sy, kx, ky);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? sx,
    String? sy,
    String? kx,
    String? ky,
  ) {
    if (sx != null)
      this.attribute(
        'sx',
        sx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sy != null)
      this.attribute(
        'sy',
        sy,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (kx != null)
      this.attribute(
        'kx',
        kx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (ky != null)
      this.attribute(
        'ky',
        ky,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_NoFillProperties_Builder on _i1.XmlBuilder {
  void d_ct_nofillproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_SolidColorFillProperties_Builder on _i1.XmlBuilder {
  void d_ct_solidcolorfillproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_LinearShadeProperties_Builder on _i1.XmlBuilder {
  void d_ct_linearshadeproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? ang,
    bool? scaled,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ang, scaled);
        },
      );
    } else {
      _buildBody(children, ang, scaled);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ang,
    bool? scaled,
  ) {
    if (ang != null)
      this.attribute(
        'ang',
        ang,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (scaled != null)
      this.attribute(
        'scaled',
        scaled == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PathShadeProperties_Builder on _i1.XmlBuilder {
  void d_ct_pathshadeproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_PathShadeType? path,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, path);
        },
      );
    } else {
      _buildBody(children, path);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_PathShadeType? path,
  ) {
    if (path != null)
      this.attribute(
        'path',
        path!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GradientStop_Builder on _i1.XmlBuilder {
  void d_ct_gradientstop({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? pos,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, pos);
        },
      );
    } else {
      _buildBody(children, pos);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? pos) {
    if (pos != null)
      this.attribute(
        'pos',
        pos,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GradientStopList_Builder on _i1.XmlBuilder {
  void d_ct_gradientstoplist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GradientFillProperties_Builder on _i1.XmlBuilder {
  void d_ct_gradientfillproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_TileFlipMode? flip,
    bool? rotWithShape,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, flip, rotWithShape);
        },
      );
    } else {
      _buildBody(children, flip, rotWithShape);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_TileFlipMode? flip,
    bool? rotWithShape,
  ) {
    if (flip != null)
      this.attribute(
        'flip',
        flip!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (rotWithShape != null)
      this.attribute(
        'rotWithShape',
        rotWithShape == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TileInfoProperties_Builder on _i1.XmlBuilder {
  void d_ct_tileinfoproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? sx,
    String? sy,
    D_ST_TileFlipMode? flip,
    D_ST_RectAlignment? algn,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sx, sy, flip, algn);
        },
      );
    } else {
      _buildBody(children, sx, sy, flip, algn);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? sx,
    String? sy,
    D_ST_TileFlipMode? flip,
    D_ST_RectAlignment? algn,
  ) {
    if (sx != null)
      this.attribute(
        'sx',
        sx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sy != null)
      this.attribute(
        'sy',
        sy,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (flip != null)
      this.attribute(
        'flip',
        flip!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (algn != null)
      this.attribute(
        'algn',
        algn!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_StretchInfoProperties_Builder on _i1.XmlBuilder {
  void d_ct_stretchinfoproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Blip_Builder on _i1.XmlBuilder {
  void d_ct_blip({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_BlipCompression? cstate,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, cstate);
        },
      );
    } else {
      _buildBody(children, cstate);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_BlipCompression? cstate,
  ) {
    if (cstate != null)
      this.attribute(
        'cstate',
        cstate!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_BlipFillProperties_Builder on _i1.XmlBuilder {
  void d_ct_blipfillproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    int? dpi,
    bool? rotWithShape,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, dpi, rotWithShape);
        },
      );
    } else {
      _buildBody(children, dpi, rotWithShape);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? dpi,
    bool? rotWithShape,
  ) {
    if (dpi != null)
      this.attribute(
        'dpi',
        dpi.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (rotWithShape != null)
      this.attribute(
        'rotWithShape',
        rotWithShape == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PatternFillProperties_Builder on _i1.XmlBuilder {
  void d_ct_patternfillproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_PresetPatternVal? prst,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, prst);
        },
      );
    } else {
      _buildBody(children, prst);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_PresetPatternVal? prst,
  ) {
    if (prst != null)
      this.attribute(
        'prst',
        prst!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GroupFillProperties_Builder on _i1.XmlBuilder {
  void d_ct_groupfillproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_FillProperties_Builder on _i1.XmlBuilder {
  void d_ct_fillproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_FillEffect_Builder on _i1.XmlBuilder {
  void d_ct_filleffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_FillOverlayEffect_Builder on _i1.XmlBuilder {
  void d_ct_filloverlayeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_BlendMode? blend,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, blend);
        },
      );
    } else {
      _buildBody(children, blend);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, D_ST_BlendMode? blend) {
    if (blend != null)
      this.attribute(
        'blend',
        blend!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_EffectReference_Builder on _i1.XmlBuilder {
  void d_ct_effectreference({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? ref,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ref);
        },
      );
    } else {
      _buildBody(children, ref);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? ref) {
    if (ref != null)
      this.attribute(
        'ref',
        ref,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_EffectContainer_Builder on _i1.XmlBuilder {
  void d_ct_effectcontainer({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_EffectContainerType? type,
    String? name,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, name);
        },
      );
    } else {
      _buildBody(children, type, name);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_EffectContainerType? type,
    String? name,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_AlphaModulateEffect_Builder on _i1.XmlBuilder {
  void d_ct_alphamodulateeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_BlendEffect_Builder on _i1.XmlBuilder {
  void d_ct_blendeffect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_BlendMode? blend,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, blend);
        },
      );
    } else {
      _buildBody(children, blend);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, D_ST_BlendMode? blend) {
    if (blend != null)
      this.attribute(
        'blend',
        blend!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_EffectList_Builder on _i1.XmlBuilder {
  void d_ct_effectlist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_EffectProperties_Builder on _i1.XmlBuilder {
  void d_ct_effectproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GeomGuide_Builder on _i1.XmlBuilder {
  void d_ct_geomguide({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? name,
    String? fmla,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, fmla);
        },
      );
    } else {
      _buildBody(children, name, fmla);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? fmla,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (fmla != null)
      this.attribute(
        'fmla',
        fmla,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GeomGuideList_Builder on _i1.XmlBuilder {
  void d_ct_geomguidelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AdjPoint2D_Builder on _i1.XmlBuilder {
  void d_ct_adjpoint2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_GeomRect_Builder on _i1.XmlBuilder {
  void d_ct_geomrect({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_XYAdjustHandle_Builder on _i1.XmlBuilder {
  void d_ct_xyadjusthandle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? gdRefX,
    String? gdRefY,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, gdRefX, gdRefY);
        },
      );
    } else {
      _buildBody(children, gdRefX, gdRefY);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? gdRefX,
    String? gdRefY,
  ) {
    if (gdRefX != null)
      this.attribute(
        'gdRefX',
        gdRefX,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (gdRefY != null)
      this.attribute(
        'gdRefY',
        gdRefY,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PolarAdjustHandle_Builder on _i1.XmlBuilder {
  void d_ct_polaradjusthandle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? gdRefR,
    String? gdRefAng,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, gdRefR, gdRefAng);
        },
      );
    } else {
      _buildBody(children, gdRefR, gdRefAng);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? gdRefR,
    String? gdRefAng,
  ) {
    if (gdRefR != null)
      this.attribute(
        'gdRefR',
        gdRefR,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (gdRefAng != null)
      this.attribute(
        'gdRefAng',
        gdRefAng,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ConnectionSite_Builder on _i1.XmlBuilder {
  void d_ct_connectionsite({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_AdjustHandleList_Builder on _i1.XmlBuilder {
  void d_ct_adjusthandlelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ConnectionSiteList_Builder on _i1.XmlBuilder {
  void d_ct_connectionsitelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Connection_Builder on _i1.XmlBuilder {
  void d_ct_connection({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? id,
    int? idx,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, idx);
        },
      );
    } else {
      _buildBody(children, id, idx);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id, int? idx) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (idx != null)
      this.attribute(
        'idx',
        idx.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Path2DMoveTo_Builder on _i1.XmlBuilder {
  void d_ct_path2dmoveto({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Path2DLineTo_Builder on _i1.XmlBuilder {
  void d_ct_path2dlineto({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Path2DArcTo_Builder on _i1.XmlBuilder {
  void d_ct_path2darcto({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Path2DQuadBezierTo_Builder on _i1.XmlBuilder {
  void d_ct_path2dquadbezierto({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Path2DCubicBezierTo_Builder on _i1.XmlBuilder {
  void d_ct_path2dcubicbezierto({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Path2DClose_Builder on _i1.XmlBuilder {
  void d_ct_path2dclose({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Path2D_Builder on _i1.XmlBuilder {
  void d_ct_path2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? w,
    String? h,
    D_ST_PathFillMode? fill,
    bool? stroke,
    bool? extrusionOk,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, w, h, fill, stroke, extrusionOk);
        },
      );
    } else {
      _buildBody(children, w, h, fill, stroke, extrusionOk);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? w,
    String? h,
    D_ST_PathFillMode? fill,
    bool? stroke,
    bool? extrusionOk,
  ) {
    if (w != null)
      this.attribute(
        'w',
        w,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (h != null)
      this.attribute(
        'h',
        h,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (fill != null)
      this.attribute(
        'fill',
        fill!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (stroke != null)
      this.attribute(
        'stroke',
        stroke == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (extrusionOk != null)
      this.attribute(
        'extrusionOk',
        extrusionOk == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Path2DList_Builder on _i1.XmlBuilder {
  void d_ct_path2dlist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_PresetGeometry2D_Builder on _i1.XmlBuilder {
  void d_ct_presetgeometry2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_ShapeType? prst,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, prst);
        },
      );
    } else {
      _buildBody(children, prst);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, D_ST_ShapeType? prst) {
    if (prst != null)
      this.attribute(
        'prst',
        prst!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PresetTextShape_Builder on _i1.XmlBuilder {
  void d_ct_presettextshape({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_TextShapeType? prst,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, prst);
        },
      );
    } else {
      _buildBody(children, prst);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_TextShapeType? prst,
  ) {
    if (prst != null)
      this.attribute(
        'prst',
        prst!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_CustomGeometry2D_Builder on _i1.XmlBuilder {
  void d_ct_customgeometry2d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_LineEndProperties_Builder on _i1.XmlBuilder {
  void d_ct_lineendproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_LineEndType? type,
    D_ST_LineEndWidth? w,
    D_ST_LineEndLength? len,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, w, len);
        },
      );
    } else {
      _buildBody(children, type, w, len);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_LineEndType? type,
    D_ST_LineEndWidth? w,
    D_ST_LineEndLength? len,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (w != null)
      this.attribute(
        'w',
        w!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (len != null)
      this.attribute(
        'len',
        len!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_LineJoinBevel_Builder on _i1.XmlBuilder {
  void d_ct_linejoinbevel({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_LineJoinRound_Builder on _i1.XmlBuilder {
  void d_ct_linejoinround({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_LineJoinMiterProperties_Builder on _i1.XmlBuilder {
  void d_ct_linejoinmiterproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? lim,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lim);
        },
      );
    } else {
      _buildBody(children, lim);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? lim) {
    if (lim != null)
      this.attribute(
        'lim',
        lim,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_PresetLineDashProperties_Builder on _i1.XmlBuilder {
  void d_ct_presetlinedashproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_PresetLineDashVal? val,
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
    D_ST_PresetLineDashVal? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_DashStop_Builder on _i1.XmlBuilder {
  void d_ct_dashstop({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? d,
    String? sp,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, d, sp);
        },
      );
    } else {
      _buildBody(children, d, sp);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? d, String? sp) {
    if (d != null)
      this.attribute(
        'd',
        d,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sp != null)
      this.attribute(
        'sp',
        sp,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_DashStopList_Builder on _i1.XmlBuilder {
  void d_ct_dashstoplist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_LineProperties_Builder on _i1.XmlBuilder {
  void d_ct_lineproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? w,
    D_ST_LineCap? cap,
    D_ST_CompoundLine? cmpd,
    D_ST_PenAlignment? algn,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, w, cap, cmpd, algn);
        },
      );
    } else {
      _buildBody(children, w, cap, cmpd, algn);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? w,
    D_ST_LineCap? cap,
    D_ST_CompoundLine? cmpd,
    D_ST_PenAlignment? algn,
  ) {
    if (w != null)
      this.attribute(
        'w',
        w,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (cap != null)
      this.attribute(
        'cap',
        cap!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (cmpd != null)
      this.attribute(
        'cmpd',
        cmpd!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (algn != null)
      this.attribute(
        'algn',
        algn!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ShapeProperties_Builder on _i1.XmlBuilder {
  void d_ct_shapeproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_BlackWhiteMode? bwMode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bwMode);
        },
      );
    } else {
      _buildBody(children, bwMode);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_BlackWhiteMode? bwMode,
  ) {
    if (bwMode != null)
      this.attribute(
        'bwMode',
        bwMode!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_GroupShapeProperties_Builder on _i1.XmlBuilder {
  void d_ct_groupshapeproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_BlackWhiteMode? bwMode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bwMode);
        },
      );
    } else {
      _buildBody(children, bwMode);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_BlackWhiteMode? bwMode,
  ) {
    if (bwMode != null)
      this.attribute(
        'bwMode',
        bwMode!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_StyleMatrixReference_Builder on _i1.XmlBuilder {
  void d_ct_stylematrixreference({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? idx,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, idx);
        },
      );
    } else {
      _buildBody(children, idx);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? idx) {
    if (idx != null)
      this.attribute(
        'idx',
        idx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_FontReference_Builder on _i1.XmlBuilder {
  void d_ct_fontreference({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_FontCollectionIndex? idx,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, idx);
        },
      );
    } else {
      _buildBody(children, idx);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_FontCollectionIndex? idx,
  ) {
    if (idx != null)
      this.attribute(
        'idx',
        idx!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ShapeStyle_Builder on _i1.XmlBuilder {
  void d_ct_shapestyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_DefaultShapeDefinition_Builder on _i1.XmlBuilder {
  void d_ct_defaultshapedefinition({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ObjectStyleDefaults_Builder on _i1.XmlBuilder {
  void d_ct_objectstyledefaults({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_EmptyElement_Builder on _i1.XmlBuilder {
  void d_ct_emptyelement({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ColorMapping_Builder on _i1.XmlBuilder {
  void d_ct_colormapping({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_ColorSchemeIndex? bg1,
    D_ST_ColorSchemeIndex? tx1,
    D_ST_ColorSchemeIndex? bg2,
    D_ST_ColorSchemeIndex? tx2,
    D_ST_ColorSchemeIndex? accent1,
    D_ST_ColorSchemeIndex? accent2,
    D_ST_ColorSchemeIndex? accent3,
    D_ST_ColorSchemeIndex? accent4,
    D_ST_ColorSchemeIndex? accent5,
    D_ST_ColorSchemeIndex? accent6,
    D_ST_ColorSchemeIndex? hlink,
    D_ST_ColorSchemeIndex? folHlink,
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
            tx1,
            bg2,
            tx2,
            accent1,
            accent2,
            accent3,
            accent4,
            accent5,
            accent6,
            hlink,
            folHlink,
          );
        },
      );
    } else {
      _buildBody(
        children,
        bg1,
        tx1,
        bg2,
        tx2,
        accent1,
        accent2,
        accent3,
        accent4,
        accent5,
        accent6,
        hlink,
        folHlink,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_ColorSchemeIndex? bg1,
    D_ST_ColorSchemeIndex? tx1,
    D_ST_ColorSchemeIndex? bg2,
    D_ST_ColorSchemeIndex? tx2,
    D_ST_ColorSchemeIndex? accent1,
    D_ST_ColorSchemeIndex? accent2,
    D_ST_ColorSchemeIndex? accent3,
    D_ST_ColorSchemeIndex? accent4,
    D_ST_ColorSchemeIndex? accent5,
    D_ST_ColorSchemeIndex? accent6,
    D_ST_ColorSchemeIndex? hlink,
    D_ST_ColorSchemeIndex? folHlink,
  ) {
    if (bg1 != null)
      this.attribute(
        'bg1',
        bg1!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (tx1 != null)
      this.attribute(
        'tx1',
        tx1!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (bg2 != null)
      this.attribute(
        'bg2',
        bg2!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (tx2 != null)
      this.attribute(
        'tx2',
        tx2!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (accent1 != null)
      this.attribute(
        'accent1',
        accent1!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (accent2 != null)
      this.attribute(
        'accent2',
        accent2!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (accent3 != null)
      this.attribute(
        'accent3',
        accent3!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (accent4 != null)
      this.attribute(
        'accent4',
        accent4!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (accent5 != null)
      this.attribute(
        'accent5',
        accent5!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (accent6 != null)
      this.attribute(
        'accent6',
        accent6!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (hlink != null)
      this.attribute(
        'hlink',
        hlink!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (folHlink != null)
      this.attribute(
        'folHlink',
        folHlink!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ColorMappingOverride_Builder on _i1.XmlBuilder {
  void d_ct_colormappingoverride({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ColorSchemeAndMapping_Builder on _i1.XmlBuilder {
  void d_ct_colorschemeandmapping({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ColorSchemeList_Builder on _i1.XmlBuilder {
  void d_ct_colorschemelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_OfficeStyleSheet_Builder on _i1.XmlBuilder {
  void d_ct_officestylesheet({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_BaseStylesOverride_Builder on _i1.XmlBuilder {
  void d_ct_basestylesoverride({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_ClipboardStyleSheet_Builder on _i1.XmlBuilder {
  void d_ct_clipboardstylesheet({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableCellProperties_Builder on _i1.XmlBuilder {
  void d_ct_tablecellproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_TextVerticalType? vert,
    D_ST_TextAnchoringType? anchor,
    bool? anchorCtr,
    D_ST_TextHorzOverflowType? horzOverflow,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, vert, anchor, anchorCtr, horzOverflow);
        },
      );
    } else {
      _buildBody(children, vert, anchor, anchorCtr, horzOverflow);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_TextVerticalType? vert,
    D_ST_TextAnchoringType? anchor,
    bool? anchorCtr,
    D_ST_TextHorzOverflowType? horzOverflow,
  ) {
    if (vert != null)
      this.attribute(
        'vert',
        vert!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (anchor != null)
      this.attribute(
        'anchor',
        anchor!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (anchorCtr != null)
      this.attribute(
        'anchorCtr',
        anchorCtr == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (horzOverflow != null)
      this.attribute(
        'horzOverflow',
        horzOverflow!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Headers_Builder on _i1.XmlBuilder {
  void d_ct_headers({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableCol_Builder on _i1.XmlBuilder {
  void d_ct_tablecol({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableGrid_Builder on _i1.XmlBuilder {
  void d_ct_tablegrid({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableCell_Builder on _i1.XmlBuilder {
  void d_ct_tablecell({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    int? rowSpan,
    int? gridSpan,
    bool? hMerge,
    bool? vMerge,
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rowSpan, gridSpan, hMerge, vMerge, id);
        },
      );
    } else {
      _buildBody(children, rowSpan, gridSpan, hMerge, vMerge, id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? rowSpan,
    int? gridSpan,
    bool? hMerge,
    bool? vMerge,
    String? id,
  ) {
    if (rowSpan != null)
      this.attribute(
        'rowSpan',
        rowSpan.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (gridSpan != null)
      this.attribute(
        'gridSpan',
        gridSpan.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (hMerge != null)
      this.attribute(
        'hMerge',
        hMerge == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (vMerge != null)
      this.attribute(
        'vMerge',
        vMerge == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TableRow_Builder on _i1.XmlBuilder {
  void d_ct_tablerow({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableProperties_Builder on _i1.XmlBuilder {
  void d_ct_tableproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? rtl,
    bool? firstRow,
    bool? firstCol,
    bool? lastRow,
    bool? lastCol,
    bool? bandRow,
    bool? bandCol,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            rtl,
            firstRow,
            firstCol,
            lastRow,
            lastCol,
            bandRow,
            bandCol,
          );
        },
      );
    } else {
      _buildBody(
        children,
        rtl,
        firstRow,
        firstCol,
        lastRow,
        lastCol,
        bandRow,
        bandCol,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? rtl,
    bool? firstRow,
    bool? firstCol,
    bool? lastRow,
    bool? lastCol,
    bool? bandRow,
    bool? bandCol,
  ) {
    if (rtl != null)
      this.attribute(
        'rtl',
        rtl == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (firstRow != null)
      this.attribute(
        'firstRow',
        firstRow == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (firstCol != null)
      this.attribute(
        'firstCol',
        firstCol == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (lastRow != null)
      this.attribute(
        'lastRow',
        lastRow == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (lastCol != null)
      this.attribute(
        'lastCol',
        lastCol == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (bandRow != null)
      this.attribute(
        'bandRow',
        bandRow == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (bandCol != null)
      this.attribute(
        'bandCol',
        bandCol == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Table_Builder on _i1.XmlBuilder {
  void d_ct_table({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_Cell3D_Builder on _i1.XmlBuilder {
  void d_ct_cell3d({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_PresetMaterialType? prstMaterial,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, prstMaterial);
        },
      );
    } else {
      _buildBody(children, prstMaterial);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_PresetMaterialType? prstMaterial,
  ) {
    if (prstMaterial != null)
      this.attribute(
        'prstMaterial',
        prstMaterial!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_ThemeableLineStyle_Builder on _i1.XmlBuilder {
  void d_ct_themeablelinestyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableStyleTextStyle_Builder on _i1.XmlBuilder {
  void d_ct_tablestyletextstyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_OnOffStyleType? b,
    D_ST_OnOffStyleType? i,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, b, i);
        },
      );
    } else {
      _buildBody(children, b, i);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_OnOffStyleType? b,
    D_ST_OnOffStyleType? i,
  ) {
    if (b != null)
      this.attribute(
        'b',
        b!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (i != null)
      this.attribute(
        'i',
        i!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TableCellBorderStyle_Builder on _i1.XmlBuilder {
  void d_ct_tablecellborderstyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableBackgroundStyle_Builder on _i1.XmlBuilder {
  void d_ct_tablebackgroundstyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableStyleCellStyle_Builder on _i1.XmlBuilder {
  void d_ct_tablestylecellstyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TablePartStyle_Builder on _i1.XmlBuilder {
  void d_ct_tablepartstyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TableStyle_Builder on _i1.XmlBuilder {
  void d_ct_tablestyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? styleId,
    String? styleName,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, styleId, styleName);
        },
      );
    } else {
      _buildBody(children, styleId, styleName);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? styleId,
    String? styleName,
  ) {
    if (styleId != null)
      this.attribute(
        'styleId',
        styleId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (styleName != null)
      this.attribute(
        'styleName',
        styleName,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TableStyleList_Builder on _i1.XmlBuilder {
  void d_ct_tablestylelist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? def,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, def);
        },
      );
    } else {
      _buildBody(children, def);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? def) {
    if (def != null)
      this.attribute(
        'def',
        def,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextParagraph_Builder on _i1.XmlBuilder {
  void d_ct_textparagraph({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextListStyle_Builder on _i1.XmlBuilder {
  void d_ct_textliststyle({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextNormalAutofit_Builder on _i1.XmlBuilder {
  void d_ct_textnormalautofit({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextShapeAutofit_Builder on _i1.XmlBuilder {
  void d_ct_textshapeautofit({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextNoAutofit_Builder on _i1.XmlBuilder {
  void d_ct_textnoautofit({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextBodyProperties_Builder on _i1.XmlBuilder {
  void d_ct_textbodyproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? rot,
    bool? spcFirstLastPara,
    D_ST_TextVertOverflowType? vertOverflow,
    D_ST_TextHorzOverflowType? horzOverflow,
    D_ST_TextVerticalType? vert,
    D_ST_TextWrappingType? wrap,
    String? numCol,
    String? spcCol,
    bool? rtlCol,
    bool? fromWordArt,
    D_ST_TextAnchoringType? anchor,
    bool? anchorCtr,
    bool? forceAA,
    bool? upright,
    bool? compatLnSpc,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            rot,
            spcFirstLastPara,
            vertOverflow,
            horzOverflow,
            vert,
            wrap,
            numCol,
            spcCol,
            rtlCol,
            fromWordArt,
            anchor,
            anchorCtr,
            forceAA,
            upright,
            compatLnSpc,
          );
        },
      );
    } else {
      _buildBody(
        children,
        rot,
        spcFirstLastPara,
        vertOverflow,
        horzOverflow,
        vert,
        wrap,
        numCol,
        spcCol,
        rtlCol,
        fromWordArt,
        anchor,
        anchorCtr,
        forceAA,
        upright,
        compatLnSpc,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? rot,
    bool? spcFirstLastPara,
    D_ST_TextVertOverflowType? vertOverflow,
    D_ST_TextHorzOverflowType? horzOverflow,
    D_ST_TextVerticalType? vert,
    D_ST_TextWrappingType? wrap,
    String? numCol,
    String? spcCol,
    bool? rtlCol,
    bool? fromWordArt,
    D_ST_TextAnchoringType? anchor,
    bool? anchorCtr,
    bool? forceAA,
    bool? upright,
    bool? compatLnSpc,
  ) {
    if (rot != null)
      this.attribute(
        'rot',
        rot,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (spcFirstLastPara != null)
      this.attribute(
        'spcFirstLastPara',
        spcFirstLastPara == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (vertOverflow != null)
      this.attribute(
        'vertOverflow',
        vertOverflow!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (horzOverflow != null)
      this.attribute(
        'horzOverflow',
        horzOverflow!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (vert != null)
      this.attribute(
        'vert',
        vert!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (wrap != null)
      this.attribute(
        'wrap',
        wrap!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (numCol != null)
      this.attribute(
        'numCol',
        numCol,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (spcCol != null)
      this.attribute(
        'spcCol',
        spcCol,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (rtlCol != null)
      this.attribute(
        'rtlCol',
        rtlCol == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (fromWordArt != null)
      this.attribute(
        'fromWordArt',
        fromWordArt == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (anchor != null)
      this.attribute(
        'anchor',
        anchor!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (anchorCtr != null)
      this.attribute(
        'anchorCtr',
        anchorCtr == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (forceAA != null)
      this.attribute(
        'forceAA',
        forceAA == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (upright != null)
      this.attribute(
        'upright',
        upright == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (compatLnSpc != null)
      this.attribute(
        'compatLnSpc',
        compatLnSpc == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextBody_Builder on _i1.XmlBuilder {
  void d_ct_textbody({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextBulletColorFollowText_Builder on _i1.XmlBuilder {
  void d_ct_textbulletcolorfollowtext({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextBulletSizeFollowText_Builder on _i1.XmlBuilder {
  void d_ct_textbulletsizefollowtext({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextBulletSizePercent_Builder on _i1.XmlBuilder {
  void d_ct_textbulletsizepercent({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextBulletSizePoint_Builder on _i1.XmlBuilder {
  void d_ct_textbulletsizepoint({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextBulletTypefaceFollowText_Builder on _i1.XmlBuilder {
  void d_ct_textbullettypefacefollowtext({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextAutonumberBullet_Builder on _i1.XmlBuilder {
  void d_ct_textautonumberbullet({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_TextAutonumberScheme? type,
    String? startAt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, startAt);
        },
      );
    } else {
      _buildBody(children, type, startAt);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_TextAutonumberScheme? type,
    String? startAt,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (startAt != null)
      this.attribute(
        'startAt',
        startAt,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextCharBullet_Builder on _i1.XmlBuilder {
  void d_ct_textcharbullet({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? char,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, char);
        },
      );
    } else {
      _buildBody(children, char);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? char) {
    if (char != null)
      this.attribute(
        'char',
        char,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextBlipBullet_Builder on _i1.XmlBuilder {
  void d_ct_textblipbullet({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextNoBullet_Builder on _i1.XmlBuilder {
  void d_ct_textnobullet({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextFont_Builder on _i1.XmlBuilder {
  void d_ct_textfont({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? typeface,
    String? panose,
    D_ST_PitchFamily? pitchFamily,
    int? charset,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, typeface, panose, pitchFamily, charset);
        },
      );
    } else {
      _buildBody(children, typeface, panose, pitchFamily, charset);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? typeface,
    String? panose,
    D_ST_PitchFamily? pitchFamily,
    int? charset,
  ) {
    if (typeface != null)
      this.attribute(
        'typeface',
        typeface,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (panose != null)
      this.attribute(
        'panose',
        panose,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (pitchFamily != null)
      this.attribute(
        'pitchFamily',
        pitchFamily!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (charset != null)
      this.attribute(
        'charset',
        charset.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextUnderlineLineFollowText_Builder on _i1.XmlBuilder {
  void d_ct_textunderlinelinefollowtext({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextUnderlineFillFollowText_Builder on _i1.XmlBuilder {
  void d_ct_textunderlinefillfollowtext({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextUnderlineFillGroupWrapper_Builder on _i1.XmlBuilder {
  void d_ct_textunderlinefillgroupwrapper({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextCharacterProperties_Builder on _i1.XmlBuilder {
  void d_ct_textcharacterproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    bool? kumimoji,
    String? lang,
    String? altLang,
    String? sz,
    bool? b,
    bool? i,
    D_ST_TextUnderlineType? u,
    D_ST_TextStrikeType? strike,
    String? kern,
    D_ST_TextCapsType? cap,
    bool? normalizeH,
    String? baseline,
    bool? noProof,
    bool? dirty,
    bool? err,
    bool? smtClean,
    int? smtId,
    String? bmk,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            kumimoji,
            lang,
            altLang,
            sz,
            b,
            i,
            u,
            strike,
            kern,
            cap,
            normalizeH,
            baseline,
            noProof,
            dirty,
            err,
            smtClean,
            smtId,
            bmk,
          );
        },
      );
    } else {
      _buildBody(
        children,
        kumimoji,
        lang,
        altLang,
        sz,
        b,
        i,
        u,
        strike,
        kern,
        cap,
        normalizeH,
        baseline,
        noProof,
        dirty,
        err,
        smtClean,
        smtId,
        bmk,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? kumimoji,
    String? lang,
    String? altLang,
    String? sz,
    bool? b,
    bool? i,
    D_ST_TextUnderlineType? u,
    D_ST_TextStrikeType? strike,
    String? kern,
    D_ST_TextCapsType? cap,
    bool? normalizeH,
    String? baseline,
    bool? noProof,
    bool? dirty,
    bool? err,
    bool? smtClean,
    int? smtId,
    String? bmk,
  ) {
    if (kumimoji != null)
      this.attribute(
        'kumimoji',
        kumimoji == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (lang != null)
      this.attribute(
        'lang',
        lang,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (altLang != null)
      this.attribute(
        'altLang',
        altLang,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (sz != null)
      this.attribute(
        'sz',
        sz,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (b != null)
      this.attribute(
        'b',
        b == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (i != null)
      this.attribute(
        'i',
        i == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (u != null)
      this.attribute(
        'u',
        u!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (strike != null)
      this.attribute(
        'strike',
        strike!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (kern != null)
      this.attribute(
        'kern',
        kern,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (cap != null)
      this.attribute(
        'cap',
        cap!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (normalizeH != null)
      this.attribute(
        'normalizeH',
        normalizeH == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (baseline != null)
      this.attribute(
        'baseline',
        baseline,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (noProof != null)
      this.attribute(
        'noProof',
        noProof == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (dirty != null)
      this.attribute(
        'dirty',
        dirty == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (err != null)
      this.attribute(
        'err',
        err == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (smtClean != null)
      this.attribute(
        'smtClean',
        smtClean == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (smtId != null)
      this.attribute(
        'smtId',
        smtId.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (bmk != null)
      this.attribute(
        'bmk',
        bmk,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_Boolean_Builder on _i1.XmlBuilder {
  void d_ct_boolean({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    bool? val,
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

  void _buildBody(void Function(XmlBuilder)? children, bool? val) {
    if (val != null)
      this.attribute(
        'val',
        val == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_TextSpacingPercent_Builder on _i1.XmlBuilder {
  void d_ct_textspacingpercent({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextSpacingPoint_Builder on _i1.XmlBuilder {
  void d_ct_textspacingpoint({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextTabStop_Builder on _i1.XmlBuilder {
  void d_ct_texttabstop({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    D_ST_TextTabAlignType? algn,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, algn);
        },
      );
    } else {
      _buildBody(children, algn);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_TextTabAlignType? algn,
  ) {
    if (algn != null)
      this.attribute(
        'algn',
        algn!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextTabStopList_Builder on _i1.XmlBuilder {
  void d_ct_texttabstoplist({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextLineBreak_Builder on _i1.XmlBuilder {
  void d_ct_textlinebreak({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextSpacing_Builder on _i1.XmlBuilder {
  void d_ct_textspacing({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_TextParagraphProperties_Builder on _i1.XmlBuilder {
  void d_ct_textparagraphproperties({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? marL,
    String? marR,
    String? lvl,
    String? indent,
    D_ST_TextAlignType? algn,
    bool? rtl,
    bool? eaLnBrk,
    D_ST_TextFontAlignType? fontAlgn,
    bool? latinLnBrk,
    bool? hangingPunct,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            marL,
            marR,
            lvl,
            indent,
            algn,
            rtl,
            eaLnBrk,
            fontAlgn,
            latinLnBrk,
            hangingPunct,
          );
        },
      );
    } else {
      _buildBody(
        children,
        marL,
        marR,
        lvl,
        indent,
        algn,
        rtl,
        eaLnBrk,
        fontAlgn,
        latinLnBrk,
        hangingPunct,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? marL,
    String? marR,
    String? lvl,
    String? indent,
    D_ST_TextAlignType? algn,
    bool? rtl,
    bool? eaLnBrk,
    D_ST_TextFontAlignType? fontAlgn,
    bool? latinLnBrk,
    bool? hangingPunct,
  ) {
    if (marL != null)
      this.attribute(
        'marL',
        marL,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (marR != null)
      this.attribute(
        'marR',
        marR,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (lvl != null)
      this.attribute(
        'lvl',
        lvl,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (indent != null)
      this.attribute(
        'indent',
        indent,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (algn != null)
      this.attribute(
        'algn',
        algn!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (rtl != null)
      this.attribute(
        'rtl',
        rtl == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (eaLnBrk != null)
      this.attribute(
        'eaLnBrk',
        eaLnBrk == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (fontAlgn != null)
      this.attribute(
        'fontAlgn',
        fontAlgn!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (latinLnBrk != null)
      this.attribute(
        'latinLnBrk',
        latinLnBrk == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (hangingPunct != null)
      this.attribute(
        'hangingPunct',
        hangingPunct == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_TextField_Builder on _i1.XmlBuilder {
  void d_ct_textfield({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
    String? id,
    String? type,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, type);
        },
      );
    } else {
      _buildBody(children, id, type);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? id,
    String? type,
  ) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    if (type != null)
      this.attribute(
        'type',
        type,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      );
    children?.call(this);
  }
}

extension D_CT_RegularTextRun_Builder on _i1.XmlBuilder {
  void d_ct_regulartextrun({
    String? tagName,
    String? namespace = 'http://schemas.openxmlformats.org/drawingml/2006/main',
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

extension D_CT_CTName_Builder on _i1.XmlBuilder {
  void d_ct_ctname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_CTDescription_Builder on _i1.XmlBuilder {
  void d_ct_ctdescription({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_CTCategory_Builder on _i1.XmlBuilder {
  void d_ct_ctcategory({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? type,
    int? pri,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, pri);
        },
      );
    } else {
      _buildBody(children, type, pri);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? type, int? pri) {
    if (type != null)
      this.attribute(
        'type',
        type,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (pri != null)
      this.attribute(
        'pri',
        pri.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_CTCategories_Builder on _i1.XmlBuilder {
  void d_ct_ctcategories({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_Colors_Builder on _i1.XmlBuilder {
  void d_ct_colors({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_ClrAppMethod? meth,
    D_ST_HueDir? hueDir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, meth, hueDir);
        },
      );
    } else {
      _buildBody(children, meth, hueDir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_ClrAppMethod? meth,
    D_ST_HueDir? hueDir,
  ) {
    if (meth != null)
      this.attribute(
        'meth',
        meth!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (hueDir != null)
      this.attribute(
        'hueDir',
        hueDir!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_CTStyleLabel_Builder on _i1.XmlBuilder {
  void d_ct_ctstylelabel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_ColorTransform_Builder on _i1.XmlBuilder {
  void d_ct_colortransform({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? uniqueId,
    String? minVer,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uniqueId, minVer);
        },
      );
    } else {
      _buildBody(children, uniqueId, minVer);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueId,
    String? minVer,
  ) {
    if (uniqueId != null)
      this.attribute(
        'uniqueId',
        uniqueId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (minVer != null)
      this.attribute(
        'minVer',
        minVer,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_ColorTransformHeader_Builder on _i1.XmlBuilder {
  void d_ct_colortransformheader({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? uniqueId,
    String? minVer,
    int? resId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uniqueId, minVer, resId);
        },
      );
    } else {
      _buildBody(children, uniqueId, minVer, resId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueId,
    String? minVer,
    int? resId,
  ) {
    if (uniqueId != null)
      this.attribute(
        'uniqueId',
        uniqueId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (minVer != null)
      this.attribute(
        'minVer',
        minVer,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (resId != null)
      this.attribute(
        'resId',
        resId.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_ColorTransformHeaderLst_Builder on _i1.XmlBuilder {
  void d_ct_colortransformheaderlst({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_Pt_Builder on _i1.XmlBuilder {
  void d_ct_pt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_PtType? type,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_PtType? type) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_PtList_Builder on _i1.XmlBuilder {
  void d_ct_ptlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_Cxn_Builder on _i1.XmlBuilder {
  void d_ct_cxn({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_CxnType? type,
    int? srcOrd,
    int? destOrd,
    String? presId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, srcOrd, destOrd, presId);
        },
      );
    } else {
      _buildBody(children, type, srcOrd, destOrd, presId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_CxnType? type,
    int? srcOrd,
    int? destOrd,
    String? presId,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (srcOrd != null)
      this.attribute(
        'srcOrd',
        srcOrd.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (destOrd != null)
      this.attribute(
        'destOrd',
        destOrd.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (presId != null)
      this.attribute(
        'presId',
        presId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_CxnList_Builder on _i1.XmlBuilder {
  void d_ct_cxnlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_DataModel_Builder on _i1.XmlBuilder {
  void d_ct_datamodel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_Constraint_Builder on _i1.XmlBuilder {
  void d_ct_constraint({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_BoolOperator? op,
    double? val,
    double? fact,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, op, val, fact);
        },
      );
    } else {
      _buildBody(children, op, val, fact);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_BoolOperator? op,
    double? val,
    double? fact,
  ) {
    if (op != null)
      this.attribute(
        'op',
        op!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (val != null)
      this.attribute(
        'val',
        val.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (fact != null)
      this.attribute(
        'fact',
        fact.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Constraints_Builder on _i1.XmlBuilder {
  void d_ct_constraints({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_NumericRule_Builder on _i1.XmlBuilder {
  void d_ct_numericrule({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    double? val,
    double? fact,
    double? max,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, val, fact, max);
        },
      );
    } else {
      _buildBody(children, val, fact, max);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    double? val,
    double? fact,
    double? max,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (fact != null)
      this.attribute(
        'fact',
        fact.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (max != null)
      this.attribute(
        'max',
        max.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Rules_Builder on _i1.XmlBuilder {
  void d_ct_rules({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_PresentationOf_Builder on _i1.XmlBuilder {
  void d_ct_presentationof({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_Adj_Builder on _i1.XmlBuilder {
  void d_ct_adj({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? idx,
    double? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, idx, val);
        },
      );
    } else {
      _buildBody(children, idx, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? idx,
    double? val,
  ) {
    if (idx != null)
      this.attribute(
        'idx',
        idx,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (val != null)
      this.attribute(
        'val',
        val.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_AdjLst_Builder on _i1.XmlBuilder {
  void d_ct_adjlst({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_Shape_Builder on _i1.XmlBuilder {
  void d_ct_shape({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    String? macro,
    String? textlink,
    bool? fLocksText,
    bool? fPublished,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, macro, textlink, fLocksText, fPublished);
        },
      );
    } else {
      _buildBody(children, macro, textlink, fLocksText, fPublished);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? macro,
    String? textlink,
    bool? fLocksText,
    bool? fPublished,
  ) {
    if (macro != null)
      this.attribute(
        'macro',
        macro,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    if (textlink != null)
      this.attribute(
        'textlink',
        textlink,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    if (fLocksText != null)
      this.attribute(
        'fLocksText',
        fLocksText == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    if (fPublished != null)
      this.attribute(
        'fPublished',
        fPublished == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_Parameter_Builder on _i1.XmlBuilder {
  void d_ct_parameter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_ParameterId? type,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_ParameterId? type) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Algorithm_Builder on _i1.XmlBuilder {
  void d_ct_algorithm({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_AlgorithmType? type,
    int? rev,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, rev);
        },
      );
    } else {
      _buildBody(children, type, rev);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_AlgorithmType? type,
    int? rev,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (rev != null)
      this.attribute(
        'rev',
        rev.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_LayoutNode_Builder on _i1.XmlBuilder {
  void d_ct_layoutnode({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? name,
    String? styleLbl,
    D_ST_ChildOrderType? chOrder,
    String? moveWith,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, styleLbl, chOrder, moveWith);
        },
      );
    } else {
      _buildBody(children, name, styleLbl, chOrder, moveWith);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? styleLbl,
    D_ST_ChildOrderType? chOrder,
    String? moveWith,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (styleLbl != null)
      this.attribute(
        'styleLbl',
        styleLbl,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (chOrder != null)
      this.attribute(
        'chOrder',
        chOrder!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (moveWith != null)
      this.attribute(
        'moveWith',
        moveWith,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_ForEach_Builder on _i1.XmlBuilder {
  void d_ct_foreach({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? name,
    String? ref,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, ref);
        },
      );
    } else {
      _buildBody(children, name, ref);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? ref,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (ref != null)
      this.attribute(
        'ref',
        ref,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_When_Builder on _i1.XmlBuilder {
  void d_ct_when({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? name,
    D_ST_FunctionType? func,
    D_ST_FunctionOperator? op,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, func, op);
        },
      );
    } else {
      _buildBody(children, name, func, op);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    D_ST_FunctionType? func,
    D_ST_FunctionOperator? op,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (func != null)
      this.attribute(
        'func',
        func!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (op != null)
      this.attribute(
        'op',
        op!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Otherwise_Builder on _i1.XmlBuilder {
  void d_ct_otherwise({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Choose_Builder on _i1.XmlBuilder {
  void d_ct_choose({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_SampleData_Builder on _i1.XmlBuilder {
  void d_ct_sampledata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    bool? useDef,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, useDef);
        },
      );
    } else {
      _buildBody(children, useDef);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? useDef) {
    if (useDef != null)
      this.attribute(
        'useDef',
        useDef == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Category_Builder on _i1.XmlBuilder {
  void d_ct_category({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? type,
    int? pri,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, pri);
        },
      );
    } else {
      _buildBody(children, type, pri);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? type, int? pri) {
    if (type != null)
      this.attribute(
        'type',
        type,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (pri != null)
      this.attribute(
        'pri',
        pri.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Categories_Builder on _i1.XmlBuilder {
  void d_ct_categories({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_Name_Builder on _i1.XmlBuilder {
  void d_ct_name({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Description_Builder on _i1.XmlBuilder {
  void d_ct_description({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_DiagramDefinition_Builder on _i1.XmlBuilder {
  void d_ct_diagramdefinition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? uniqueId,
    String? minVer,
    String? defStyle,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uniqueId, minVer, defStyle);
        },
      );
    } else {
      _buildBody(children, uniqueId, minVer, defStyle);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueId,
    String? minVer,
    String? defStyle,
  ) {
    if (uniqueId != null)
      this.attribute(
        'uniqueId',
        uniqueId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (minVer != null)
      this.attribute(
        'minVer',
        minVer,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (defStyle != null)
      this.attribute(
        'defStyle',
        defStyle,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_DiagramDefinitionHeader_Builder on _i1.XmlBuilder {
  void d_ct_diagramdefinitionheader({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? uniqueId,
    String? minVer,
    String? defStyle,
    int? resId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uniqueId, minVer, defStyle, resId);
        },
      );
    } else {
      _buildBody(children, uniqueId, minVer, defStyle, resId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueId,
    String? minVer,
    String? defStyle,
    int? resId,
  ) {
    if (uniqueId != null)
      this.attribute(
        'uniqueId',
        uniqueId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (minVer != null)
      this.attribute(
        'minVer',
        minVer,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (defStyle != null)
      this.attribute(
        'defStyle',
        defStyle,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (resId != null)
      this.attribute(
        'resId',
        resId.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_DiagramDefinitionHeaderLst_Builder on _i1.XmlBuilder {
  void d_ct_diagramdefinitionheaderlst({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_RelIds_Builder on _i1.XmlBuilder {
  void d_ct_relids({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_ElemPropSet_Builder on _i1.XmlBuilder {
  void d_ct_elempropset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? presName,
    String? presStyleLbl,
    int? presStyleIdx,
    int? presStyleCnt,
    String? loTypeId,
    String? loCatId,
    String? qsTypeId,
    String? qsCatId,
    String? csTypeId,
    String? csCatId,
    bool? coherent3DOff,
    String? phldrT,
    bool? phldr,
    int? custAng,
    bool? custFlipVert,
    bool? custFlipHor,
    int? custSzX,
    int? custSzY,
    bool? custT,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            presName,
            presStyleLbl,
            presStyleIdx,
            presStyleCnt,
            loTypeId,
            loCatId,
            qsTypeId,
            qsCatId,
            csTypeId,
            csCatId,
            coherent3DOff,
            phldrT,
            phldr,
            custAng,
            custFlipVert,
            custFlipHor,
            custSzX,
            custSzY,
            custT,
          );
        },
      );
    } else {
      _buildBody(
        children,
        presName,
        presStyleLbl,
        presStyleIdx,
        presStyleCnt,
        loTypeId,
        loCatId,
        qsTypeId,
        qsCatId,
        csTypeId,
        csCatId,
        coherent3DOff,
        phldrT,
        phldr,
        custAng,
        custFlipVert,
        custFlipHor,
        custSzX,
        custSzY,
        custT,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? presName,
    String? presStyleLbl,
    int? presStyleIdx,
    int? presStyleCnt,
    String? loTypeId,
    String? loCatId,
    String? qsTypeId,
    String? qsCatId,
    String? csTypeId,
    String? csCatId,
    bool? coherent3DOff,
    String? phldrT,
    bool? phldr,
    int? custAng,
    bool? custFlipVert,
    bool? custFlipHor,
    int? custSzX,
    int? custSzY,
    bool? custT,
  ) {
    if (presName != null)
      this.attribute(
        'presName',
        presName,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (presStyleLbl != null)
      this.attribute(
        'presStyleLbl',
        presStyleLbl,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (presStyleIdx != null)
      this.attribute(
        'presStyleIdx',
        presStyleIdx.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (presStyleCnt != null)
      this.attribute(
        'presStyleCnt',
        presStyleCnt.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (loTypeId != null)
      this.attribute(
        'loTypeId',
        loTypeId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (loCatId != null)
      this.attribute(
        'loCatId',
        loCatId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (qsTypeId != null)
      this.attribute(
        'qsTypeId',
        qsTypeId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (qsCatId != null)
      this.attribute(
        'qsCatId',
        qsCatId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (csTypeId != null)
      this.attribute(
        'csTypeId',
        csTypeId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (csCatId != null)
      this.attribute(
        'csCatId',
        csCatId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (coherent3DOff != null)
      this.attribute(
        'coherent3DOff',
        coherent3DOff == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (phldrT != null)
      this.attribute(
        'phldrT',
        phldrT,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (phldr != null)
      this.attribute(
        'phldr',
        phldr == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (custAng != null)
      this.attribute(
        'custAng',
        custAng.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (custFlipVert != null)
      this.attribute(
        'custFlipVert',
        custFlipVert == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (custFlipHor != null)
      this.attribute(
        'custFlipHor',
        custFlipHor == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (custSzX != null)
      this.attribute(
        'custSzX',
        custSzX.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (custSzY != null)
      this.attribute(
        'custSzY',
        custSzY.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (custT != null)
      this.attribute(
        'custT',
        custT == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_OrgChart_Builder on _i1.XmlBuilder {
  void d_ct_orgchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    bool? val,
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

  void _buildBody(void Function(XmlBuilder)? children, bool? val) {
    if (val != null)
      this.attribute(
        'val',
        val == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_ChildMax_Builder on _i1.XmlBuilder {
  void d_ct_childmax({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_ChildPref_Builder on _i1.XmlBuilder {
  void d_ct_childpref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_BulletEnabled_Builder on _i1.XmlBuilder {
  void d_ct_bulletenabled({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    bool? val,
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

  void _buildBody(void Function(XmlBuilder)? children, bool? val) {
    if (val != null)
      this.attribute(
        'val',
        val == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_Direction_Builder on _i1.XmlBuilder {
  void d_ct_direction({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_Direction? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_Direction? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_HierBranchStyle_Builder on _i1.XmlBuilder {
  void d_ct_hierbranchstyle({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_HierBranchStyle? val,
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
    D_ST_HierBranchStyle? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_AnimOne_Builder on _i1.XmlBuilder {
  void d_ct_animone({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_AnimOneStr? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_AnimOneStr? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_AnimLvl_Builder on _i1.XmlBuilder {
  void d_ct_animlvl({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_AnimLvlStr? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_AnimLvlStr? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_ResizeHandles_Builder on _i1.XmlBuilder {
  void d_ct_resizehandles({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    D_ST_ResizeHandlesStr? val,
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
    D_ST_ResizeHandlesStr? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_LayoutVariablePropertySet_Builder on _i1.XmlBuilder {
  void d_ct_layoutvariablepropertyset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_SDName_Builder on _i1.XmlBuilder {
  void d_ct_sdname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_SDDescription_Builder on _i1.XmlBuilder {
  void d_ct_sddescription({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_SDCategory_Builder on _i1.XmlBuilder {
  void d_ct_sdcategory({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? type,
    int? pri,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, pri);
        },
      );
    } else {
      _buildBody(children, type, pri);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? type, int? pri) {
    if (type != null)
      this.attribute(
        'type',
        type,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (pri != null)
      this.attribute(
        'pri',
        pri.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_SDCategories_Builder on _i1.XmlBuilder {
  void d_ct_sdcategories({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_TextProps_Builder on _i1.XmlBuilder {
  void d_ct_textprops({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_StyleLabel_Builder on _i1.XmlBuilder {
  void d_ct_stylelabel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_StyleDefinition_Builder on _i1.XmlBuilder {
  void d_ct_styledefinition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? uniqueId,
    String? minVer,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uniqueId, minVer);
        },
      );
    } else {
      _buildBody(children, uniqueId, minVer);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueId,
    String? minVer,
  ) {
    if (uniqueId != null)
      this.attribute(
        'uniqueId',
        uniqueId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (minVer != null)
      this.attribute(
        'minVer',
        minVer,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_StyleDefinitionHeader_Builder on _i1.XmlBuilder {
  void d_ct_styledefinitionheader({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    String? uniqueId,
    String? minVer,
    int? resId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uniqueId, minVer, resId);
        },
      );
    } else {
      _buildBody(children, uniqueId, minVer, resId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueId,
    String? minVer,
    int? resId,
  ) {
    if (uniqueId != null)
      this.attribute(
        'uniqueId',
        uniqueId,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (minVer != null)
      this.attribute(
        'minVer',
        minVer,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    if (resId != null)
      this.attribute(
        'resId',
        resId.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      );
    children?.call(this);
  }
}

extension D_CT_StyleDefinitionHeaderLst_Builder on _i1.XmlBuilder {
  void d_ct_styledefinitionheaderlst({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/diagram',
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

extension D_CT_Double_Builder on _i1.XmlBuilder {
  void d_ct_double({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    double? val,
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

  void _buildBody(void Function(XmlBuilder)? children, double? val) {
    if (val != null)
      this.attribute(
        'val',
        val.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_UnsignedInt_Builder on _i1.XmlBuilder {
  void d_ct_unsignedint({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    int? val,
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

  void _buildBody(void Function(XmlBuilder)? children, int? val) {
    if (val != null)
      this.attribute(
        'val',
        val.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_RelId_Builder on _i1.XmlBuilder {
  void d_ct_relid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Extension_Builder on _i1.XmlBuilder {
  void d_ct_extension({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    String? uri,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uri);
        },
      );
    } else {
      _buildBody(children, uri);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? uri) {
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_ExtensionList_Builder on _i1.XmlBuilder {
  void d_ct_extensionlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_NumVal_Builder on _i1.XmlBuilder {
  void d_ct_numval({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    int? idx,
    String? formatCode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, idx, formatCode);
        },
      );
    } else {
      _buildBody(children, idx, formatCode);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? idx,
    String? formatCode,
  ) {
    if (idx != null)
      this.attribute(
        'idx',
        idx.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (formatCode != null)
      this.attribute(
        'formatCode',
        formatCode,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_NumData_Builder on _i1.XmlBuilder {
  void d_ct_numdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_NumRef_Builder on _i1.XmlBuilder {
  void d_ct_numref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_NumDataSource_Builder on _i1.XmlBuilder {
  void d_ct_numdatasource({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_StrVal_Builder on _i1.XmlBuilder {
  void d_ct_strval({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    int? idx,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, idx);
        },
      );
    } else {
      _buildBody(children, idx);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? idx) {
    if (idx != null)
      this.attribute(
        'idx',
        idx.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_StrData_Builder on _i1.XmlBuilder {
  void d_ct_strdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_StrRef_Builder on _i1.XmlBuilder {
  void d_ct_strref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Tx_Builder on _i1.XmlBuilder {
  void d_ct_tx({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_TextLanguageID_Builder on _i1.XmlBuilder {
  void d_ct_textlanguageid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_Lvl_Builder on _i1.XmlBuilder {
  void d_ct_lvl({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_MultiLvlStrData_Builder on _i1.XmlBuilder {
  void d_ct_multilvlstrdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_MultiLvlStrRef_Builder on _i1.XmlBuilder {
  void d_ct_multilvlstrref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_AxDataSource_Builder on _i1.XmlBuilder {
  void d_ct_axdatasource({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_SerTx_Builder on _i1.XmlBuilder {
  void d_ct_sertx({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_LayoutTarget_Builder on _i1.XmlBuilder {
  void d_ct_layouttarget({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_LayoutTarget? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_LayoutTarget? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_LayoutMode_Builder on _i1.XmlBuilder {
  void d_ct_layoutmode({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_LayoutMode? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_LayoutMode? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_ManualLayout_Builder on _i1.XmlBuilder {
  void d_ct_manuallayout({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Layout_Builder on _i1.XmlBuilder {
  void d_ct_layout({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Title_Builder on _i1.XmlBuilder {
  void d_ct_title({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_RotX_Builder on _i1.XmlBuilder {
  void d_ct_rotx({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_HPercent_Builder on _i1.XmlBuilder {
  void d_ct_hpercent({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_RotY_Builder on _i1.XmlBuilder {
  void d_ct_roty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_DepthPercent_Builder on _i1.XmlBuilder {
  void d_ct_depthpercent({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Perspective_Builder on _i1.XmlBuilder {
  void d_ct_perspective({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_View3D_Builder on _i1.XmlBuilder {
  void d_ct_view3d({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Surface_Builder on _i1.XmlBuilder {
  void d_ct_surface({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Thickness_Builder on _i1.XmlBuilder {
  void d_ct_thickness({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_DTable_Builder on _i1.XmlBuilder {
  void d_ct_dtable({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_GapAmount_Builder on _i1.XmlBuilder {
  void d_ct_gapamount({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Overlap_Builder on _i1.XmlBuilder {
  void d_ct_overlap({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_BubbleScale_Builder on _i1.XmlBuilder {
  void d_ct_bubblescale({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_SizeRepresents_Builder on _i1.XmlBuilder {
  void d_ct_sizerepresents({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_SizeRepresents? val,
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
    D_ST_SizeRepresents? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_FirstSliceAng_Builder on _i1.XmlBuilder {
  void d_ct_firstsliceang({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_HoleSize_Builder on _i1.XmlBuilder {
  void d_ct_holesize({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_SplitType_Builder on _i1.XmlBuilder {
  void d_ct_splittype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_SplitType? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_SplitType? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_CustSplit_Builder on _i1.XmlBuilder {
  void d_ct_custsplit({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_SecondPieSize_Builder on _i1.XmlBuilder {
  void d_ct_secondpiesize({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_NumFmt_Builder on _i1.XmlBuilder {
  void d_ct_numfmt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    String? formatCode,
    bool? sourceLinked,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, formatCode, sourceLinked);
        },
      );
    } else {
      _buildBody(children, formatCode, sourceLinked);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? formatCode,
    bool? sourceLinked,
  ) {
    if (formatCode != null)
      this.attribute(
        'formatCode',
        formatCode,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (sourceLinked != null)
      this.attribute(
        'sourceLinked',
        sourceLinked == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_LblAlgn_Builder on _i1.XmlBuilder {
  void d_ct_lblalgn({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_LblAlgn? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_LblAlgn? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_DLblPos_Builder on _i1.XmlBuilder {
  void d_ct_dlblpos({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_DLblPos? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_DLblPos? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_DLbl_Builder on _i1.XmlBuilder {
  void d_ct_dlbl({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_DLbls_Builder on _i1.XmlBuilder {
  void d_ct_dlbls({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_MarkerStyle_Builder on _i1.XmlBuilder {
  void d_ct_markerstyle({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_MarkerStyle? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_MarkerStyle? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_MarkerSize_Builder on _i1.XmlBuilder {
  void d_ct_markersize({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_Marker_Builder on _i1.XmlBuilder {
  void d_ct_marker({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_DPt_Builder on _i1.XmlBuilder {
  void d_ct_dpt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_TrendlineType_Builder on _i1.XmlBuilder {
  void d_ct_trendlinetype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_TrendlineType? val,
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
    D_ST_TrendlineType? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_Order_Builder on _i1.XmlBuilder {
  void d_ct_order({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_Period_Builder on _i1.XmlBuilder {
  void d_ct_period({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_TrendlineLbl_Builder on _i1.XmlBuilder {
  void d_ct_trendlinelbl({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Trendline_Builder on _i1.XmlBuilder {
  void d_ct_trendline({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_ErrDir_Builder on _i1.XmlBuilder {
  void d_ct_errdir({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_ErrDir? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_ErrDir? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_ErrBarType_Builder on _i1.XmlBuilder {
  void d_ct_errbartype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_ErrBarType? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_ErrBarType? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_ErrValType_Builder on _i1.XmlBuilder {
  void d_ct_errvaltype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_ErrValType? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_ErrValType? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_ErrBars_Builder on _i1.XmlBuilder {
  void d_ct_errbars({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_UpDownBar_Builder on _i1.XmlBuilder {
  void d_ct_updownbar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_UpDownBars_Builder on _i1.XmlBuilder {
  void d_ct_updownbars({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_LineSer_Builder on _i1.XmlBuilder {
  void d_ct_lineser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_ScatterSer_Builder on _i1.XmlBuilder {
  void d_ct_scatterser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_RadarSer_Builder on _i1.XmlBuilder {
  void d_ct_radarser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_BarSer_Builder on _i1.XmlBuilder {
  void d_ct_barser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_AreaSer_Builder on _i1.XmlBuilder {
  void d_ct_areaser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_PieSer_Builder on _i1.XmlBuilder {
  void d_ct_pieser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_BubbleSer_Builder on _i1.XmlBuilder {
  void d_ct_bubbleser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_SurfaceSer_Builder on _i1.XmlBuilder {
  void d_ct_surfaceser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Grouping_Builder on _i1.XmlBuilder {
  void d_ct_grouping({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_Grouping? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_Grouping? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_ChartLines_Builder on _i1.XmlBuilder {
  void d_ct_chartlines({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_LineChart_Builder on _i1.XmlBuilder {
  void d_ct_linechart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Line3DChart_Builder on _i1.XmlBuilder {
  void d_ct_line3dchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_StockChart_Builder on _i1.XmlBuilder {
  void d_ct_stockchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_ScatterStyle_Builder on _i1.XmlBuilder {
  void d_ct_scatterstyle({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_ScatterStyle? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_ScatterStyle? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_ScatterChart_Builder on _i1.XmlBuilder {
  void d_ct_scatterchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_RadarStyle_Builder on _i1.XmlBuilder {
  void d_ct_radarstyle({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_RadarStyle? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_RadarStyle? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_RadarChart_Builder on _i1.XmlBuilder {
  void d_ct_radarchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_BarGrouping_Builder on _i1.XmlBuilder {
  void d_ct_bargrouping({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_BarGrouping? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_BarGrouping? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_BarDir_Builder on _i1.XmlBuilder {
  void d_ct_bardir({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_BarDir? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_BarDir? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_BarChart_Builder on _i1.XmlBuilder {
  void d_ct_barchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Bar3DChart_Builder on _i1.XmlBuilder {
  void d_ct_bar3dchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_AreaChart_Builder on _i1.XmlBuilder {
  void d_ct_areachart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Area3DChart_Builder on _i1.XmlBuilder {
  void d_ct_area3dchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_PieChart_Builder on _i1.XmlBuilder {
  void d_ct_piechart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Pie3DChart_Builder on _i1.XmlBuilder {
  void d_ct_pie3dchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_DoughnutChart_Builder on _i1.XmlBuilder {
  void d_ct_doughnutchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_OfPieType_Builder on _i1.XmlBuilder {
  void d_ct_ofpietype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_OfPieType? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_OfPieType? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_OfPieChart_Builder on _i1.XmlBuilder {
  void d_ct_ofpiechart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_BubbleChart_Builder on _i1.XmlBuilder {
  void d_ct_bubblechart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_BandFmt_Builder on _i1.XmlBuilder {
  void d_ct_bandfmt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_BandFmts_Builder on _i1.XmlBuilder {
  void d_ct_bandfmts({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_SurfaceChart_Builder on _i1.XmlBuilder {
  void d_ct_surfacechart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Surface3DChart_Builder on _i1.XmlBuilder {
  void d_ct_surface3dchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_AxPos_Builder on _i1.XmlBuilder {
  void d_ct_axpos({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_AxPos? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_AxPos? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_Crosses_Builder on _i1.XmlBuilder {
  void d_ct_crosses({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_Crosses? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_Crosses? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_CrossBetween_Builder on _i1.XmlBuilder {
  void d_ct_crossbetween({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_CrossBetween? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_CrossBetween? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_TickMark_Builder on _i1.XmlBuilder {
  void d_ct_tickmark({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_TickMark? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_TickMark? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_TickLblPos_Builder on _i1.XmlBuilder {
  void d_ct_ticklblpos({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_TickLblPos? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_TickLblPos? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_Skip_Builder on _i1.XmlBuilder {
  void d_ct_skip({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_TimeUnit_Builder on _i1.XmlBuilder {
  void d_ct_timeunit({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_TimeUnit? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_TimeUnit? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_AxisUnit_Builder on _i1.XmlBuilder {
  void d_ct_axisunit({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_BuiltInUnit_Builder on _i1.XmlBuilder {
  void d_ct_builtinunit({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_BuiltInUnit? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_BuiltInUnit? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_PictureFormat_Builder on _i1.XmlBuilder {
  void d_ct_pictureformat({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_PictureFormat? val,
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
    D_ST_PictureFormat? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_PictureStackUnit_Builder on _i1.XmlBuilder {
  void d_ct_picturestackunit({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_PictureOptions_Builder on _i1.XmlBuilder {
  void d_ct_pictureoptions({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_DispUnitsLbl_Builder on _i1.XmlBuilder {
  void d_ct_dispunitslbl({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_DispUnits_Builder on _i1.XmlBuilder {
  void d_ct_dispunits({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Orientation_Builder on _i1.XmlBuilder {
  void d_ct_orientation({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_Orientation? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_Orientation? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_LogBase_Builder on _i1.XmlBuilder {
  void d_ct_logbase({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_Scaling_Builder on _i1.XmlBuilder {
  void d_ct_scaling({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_LblOffset_Builder on _i1.XmlBuilder {
  void d_ct_lbloffset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_CatAx_Builder on _i1.XmlBuilder {
  void d_ct_catax({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_DateAx_Builder on _i1.XmlBuilder {
  void d_ct_dateax({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_SerAx_Builder on _i1.XmlBuilder {
  void d_ct_serax({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_ValAx_Builder on _i1.XmlBuilder {
  void d_ct_valax({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_PlotArea_Builder on _i1.XmlBuilder {
  void d_ct_plotarea({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_PivotFmt_Builder on _i1.XmlBuilder {
  void d_ct_pivotfmt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_PivotFmts_Builder on _i1.XmlBuilder {
  void d_ct_pivotfmts({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_LegendPos_Builder on _i1.XmlBuilder {
  void d_ct_legendpos({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_LegendPos? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_LegendPos? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_LegendEntry_Builder on _i1.XmlBuilder {
  void d_ct_legendentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Legend_Builder on _i1.XmlBuilder {
  void d_ct_legend({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_DispBlanksAs_Builder on _i1.XmlBuilder {
  void d_ct_dispblanksas({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    D_ST_DispBlanksAs? val,
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

  void _buildBody(void Function(XmlBuilder)? children, D_ST_DispBlanksAs? val) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_Chart_Builder on _i1.XmlBuilder {
  void d_ct_chart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Style_Builder on _i1.XmlBuilder {
  void d_ct_style({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_PivotSource_Builder on _i1.XmlBuilder {
  void d_ct_pivotsource({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_Protection_Builder on _i1.XmlBuilder {
  void d_ct_protection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_HeaderFooter_Builder on _i1.XmlBuilder {
  void d_ct_headerfooter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    bool? alignWithMargins,
    bool? differentOddEven,
    bool? differentFirst,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            alignWithMargins,
            differentOddEven,
            differentFirst,
          );
        },
      );
    } else {
      _buildBody(children, alignWithMargins, differentOddEven, differentFirst);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? alignWithMargins,
    bool? differentOddEven,
    bool? differentFirst,
  ) {
    if (alignWithMargins != null)
      this.attribute(
        'alignWithMargins',
        alignWithMargins == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (differentOddEven != null)
      this.attribute(
        'differentOddEven',
        differentOddEven == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (differentFirst != null)
      this.attribute(
        'differentFirst',
        differentFirst == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_PageMargins_Builder on _i1.XmlBuilder {
  void d_ct_pagemargins({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    double? l,
    double? r,
    double? t,
    double? b,
    double? header,
    double? footer,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, l, r, t, b, header, footer);
        },
      );
    } else {
      _buildBody(children, l, r, t, b, header, footer);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    double? l,
    double? r,
    double? t,
    double? b,
    double? header,
    double? footer,
  ) {
    if (l != null)
      this.attribute(
        'l',
        l.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (r != null)
      this.attribute(
        'r',
        r.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (t != null)
      this.attribute(
        't',
        t.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (b != null)
      this.attribute(
        'b',
        b.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (header != null)
      this.attribute(
        'header',
        header.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (footer != null)
      this.attribute(
        'footer',
        footer.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_ExternalData_Builder on _i1.XmlBuilder {
  void d_ct_externaldata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_PageSetup_Builder on _i1.XmlBuilder {
  void d_ct_pagesetup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
    int? paperSize,
    String? paperHeight,
    String? paperWidth,
    int? firstPageNumber,
    D_ST_PageSetupOrientation? orientation,
    bool? blackAndWhite,
    bool? draft,
    bool? useFirstPageNumber,
    int? horizontalDpi,
    int? verticalDpi,
    int? copies,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            paperSize,
            paperHeight,
            paperWidth,
            firstPageNumber,
            orientation,
            blackAndWhite,
            draft,
            useFirstPageNumber,
            horizontalDpi,
            verticalDpi,
            copies,
          );
        },
      );
    } else {
      _buildBody(
        children,
        paperSize,
        paperHeight,
        paperWidth,
        firstPageNumber,
        orientation,
        blackAndWhite,
        draft,
        useFirstPageNumber,
        horizontalDpi,
        verticalDpi,
        copies,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? paperSize,
    String? paperHeight,
    String? paperWidth,
    int? firstPageNumber,
    D_ST_PageSetupOrientation? orientation,
    bool? blackAndWhite,
    bool? draft,
    bool? useFirstPageNumber,
    int? horizontalDpi,
    int? verticalDpi,
    int? copies,
  ) {
    if (paperSize != null)
      this.attribute(
        'paperSize',
        paperSize.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (paperHeight != null)
      this.attribute(
        'paperHeight',
        paperHeight,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (paperWidth != null)
      this.attribute(
        'paperWidth',
        paperWidth,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (firstPageNumber != null)
      this.attribute(
        'firstPageNumber',
        firstPageNumber.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (orientation != null)
      this.attribute(
        'orientation',
        orientation!.value,
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (blackAndWhite != null)
      this.attribute(
        'blackAndWhite',
        blackAndWhite == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (draft != null)
      this.attribute(
        'draft',
        draft == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (useFirstPageNumber != null)
      this.attribute(
        'useFirstPageNumber',
        useFirstPageNumber == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (horizontalDpi != null)
      this.attribute(
        'horizontalDpi',
        horizontalDpi.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (verticalDpi != null)
      this.attribute(
        'verticalDpi',
        verticalDpi.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    if (copies != null)
      this.attribute(
        'copies',
        copies.toString(),
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      );
    children?.call(this);
  }
}

extension D_CT_PrintSettings_Builder on _i1.XmlBuilder {
  void d_ct_printsettings({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_ChartSpace_Builder on _i1.XmlBuilder {
  void d_ct_chartspace({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chart',
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

extension D_CT_ShapeNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_shapenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_ConnectorNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_connectornonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_Connector_Builder on _i1.XmlBuilder {
  void d_ct_connector({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    String? macro,
    bool? fPublished,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, macro, fPublished);
        },
      );
    } else {
      _buildBody(children, macro, fPublished);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? macro,
    bool? fPublished,
  ) {
    if (macro != null)
      this.attribute(
        'macro',
        macro,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    if (fPublished != null)
      this.attribute(
        'fPublished',
        fPublished == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_PictureNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_picturenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_Picture_Builder on _i1.XmlBuilder {
  void d_ct_picture({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    String? macro,
    bool? fPublished,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, macro, fPublished);
        },
      );
    } else {
      _buildBody(children, macro, fPublished);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? macro,
    bool? fPublished,
  ) {
    if (macro != null)
      this.attribute(
        'macro',
        macro,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    if (fPublished != null)
      this.attribute(
        'fPublished',
        fPublished == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_GraphicFrameNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_graphicframenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
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

extension D_CT_GroupShapeNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_groupshapenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_GroupShape_Builder on _i1.XmlBuilder {
  void d_ct_groupshape({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_RelSizeAnchor_Builder on _i1.XmlBuilder {
  void d_ct_relsizeanchor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
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

extension D_CT_AbsSizeAnchor_Builder on _i1.XmlBuilder {
  void d_ct_abssizeanchor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
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

extension D_CT_Drawing_Builder on _i1.XmlBuilder {
  void d_ct_drawing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_AnchorClientData_Builder on _i1.XmlBuilder {
  void d_ct_anchorclientdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    bool? fLocksWithSheet,
    bool? fPrintsWithSheet,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fLocksWithSheet, fPrintsWithSheet);
        },
      );
    } else {
      _buildBody(children, fLocksWithSheet, fPrintsWithSheet);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? fLocksWithSheet,
    bool? fPrintsWithSheet,
  ) {
    if (fLocksWithSheet != null)
      this.attribute(
        'fLocksWithSheet',
        fLocksWithSheet == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    if (fPrintsWithSheet != null)
      this.attribute(
        'fPrintsWithSheet',
        fPrintsWithSheet == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_GraphicalObjectFrameNonVisual_Builder on _i1.XmlBuilder {
  void d_ct_graphicalobjectframenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_GraphicalObjectFrame_Builder on _i1.XmlBuilder {
  void d_ct_graphicalobjectframe({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    String? macro,
    bool? fPublished,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, macro, fPublished);
        },
      );
    } else {
      _buildBody(children, macro, fPublished);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? macro,
    bool? fPublished,
  ) {
    if (macro != null)
      this.attribute(
        'macro',
        macro,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    if (fPublished != null)
      this.attribute(
        'fPublished',
        fPublished == true ? 'true' : 'false',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_Rel_Builder on _i1.XmlBuilder {
  void d_ct_rel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_TwoCellAnchor_Builder on _i1.XmlBuilder {
  void d_ct_twocellanchor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    D_ST_EditAs? editAs,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, editAs);
        },
      );
    } else {
      _buildBody(children, editAs);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, D_ST_EditAs? editAs) {
    if (editAs != null)
      this.attribute(
        'editAs',
        editAs!.value,
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
      );
    children?.call(this);
  }
}

extension D_CT_OneCellAnchor_Builder on _i1.XmlBuilder {
  void d_ct_onecellanchor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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

extension D_CT_AbsoluteAnchor_Builder on _i1.XmlBuilder {
  void d_ct_absoluteanchor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
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
