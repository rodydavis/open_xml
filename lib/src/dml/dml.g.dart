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

extension type D_CT_EffectExtent(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_Inline(_i1.XmlElement node) implements _i1.XmlElement {
  String? get distT {
    return node.getAttribute(
      'distT',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distB {
    return node.getAttribute(
      'distB',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distL {
    return node.getAttribute(
      'distL',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distR {
    return node.getAttribute(
      'distR',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  D_CT_PositiveSize2D? get extent {
    final e = node.getElement(
      'extent',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }

  D_CT_EffectExtent? get effectExtent {
    final e = node.getElement(
      'effectExtent',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_EffectExtent(e) : null;
  }

  D_CT_NonVisualDrawingProps? get docPr {
    final e = node.getElement(
      'docPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGraphicFrameProperties? get cNvGraphicFramePr {
    final e = node.getElement(
      'cNvGraphicFramePr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualGraphicFrameProperties(e) : null;
  }
}
extension type D_CT_WrapPath(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get edited {
    return node.getAttribute(
              'edited',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'edited',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'edited',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'on';
  }

  D_CT_Point2D? get start {
    final e = node.getElement(
      'start',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_Point2D(e) : null;
  }

  Iterable<D_CT_Point2D> get lineTo {
    return node
        .findElements(
          'lineTo',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(D_CT_Point2D.new);
  }
}
extension type D_CT_WrapNone(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_WrapSquare(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_WrapText get wrapText {
    return D_ST_WrapText.fromValue(
      node.getAttribute(
        'wrapText',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      )!,
    )!;
  }

  String? get distT {
    return node.getAttribute(
      'distT',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distB {
    return node.getAttribute(
      'distB',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distL {
    return node.getAttribute(
      'distL',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distR {
    return node.getAttribute(
      'distR',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  D_CT_EffectExtent? get effectExtent {
    final e = node.getElement(
      'effectExtent',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_EffectExtent(e) : null;
  }
}
extension type D_CT_WrapTight(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_WrapText get wrapText {
    return D_ST_WrapText.fromValue(
      node.getAttribute(
        'wrapText',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      )!,
    )!;
  }

  String? get distL {
    return node.getAttribute(
      'distL',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distR {
    return node.getAttribute(
      'distR',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  D_CT_WrapPath? get wrapPolygon {
    final e = node.getElement(
      'wrapPolygon',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WrapPath(e) : null;
  }
}
extension type D_CT_WrapThrough(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_WrapText get wrapText {
    return D_ST_WrapText.fromValue(
      node.getAttribute(
        'wrapText',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      )!,
    )!;
  }

  String? get distL {
    return node.getAttribute(
      'distL',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distR {
    return node.getAttribute(
      'distR',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  D_CT_WrapPath? get wrapPolygon {
    final e = node.getElement(
      'wrapPolygon',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WrapPath(e) : null;
  }
}
extension type D_CT_WrapTopBottom(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get distT {
    return node.getAttribute(
      'distT',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distB {
    return node.getAttribute(
      'distB',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  D_CT_EffectExtent? get effectExtent {
    final e = node.getElement(
      'effectExtent',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_EffectExtent(e) : null;
  }
}
extension type D_CT_PosH(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_RelFromH get relativeFrom {
    return D_ST_RelFromH.fromValue(
      node.getAttribute(
        'relativeFrom',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      )!,
    )!;
  }

  D_ST_AlignH? get align {
    final e = node.getElement(
      'align',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_ST_AlignH.fromValue(e.innerText) : null;
  }

  String? get posOffset {
    final e = node.getElement(
      'posOffset',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? e.innerText : null;
  }
}
extension type D_CT_PosV(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_RelFromV get relativeFrom {
    return D_ST_RelFromV.fromValue(
      node.getAttribute(
        'relativeFrom',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      )!,
    )!;
  }

  D_ST_AlignV? get align {
    final e = node.getElement(
      'align',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_ST_AlignV.fromValue(e.innerText) : null;
  }

  String? get posOffset {
    final e = node.getElement(
      'posOffset',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? e.innerText : null;
  }
}
extension type D_CT_Anchor(_i1.XmlElement node) implements _i1.XmlElement {
  String? get distT {
    return node.getAttribute(
      'distT',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distB {
    return node.getAttribute(
      'distB',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distL {
    return node.getAttribute(
      'distL',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  String? get distR {
    return node.getAttribute(
      'distR',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
  }

  bool? get simplePos {
    return node.getAttribute(
              'simplePos',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'simplePos',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'simplePos',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'on';
  }

  int get relativeHeight {
    return int.parse(
      node.getAttribute(
        'relativeHeight',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      )!,
    );
  }

  bool get behindDoc {
    return node.getAttribute(
              'behindDoc',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'behindDoc',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'behindDoc',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'on';
  }

  bool get locked {
    return node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'on';
  }

  bool get layoutInCell {
    return node.getAttribute(
              'layoutInCell',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'layoutInCell',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'layoutInCell',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'on';
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'on';
  }

  bool get allowOverlap {
    return node.getAttribute(
              'allowOverlap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'allowOverlap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'allowOverlap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'on';
  }

  D_CT_PosH? get positionH {
    final e = node.getElement(
      'positionH',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_PosH(e) : null;
  }

  D_CT_PosV? get positionV {
    final e = node.getElement(
      'positionV',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_PosV(e) : null;
  }

  D_CT_PositiveSize2D? get extent {
    final e = node.getElement(
      'extent',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }

  D_CT_EffectExtent? get effectExtent {
    final e = node.getElement(
      'effectExtent',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_EffectExtent(e) : null;
  }

  D_CT_WrapNone? get wrapNone {
    final e = node.getElement(
      'wrapNone',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WrapNone(e) : null;
  }

  D_CT_WrapSquare? get wrapSquare {
    final e = node.getElement(
      'wrapSquare',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WrapSquare(e) : null;
  }

  D_CT_WrapTight? get wrapTight {
    final e = node.getElement(
      'wrapTight',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WrapTight(e) : null;
  }

  D_CT_WrapThrough? get wrapThrough {
    final e = node.getElement(
      'wrapThrough',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WrapThrough(e) : null;
  }

  D_CT_WrapTopBottom? get wrapTopAndBottom {
    final e = node.getElement(
      'wrapTopAndBottom',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WrapTopBottom(e) : null;
  }

  D_CT_NonVisualDrawingProps? get docPr {
    final e = node.getElement(
      'docPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGraphicFrameProperties? get cNvGraphicFramePr {
    final e = node.getElement(
      'cNvGraphicFramePr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualGraphicFrameProperties(e) : null;
  }
}
extension type D_CT_TxbxContent(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<W_CT_CustomXmlBlock> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_CustomXmlBlock.new);
  }

  Iterable<W_CT_SdtBlock> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_SdtBlock.new);
  }

  Iterable<W_CT_P> get p {
    return node
        .findElements(
          'p',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_P.new);
  }

  Iterable<W_CT_Tbl> get tbl {
    return node
        .findElements(
          'tbl',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_Tbl.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_AltChunk> get altChunk {
    return node
        .findElements(
          'altChunk',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(W_CT_AltChunk.new);
  }
}
extension type D_CT_TextboxInfo(_i1.XmlElement node) implements _i1.XmlElement {
  int? get id {
    return node.getAttribute(
              'id',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'id',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            )!,
          )
        : null;
  }

  D_CT_TxbxContent? get txbxContent {
    final e = node.getElement(
      'txbxContent',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_TxbxContent(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_LinkedTextboxInformation(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      )!,
    );
  }

  int get seq {
    return int.parse(
      node.getAttribute(
        'seq',
        namespace:
            'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
      )!,
    );
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_WordprocessingShape(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get normalEastAsianFlow {
    return node.getAttribute(
              'normalEastAsianFlow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'normalEastAsianFlow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'normalEastAsianFlow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) ==
            'on';
  }

  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualDrawingShapeProps? get cNvSpPr {
    final e = node.getElement(
      'cNvSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingShapeProps(e) : null;
  }

  D_CT_NonVisualConnectorProperties? get cNvCnPr {
    final e = node.getElement(
      'cNvCnPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualConnectorProperties(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }

  D_CT_TextboxInfo? get txbx {
    final e = node.getElement(
      'txbx',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_TextboxInfo(e) : null;
  }

  D_CT_LinkedTextboxInformation? get linkedTxbx {
    final e = node.getElement(
      'linkedTxbx',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_LinkedTextboxInformation(e) : null;
  }

  D_CT_TextBodyProperties? get bodyPr {
    final e = node.getElement(
      'bodyPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_TextBodyProperties(e) : null;
  }
}
extension type D_CT_GraphicFrame(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get macro {
    return node.getAttribute(
      'macro',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
  }

  bool? get fPublished {
    return node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
            ) ==
            'on';
  }

  D_CT_GraphicFrameNonVisual? get nvGraphicFramePr {
    final e = node.getElement(
      'nvGraphicFramePr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_GraphicFrameNonVisual(e) : null;
  }

  D_CT_Transform2D? get xfrm {
    final e = node.getElement(
      'xfrm',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Transform2D(e) : null;
  }
}
extension type D_CT_WordprocessingContentPartNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualContentPartProperties? get cNvContentPartPr {
    final e = node.getElement(
      'cNvContentPartPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualContentPartProperties(e) : null;
  }
}
extension type D_CT_WordprocessingContentPart(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_BlackWhiteMode? get bwMode {
    return node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            ) !=
            null
        ? D_ST_BlackWhiteMode.fromValue(
            node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
            )!,
          )
        : null;
  }

  D_CT_WordprocessingContentPartNonVisual? get nvContentPartPr {
    final e = node.getElement(
      'nvContentPartPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WordprocessingContentPartNonVisual(e) : null;
  }

  D_CT_Transform2D? get xfrm {
    final e = node.getElement(
      'xfrm',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_Transform2D(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_WordprocessingGroup(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGroupDrawingShapeProps? get cNvGrpSpPr {
    final e = node.getElement(
      'cNvGrpSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_NonVisualGroupDrawingShapeProps(e) : null;
  }

  D_CT_GroupShapeProperties? get grpSpPr {
    final e = node.getElement(
      'grpSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_GroupShapeProperties(e) : null;
  }

  Iterable<D_CT_WordprocessingGroup> get grpSp {
    return node
        .findElements(
          'grpSp',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(D_CT_WordprocessingGroup.new);
  }

  Iterable<D_CT_GraphicFrame> get graphicFrame {
    return node
        .findElements(
          'graphicFrame',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(D_CT_GraphicFrame.new);
  }

  Iterable<D_CT_WordprocessingContentPart> get contentPart {
    return node
        .findElements(
          'contentPart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(D_CT_WordprocessingContentPart.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_WordprocessingCanvas(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_BackgroundFormatting? get bg {
    final e = node.getElement(
      'bg',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_BackgroundFormatting(e) : null;
  }

  D_CT_WholeE2oFormatting? get whole {
    final e = node.getElement(
      'whole',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_WholeE2oFormatting(e) : null;
  }

  Iterable<D_CT_WordprocessingContentPart> get contentPart {
    return node
        .findElements(
          'contentPart',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(D_CT_WordprocessingContentPart.new);
  }

  Iterable<D_CT_GraphicFrame> get graphicFrame {
    return node
        .findElements(
          'graphicFrame',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
        )
        .map(D_CT_GraphicFrame.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}

enum D_ST_WrapText {
  bothSides('bothSides'),
  left('left'),
  right('right'),
  largest('largest');

  const D_ST_WrapText(this.value);

  final String value;

  static D_ST_WrapText? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AlignH {
  left('left'),
  right('right'),
  center('center'),
  inside('inside'),
  outside('outside');

  const D_ST_AlignH(this.value);

  final String value;

  static D_ST_AlignH? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_RelFromH {
  margin('margin'),
  page('page'),
  column('column'),
  character('character'),
  leftMargin('leftMargin'),
  rightMargin('rightMargin'),
  insideMargin('insideMargin'),
  outsideMargin('outsideMargin');

  const D_ST_RelFromH(this.value);

  final String value;

  static D_ST_RelFromH? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AlignV {
  top('top'),
  bottom('bottom'),
  center('center'),
  inside('inside'),
  outside('outside');

  const D_ST_AlignV(this.value);

  final String value;

  static D_ST_AlignV? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_RelFromV {
  margin('margin'),
  page('page'),
  paragraph('paragraph'),
  line('line'),
  topMargin('topMargin'),
  bottomMargin('bottomMargin'),
  insideMargin('insideMargin'),
  outsideMargin('outsideMargin');

  const D_ST_RelFromV(this.value);

  final String value;

  static D_ST_RelFromV? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

extension type D_CT_AudioFile(_i1.XmlElement node) implements _i1.XmlElement {
  String? get contentType {
    return node.getAttribute(
      'contentType',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_VideoFile(_i1.XmlElement node) implements _i1.XmlElement {
  String? get contentType {
    return node.getAttribute(
      'contentType',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_QuickTimeFile(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_AudioCDTime(_i1.XmlElement node) implements _i1.XmlElement {
  int get track {
    return int.parse(
      node.getAttribute(
        'track',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    );
  }

  int? get time {
    return node.getAttribute(
              'time',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'time',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type D_CT_AudioCD(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_AudioCDTime? get st {
    final e = node.getElement(
      'st',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AudioCDTime(e) : null;
  }

  D_CT_AudioCDTime? get end {
    final e = node.getElement(
      'end',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AudioCDTime(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ColorScheme(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  D_CT_Color? get dk1 {
    final e = node.getElement(
      'dk1',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get lt1 {
    final e = node.getElement(
      'lt1',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get dk2 {
    final e = node.getElement(
      'dk2',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get lt2 {
    final e = node.getElement(
      'lt2',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get accent1 {
    final e = node.getElement(
      'accent1',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get accent2 {
    final e = node.getElement(
      'accent2',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get accent3 {
    final e = node.getElement(
      'accent3',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get accent4 {
    final e = node.getElement(
      'accent4',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get accent5 {
    final e = node.getElement(
      'accent5',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get accent6 {
    final e = node.getElement(
      'accent6',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get hlink {
    final e = node.getElement(
      'hlink',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get folHlink {
    final e = node.getElement(
      'folHlink',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_CustomColor(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_SupplementalFont(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get script {
    return node.getAttribute(
      'script',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get typeface {
    return node.getAttribute(
      'typeface',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_CustomColorList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_CustomColor> get custClr {
    return node
        .findElements(
          'custClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_CustomColor.new);
  }
}
extension type D_CT_FontCollection(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TextFont? get latin {
    final e = node.getElement(
      'latin',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  D_CT_TextFont? get ea {
    final e = node.getElement(
      'ea',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  D_CT_TextFont? get cs {
    final e = node.getElement(
      'cs',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  Iterable<D_CT_SupplementalFont> get font {
    return node
        .findElements(
          'font',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SupplementalFont.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_EffectStyleItem(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }

  D_CT_Scene3D? get scene3d {
    final e = node.getElement(
      'scene3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Scene3D(e) : null;
  }

  D_CT_Shape3D? get sp3d {
    final e = node.getElement(
      'sp3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Shape3D(e) : null;
  }
}
extension type D_CT_FontScheme(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  D_CT_FontCollection? get majorFont {
    final e = node.getElement(
      'majorFont',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FontCollection(e) : null;
  }

  D_CT_FontCollection? get minorFont {
    final e = node.getElement(
      'minorFont',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FontCollection(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_FillStyleList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_NoFillProperties> get noFill {
    return node
        .findElements(
          'noFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_NoFillProperties.new);
  }

  Iterable<D_CT_SolidColorFillProperties> get solidFill {
    return node
        .findElements(
          'solidFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SolidColorFillProperties.new);
  }

  Iterable<D_CT_GradientFillProperties> get gradFill {
    return node
        .findElements(
          'gradFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GradientFillProperties.new);
  }

  Iterable<D_CT_BlipFillProperties> get blipFill {
    return node
        .findElements(
          'blipFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_BlipFillProperties.new);
  }

  Iterable<D_CT_PatternFillProperties> get pattFill {
    return node
        .findElements(
          'pattFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PatternFillProperties.new);
  }

  Iterable<D_CT_GroupFillProperties> get grpFill {
    return node
        .findElements(
          'grpFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GroupFillProperties.new);
  }
}
extension type D_CT_LineStyleList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_LineProperties> get ln {
    return node
        .findElements(
          'ln',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_LineProperties.new);
  }
}
extension type D_CT_EffectStyleList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_EffectStyleItem> get effectStyle {
    return node
        .findElements(
          'effectStyle',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_EffectStyleItem.new);
  }
}
extension type D_CT_BackgroundFillStyleList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_NoFillProperties> get noFill {
    return node
        .findElements(
          'noFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_NoFillProperties.new);
  }

  Iterable<D_CT_SolidColorFillProperties> get solidFill {
    return node
        .findElements(
          'solidFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SolidColorFillProperties.new);
  }

  Iterable<D_CT_GradientFillProperties> get gradFill {
    return node
        .findElements(
          'gradFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GradientFillProperties.new);
  }

  Iterable<D_CT_BlipFillProperties> get blipFill {
    return node
        .findElements(
          'blipFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_BlipFillProperties.new);
  }

  Iterable<D_CT_PatternFillProperties> get pattFill {
    return node
        .findElements(
          'pattFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PatternFillProperties.new);
  }

  Iterable<D_CT_GroupFillProperties> get grpFill {
    return node
        .findElements(
          'grpFill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GroupFillProperties.new);
  }
}
extension type D_CT_StyleMatrix(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_FillStyleList? get fillStyleLst {
    final e = node.getElement(
      'fillStyleLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FillStyleList(e) : null;
  }

  D_CT_LineStyleList? get lnStyleLst {
    final e = node.getElement(
      'lnStyleLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineStyleList(e) : null;
  }

  D_CT_EffectStyleList? get effectStyleLst {
    final e = node.getElement(
      'effectStyleLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectStyleList(e) : null;
  }

  D_CT_BackgroundFillStyleList? get bgFillStyleLst {
    final e = node.getElement(
      'bgFillStyleLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BackgroundFillStyleList(e) : null;
  }
}
extension type D_CT_BaseStyles(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_ColorScheme? get clrScheme {
    final e = node.getElement(
      'clrScheme',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ColorScheme(e) : null;
  }

  D_CT_FontScheme? get fontScheme {
    final e = node.getElement(
      'fontScheme',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FontScheme(e) : null;
  }

  D_CT_StyleMatrix? get fmtScheme {
    final e = node.getElement(
      'fmtScheme',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrix(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_OfficeArtExtension(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_Angle(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_PositiveFixedAngle(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_Percentage(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_PositivePercentage(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_FixedPercentage(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_PositiveFixedPercentage(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_Ratio(_i1.XmlElement node) implements _i1.XmlElement {
  int get n {
    return int.parse(
      node.getAttribute(
        'n',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    );
  }

  int get d {
    return int.parse(
      node.getAttribute(
        'd',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    );
  }
}
extension type D_CT_Point2D(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_PositiveSize2D(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get cx {
    return node.getAttribute(
      'cx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get cy {
    return node.getAttribute(
      'cy',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_ComplementTransform(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_InverseTransform(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_GrayscaleTransform(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_GammaTransform(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_InverseGammaTransform(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_ScRgbColor(_i1.XmlElement node) implements _i1.XmlElement {
  String get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get g {
    return node.getAttribute(
      'g',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get b {
    return node.getAttribute(
      'b',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  Iterable<D_CT_PositiveFixedPercentage> get tint {
    return node
        .findElements(
          'tint',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get shade {
    return node
        .findElements(
          'shade',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_ComplementTransform> get comp {
    return node
        .findElements(
          'comp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ComplementTransform.new);
  }

  Iterable<D_CT_InverseTransform> get inv {
    return node
        .findElements(
          'inv',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseTransform.new);
  }

  Iterable<D_CT_GrayscaleTransform> get gray {
    return node
        .findElements(
          'gray',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GrayscaleTransform.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get alpha {
    return node
        .findElements(
          'alpha',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_FixedPercentage> get alphaOff {
    return node
        .findElements(
          'alphaOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FixedPercentage.new);
  }

  Iterable<D_CT_PositivePercentage> get alphaMod {
    return node
        .findElements(
          'alphaMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_PositiveFixedAngle> get hue {
    return node
        .findElements(
          'hue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedAngle.new);
  }

  Iterable<D_CT_Angle> get hueOff {
    return node
        .findElements(
          'hueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Angle.new);
  }

  Iterable<D_CT_PositivePercentage> get hueMod {
    return node
        .findElements(
          'hueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_Percentage> get sat {
    return node
        .findElements(
          'sat',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satOff {
    return node
        .findElements(
          'satOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satMod {
    return node
        .findElements(
          'satMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lum {
    return node
        .findElements(
          'lum',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumOff {
    return node
        .findElements(
          'lumOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumMod {
    return node
        .findElements(
          'lumMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get red {
    return node
        .findElements(
          'red',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redOff {
    return node
        .findElements(
          'redOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redMod {
    return node
        .findElements(
          'redMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get green {
    return node
        .findElements(
          'green',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenOff {
    return node
        .findElements(
          'greenOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenMod {
    return node
        .findElements(
          'greenMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blue {
    return node
        .findElements(
          'blue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueOff {
    return node
        .findElements(
          'blueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueMod {
    return node
        .findElements(
          'blueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_GammaTransform> get gamma {
    return node
        .findElements(
          'gamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GammaTransform.new);
  }

  Iterable<D_CT_InverseGammaTransform> get invGamma {
    return node
        .findElements(
          'invGamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseGammaTransform.new);
  }
}
extension type D_CT_SRgbColor(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  Iterable<D_CT_PositiveFixedPercentage> get tint {
    return node
        .findElements(
          'tint',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get shade {
    return node
        .findElements(
          'shade',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_ComplementTransform> get comp {
    return node
        .findElements(
          'comp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ComplementTransform.new);
  }

  Iterable<D_CT_InverseTransform> get inv {
    return node
        .findElements(
          'inv',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseTransform.new);
  }

  Iterable<D_CT_GrayscaleTransform> get gray {
    return node
        .findElements(
          'gray',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GrayscaleTransform.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get alpha {
    return node
        .findElements(
          'alpha',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_FixedPercentage> get alphaOff {
    return node
        .findElements(
          'alphaOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FixedPercentage.new);
  }

  Iterable<D_CT_PositivePercentage> get alphaMod {
    return node
        .findElements(
          'alphaMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_PositiveFixedAngle> get hue {
    return node
        .findElements(
          'hue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedAngle.new);
  }

  Iterable<D_CT_Angle> get hueOff {
    return node
        .findElements(
          'hueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Angle.new);
  }

  Iterable<D_CT_PositivePercentage> get hueMod {
    return node
        .findElements(
          'hueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_Percentage> get sat {
    return node
        .findElements(
          'sat',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satOff {
    return node
        .findElements(
          'satOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satMod {
    return node
        .findElements(
          'satMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lum {
    return node
        .findElements(
          'lum',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumOff {
    return node
        .findElements(
          'lumOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumMod {
    return node
        .findElements(
          'lumMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get red {
    return node
        .findElements(
          'red',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redOff {
    return node
        .findElements(
          'redOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redMod {
    return node
        .findElements(
          'redMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get green {
    return node
        .findElements(
          'green',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenOff {
    return node
        .findElements(
          'greenOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenMod {
    return node
        .findElements(
          'greenMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blue {
    return node
        .findElements(
          'blue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueOff {
    return node
        .findElements(
          'blueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueMod {
    return node
        .findElements(
          'blueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_GammaTransform> get gamma {
    return node
        .findElements(
          'gamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GammaTransform.new);
  }

  Iterable<D_CT_InverseGammaTransform> get invGamma {
    return node
        .findElements(
          'invGamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseGammaTransform.new);
  }
}
extension type D_CT_HslColor(_i1.XmlElement node) implements _i1.XmlElement {
  String get hue {
    return node.getAttribute(
      'hue',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get sat {
    return node.getAttribute(
      'sat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get lum {
    return node.getAttribute(
      'lum',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  Iterable<D_CT_PositiveFixedPercentage> get tint {
    return node
        .findElements(
          'tint',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get shade {
    return node
        .findElements(
          'shade',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_ComplementTransform> get comp {
    return node
        .findElements(
          'comp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ComplementTransform.new);
  }

  Iterable<D_CT_InverseTransform> get inv {
    return node
        .findElements(
          'inv',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseTransform.new);
  }

  Iterable<D_CT_GrayscaleTransform> get gray {
    return node
        .findElements(
          'gray',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GrayscaleTransform.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get alpha {
    return node
        .findElements(
          'alpha',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_FixedPercentage> get alphaOff {
    return node
        .findElements(
          'alphaOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FixedPercentage.new);
  }

  Iterable<D_CT_PositivePercentage> get alphaMod {
    return node
        .findElements(
          'alphaMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_Angle> get hueOff {
    return node
        .findElements(
          'hueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Angle.new);
  }

  Iterable<D_CT_PositivePercentage> get hueMod {
    return node
        .findElements(
          'hueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_Percentage> get satOff {
    return node
        .findElements(
          'satOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satMod {
    return node
        .findElements(
          'satMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumOff {
    return node
        .findElements(
          'lumOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumMod {
    return node
        .findElements(
          'lumMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get red {
    return node
        .findElements(
          'red',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redOff {
    return node
        .findElements(
          'redOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redMod {
    return node
        .findElements(
          'redMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get green {
    return node
        .findElements(
          'green',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenOff {
    return node
        .findElements(
          'greenOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenMod {
    return node
        .findElements(
          'greenMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blue {
    return node
        .findElements(
          'blue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueOff {
    return node
        .findElements(
          'blueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueMod {
    return node
        .findElements(
          'blueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_GammaTransform> get gamma {
    return node
        .findElements(
          'gamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GammaTransform.new);
  }

  Iterable<D_CT_InverseGammaTransform> get invGamma {
    return node
        .findElements(
          'invGamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseGammaTransform.new);
  }
}
extension type D_CT_SystemColor(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_SystemColorVal get val {
    return D_ST_SystemColorVal.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  String? get lastClr {
    return node.getAttribute(
      'lastClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  Iterable<D_CT_PositiveFixedPercentage> get tint {
    return node
        .findElements(
          'tint',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get shade {
    return node
        .findElements(
          'shade',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_ComplementTransform> get comp {
    return node
        .findElements(
          'comp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ComplementTransform.new);
  }

  Iterable<D_CT_InverseTransform> get inv {
    return node
        .findElements(
          'inv',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseTransform.new);
  }

  Iterable<D_CT_GrayscaleTransform> get gray {
    return node
        .findElements(
          'gray',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GrayscaleTransform.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get alpha {
    return node
        .findElements(
          'alpha',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_FixedPercentage> get alphaOff {
    return node
        .findElements(
          'alphaOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FixedPercentage.new);
  }

  Iterable<D_CT_PositivePercentage> get alphaMod {
    return node
        .findElements(
          'alphaMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_PositiveFixedAngle> get hue {
    return node
        .findElements(
          'hue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedAngle.new);
  }

  Iterable<D_CT_Angle> get hueOff {
    return node
        .findElements(
          'hueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Angle.new);
  }

  Iterable<D_CT_PositivePercentage> get hueMod {
    return node
        .findElements(
          'hueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_Percentage> get sat {
    return node
        .findElements(
          'sat',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satOff {
    return node
        .findElements(
          'satOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satMod {
    return node
        .findElements(
          'satMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lum {
    return node
        .findElements(
          'lum',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumOff {
    return node
        .findElements(
          'lumOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumMod {
    return node
        .findElements(
          'lumMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get red {
    return node
        .findElements(
          'red',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redOff {
    return node
        .findElements(
          'redOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redMod {
    return node
        .findElements(
          'redMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get green {
    return node
        .findElements(
          'green',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenOff {
    return node
        .findElements(
          'greenOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenMod {
    return node
        .findElements(
          'greenMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blue {
    return node
        .findElements(
          'blue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueOff {
    return node
        .findElements(
          'blueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueMod {
    return node
        .findElements(
          'blueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_GammaTransform> get gamma {
    return node
        .findElements(
          'gamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GammaTransform.new);
  }

  Iterable<D_CT_InverseGammaTransform> get invGamma {
    return node
        .findElements(
          'invGamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseGammaTransform.new);
  }
}
extension type D_CT_SchemeColor(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_SchemeColorVal get val {
    return D_ST_SchemeColorVal.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  Iterable<D_CT_PositiveFixedPercentage> get tint {
    return node
        .findElements(
          'tint',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get shade {
    return node
        .findElements(
          'shade',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_ComplementTransform> get comp {
    return node
        .findElements(
          'comp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ComplementTransform.new);
  }

  Iterable<D_CT_InverseTransform> get inv {
    return node
        .findElements(
          'inv',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseTransform.new);
  }

  Iterable<D_CT_GrayscaleTransform> get gray {
    return node
        .findElements(
          'gray',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GrayscaleTransform.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get alpha {
    return node
        .findElements(
          'alpha',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_FixedPercentage> get alphaOff {
    return node
        .findElements(
          'alphaOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FixedPercentage.new);
  }

  Iterable<D_CT_PositivePercentage> get alphaMod {
    return node
        .findElements(
          'alphaMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_PositiveFixedAngle> get hue {
    return node
        .findElements(
          'hue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedAngle.new);
  }

  Iterable<D_CT_Angle> get hueOff {
    return node
        .findElements(
          'hueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Angle.new);
  }

  Iterable<D_CT_PositivePercentage> get hueMod {
    return node
        .findElements(
          'hueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_Percentage> get sat {
    return node
        .findElements(
          'sat',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satOff {
    return node
        .findElements(
          'satOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satMod {
    return node
        .findElements(
          'satMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lum {
    return node
        .findElements(
          'lum',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumOff {
    return node
        .findElements(
          'lumOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumMod {
    return node
        .findElements(
          'lumMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get red {
    return node
        .findElements(
          'red',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redOff {
    return node
        .findElements(
          'redOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redMod {
    return node
        .findElements(
          'redMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get green {
    return node
        .findElements(
          'green',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenOff {
    return node
        .findElements(
          'greenOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenMod {
    return node
        .findElements(
          'greenMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blue {
    return node
        .findElements(
          'blue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueOff {
    return node
        .findElements(
          'blueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueMod {
    return node
        .findElements(
          'blueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_GammaTransform> get gamma {
    return node
        .findElements(
          'gamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GammaTransform.new);
  }

  Iterable<D_CT_InverseGammaTransform> get invGamma {
    return node
        .findElements(
          'invGamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseGammaTransform.new);
  }
}
extension type D_CT_PresetColor(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_PresetColorVal get val {
    return D_ST_PresetColorVal.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  Iterable<D_CT_PositiveFixedPercentage> get tint {
    return node
        .findElements(
          'tint',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get shade {
    return node
        .findElements(
          'shade',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_ComplementTransform> get comp {
    return node
        .findElements(
          'comp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ComplementTransform.new);
  }

  Iterable<D_CT_InverseTransform> get inv {
    return node
        .findElements(
          'inv',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseTransform.new);
  }

  Iterable<D_CT_GrayscaleTransform> get gray {
    return node
        .findElements(
          'gray',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GrayscaleTransform.new);
  }

  Iterable<D_CT_PositiveFixedPercentage> get alpha {
    return node
        .findElements(
          'alpha',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedPercentage.new);
  }

  Iterable<D_CT_FixedPercentage> get alphaOff {
    return node
        .findElements(
          'alphaOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FixedPercentage.new);
  }

  Iterable<D_CT_PositivePercentage> get alphaMod {
    return node
        .findElements(
          'alphaMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_PositiveFixedAngle> get hue {
    return node
        .findElements(
          'hue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositiveFixedAngle.new);
  }

  Iterable<D_CT_Angle> get hueOff {
    return node
        .findElements(
          'hueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Angle.new);
  }

  Iterable<D_CT_PositivePercentage> get hueMod {
    return node
        .findElements(
          'hueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PositivePercentage.new);
  }

  Iterable<D_CT_Percentage> get sat {
    return node
        .findElements(
          'sat',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satOff {
    return node
        .findElements(
          'satOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get satMod {
    return node
        .findElements(
          'satMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lum {
    return node
        .findElements(
          'lum',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumOff {
    return node
        .findElements(
          'lumOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get lumMod {
    return node
        .findElements(
          'lumMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get red {
    return node
        .findElements(
          'red',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redOff {
    return node
        .findElements(
          'redOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get redMod {
    return node
        .findElements(
          'redMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get green {
    return node
        .findElements(
          'green',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenOff {
    return node
        .findElements(
          'greenOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get greenMod {
    return node
        .findElements(
          'greenMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blue {
    return node
        .findElements(
          'blue',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueOff {
    return node
        .findElements(
          'blueOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_Percentage> get blueMod {
    return node
        .findElements(
          'blueMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Percentage.new);
  }

  Iterable<D_CT_GammaTransform> get gamma {
    return node
        .findElements(
          'gamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GammaTransform.new);
  }

  Iterable<D_CT_InverseGammaTransform> get invGamma {
    return node
        .findElements(
          'invGamma',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InverseGammaTransform.new);
  }
}
extension type D_CT_OfficeArtExtensionList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_OfficeArtExtension> get ext {
    return node
        .findElements(
          'ext',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_OfficeArtExtension.new);
  }
}
extension type D_CT_Scale2D(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Ratio? get sx {
    final e = node.getElement(
      'sx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Ratio(e) : null;
  }

  D_CT_Ratio? get sy {
    final e = node.getElement(
      'sy',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Ratio(e) : null;
  }
}
extension type D_CT_Transform2D(_i1.XmlElement node) implements _i1.XmlElement {
  String? get rot {
    return node.getAttribute(
      'rot',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get flipH {
    return node.getAttribute(
              'flipH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'flipH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'flipH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get flipV {
    return node.getAttribute(
              'flipV',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'flipV',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'flipV',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_Point2D? get off {
    final e = node.getElement(
      'off',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Point2D(e) : null;
  }

  D_CT_PositiveSize2D? get ext {
    final e = node.getElement(
      'ext',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }
}
extension type D_CT_GroupTransform2D(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get rot {
    return node.getAttribute(
      'rot',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get flipH {
    return node.getAttribute(
              'flipH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'flipH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'flipH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get flipV {
    return node.getAttribute(
              'flipV',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'flipV',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'flipV',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_Point2D? get off {
    final e = node.getElement(
      'off',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Point2D(e) : null;
  }

  D_CT_PositiveSize2D? get ext {
    final e = node.getElement(
      'ext',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }

  D_CT_Point2D? get chOff {
    final e = node.getElement(
      'chOff',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Point2D(e) : null;
  }

  D_CT_PositiveSize2D? get chExt {
    final e = node.getElement(
      'chExt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }
}
extension type D_CT_Point3D(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_Vector3D(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_SphereCoords(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get lat {
    return node.getAttribute(
      'lat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get lon {
    return node.getAttribute(
      'lon',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get rev {
    return node.getAttribute(
      'rev',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_RelativeRect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get l {
    return node.getAttribute(
      'l',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get t {
    return node.getAttribute(
      't',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get b {
    return node.getAttribute(
      'b',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_Color(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_ColorMRU(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_ScRgbColor> get scrgbClr {
    return node
        .findElements(
          'scrgbClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ScRgbColor.new);
  }

  Iterable<D_CT_SRgbColor> get srgbClr {
    return node
        .findElements(
          'srgbClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SRgbColor.new);
  }

  Iterable<D_CT_HslColor> get hslClr {
    return node
        .findElements(
          'hslClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_HslColor.new);
  }

  Iterable<D_CT_SystemColor> get sysClr {
    return node
        .findElements(
          'sysClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SystemColor.new);
  }

  Iterable<D_CT_SchemeColor> get schemeClr {
    return node
        .findElements(
          'schemeClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SchemeColor.new);
  }

  Iterable<D_CT_PresetColor> get prstClr {
    return node
        .findElements(
          'prstClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PresetColor.new);
  }
}
extension type D_CT_EmbeddedWAVAudioFile(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_Hyperlink(_i1.XmlElement node) implements _i1.XmlElement {
  String? get invalidUrl {
    return node.getAttribute(
      'invalidUrl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get action {
    return node.getAttribute(
      'action',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get tgtFrame {
    return node.getAttribute(
      'tgtFrame',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get tooltip {
    return node.getAttribute(
      'tooltip',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get history {
    return node.getAttribute(
              'history',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'history',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'history',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get highlightClick {
    return node.getAttribute(
              'highlightClick',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'highlightClick',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'highlightClick',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get endSnd {
    return node.getAttribute(
              'endSnd',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'endSnd',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'endSnd',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_EmbeddedWAVAudioFile? get snd {
    final e = node.getElement(
      'snd',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EmbeddedWAVAudioFile(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ConnectorLocking(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ShapeLocking(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get noTextEdit {
    return node.getAttribute(
              'noTextEdit',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noTextEdit',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noTextEdit',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_PictureLocking(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get noCrop {
    return node.getAttribute(
              'noCrop',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noCrop',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noCrop',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GroupLocking(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get noGrp {
    return node.getAttribute(
              'noGrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noGrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noGrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noUngrp {
    return node.getAttribute(
              'noUngrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noUngrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noUngrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noSelect {
    return node.getAttribute(
              'noSelect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noSelect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noSelect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noRot {
    return node.getAttribute(
              'noRot',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noRot',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noRot',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noChangeAspect {
    return node.getAttribute(
              'noChangeAspect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noChangeAspect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noChangeAspect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noMove {
    return node.getAttribute(
              'noMove',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noMove',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noMove',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noResize {
    return node.getAttribute(
              'noResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GraphicalObjectFrameLocking(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get noGrp {
    return node.getAttribute(
              'noGrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noGrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noGrp',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noDrilldown {
    return node.getAttribute(
              'noDrilldown',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noDrilldown',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noDrilldown',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noSelect {
    return node.getAttribute(
              'noSelect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noSelect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noSelect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noChangeAspect {
    return node.getAttribute(
              'noChangeAspect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noChangeAspect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noChangeAspect',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noMove {
    return node.getAttribute(
              'noMove',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noMove',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noMove',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get noResize {
    return node.getAttribute(
              'noResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ContentPartLocking(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_NonVisualDrawingProps(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String? get descr {
    return node.getAttribute(
      'descr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  String? get title {
    return node.getAttribute(
      'title',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_Hyperlink? get hlinkClick {
    final e = node.getElement(
      'hlinkClick',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Hyperlink(e) : null;
  }

  D_CT_Hyperlink? get hlinkHover {
    final e = node.getElement(
      'hlinkHover',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Hyperlink(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_NonVisualDrawingShapeProps(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get txBox {
    return node.getAttribute(
              'txBox',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'txBox',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'txBox',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_ShapeLocking? get spLocks {
    final e = node.getElement(
      'spLocks',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeLocking(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_NonVisualConnectorProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ConnectorLocking? get cxnSpLocks {
    final e = node.getElement(
      'cxnSpLocks',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ConnectorLocking(e) : null;
  }

  D_CT_Connection? get stCxn {
    final e = node.getElement(
      'stCxn',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Connection(e) : null;
  }

  D_CT_Connection? get endCxn {
    final e = node.getElement(
      'endCxn',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Connection(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_NonVisualPictureProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get preferRelativeResize {
    return node.getAttribute(
              'preferRelativeResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preferRelativeResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preferRelativeResize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_PictureLocking? get picLocks {
    final e = node.getElement(
      'picLocks',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PictureLocking(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_NonVisualGroupDrawingShapeProps(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_GroupLocking? get grpSpLocks {
    final e = node.getElement(
      'grpSpLocks',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupLocking(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_NonVisualGraphicFrameProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_GraphicalObjectFrameLocking? get graphicFrameLocks {
    final e = node.getElement(
      'graphicFrameLocks',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GraphicalObjectFrameLocking(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_NonVisualContentPartProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get isComment {
    return node.getAttribute(
              'isComment',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'isComment',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'isComment',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_ContentPartLocking? get cpLocks {
    final e = node.getElement(
      'cpLocks',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ContentPartLocking(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GraphicalObjectData(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_GraphicalObject(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_GraphicalObjectData? get graphicData {
    final e = node.getElement(
      'graphicData',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GraphicalObjectData(e) : null;
  }
}
extension type D_CT_AnimationDgmElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_DgmBuildStep? get bldStep {
    return node.getAttribute(
              'bldStep',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_DgmBuildStep.fromValue(
            node.getAttribute(
              'bldStep',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type D_CT_AnimationChartElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get seriesIdx {
    return node.getAttribute(
              'seriesIdx',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'seriesIdx',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  int? get categoryIdx {
    return node.getAttribute(
              'categoryIdx',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'categoryIdx',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_ChartBuildStep get bldStep {
    return D_ST_ChartBuildStep.fromValue(
      node.getAttribute(
        'bldStep',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }
}
extension type D_CT_AnimationElementChoice(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_AnimationDgmElement? get dgm {
    final e = node.getElement(
      'dgm',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AnimationDgmElement(e) : null;
  }

  D_CT_AnimationChartElement? get chart {
    final e = node.getElement(
      'chart',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AnimationChartElement(e) : null;
  }
}
extension type D_CT_AnimationDgmBuildProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get rev {
    return node.getAttribute(
              'rev',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rev',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rev',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }
}
extension type D_CT_AnimationChartBuildProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get animBg {
    return node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }
}
extension type D_CT_AnimationGraphicalObjectBuildProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_AnimationDgmBuildProperties? get bldDgm {
    final e = node.getElement(
      'bldDgm',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AnimationDgmBuildProperties(e) : null;
  }

  D_CT_AnimationChartBuildProperties? get bldChart {
    final e = node.getElement(
      'bldChart',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AnimationChartBuildProperties(e) : null;
  }
}
extension type D_CT_BackgroundFormatting(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }

  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }
}
extension type D_CT_WholeE2oFormatting(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_LineProperties? get ln {
    final e = node.getElement(
      'ln',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }
}
extension type D_CT_GvmlUseShapeRectangle(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_GvmlTextShape(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TextBody? get txBody {
    final e = node.getElement(
      'txBody',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_GvmlUseShapeRectangle? get useSpRect {
    final e = node.getElement(
      'useSpRect',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GvmlUseShapeRectangle(e) : null;
  }

  D_CT_Transform2D? get xfrm {
    final e = node.getElement(
      'xfrm',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Transform2D(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GvmlShapeNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualDrawingShapeProps? get cNvSpPr {
    final e = node.getElement(
      'cNvSpPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingShapeProps(e) : null;
  }
}
extension type D_CT_GvmlShape(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_GvmlShapeNonVisual? get nvSpPr {
    final e = node.getElement(
      'nvSpPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GvmlShapeNonVisual(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_GvmlTextShape? get txSp {
    final e = node.getElement(
      'txSp',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GvmlTextShape(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GvmlConnectorNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualConnectorProperties? get cNvCxnSpPr {
    final e = node.getElement(
      'cNvCxnSpPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualConnectorProperties(e) : null;
  }
}
extension type D_CT_GvmlConnector(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_GvmlConnectorNonVisual? get nvCxnSpPr {
    final e = node.getElement(
      'nvCxnSpPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GvmlConnectorNonVisual(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GvmlPictureNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualPictureProperties? get cNvPicPr {
    final e = node.getElement(
      'cNvPicPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualPictureProperties(e) : null;
  }
}
extension type D_CT_GvmlPicture(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_GvmlPictureNonVisual? get nvPicPr {
    final e = node.getElement(
      'nvPicPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GvmlPictureNonVisual(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GvmlGraphicFrameNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGraphicFrameProperties? get cNvGraphicFramePr {
    final e = node.getElement(
      'cNvGraphicFramePr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualGraphicFrameProperties(e) : null;
  }
}
extension type D_CT_GvmlGraphicalObjectFrame(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_GvmlGraphicFrameNonVisual? get nvGraphicFramePr {
    final e = node.getElement(
      'nvGraphicFramePr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GvmlGraphicFrameNonVisual(e) : null;
  }

  D_CT_Transform2D? get xfrm {
    final e = node.getElement(
      'xfrm',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Transform2D(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GvmlGroupShapeNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGroupDrawingShapeProps? get cNvGrpSpPr {
    final e = node.getElement(
      'cNvGrpSpPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NonVisualGroupDrawingShapeProps(e) : null;
  }
}
extension type D_CT_GvmlGroupShape(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_GvmlGroupShapeNonVisual? get nvGrpSpPr {
    final e = node.getElement(
      'nvGrpSpPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GvmlGroupShapeNonVisual(e) : null;
  }

  D_CT_GroupShapeProperties? get grpSpPr {
    final e = node.getElement(
      'grpSpPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupShapeProperties(e) : null;
  }

  Iterable<D_CT_GvmlTextShape> get txSp {
    return node
        .findElements(
          'txSp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GvmlTextShape.new);
  }

  Iterable<D_CT_GvmlShape> get sp {
    return node
        .findElements(
          'sp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GvmlShape.new);
  }

  Iterable<D_CT_GvmlConnector> get cxnSp {
    return node
        .findElements(
          'cxnSp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GvmlConnector.new);
  }

  Iterable<D_CT_GvmlPicture> get pic {
    return node
        .findElements(
          'pic',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GvmlPicture.new);
  }

  Iterable<D_CT_GvmlGraphicalObjectFrame> get graphicFrame {
    return node
        .findElements(
          'graphicFrame',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GvmlGraphicalObjectFrame.new);
  }

  Iterable<D_CT_GvmlGroupShape> get grpSp {
    return node
        .findElements(
          'grpSp',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GvmlGroupShape.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Camera(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_PresetCameraType get prst {
    return D_ST_PresetCameraType.fromValue(
      node.getAttribute(
        'prst',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  String? get fov {
    return node.getAttribute(
      'fov',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get zoom {
    return node.getAttribute(
      'zoom',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_SphereCoords? get rot {
    final e = node.getElement(
      'rot',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SphereCoords(e) : null;
  }
}
extension type D_CT_LightRig(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_LightRigType get rig {
    return D_ST_LightRigType.fromValue(
      node.getAttribute(
        'rig',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_LightRigDirection get dir {
    return D_ST_LightRigDirection.fromValue(
      node.getAttribute(
        'dir',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_CT_SphereCoords? get rot {
    final e = node.getElement(
      'rot',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SphereCoords(e) : null;
  }
}
extension type D_CT_Scene3D(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Camera? get camera {
    final e = node.getElement(
      'camera',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Camera(e) : null;
  }

  D_CT_LightRig? get lightRig {
    final e = node.getElement(
      'lightRig',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LightRig(e) : null;
  }

  D_CT_Backdrop? get backdrop {
    final e = node.getElement(
      'backdrop',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Backdrop(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Backdrop(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Point3D? get anchor {
    final e = node.getElement(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Point3D(e) : null;
  }

  D_CT_Vector3D? get norm {
    final e = node.getElement(
      'norm',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Vector3D(e) : null;
  }

  D_CT_Vector3D? get up {
    final e = node.getElement(
      'up',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Vector3D(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Bevel(_i1.XmlElement node) implements _i1.XmlElement {
  String? get w {
    return node.getAttribute(
      'w',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get h {
    return node.getAttribute(
      'h',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_BevelPresetType? get prst {
    return node.getAttribute(
              'prst',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_BevelPresetType.fromValue(
            node.getAttribute(
              'prst',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type D_CT_Shape3D(_i1.XmlElement node) implements _i1.XmlElement {
  String? get extrusionH {
    return node.getAttribute(
      'extrusionH',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get contourW {
    return node.getAttribute(
      'contourW',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_PresetMaterialType? get prstMaterial {
    return node.getAttribute(
              'prstMaterial',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_PresetMaterialType.fromValue(
            node.getAttribute(
              'prstMaterial',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_Bevel? get bevelT {
    final e = node.getElement(
      'bevelT',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Bevel(e) : null;
  }

  D_CT_Bevel? get bevelB {
    final e = node.getElement(
      'bevelB',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Bevel(e) : null;
  }

  D_CT_Color? get extrusionClr {
    final e = node.getElement(
      'extrusionClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get contourClr {
    final e = node.getElement(
      'contourClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_FlatText(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_AlphaBiLevelEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get thresh {
    return node.getAttribute(
      'thresh',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_AlphaCeilingEffect(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_AlphaFloorEffect(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_AlphaInverseEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_AlphaModulateFixedEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get amt {
    return node.getAttribute(
      'amt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_AlphaOutsetEffect(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_AlphaReplaceEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get a {
    return node.getAttribute(
      'a',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_BiLevelEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get thresh {
    return node.getAttribute(
      'thresh',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_BlurEffect(_i1.XmlElement node) implements _i1.XmlElement {
  String? get rad {
    return node.getAttribute(
      'rad',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get grow {
    return node.getAttribute(
              'grow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'grow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'grow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }
}
extension type D_CT_ColorChangeEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get useA {
    return node.getAttribute(
              'useA',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'useA',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'useA',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_Color? get clrFrom {
    final e = node.getElement(
      'clrFrom',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get clrTo {
    final e = node.getElement(
      'clrTo',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }
}
extension type D_CT_ColorReplaceEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_DuotoneEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_ScRgbColor> get scrgbClr {
    return node
        .findElements(
          'scrgbClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ScRgbColor.new);
  }

  Iterable<D_CT_SRgbColor> get srgbClr {
    return node
        .findElements(
          'srgbClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SRgbColor.new);
  }

  Iterable<D_CT_HslColor> get hslClr {
    return node
        .findElements(
          'hslClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_HslColor.new);
  }

  Iterable<D_CT_SystemColor> get sysClr {
    return node
        .findElements(
          'sysClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SystemColor.new);
  }

  Iterable<D_CT_SchemeColor> get schemeClr {
    return node
        .findElements(
          'schemeClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SchemeColor.new);
  }

  Iterable<D_CT_PresetColor> get prstClr {
    return node
        .findElements(
          'prstClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PresetColor.new);
  }
}
extension type D_CT_GlowEffect(_i1.XmlElement node) implements _i1.XmlElement {
  String? get rad {
    return node.getAttribute(
      'rad',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_GrayscaleEffect(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_HSLEffect(_i1.XmlElement node) implements _i1.XmlElement {
  String? get hue {
    return node.getAttribute(
      'hue',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get sat {
    return node.getAttribute(
      'sat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get lum {
    return node.getAttribute(
      'lum',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_InnerShadowEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get blurRad {
    return node.getAttribute(
      'blurRad',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get dist {
    return node.getAttribute(
      'dist',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get dir {
    return node.getAttribute(
      'dir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_LuminanceEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get bright {
    return node.getAttribute(
      'bright',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get contrast {
    return node.getAttribute(
      'contrast',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_OuterShadowEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get blurRad {
    return node.getAttribute(
      'blurRad',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get dist {
    return node.getAttribute(
      'dist',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get dir {
    return node.getAttribute(
      'dir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get sx {
    return node.getAttribute(
      'sx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get sy {
    return node.getAttribute(
      'sy',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get kx {
    return node.getAttribute(
      'kx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get ky {
    return node.getAttribute(
      'ky',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_RectAlignment? get algn {
    return node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_RectAlignment.fromValue(
            node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get rotWithShape {
    return node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_PresetShadowEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_PresetShadowVal get prst {
    return D_ST_PresetShadowVal.fromValue(
      node.getAttribute(
        'prst',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  String? get dist {
    return node.getAttribute(
      'dist',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get dir {
    return node.getAttribute(
      'dir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_ReflectionEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get blurRad {
    return node.getAttribute(
      'blurRad',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get stA {
    return node.getAttribute(
      'stA',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get stPos {
    return node.getAttribute(
      'stPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get endA {
    return node.getAttribute(
      'endA',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get endPos {
    return node.getAttribute(
      'endPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get dist {
    return node.getAttribute(
      'dist',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get dir {
    return node.getAttribute(
      'dir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get fadeDir {
    return node.getAttribute(
      'fadeDir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get sx {
    return node.getAttribute(
      'sx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get sy {
    return node.getAttribute(
      'sy',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get kx {
    return node.getAttribute(
      'kx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get ky {
    return node.getAttribute(
      'ky',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_RectAlignment? get algn {
    return node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_RectAlignment.fromValue(
            node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get rotWithShape {
    return node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }
}
extension type D_CT_RelativeOffsetEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get tx {
    return node.getAttribute(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get ty {
    return node.getAttribute(
      'ty',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_SoftEdgesEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get rad {
    return node.getAttribute(
      'rad',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_TintEffect(_i1.XmlElement node) implements _i1.XmlElement {
  String? get hue {
    return node.getAttribute(
      'hue',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get amt {
    return node.getAttribute(
      'amt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_TransformEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get sx {
    return node.getAttribute(
      'sx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get sy {
    return node.getAttribute(
      'sy',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get kx {
    return node.getAttribute(
      'kx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get ky {
    return node.getAttribute(
      'ky',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_NoFillProperties(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_SolidColorFillProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_LinearShadeProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get ang {
    return node.getAttribute(
      'ang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get scaled {
    return node.getAttribute(
              'scaled',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'scaled',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'scaled',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }
}
extension type D_CT_PathShadeProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_PathShadeType? get path {
    return node.getAttribute(
              'path',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_PathShadeType.fromValue(
            node.getAttribute(
              'path',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_RelativeRect? get fillToRect {
    final e = node.getElement(
      'fillToRect',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_RelativeRect(e) : null;
  }
}
extension type D_CT_GradientStop(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get pos {
    return node.getAttribute(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_GradientStopList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_GradientStop> get gs {
    return node
        .findElements(
          'gs',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GradientStop.new);
  }
}
extension type D_CT_GradientFillProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_TileFlipMode? get flip {
    return node.getAttribute(
              'flip',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TileFlipMode.fromValue(
            node.getAttribute(
              'flip',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get rotWithShape {
    return node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_GradientStopList? get gsLst {
    final e = node.getElement(
      'gsLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientStopList(e) : null;
  }

  D_CT_LinearShadeProperties? get lin {
    final e = node.getElement(
      'lin',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LinearShadeProperties(e) : null;
  }

  D_CT_PathShadeProperties? get path {
    final e = node.getElement(
      'path',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PathShadeProperties(e) : null;
  }

  D_CT_RelativeRect? get tileRect {
    final e = node.getElement(
      'tileRect',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_RelativeRect(e) : null;
  }
}
extension type D_CT_TileInfoProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get sx {
    return node.getAttribute(
      'sx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get sy {
    return node.getAttribute(
      'sy',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_TileFlipMode? get flip {
    return node.getAttribute(
              'flip',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TileFlipMode.fromValue(
            node.getAttribute(
              'flip',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_RectAlignment? get algn {
    return node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_RectAlignment.fromValue(
            node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type D_CT_StretchInfoProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_RelativeRect? get fillRect {
    final e = node.getElement(
      'fillRect',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_RelativeRect(e) : null;
  }
}
extension type D_CT_Blip(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_BlipCompression? get cstate {
    return node.getAttribute(
              'cstate',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_BlipCompression.fromValue(
            node.getAttribute(
              'cstate',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<D_CT_AlphaBiLevelEffect> get alphaBiLevel {
    return node
        .findElements(
          'alphaBiLevel',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaBiLevelEffect.new);
  }

  Iterable<D_CT_AlphaCeilingEffect> get alphaCeiling {
    return node
        .findElements(
          'alphaCeiling',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaCeilingEffect.new);
  }

  Iterable<D_CT_AlphaFloorEffect> get alphaFloor {
    return node
        .findElements(
          'alphaFloor',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaFloorEffect.new);
  }

  Iterable<D_CT_AlphaInverseEffect> get alphaInv {
    return node
        .findElements(
          'alphaInv',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaInverseEffect.new);
  }

  Iterable<D_CT_AlphaModulateEffect> get alphaMod {
    return node
        .findElements(
          'alphaMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaModulateEffect.new);
  }

  Iterable<D_CT_AlphaModulateFixedEffect> get alphaModFix {
    return node
        .findElements(
          'alphaModFix',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaModulateFixedEffect.new);
  }

  Iterable<D_CT_AlphaReplaceEffect> get alphaRepl {
    return node
        .findElements(
          'alphaRepl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaReplaceEffect.new);
  }

  Iterable<D_CT_BiLevelEffect> get biLevel {
    return node
        .findElements(
          'biLevel',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_BiLevelEffect.new);
  }

  Iterable<D_CT_BlurEffect> get blur {
    return node
        .findElements(
          'blur',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_BlurEffect.new);
  }

  Iterable<D_CT_ColorChangeEffect> get clrChange {
    return node
        .findElements(
          'clrChange',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ColorChangeEffect.new);
  }

  Iterable<D_CT_ColorReplaceEffect> get clrRepl {
    return node
        .findElements(
          'clrRepl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ColorReplaceEffect.new);
  }

  Iterable<D_CT_DuotoneEffect> get duotone {
    return node
        .findElements(
          'duotone',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_DuotoneEffect.new);
  }

  Iterable<D_CT_FillOverlayEffect> get fillOverlay {
    return node
        .findElements(
          'fillOverlay',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FillOverlayEffect.new);
  }

  Iterable<D_CT_GrayscaleEffect> get grayscl {
    return node
        .findElements(
          'grayscl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GrayscaleEffect.new);
  }

  Iterable<D_CT_HSLEffect> get hsl {
    return node
        .findElements(
          'hsl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_HSLEffect.new);
  }

  Iterable<D_CT_LuminanceEffect> get lum {
    return node
        .findElements(
          'lum',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_LuminanceEffect.new);
  }

  Iterable<D_CT_TintEffect> get tint {
    return node
        .findElements(
          'tint',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TintEffect.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_BlipFillProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get dpi {
    return node.getAttribute(
              'dpi',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'dpi',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get rotWithShape {
    return node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rotWithShape',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_Blip? get blip {
    final e = node.getElement(
      'blip',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Blip(e) : null;
  }

  D_CT_RelativeRect? get srcRect {
    final e = node.getElement(
      'srcRect',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_RelativeRect(e) : null;
  }

  D_CT_TileInfoProperties? get tile {
    final e = node.getElement(
      'tile',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TileInfoProperties(e) : null;
  }

  D_CT_StretchInfoProperties? get stretch {
    final e = node.getElement(
      'stretch',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StretchInfoProperties(e) : null;
  }
}
extension type D_CT_PatternFillProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_PresetPatternVal? get prst {
    return node.getAttribute(
              'prst',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_PresetPatternVal.fromValue(
            node.getAttribute(
              'prst',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_Color? get fgClr {
    final e = node.getElement(
      'fgClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get bgClr {
    final e = node.getElement(
      'bgClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }
}
extension type D_CT_GroupFillProperties(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_FillProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }
}
extension type D_CT_FillEffect(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }
}
extension type D_CT_FillOverlayEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_BlendMode get blend {
    return D_ST_BlendMode.fromValue(
      node.getAttribute(
        'blend',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }
}
extension type D_CT_EffectReference(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_EffectContainer(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_EffectContainerType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_EffectContainerType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  Iterable<D_CT_EffectContainer> get cont {
    return node
        .findElements(
          'cont',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_EffectContainer.new);
  }

  Iterable<D_CT_EffectReference> get effect {
    return node
        .findElements(
          'effect',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_EffectReference.new);
  }

  Iterable<D_CT_AlphaBiLevelEffect> get alphaBiLevel {
    return node
        .findElements(
          'alphaBiLevel',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaBiLevelEffect.new);
  }

  Iterable<D_CT_AlphaCeilingEffect> get alphaCeiling {
    return node
        .findElements(
          'alphaCeiling',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaCeilingEffect.new);
  }

  Iterable<D_CT_AlphaFloorEffect> get alphaFloor {
    return node
        .findElements(
          'alphaFloor',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaFloorEffect.new);
  }

  Iterable<D_CT_AlphaInverseEffect> get alphaInv {
    return node
        .findElements(
          'alphaInv',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaInverseEffect.new);
  }

  Iterable<D_CT_AlphaModulateEffect> get alphaMod {
    return node
        .findElements(
          'alphaMod',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaModulateEffect.new);
  }

  Iterable<D_CT_AlphaModulateFixedEffect> get alphaModFix {
    return node
        .findElements(
          'alphaModFix',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaModulateFixedEffect.new);
  }

  Iterable<D_CT_AlphaOutsetEffect> get alphaOutset {
    return node
        .findElements(
          'alphaOutset',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaOutsetEffect.new);
  }

  Iterable<D_CT_AlphaReplaceEffect> get alphaRepl {
    return node
        .findElements(
          'alphaRepl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AlphaReplaceEffect.new);
  }

  Iterable<D_CT_BiLevelEffect> get biLevel {
    return node
        .findElements(
          'biLevel',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_BiLevelEffect.new);
  }

  Iterable<D_CT_BlendEffect> get blend {
    return node
        .findElements(
          'blend',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_BlendEffect.new);
  }

  Iterable<D_CT_BlurEffect> get blur {
    return node
        .findElements(
          'blur',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_BlurEffect.new);
  }

  Iterable<D_CT_ColorChangeEffect> get clrChange {
    return node
        .findElements(
          'clrChange',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ColorChangeEffect.new);
  }

  Iterable<D_CT_ColorReplaceEffect> get clrRepl {
    return node
        .findElements(
          'clrRepl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ColorReplaceEffect.new);
  }

  Iterable<D_CT_DuotoneEffect> get duotone {
    return node
        .findElements(
          'duotone',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_DuotoneEffect.new);
  }

  Iterable<D_CT_FillEffect> get fill {
    return node
        .findElements(
          'fill',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FillEffect.new);
  }

  Iterable<D_CT_FillOverlayEffect> get fillOverlay {
    return node
        .findElements(
          'fillOverlay',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_FillOverlayEffect.new);
  }

  Iterable<D_CT_GlowEffect> get glow {
    return node
        .findElements(
          'glow',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GlowEffect.new);
  }

  Iterable<D_CT_GrayscaleEffect> get grayscl {
    return node
        .findElements(
          'grayscl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GrayscaleEffect.new);
  }

  Iterable<D_CT_HSLEffect> get hsl {
    return node
        .findElements(
          'hsl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_HSLEffect.new);
  }

  Iterable<D_CT_InnerShadowEffect> get innerShdw {
    return node
        .findElements(
          'innerShdw',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_InnerShadowEffect.new);
  }

  Iterable<D_CT_LuminanceEffect> get lum {
    return node
        .findElements(
          'lum',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_LuminanceEffect.new);
  }

  Iterable<D_CT_OuterShadowEffect> get outerShdw {
    return node
        .findElements(
          'outerShdw',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_OuterShadowEffect.new);
  }

  Iterable<D_CT_PresetShadowEffect> get prstShdw {
    return node
        .findElements(
          'prstShdw',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PresetShadowEffect.new);
  }

  Iterable<D_CT_ReflectionEffect> get reflection {
    return node
        .findElements(
          'reflection',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ReflectionEffect.new);
  }

  Iterable<D_CT_RelativeOffsetEffect> get relOff {
    return node
        .findElements(
          'relOff',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_RelativeOffsetEffect.new);
  }

  Iterable<D_CT_SoftEdgesEffect> get softEdge {
    return node
        .findElements(
          'softEdge',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_SoftEdgesEffect.new);
  }

  Iterable<D_CT_TintEffect> get tint {
    return node
        .findElements(
          'tint',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TintEffect.new);
  }

  Iterable<D_CT_TransformEffect> get xfrm {
    return node
        .findElements(
          'xfrm',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TransformEffect.new);
  }
}
extension type D_CT_AlphaModulateEffect(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_EffectContainer? get cont {
    final e = node.getElement(
      'cont',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }
}
extension type D_CT_BlendEffect(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_BlendMode get blend {
    return D_ST_BlendMode.fromValue(
      node.getAttribute(
        'blend',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_CT_EffectContainer? get cont {
    final e = node.getElement(
      'cont',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }
}
extension type D_CT_EffectList(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_BlurEffect? get blur {
    final e = node.getElement(
      'blur',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlurEffect(e) : null;
  }

  D_CT_FillOverlayEffect? get fillOverlay {
    final e = node.getElement(
      'fillOverlay',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FillOverlayEffect(e) : null;
  }

  D_CT_GlowEffect? get glow {
    final e = node.getElement(
      'glow',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GlowEffect(e) : null;
  }

  D_CT_InnerShadowEffect? get innerShdw {
    final e = node.getElement(
      'innerShdw',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_InnerShadowEffect(e) : null;
  }

  D_CT_OuterShadowEffect? get outerShdw {
    final e = node.getElement(
      'outerShdw',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OuterShadowEffect(e) : null;
  }

  D_CT_PresetShadowEffect? get prstShdw {
    final e = node.getElement(
      'prstShdw',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetShadowEffect(e) : null;
  }

  D_CT_ReflectionEffect? get reflection {
    final e = node.getElement(
      'reflection',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ReflectionEffect(e) : null;
  }

  D_CT_SoftEdgesEffect? get softEdge {
    final e = node.getElement(
      'softEdge',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SoftEdgesEffect(e) : null;
  }
}
extension type D_CT_EffectProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }
}
extension type D_CT_GeomGuide(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get fmla {
    return node.getAttribute(
      'fmla',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_GeomGuideList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_GeomGuide> get gd {
    return node
        .findElements(
          'gd',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_GeomGuide.new);
  }
}
extension type D_CT_AdjPoint2D(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_GeomRect(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_XYAdjustHandle(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get gdRefX {
    return node.getAttribute(
      'gdRefX',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get gdRefY {
    return node.getAttribute(
      'gdRefY',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_AdjPoint2D? get pos {
    final e = node.getElement(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AdjPoint2D(e) : null;
  }
}
extension type D_CT_PolarAdjustHandle(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get gdRefR {
    return node.getAttribute(
      'gdRefR',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get gdRefAng {
    return node.getAttribute(
      'gdRefAng',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_AdjPoint2D? get pos {
    final e = node.getElement(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AdjPoint2D(e) : null;
  }
}
extension type D_CT_ConnectionSite(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_AdjPoint2D? get pos {
    final e = node.getElement(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AdjPoint2D(e) : null;
  }
}
extension type D_CT_AdjustHandleList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_XYAdjustHandle> get ahXY {
    return node
        .findElements(
          'ahXY',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_XYAdjustHandle.new);
  }

  Iterable<D_CT_PolarAdjustHandle> get ahPolar {
    return node
        .findElements(
          'ahPolar',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_PolarAdjustHandle.new);
  }
}
extension type D_CT_ConnectionSiteList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_ConnectionSite> get cxn {
    return node
        .findElements(
          'cxn',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ConnectionSite.new);
  }
}
extension type D_CT_Connection(_i1.XmlElement node) implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  int get idx {
    return int.parse(
      node.getAttribute(
        'idx',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    );
  }
}
extension type D_CT_Path2DMoveTo(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_AdjPoint2D? get pt {
    final e = node.getElement(
      'pt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AdjPoint2D(e) : null;
  }
}
extension type D_CT_Path2DLineTo(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_AdjPoint2D? get pt {
    final e = node.getElement(
      'pt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AdjPoint2D(e) : null;
  }
}
extension type D_CT_Path2DArcTo(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_Path2DQuadBezierTo(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_AdjPoint2D> get pt {
    return node
        .findElements(
          'pt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AdjPoint2D.new);
  }
}
extension type D_CT_Path2DCubicBezierTo(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_AdjPoint2D> get pt {
    return node
        .findElements(
          'pt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_AdjPoint2D.new);
  }
}
extension type D_CT_Path2DClose(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_Path2D(_i1.XmlElement node) implements _i1.XmlElement {
  String? get w {
    return node.getAttribute(
      'w',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get h {
    return node.getAttribute(
      'h',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_PathFillMode? get fill {
    return node.getAttribute(
              'fill',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_PathFillMode.fromValue(
            node.getAttribute(
              'fill',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get stroke {
    return node.getAttribute(
              'stroke',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'stroke',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'stroke',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get extrusionOk {
    return node.getAttribute(
              'extrusionOk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'extrusionOk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'extrusionOk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  Iterable<D_CT_Path2DClose> get close {
    return node
        .findElements(
          'close',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Path2DClose.new);
  }

  Iterable<D_CT_Path2DMoveTo> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Path2DMoveTo.new);
  }

  Iterable<D_CT_Path2DLineTo> get lnTo {
    return node
        .findElements(
          'lnTo',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Path2DLineTo.new);
  }

  Iterable<D_CT_Path2DArcTo> get arcTo {
    return node
        .findElements(
          'arcTo',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Path2DArcTo.new);
  }

  Iterable<D_CT_Path2DQuadBezierTo> get quadBezTo {
    return node
        .findElements(
          'quadBezTo',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Path2DQuadBezierTo.new);
  }

  Iterable<D_CT_Path2DCubicBezierTo> get cubicBezTo {
    return node
        .findElements(
          'cubicBezTo',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Path2DCubicBezierTo.new);
  }
}
extension type D_CT_Path2DList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_Path2D> get path {
    return node
        .findElements(
          'path',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_Path2D.new);
  }
}
extension type D_CT_PresetGeometry2D(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_ShapeType get prst {
    return D_ST_ShapeType.fromValue(
      node.getAttribute(
        'prst',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_CT_GeomGuideList? get avLst {
    final e = node.getElement(
      'avLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GeomGuideList(e) : null;
  }
}
extension type D_CT_PresetTextShape(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_TextShapeType get prst {
    return D_ST_TextShapeType.fromValue(
      node.getAttribute(
        'prst',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_CT_GeomGuideList? get avLst {
    final e = node.getElement(
      'avLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GeomGuideList(e) : null;
  }
}
extension type D_CT_CustomGeometry2D(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_GeomGuideList? get avLst {
    final e = node.getElement(
      'avLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GeomGuideList(e) : null;
  }

  D_CT_GeomGuideList? get gdLst {
    final e = node.getElement(
      'gdLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GeomGuideList(e) : null;
  }

  D_CT_AdjustHandleList? get ahLst {
    final e = node.getElement(
      'ahLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_AdjustHandleList(e) : null;
  }

  D_CT_ConnectionSiteList? get cxnLst {
    final e = node.getElement(
      'cxnLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ConnectionSiteList(e) : null;
  }

  D_CT_GeomRect? get rect {
    final e = node.getElement(
      'rect',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GeomRect(e) : null;
  }

  D_CT_Path2DList? get pathLst {
    final e = node.getElement(
      'pathLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Path2DList(e) : null;
  }
}
extension type D_CT_LineEndProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_LineEndType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_LineEndType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_LineEndWidth? get w {
    return node.getAttribute(
              'w',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_LineEndWidth.fromValue(
            node.getAttribute(
              'w',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_LineEndLength? get len {
    return node.getAttribute(
              'len',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_LineEndLength.fromValue(
            node.getAttribute(
              'len',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type D_CT_LineJoinBevel(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_LineJoinRound(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_LineJoinMiterProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get lim {
    return node.getAttribute(
      'lim',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_PresetLineDashProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_PresetLineDashVal? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_PresetLineDashVal.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type D_CT_DashStop(_i1.XmlElement node) implements _i1.XmlElement {
  String get d {
    return node.getAttribute(
      'd',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get sp {
    return node.getAttribute(
      'sp',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_DashStopList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_DashStop> get ds {
    return node
        .findElements(
          'ds',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_DashStop.new);
  }
}
extension type D_CT_LineProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get w {
    return node.getAttribute(
      'w',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_LineCap? get cap {
    return node.getAttribute(
              'cap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_LineCap.fromValue(
            node.getAttribute(
              'cap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_CompoundLine? get cmpd {
    return node.getAttribute(
              'cmpd',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_CompoundLine.fromValue(
            node.getAttribute(
              'cmpd',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_PenAlignment? get algn {
    return node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_PenAlignment.fromValue(
            node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_PresetLineDashProperties? get prstDash {
    final e = node.getElement(
      'prstDash',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetLineDashProperties(e) : null;
  }

  D_CT_DashStopList? get custDash {
    final e = node.getElement(
      'custDash',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_DashStopList(e) : null;
  }

  D_CT_LineJoinRound? get round {
    final e = node.getElement(
      'round',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineJoinRound(e) : null;
  }

  D_CT_LineJoinBevel? get bevel {
    final e = node.getElement(
      'bevel',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineJoinBevel(e) : null;
  }

  D_CT_LineJoinMiterProperties? get miter {
    final e = node.getElement(
      'miter',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineJoinMiterProperties(e) : null;
  }

  D_CT_LineEndProperties? get headEnd {
    final e = node.getElement(
      'headEnd',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineEndProperties(e) : null;
  }

  D_CT_LineEndProperties? get tailEnd {
    final e = node.getElement(
      'tailEnd',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineEndProperties(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ShapeProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_BlackWhiteMode? get bwMode {
    return node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_BlackWhiteMode.fromValue(
            node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_Transform2D? get xfrm {
    final e = node.getElement(
      'xfrm',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Transform2D(e) : null;
  }

  D_CT_CustomGeometry2D? get custGeom {
    final e = node.getElement(
      'custGeom',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_CustomGeometry2D(e) : null;
  }

  D_CT_PresetGeometry2D? get prstGeom {
    final e = node.getElement(
      'prstGeom',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetGeometry2D(e) : null;
  }

  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }

  D_CT_LineProperties? get ln {
    final e = node.getElement(
      'ln',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }

  D_CT_Scene3D? get scene3d {
    final e = node.getElement(
      'scene3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Scene3D(e) : null;
  }

  D_CT_Shape3D? get sp3d {
    final e = node.getElement(
      'sp3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Shape3D(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_GroupShapeProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_BlackWhiteMode? get bwMode {
    return node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_BlackWhiteMode.fromValue(
            node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_GroupTransform2D? get xfrm {
    final e = node.getElement(
      'xfrm',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupTransform2D(e) : null;
  }

  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }

  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }

  D_CT_Scene3D? get scene3d {
    final e = node.getElement(
      'scene3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Scene3D(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_StyleMatrixReference(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get idx {
    return node.getAttribute(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_FontReference(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_FontCollectionIndex get idx {
    return D_ST_FontCollectionIndex.fromValue(
      node.getAttribute(
        'idx',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }
}
extension type D_CT_ShapeStyle(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_StyleMatrixReference? get lnRef {
    final e = node.getElement(
      'lnRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrixReference(e) : null;
  }

  D_CT_StyleMatrixReference? get fillRef {
    final e = node.getElement(
      'fillRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrixReference(e) : null;
  }

  D_CT_StyleMatrixReference? get effectRef {
    final e = node.getElement(
      'effectRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrixReference(e) : null;
  }

  D_CT_FontReference? get fontRef {
    final e = node.getElement(
      'fontRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FontReference(e) : null;
  }
}
extension type D_CT_DefaultShapeDefinition(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBodyProperties? get bodyPr {
    final e = node.getElement(
      'bodyPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBodyProperties(e) : null;
  }

  D_CT_TextListStyle? get lstStyle {
    final e = node.getElement(
      'lstStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextListStyle(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ObjectStyleDefaults(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_DefaultShapeDefinition? get spDef {
    final e = node.getElement(
      'spDef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_DefaultShapeDefinition(e) : null;
  }

  D_CT_DefaultShapeDefinition? get lnDef {
    final e = node.getElement(
      'lnDef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_DefaultShapeDefinition(e) : null;
  }

  D_CT_DefaultShapeDefinition? get txDef {
    final e = node.getElement(
      'txDef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_DefaultShapeDefinition(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_EmptyElement(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_ColorMapping(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_ColorSchemeIndex get bg1 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'bg1',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get tx1 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'tx1',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get bg2 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'bg2',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get tx2 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'tx2',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get accent1 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'accent1',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get accent2 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'accent2',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get accent3 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'accent3',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get accent4 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'accent4',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get accent5 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'accent5',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get accent6 {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'accent6',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get hlink {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'hlink',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_ST_ColorSchemeIndex get folHlink {
    return D_ST_ColorSchemeIndex.fromValue(
      node.getAttribute(
        'folHlink',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ColorMappingOverride(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_EmptyElement? get masterClrMapping {
    final e = node.getElement(
      'masterClrMapping',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EmptyElement(e) : null;
  }

  D_CT_ColorMapping? get overrideClrMapping {
    final e = node.getElement(
      'overrideClrMapping',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ColorMapping(e) : null;
  }
}
extension type D_CT_ColorSchemeAndMapping(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ColorScheme? get clrScheme {
    final e = node.getElement(
      'clrScheme',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ColorScheme(e) : null;
  }

  D_CT_ColorMapping? get clrMap {
    final e = node.getElement(
      'clrMap',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ColorMapping(e) : null;
  }
}
extension type D_CT_ColorSchemeList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_ColorSchemeAndMapping> get extraClrScheme {
    return node
        .findElements(
          'extraClrScheme',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_ColorSchemeAndMapping.new);
  }
}
extension type D_CT_OfficeStyleSheet(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_BaseStyles? get themeElements {
    final e = node.getElement(
      'themeElements',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BaseStyles(e) : null;
  }

  D_CT_ObjectStyleDefaults? get objectDefaults {
    final e = node.getElement(
      'objectDefaults',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ObjectStyleDefaults(e) : null;
  }

  D_CT_ColorSchemeList? get extraClrSchemeLst {
    final e = node.getElement(
      'extraClrSchemeLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ColorSchemeList(e) : null;
  }

  D_CT_CustomColorList? get custClrLst {
    final e = node.getElement(
      'custClrLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_CustomColorList(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_BaseStylesOverride(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ColorScheme? get clrScheme {
    final e = node.getElement(
      'clrScheme',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ColorScheme(e) : null;
  }

  D_CT_FontScheme? get fontScheme {
    final e = node.getElement(
      'fontScheme',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FontScheme(e) : null;
  }

  D_CT_StyleMatrix? get fmtScheme {
    final e = node.getElement(
      'fmtScheme',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrix(e) : null;
  }
}
extension type D_CT_ClipboardStyleSheet(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_BaseStyles? get themeElements {
    final e = node.getElement(
      'themeElements',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BaseStyles(e) : null;
  }

  D_CT_ColorMapping? get clrMap {
    final e = node.getElement(
      'clrMap',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ColorMapping(e) : null;
  }
}
extension type D_CT_TableCellProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_TextVerticalType? get vert {
    return node.getAttribute(
              'vert',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextVerticalType.fromValue(
            node.getAttribute(
              'vert',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_TextAnchoringType? get anchor {
    return node.getAttribute(
              'anchor',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextAnchoringType.fromValue(
            node.getAttribute(
              'anchor',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get anchorCtr {
    return node.getAttribute(
              'anchorCtr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'anchorCtr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'anchorCtr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_ST_TextHorzOverflowType? get horzOverflow {
    return node.getAttribute(
              'horzOverflow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextHorzOverflowType.fromValue(
            node.getAttribute(
              'horzOverflow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_LineProperties? get lnL {
    final e = node.getElement(
      'lnL',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_LineProperties? get lnR {
    final e = node.getElement(
      'lnR',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_LineProperties? get lnT {
    final e = node.getElement(
      'lnT',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_LineProperties? get lnB {
    final e = node.getElement(
      'lnB',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_LineProperties? get lnTlToBr {
    final e = node.getElement(
      'lnTlToBr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_LineProperties? get lnBlToTr {
    final e = node.getElement(
      'lnBlToTr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_Cell3D? get cell3D {
    final e = node.getElement(
      'cell3D',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Cell3D(e) : null;
  }

  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }

  D_CT_Headers? get headers {
    final e = node.getElement(
      'headers',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Headers(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Headers(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<String> get header {
    return node
        .findElements(
          'header',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map((e) => e.innerText);
  }
}
extension type D_CT_TableCol(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TableGrid(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_TableCol> get gridCol {
    return node
        .findElements(
          'gridCol',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TableCol.new);
  }
}
extension type D_CT_TableCell(_i1.XmlElement node) implements _i1.XmlElement {
  int? get rowSpan {
    return node.getAttribute(
              'rowSpan',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rowSpan',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  int? get gridSpan {
    return node.getAttribute(
              'gridSpan',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'gridSpan',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get hMerge {
    return node.getAttribute(
              'hMerge',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hMerge',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hMerge',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get vMerge {
    return node.getAttribute(
              'vMerge',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'vMerge',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'vMerge',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  String? get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_TextBody? get txBody {
    final e = node.getElement(
      'txBody',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_TableCellProperties? get tcPr {
    final e = node.getElement(
      'tcPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TableCellProperties(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TableRow(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_TableCell> get tc {
    return node
        .findElements(
          'tc',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TableCell.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TableProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get rtl {
    return node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get firstRow {
    return node.getAttribute(
              'firstRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'firstRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'firstRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get firstCol {
    return node.getAttribute(
              'firstCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'firstCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'firstCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get lastRow {
    return node.getAttribute(
              'lastRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'lastRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'lastRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get lastCol {
    return node.getAttribute(
              'lastCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'lastCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'lastCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get bandRow {
    return node.getAttribute(
              'bandRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'bandRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'bandRow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get bandCol {
    return node.getAttribute(
              'bandCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'bandCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'bandCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }

  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }

  D_CT_TableStyle? get tableStyle {
    final e = node.getElement(
      'tableStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TableStyle(e) : null;
  }

  String? get tableStyleId {
    final e = node.getElement(
      'tableStyleId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Table(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_TableProperties? get tblPr {
    final e = node.getElement(
      'tblPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TableProperties(e) : null;
  }

  D_CT_TableGrid? get tblGrid {
    final e = node.getElement(
      'tblGrid',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TableGrid(e) : null;
  }

  Iterable<D_CT_TableRow> get tr {
    return node
        .findElements(
          'tr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TableRow.new);
  }
}
extension type D_CT_Cell3D(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_PresetMaterialType? get prstMaterial {
    return node.getAttribute(
              'prstMaterial',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_PresetMaterialType.fromValue(
            node.getAttribute(
              'prstMaterial',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_Bevel? get bevel {
    final e = node.getElement(
      'bevel',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Bevel(e) : null;
  }

  D_CT_LightRig? get lightRig {
    final e = node.getElement(
      'lightRig',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LightRig(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ThemeableLineStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_LineProperties? get ln {
    final e = node.getElement(
      'ln',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_StyleMatrixReference? get lnRef {
    final e = node.getElement(
      'lnRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrixReference(e) : null;
  }
}
extension type D_CT_TableStyleTextStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_OnOffStyleType? get b {
    return node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_OnOffStyleType.fromValue(
            node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_OnOffStyleType? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_OnOffStyleType.fromValue(
            node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_CT_FontCollection? get font {
    final e = node.getElement(
      'font',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FontCollection(e) : null;
  }

  D_CT_FontReference? get fontRef {
    final e = node.getElement(
      'fontRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FontReference(e) : null;
  }

  D_CT_ScRgbColor? get scrgbClr {
    final e = node.getElement(
      'scrgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ScRgbColor(e) : null;
  }

  D_CT_SRgbColor? get srgbClr {
    final e = node.getElement(
      'srgbClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SRgbColor(e) : null;
  }

  D_CT_HslColor? get hslClr {
    final e = node.getElement(
      'hslClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_HslColor(e) : null;
  }

  D_CT_SystemColor? get sysClr {
    final e = node.getElement(
      'sysClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SystemColor(e) : null;
  }

  D_CT_SchemeColor? get schemeClr {
    final e = node.getElement(
      'schemeClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SchemeColor(e) : null;
  }

  D_CT_PresetColor? get prstClr {
    final e = node.getElement(
      'prstClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetColor(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TableCellBorderStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ThemeableLineStyle? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ThemeableLineStyle(e) : null;
  }

  D_CT_ThemeableLineStyle? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ThemeableLineStyle(e) : null;
  }

  D_CT_ThemeableLineStyle? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ThemeableLineStyle(e) : null;
  }

  D_CT_ThemeableLineStyle? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ThemeableLineStyle(e) : null;
  }

  D_CT_ThemeableLineStyle? get insideH {
    final e = node.getElement(
      'insideH',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ThemeableLineStyle(e) : null;
  }

  D_CT_ThemeableLineStyle? get insideV {
    final e = node.getElement(
      'insideV',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ThemeableLineStyle(e) : null;
  }

  D_CT_ThemeableLineStyle? get tl2br {
    final e = node.getElement(
      'tl2br',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ThemeableLineStyle(e) : null;
  }

  D_CT_ThemeableLineStyle? get tr2bl {
    final e = node.getElement(
      'tr2bl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_ThemeableLineStyle(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TableBackgroundStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_FillProperties? get fill {
    final e = node.getElement(
      'fill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FillProperties(e) : null;
  }

  D_CT_StyleMatrixReference? get fillRef {
    final e = node.getElement(
      'fillRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrixReference(e) : null;
  }

  D_CT_EffectProperties? get effect {
    final e = node.getElement(
      'effect',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectProperties(e) : null;
  }

  D_CT_StyleMatrixReference? get effectRef {
    final e = node.getElement(
      'effectRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrixReference(e) : null;
  }
}
extension type D_CT_TableStyleCellStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TableCellBorderStyle? get tcBdr {
    final e = node.getElement(
      'tcBdr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TableCellBorderStyle(e) : null;
  }

  D_CT_FillProperties? get fill {
    final e = node.getElement(
      'fill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FillProperties(e) : null;
  }

  D_CT_StyleMatrixReference? get fillRef {
    final e = node.getElement(
      'fillRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_StyleMatrixReference(e) : null;
  }

  D_CT_Cell3D? get cell3D {
    final e = node.getElement(
      'cell3D',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Cell3D(e) : null;
  }
}
extension type D_CT_TablePartStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TableStyleTextStyle? get tcTxStyle {
    final e = node.getElement(
      'tcTxStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TableStyleTextStyle(e) : null;
  }

  D_CT_TableStyleCellStyle? get tcStyle {
    final e = node.getElement(
      'tcStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TableStyleCellStyle(e) : null;
  }
}
extension type D_CT_TableStyle(_i1.XmlElement node) implements _i1.XmlElement {
  String get styleId {
    return node.getAttribute(
      'styleId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String get styleName {
    return node.getAttribute(
      'styleName',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  D_CT_TableBackgroundStyle? get tblBg {
    final e = node.getElement(
      'tblBg',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TableBackgroundStyle(e) : null;
  }

  D_CT_TablePartStyle? get wholeTbl {
    final e = node.getElement(
      'wholeTbl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get band1H {
    final e = node.getElement(
      'band1H',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get band2H {
    final e = node.getElement(
      'band2H',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get band1V {
    final e = node.getElement(
      'band1V',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get band2V {
    final e = node.getElement(
      'band2V',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get lastCol {
    final e = node.getElement(
      'lastCol',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get firstCol {
    final e = node.getElement(
      'firstCol',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get lastRow {
    final e = node.getElement(
      'lastRow',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get seCell {
    final e = node.getElement(
      'seCell',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get swCell {
    final e = node.getElement(
      'swCell',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get firstRow {
    final e = node.getElement(
      'firstRow',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get neCell {
    final e = node.getElement(
      'neCell',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_TablePartStyle? get nwCell {
    final e = node.getElement(
      'nwCell',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TablePartStyle(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TableStyleList(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get def {
    return node.getAttribute(
      'def',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  Iterable<D_CT_TableStyle> get tblStyle {
    return node
        .findElements(
          'tblStyle',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TableStyle.new);
  }
}
extension type D_CT_TextParagraph(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TextParagraphProperties? get pPr {
    final e = node.getElement(
      'pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  Iterable<D_CT_RegularTextRun> get r {
    return node
        .findElements(
          'r',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_RegularTextRun.new);
  }

  Iterable<D_CT_TextLineBreak> get br {
    return node
        .findElements(
          'br',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TextLineBreak.new);
  }

  Iterable<D_CT_TextField> get fld {
    return node
        .findElements(
          'fld',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TextField.new);
  }

  D_CT_TextCharacterProperties? get endParaRPr {
    final e = node.getElement(
      'endParaRPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextCharacterProperties(e) : null;
  }
}
extension type D_CT_TextListStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TextParagraphProperties? get defPPr {
    final e = node.getElement(
      'defPPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl1pPr {
    final e = node.getElement(
      'lvl1pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl2pPr {
    final e = node.getElement(
      'lvl2pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl3pPr {
    final e = node.getElement(
      'lvl3pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl4pPr {
    final e = node.getElement(
      'lvl4pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl5pPr {
    final e = node.getElement(
      'lvl5pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl6pPr {
    final e = node.getElement(
      'lvl6pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl7pPr {
    final e = node.getElement(
      'lvl7pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl8pPr {
    final e = node.getElement(
      'lvl8pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get lvl9pPr {
    final e = node.getElement(
      'lvl9pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TextNormalAutofit(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextShapeAutofit(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextNoAutofit(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextBodyProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get rot {
    return node.getAttribute(
      'rot',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get spcFirstLastPara {
    return node.getAttribute(
              'spcFirstLastPara',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'spcFirstLastPara',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'spcFirstLastPara',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_ST_TextVertOverflowType? get vertOverflow {
    return node.getAttribute(
              'vertOverflow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextVertOverflowType.fromValue(
            node.getAttribute(
              'vertOverflow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_TextHorzOverflowType? get horzOverflow {
    return node.getAttribute(
              'horzOverflow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextHorzOverflowType.fromValue(
            node.getAttribute(
              'horzOverflow',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_TextVerticalType? get vert {
    return node.getAttribute(
              'vert',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextVerticalType.fromValue(
            node.getAttribute(
              'vert',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_TextWrappingType? get wrap {
    return node.getAttribute(
              'wrap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextWrappingType.fromValue(
            node.getAttribute(
              'wrap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  String? get numCol {
    return node.getAttribute(
      'numCol',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get spcCol {
    return node.getAttribute(
      'spcCol',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get rtlCol {
    return node.getAttribute(
              'rtlCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rtlCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rtlCol',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get fromWordArt {
    return node.getAttribute(
              'fromWordArt',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fromWordArt',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fromWordArt',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_ST_TextAnchoringType? get anchor {
    return node.getAttribute(
              'anchor',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextAnchoringType.fromValue(
            node.getAttribute(
              'anchor',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get anchorCtr {
    return node.getAttribute(
              'anchorCtr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'anchorCtr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'anchorCtr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get forceAA {
    return node.getAttribute(
              'forceAA',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'forceAA',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'forceAA',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get upright {
    return node.getAttribute(
              'upright',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'upright',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'upright',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get compatLnSpc {
    return node.getAttribute(
              'compatLnSpc',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'compatLnSpc',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'compatLnSpc',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_PresetTextShape? get prstTxWarp {
    final e = node.getElement(
      'prstTxWarp',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PresetTextShape(e) : null;
  }

  D_CT_TextNoAutofit? get noAutofit {
    final e = node.getElement(
      'noAutofit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextNoAutofit(e) : null;
  }

  D_CT_TextNormalAutofit? get normAutofit {
    final e = node.getElement(
      'normAutofit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextNormalAutofit(e) : null;
  }

  D_CT_TextShapeAutofit? get spAutoFit {
    final e = node.getElement(
      'spAutoFit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextShapeAutofit(e) : null;
  }

  D_CT_Scene3D? get scene3d {
    final e = node.getElement(
      'scene3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Scene3D(e) : null;
  }

  D_CT_Shape3D? get sp3d {
    final e = node.getElement(
      'sp3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Shape3D(e) : null;
  }

  D_CT_FlatText? get flatTx {
    final e = node.getElement(
      'flatTx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_FlatText(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TextBody(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_TextBodyProperties? get bodyPr {
    final e = node.getElement(
      'bodyPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBodyProperties(e) : null;
  }

  D_CT_TextListStyle? get lstStyle {
    final e = node.getElement(
      'lstStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextListStyle(e) : null;
  }

  Iterable<D_CT_TextParagraph> get p {
    return node
        .findElements(
          'p',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TextParagraph.new);
  }
}
extension type D_CT_TextBulletColorFollowText(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextBulletSizeFollowText(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextBulletSizePercent(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_TextBulletSizePoint(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_TextBulletTypefaceFollowText(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextAutonumberBullet(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_TextAutonumberScheme get type {
    return D_ST_TextAutonumberScheme.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
      )!,
    )!;
  }

  String? get startAt {
    return node.getAttribute(
      'startAt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }
}
extension type D_CT_TextCharBullet(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get char {
    return node.getAttribute(
      'char',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_TextBlipBullet(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Blip? get blip {
    final e = node.getElement(
      'blip',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Blip(e) : null;
  }
}
extension type D_CT_TextNoBullet(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextFont(_i1.XmlElement node) implements _i1.XmlElement {
  String get typeface {
    return node.getAttribute(
      'typeface',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String? get panose {
    return node.getAttribute(
      'panose',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_PitchFamily? get pitchFamily {
    return node.getAttribute(
              'pitchFamily',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_PitchFamily.fromValue(
            node.getAttribute(
              'pitchFamily',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  int? get charset {
    return node.getAttribute(
              'charset',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'charset',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type D_CT_TextUnderlineLineFollowText(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextUnderlineFillFollowText(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextUnderlineFillGroupWrapper(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }
}
extension type D_CT_TextCharacterProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get kumimoji {
    return node.getAttribute(
              'kumimoji',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'kumimoji',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'kumimoji',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  String? get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get altLang {
    return node.getAttribute(
      'altLang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get sz {
    return node.getAttribute(
      'sz',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get b {
    return node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_ST_TextUnderlineType? get u {
    return node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextUnderlineType.fromValue(
            node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  D_ST_TextStrikeType? get strike {
    return node.getAttribute(
              'strike',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextStrikeType.fromValue(
            node.getAttribute(
              'strike',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  String? get kern {
    return node.getAttribute(
      'kern',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_TextCapsType? get cap {
    return node.getAttribute(
              'cap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextCapsType.fromValue(
            node.getAttribute(
              'cap',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get normalizeH {
    return node.getAttribute(
              'normalizeH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'normalizeH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'normalizeH',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  String? get baseline {
    return node.getAttribute(
      'baseline',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  bool? get noProof {
    return node.getAttribute(
              'noProof',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'noProof',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'noProof',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get dirty {
    return node.getAttribute(
              'dirty',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dirty',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dirty',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get err {
    return node.getAttribute(
              'err',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'err',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'err',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get smtClean {
    return node.getAttribute(
              'smtClean',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'smtClean',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'smtClean',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  int? get smtId {
    return node.getAttribute(
              'smtId',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'smtId',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  String? get bmk {
    return node.getAttribute(
      'bmk',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_LineProperties? get ln {
    final e = node.getElement(
      'ln',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }

  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }

  D_CT_Color? get highlight {
    final e = node.getElement(
      'highlight',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_TextUnderlineLineFollowText? get uLnTx {
    final e = node.getElement(
      'uLnTx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextUnderlineLineFollowText(e) : null;
  }

  D_CT_LineProperties? get uLn {
    final e = node.getElement(
      'uLn',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_LineProperties(e) : null;
  }

  D_CT_TextUnderlineFillFollowText? get uFillTx {
    final e = node.getElement(
      'uFillTx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextUnderlineFillFollowText(e) : null;
  }

  D_CT_TextUnderlineFillGroupWrapper? get uFill {
    final e = node.getElement(
      'uFill',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextUnderlineFillGroupWrapper(e) : null;
  }

  D_CT_TextFont? get latin {
    final e = node.getElement(
      'latin',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  D_CT_TextFont? get ea {
    final e = node.getElement(
      'ea',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  D_CT_TextFont? get cs {
    final e = node.getElement(
      'cs',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  D_CT_TextFont? get sym {
    final e = node.getElement(
      'sym',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  D_CT_Hyperlink? get hlinkClick {
    final e = node.getElement(
      'hlinkClick',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Hyperlink(e) : null;
  }

  D_CT_Hyperlink? get hlinkMouseOver {
    final e = node.getElement(
      'hlinkMouseOver',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Hyperlink(e) : null;
  }

  D_CT_Boolean? get rtl {
    final e = node.getElement(
      'rtl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Boolean(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            '1' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'true' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'on';
  }
}
extension type D_CT_TextSpacingPercent(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_TextSpacingPoint(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }
}
extension type D_CT_TextTabStop(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_TextTabAlignType? get algn {
    return node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextTabAlignType.fromValue(
            node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }
}
extension type D_CT_TextTabStopList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_TextTabStop> get tab {
    return node
        .findElements(
          'tab',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
        )
        .map(D_CT_TextTabStop.new);
  }
}
extension type D_CT_TextLineBreak(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TextCharacterProperties? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextCharacterProperties(e) : null;
  }
}
extension type D_CT_TextSpacing(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_TextSpacingPercent? get spcPct {
    final e = node.getElement(
      'spcPct',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextSpacingPercent(e) : null;
  }

  D_CT_TextSpacingPoint? get spcPts {
    final e = node.getElement(
      'spcPts',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextSpacingPoint(e) : null;
  }
}
extension type D_CT_TextParagraphProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get marL {
    return node.getAttribute(
      'marL',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get marR {
    return node.getAttribute(
      'marR',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get lvl {
    return node.getAttribute(
      'lvl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  String? get indent {
    return node.getAttribute(
      'indent',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_ST_TextAlignType? get algn {
    return node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextAlignType.fromValue(
            node.getAttribute(
              'algn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get rtl {
    return node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get eaLnBrk {
    return node.getAttribute(
              'eaLnBrk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'eaLnBrk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'eaLnBrk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_ST_TextFontAlignType? get fontAlgn {
    return node.getAttribute(
              'fontAlgn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) !=
            null
        ? D_ST_TextFontAlignType.fromValue(
            node.getAttribute(
              'fontAlgn',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            )!,
          )
        : null;
  }

  bool? get latinLnBrk {
    return node.getAttribute(
              'latinLnBrk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'latinLnBrk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'latinLnBrk',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  bool? get hangingPunct {
    return node.getAttribute(
              'hangingPunct',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hangingPunct',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hangingPunct',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/main',
            ) ==
            'on';
  }

  D_CT_TextSpacing? get lnSpc {
    final e = node.getElement(
      'lnSpc',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextSpacing(e) : null;
  }

  D_CT_TextSpacing? get spcBef {
    final e = node.getElement(
      'spcBef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextSpacing(e) : null;
  }

  D_CT_TextSpacing? get spcAft {
    final e = node.getElement(
      'spcAft',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextSpacing(e) : null;
  }

  D_CT_TextBulletColorFollowText? get buClrTx {
    final e = node.getElement(
      'buClrTx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBulletColorFollowText(e) : null;
  }

  D_CT_Color? get buClr {
    final e = node.getElement(
      'buClr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_TextBulletSizeFollowText? get buSzTx {
    final e = node.getElement(
      'buSzTx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBulletSizeFollowText(e) : null;
  }

  D_CT_TextBulletSizePercent? get buSzPct {
    final e = node.getElement(
      'buSzPct',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBulletSizePercent(e) : null;
  }

  D_CT_TextBulletSizePoint? get buSzPts {
    final e = node.getElement(
      'buSzPts',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBulletSizePoint(e) : null;
  }

  D_CT_TextBulletTypefaceFollowText? get buFontTx {
    final e = node.getElement(
      'buFontTx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBulletTypefaceFollowText(e) : null;
  }

  D_CT_TextFont? get buFont {
    final e = node.getElement(
      'buFont',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  D_CT_TextNoBullet? get buNone {
    final e = node.getElement(
      'buNone',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextNoBullet(e) : null;
  }

  D_CT_TextAutonumberBullet? get buAutoNum {
    final e = node.getElement(
      'buAutoNum',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextAutonumberBullet(e) : null;
  }

  D_CT_TextCharBullet? get buChar {
    final e = node.getElement(
      'buChar',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextCharBullet(e) : null;
  }

  D_CT_TextBlipBullet? get buBlip {
    final e = node.getElement(
      'buBlip',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextBlipBullet(e) : null;
  }

  D_CT_TextTabStopList? get tabLst {
    final e = node.getElement(
      'tabLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextTabStopList(e) : null;
  }

  D_CT_TextCharacterProperties? get defRPr {
    final e = node.getElement(
      'defRPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextCharacterProperties(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_TextField(_i1.XmlElement node) implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    )!;
  }

  String? get type {
    return node.getAttribute(
      'type',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
  }

  D_CT_TextCharacterProperties? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextCharacterProperties(e) : null;
  }

  D_CT_TextParagraphProperties? get pPr {
    final e = node.getElement(
      'pPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextParagraphProperties(e) : null;
  }

  String? get t {
    final e = node.getElement(
      't',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? e.innerText : null;
  }
}
extension type D_CT_RegularTextRun(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TextCharacterProperties? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? D_CT_TextCharacterProperties(e) : null;
  }

  String? get t {
    final e = node.getElement(
      't',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/main',
    );
    return e != null ? e.innerText : null;
  }
}

enum D_ST_FontCollectionIndex {
  major('major'),
  minor('minor'),
  none('none');

  const D_ST_FontCollectionIndex(this.value);

  final String value;

  static D_ST_FontCollectionIndex? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ColorSchemeIndex {
  dk1('dk1'),
  lt1('lt1'),
  dk2('dk2'),
  lt2('lt2'),
  accent1('accent1'),
  accent2('accent2'),
  accent3('accent3'),
  accent4('accent4'),
  accent5('accent5'),
  accent6('accent6'),
  hlink('hlink'),
  folHlink('folHlink');

  const D_ST_ColorSchemeIndex(this.value);

  final String value;

  static D_ST_ColorSchemeIndex? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_SystemColorVal {
  scrollBar('scrollBar'),
  background('background'),
  activeCaption('activeCaption'),
  inactiveCaption('inactiveCaption'),
  menu('menu'),
  window('window'),
  windowFrame('windowFrame'),
  menuText('menuText'),
  windowText('windowText'),
  captionText('captionText'),
  activeBorder('activeBorder'),
  inactiveBorder('inactiveBorder'),
  appWorkspace('appWorkspace'),
  highlight('highlight'),
  highlightText('highlightText'),
  btnFace('btnFace'),
  btnShadow('btnShadow'),
  grayText('grayText'),
  btnText('btnText'),
  inactiveCaptionText('inactiveCaptionText'),
  btnHighlight('btnHighlight'),
  v3dDkShadow('3dDkShadow'),
  v3dLight('3dLight'),
  infoText('infoText'),
  infoBk('infoBk'),
  hotLight('hotLight'),
  gradientActiveCaption('gradientActiveCaption'),
  gradientInactiveCaption('gradientInactiveCaption'),
  menuHighlight('menuHighlight'),
  menuBar('menuBar');

  const D_ST_SystemColorVal(this.value);

  final String value;

  static D_ST_SystemColorVal? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_SchemeColorVal {
  bg1('bg1'),
  tx1('tx1'),
  bg2('bg2'),
  tx2('tx2'),
  accent1('accent1'),
  accent2('accent2'),
  accent3('accent3'),
  accent4('accent4'),
  accent5('accent5'),
  accent6('accent6'),
  hlink('hlink'),
  folHlink('folHlink'),
  phClr('phClr'),
  dk1('dk1'),
  lt1('lt1'),
  dk2('dk2'),
  lt2('lt2');

  const D_ST_SchemeColorVal(this.value);

  final String value;

  static D_ST_SchemeColorVal? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PresetColorVal {
  aliceBlue('aliceBlue'),
  antiqueWhite('antiqueWhite'),
  aqua('aqua'),
  aquamarine('aquamarine'),
  azure('azure'),
  beige('beige'),
  bisque('bisque'),
  black('black'),
  blanchedAlmond('blanchedAlmond'),
  blue('blue'),
  blueViolet('blueViolet'),
  brown('brown'),
  burlyWood('burlyWood'),
  cadetBlue('cadetBlue'),
  chartreuse('chartreuse'),
  chocolate('chocolate'),
  coral('coral'),
  cornflowerBlue('cornflowerBlue'),
  cornsilk('cornsilk'),
  crimson('crimson'),
  cyan('cyan'),
  darkBlue('darkBlue'),
  darkCyan('darkCyan'),
  darkGoldenrod('darkGoldenrod'),
  darkGray('darkGray'),
  darkGrey('darkGrey'),
  darkGreen('darkGreen'),
  darkKhaki('darkKhaki'),
  darkMagenta('darkMagenta'),
  darkOliveGreen('darkOliveGreen'),
  darkOrange('darkOrange'),
  darkOrchid('darkOrchid'),
  darkRed('darkRed'),
  darkSalmon('darkSalmon'),
  darkSeaGreen('darkSeaGreen'),
  darkSlateBlue('darkSlateBlue'),
  darkSlateGray('darkSlateGray'),
  darkSlateGrey('darkSlateGrey'),
  darkTurquoise('darkTurquoise'),
  darkViolet('darkViolet'),
  dkBlue('dkBlue'),
  dkCyan('dkCyan'),
  dkGoldenrod('dkGoldenrod'),
  dkGray('dkGray'),
  dkGrey('dkGrey'),
  dkGreen('dkGreen'),
  dkKhaki('dkKhaki'),
  dkMagenta('dkMagenta'),
  dkOliveGreen('dkOliveGreen'),
  dkOrange('dkOrange'),
  dkOrchid('dkOrchid'),
  dkRed('dkRed'),
  dkSalmon('dkSalmon'),
  dkSeaGreen('dkSeaGreen'),
  dkSlateBlue('dkSlateBlue'),
  dkSlateGray('dkSlateGray'),
  dkSlateGrey('dkSlateGrey'),
  dkTurquoise('dkTurquoise'),
  dkViolet('dkViolet'),
  deepPink('deepPink'),
  deepSkyBlue('deepSkyBlue'),
  dimGray('dimGray'),
  dimGrey('dimGrey'),
  dodgerBlue('dodgerBlue'),
  firebrick('firebrick'),
  floralWhite('floralWhite'),
  forestGreen('forestGreen'),
  fuchsia('fuchsia'),
  gainsboro('gainsboro'),
  ghostWhite('ghostWhite'),
  gold('gold'),
  goldenrod('goldenrod'),
  gray('gray'),
  grey('grey'),
  green('green'),
  greenYellow('greenYellow'),
  honeydew('honeydew'),
  hotPink('hotPink'),
  indianRed('indianRed'),
  indigo('indigo'),
  ivory('ivory'),
  khaki('khaki'),
  lavender('lavender'),
  lavenderBlush('lavenderBlush'),
  lawnGreen('lawnGreen'),
  lemonChiffon('lemonChiffon'),
  lightBlue('lightBlue'),
  lightCoral('lightCoral'),
  lightCyan('lightCyan'),
  lightGoldenrodYellow('lightGoldenrodYellow'),
  lightGray('lightGray'),
  lightGrey('lightGrey'),
  lightGreen('lightGreen'),
  lightPink('lightPink'),
  lightSalmon('lightSalmon'),
  lightSeaGreen('lightSeaGreen'),
  lightSkyBlue('lightSkyBlue'),
  lightSlateGray('lightSlateGray'),
  lightSlateGrey('lightSlateGrey'),
  lightSteelBlue('lightSteelBlue'),
  lightYellow('lightYellow'),
  ltBlue('ltBlue'),
  ltCoral('ltCoral'),
  ltCyan('ltCyan'),
  ltGoldenrodYellow('ltGoldenrodYellow'),
  ltGray('ltGray'),
  ltGrey('ltGrey'),
  ltGreen('ltGreen'),
  ltPink('ltPink'),
  ltSalmon('ltSalmon'),
  ltSeaGreen('ltSeaGreen'),
  ltSkyBlue('ltSkyBlue'),
  ltSlateGray('ltSlateGray'),
  ltSlateGrey('ltSlateGrey'),
  ltSteelBlue('ltSteelBlue'),
  ltYellow('ltYellow'),
  lime('lime'),
  limeGreen('limeGreen'),
  linen('linen'),
  magenta('magenta'),
  maroon('maroon'),
  medAquamarine('medAquamarine'),
  medBlue('medBlue'),
  medOrchid('medOrchid'),
  medPurple('medPurple'),
  medSeaGreen('medSeaGreen'),
  medSlateBlue('medSlateBlue'),
  medSpringGreen('medSpringGreen'),
  medTurquoise('medTurquoise'),
  medVioletRed('medVioletRed'),
  mediumAquamarine('mediumAquamarine'),
  mediumBlue('mediumBlue'),
  mediumOrchid('mediumOrchid'),
  mediumPurple('mediumPurple'),
  mediumSeaGreen('mediumSeaGreen'),
  mediumSlateBlue('mediumSlateBlue'),
  mediumSpringGreen('mediumSpringGreen'),
  mediumTurquoise('mediumTurquoise'),
  mediumVioletRed('mediumVioletRed'),
  midnightBlue('midnightBlue'),
  mintCream('mintCream'),
  mistyRose('mistyRose'),
  moccasin('moccasin'),
  navajoWhite('navajoWhite'),
  navy('navy'),
  oldLace('oldLace'),
  olive('olive'),
  oliveDrab('oliveDrab'),
  orange('orange'),
  orangeRed('orangeRed'),
  orchid('orchid'),
  paleGoldenrod('paleGoldenrod'),
  paleGreen('paleGreen'),
  paleTurquoise('paleTurquoise'),
  paleVioletRed('paleVioletRed'),
  papayaWhip('papayaWhip'),
  peachPuff('peachPuff'),
  peru('peru'),
  pink('pink'),
  plum('plum'),
  powderBlue('powderBlue'),
  purple('purple'),
  red('red'),
  rosyBrown('rosyBrown'),
  royalBlue('royalBlue'),
  saddleBrown('saddleBrown'),
  salmon('salmon'),
  sandyBrown('sandyBrown'),
  seaGreen('seaGreen'),
  seaShell('seaShell'),
  sienna('sienna'),
  silver('silver'),
  skyBlue('skyBlue'),
  slateBlue('slateBlue'),
  slateGray('slateGray'),
  slateGrey('slateGrey'),
  snow('snow'),
  springGreen('springGreen'),
  steelBlue('steelBlue'),
  tan('tan'),
  teal('teal'),
  thistle('thistle'),
  tomato('tomato'),
  turquoise('turquoise'),
  violet('violet'),
  wheat('wheat'),
  white('white'),
  whiteSmoke('whiteSmoke'),
  yellow('yellow'),
  yellowGreen('yellowGreen');

  const D_ST_PresetColorVal(this.value);

  final String value;

  static D_ST_PresetColorVal? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_RectAlignment {
  tl('tl'),
  t('t'),
  tr('tr'),
  l('l'),
  ctr('ctr'),
  r('r'),
  bl('bl'),
  b('b'),
  br('br');

  const D_ST_RectAlignment(this.value);

  final String value;

  static D_ST_RectAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BlackWhiteMode {
  clr('clr'),
  auto('auto'),
  gray('gray'),
  ltGray('ltGray'),
  invGray('invGray'),
  grayWhite('grayWhite'),
  blackGray('blackGray'),
  blackWhite('blackWhite'),
  black('black'),
  white('white'),
  hidden('hidden');

  const D_ST_BlackWhiteMode(this.value);

  final String value;

  static D_ST_BlackWhiteMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ChartBuildStep {
  category('category'),
  ptInCategory('ptInCategory'),
  series('series'),
  ptInSeries('ptInSeries'),
  allPts('allPts'),
  gridLegend('gridLegend');

  const D_ST_ChartBuildStep(this.value);

  final String value;

  static D_ST_ChartBuildStep? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_DgmBuildStep {
  sp('sp'),
  bg('bg');

  const D_ST_DgmBuildStep(this.value);

  final String value;

  static D_ST_DgmBuildStep? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AnimationBuildType {
  allAtOnce('allAtOnce');

  const D_ST_AnimationBuildType(this.value);

  final String value;

  static D_ST_AnimationBuildType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AnimationDgmOnlyBuildType {
  one('one'),
  lvlOne('lvlOne'),
  lvlAtOnce('lvlAtOnce');

  const D_ST_AnimationDgmOnlyBuildType(this.value);

  final String value;

  static D_ST_AnimationDgmOnlyBuildType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AnimationChartOnlyBuildType {
  series('series'),
  category('category'),
  seriesEl('seriesEl'),
  categoryEl('categoryEl');

  const D_ST_AnimationChartOnlyBuildType(this.value);

  final String value;

  static D_ST_AnimationChartOnlyBuildType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PresetCameraType {
  legacyObliqueTopLeft('legacyObliqueTopLeft'),
  legacyObliqueTop('legacyObliqueTop'),
  legacyObliqueTopRight('legacyObliqueTopRight'),
  legacyObliqueLeft('legacyObliqueLeft'),
  legacyObliqueFront('legacyObliqueFront'),
  legacyObliqueRight('legacyObliqueRight'),
  legacyObliqueBottomLeft('legacyObliqueBottomLeft'),
  legacyObliqueBottom('legacyObliqueBottom'),
  legacyObliqueBottomRight('legacyObliqueBottomRight'),
  legacyPerspectiveTopLeft('legacyPerspectiveTopLeft'),
  legacyPerspectiveTop('legacyPerspectiveTop'),
  legacyPerspectiveTopRight('legacyPerspectiveTopRight'),
  legacyPerspectiveLeft('legacyPerspectiveLeft'),
  legacyPerspectiveFront('legacyPerspectiveFront'),
  legacyPerspectiveRight('legacyPerspectiveRight'),
  legacyPerspectiveBottomLeft('legacyPerspectiveBottomLeft'),
  legacyPerspectiveBottom('legacyPerspectiveBottom'),
  legacyPerspectiveBottomRight('legacyPerspectiveBottomRight'),
  orthographicFront('orthographicFront'),
  isometricTopUp('isometricTopUp'),
  isometricTopDown('isometricTopDown'),
  isometricBottomUp('isometricBottomUp'),
  isometricBottomDown('isometricBottomDown'),
  isometricLeftUp('isometricLeftUp'),
  isometricLeftDown('isometricLeftDown'),
  isometricRightUp('isometricRightUp'),
  isometricRightDown('isometricRightDown'),
  isometricOffAxis1Left('isometricOffAxis1Left'),
  isometricOffAxis1Right('isometricOffAxis1Right'),
  isometricOffAxis1Top('isometricOffAxis1Top'),
  isometricOffAxis2Left('isometricOffAxis2Left'),
  isometricOffAxis2Right('isometricOffAxis2Right'),
  isometricOffAxis2Top('isometricOffAxis2Top'),
  isometricOffAxis3Left('isometricOffAxis3Left'),
  isometricOffAxis3Right('isometricOffAxis3Right'),
  isometricOffAxis3Bottom('isometricOffAxis3Bottom'),
  isometricOffAxis4Left('isometricOffAxis4Left'),
  isometricOffAxis4Right('isometricOffAxis4Right'),
  isometricOffAxis4Bottom('isometricOffAxis4Bottom'),
  obliqueTopLeft('obliqueTopLeft'),
  obliqueTop('obliqueTop'),
  obliqueTopRight('obliqueTopRight'),
  obliqueLeft('obliqueLeft'),
  obliqueRight('obliqueRight'),
  obliqueBottomLeft('obliqueBottomLeft'),
  obliqueBottom('obliqueBottom'),
  obliqueBottomRight('obliqueBottomRight'),
  perspectiveFront('perspectiveFront'),
  perspectiveLeft('perspectiveLeft'),
  perspectiveRight('perspectiveRight'),
  perspectiveAbove('perspectiveAbove'),
  perspectiveBelow('perspectiveBelow'),
  perspectiveAboveLeftFacing('perspectiveAboveLeftFacing'),
  perspectiveAboveRightFacing('perspectiveAboveRightFacing'),
  perspectiveContrastingLeftFacing('perspectiveContrastingLeftFacing'),
  perspectiveContrastingRightFacing('perspectiveContrastingRightFacing'),
  perspectiveHeroicLeftFacing('perspectiveHeroicLeftFacing'),
  perspectiveHeroicRightFacing('perspectiveHeroicRightFacing'),
  perspectiveHeroicExtremeLeftFacing('perspectiveHeroicExtremeLeftFacing'),
  perspectiveHeroicExtremeRightFacing('perspectiveHeroicExtremeRightFacing'),
  perspectiveRelaxed('perspectiveRelaxed'),
  perspectiveRelaxedModerately('perspectiveRelaxedModerately');

  const D_ST_PresetCameraType(this.value);

  final String value;

  static D_ST_PresetCameraType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LightRigDirection {
  tl('tl'),
  t('t'),
  tr('tr'),
  l('l'),
  r('r'),
  bl('bl'),
  b('b'),
  br('br');

  const D_ST_LightRigDirection(this.value);

  final String value;

  static D_ST_LightRigDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LightRigType {
  legacyFlat1('legacyFlat1'),
  legacyFlat2('legacyFlat2'),
  legacyFlat3('legacyFlat3'),
  legacyFlat4('legacyFlat4'),
  legacyNormal1('legacyNormal1'),
  legacyNormal2('legacyNormal2'),
  legacyNormal3('legacyNormal3'),
  legacyNormal4('legacyNormal4'),
  legacyHarsh1('legacyHarsh1'),
  legacyHarsh2('legacyHarsh2'),
  legacyHarsh3('legacyHarsh3'),
  legacyHarsh4('legacyHarsh4'),
  threePt('threePt'),
  balanced('balanced'),
  soft('soft'),
  harsh('harsh'),
  flood('flood'),
  contrasting('contrasting'),
  morning('morning'),
  sunrise('sunrise'),
  sunset('sunset'),
  chilly('chilly'),
  freezing('freezing'),
  flat('flat'),
  twoPt('twoPt'),
  glow('glow'),
  brightRoom('brightRoom');

  const D_ST_LightRigType(this.value);

  final String value;

  static D_ST_LightRigType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BevelPresetType {
  relaxedInset('relaxedInset'),
  circle('circle'),
  slope('slope'),
  cross('cross'),
  angle('angle'),
  softRound('softRound'),
  convex('convex'),
  coolSlant('coolSlant'),
  divot('divot'),
  riblet('riblet'),
  hardEdge('hardEdge'),
  artDeco('artDeco');

  const D_ST_BevelPresetType(this.value);

  final String value;

  static D_ST_BevelPresetType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PresetMaterialType {
  legacyMatte('legacyMatte'),
  legacyPlastic('legacyPlastic'),
  legacyMetal('legacyMetal'),
  legacyWireframe('legacyWireframe'),
  matte('matte'),
  plastic('plastic'),
  metal('metal'),
  warmMatte('warmMatte'),
  translucentPowder('translucentPowder'),
  powder('powder'),
  dkEdge('dkEdge'),
  softEdge('softEdge'),
  clear('clear'),
  flat('flat'),
  softmetal('softmetal');

  const D_ST_PresetMaterialType(this.value);

  final String value;

  static D_ST_PresetMaterialType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PresetShadowVal {
  shdw1('shdw1'),
  shdw2('shdw2'),
  shdw3('shdw3'),
  shdw4('shdw4'),
  shdw5('shdw5'),
  shdw6('shdw6'),
  shdw7('shdw7'),
  shdw8('shdw8'),
  shdw9('shdw9'),
  shdw10('shdw10'),
  shdw11('shdw11'),
  shdw12('shdw12'),
  shdw13('shdw13'),
  shdw14('shdw14'),
  shdw15('shdw15'),
  shdw16('shdw16'),
  shdw17('shdw17'),
  shdw18('shdw18'),
  shdw19('shdw19'),
  shdw20('shdw20');

  const D_ST_PresetShadowVal(this.value);

  final String value;

  static D_ST_PresetShadowVal? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PathShadeType {
  shape('shape'),
  circle('circle'),
  rect('rect');

  const D_ST_PathShadeType(this.value);

  final String value;

  static D_ST_PathShadeType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TileFlipMode {
  none('none'),
  x('x'),
  y('y'),
  xy('xy');

  const D_ST_TileFlipMode(this.value);

  final String value;

  static D_ST_TileFlipMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BlipCompression {
  email('email'),
  screen('screen'),
  print('print'),
  hqprint('hqprint'),
  none('none');

  const D_ST_BlipCompression(this.value);

  final String value;

  static D_ST_BlipCompression? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PresetPatternVal {
  pct5('pct5'),
  pct10('pct10'),
  pct20('pct20'),
  pct25('pct25'),
  pct30('pct30'),
  pct40('pct40'),
  pct50('pct50'),
  pct60('pct60'),
  pct70('pct70'),
  pct75('pct75'),
  pct80('pct80'),
  pct90('pct90'),
  horz('horz'),
  vert('vert'),
  ltHorz('ltHorz'),
  ltVert('ltVert'),
  dkHorz('dkHorz'),
  dkVert('dkVert'),
  narHorz('narHorz'),
  narVert('narVert'),
  dashHorz('dashHorz'),
  dashVert('dashVert'),
  cross('cross'),
  dnDiag('dnDiag'),
  upDiag('upDiag'),
  ltDnDiag('ltDnDiag'),
  ltUpDiag('ltUpDiag'),
  dkDnDiag('dkDnDiag'),
  dkUpDiag('dkUpDiag'),
  wdDnDiag('wdDnDiag'),
  wdUpDiag('wdUpDiag'),
  dashDnDiag('dashDnDiag'),
  dashUpDiag('dashUpDiag'),
  diagCross('diagCross'),
  smCheck('smCheck'),
  lgCheck('lgCheck'),
  smGrid('smGrid'),
  lgGrid('lgGrid'),
  dotGrid('dotGrid'),
  smConfetti('smConfetti'),
  lgConfetti('lgConfetti'),
  horzBrick('horzBrick'),
  diagBrick('diagBrick'),
  solidDmnd('solidDmnd'),
  openDmnd('openDmnd'),
  dotDmnd('dotDmnd'),
  plaid('plaid'),
  sphere('sphere'),
  weave('weave'),
  divot('divot'),
  shingle('shingle'),
  wave('wave'),
  trellis('trellis'),
  zigZag('zigZag');

  const D_ST_PresetPatternVal(this.value);

  final String value;

  static D_ST_PresetPatternVal? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BlendMode {
  over('over'),
  mult('mult'),
  screen('screen'),
  darken('darken'),
  lighten('lighten');

  const D_ST_BlendMode(this.value);

  final String value;

  static D_ST_BlendMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_EffectContainerType {
  sib('sib'),
  tree('tree');

  const D_ST_EffectContainerType(this.value);

  final String value;

  static D_ST_EffectContainerType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ShapeType {
  line('line'),
  lineInv('lineInv'),
  triangle('triangle'),
  rtTriangle('rtTriangle'),
  rect('rect'),
  diamond('diamond'),
  parallelogram('parallelogram'),
  trapezoid('trapezoid'),
  nonIsoscelesTrapezoid('nonIsoscelesTrapezoid'),
  pentagon('pentagon'),
  hexagon('hexagon'),
  heptagon('heptagon'),
  octagon('octagon'),
  decagon('decagon'),
  dodecagon('dodecagon'),
  star4('star4'),
  star5('star5'),
  star6('star6'),
  star7('star7'),
  star8('star8'),
  star10('star10'),
  star12('star12'),
  star16('star16'),
  star24('star24'),
  star32('star32'),
  roundRect('roundRect'),
  round1Rect('round1Rect'),
  round2SameRect('round2SameRect'),
  round2DiagRect('round2DiagRect'),
  snipRoundRect('snipRoundRect'),
  snip1Rect('snip1Rect'),
  snip2SameRect('snip2SameRect'),
  snip2DiagRect('snip2DiagRect'),
  plaque('plaque'),
  ellipse('ellipse'),
  teardrop('teardrop'),
  homePlate('homePlate'),
  chevron('chevron'),
  pieWedge('pieWedge'),
  pie('pie'),
  blockArc('blockArc'),
  donut('donut'),
  noSmoking('noSmoking'),
  rightArrow('rightArrow'),
  leftArrow('leftArrow'),
  upArrow('upArrow'),
  downArrow('downArrow'),
  stripedRightArrow('stripedRightArrow'),
  notchedRightArrow('notchedRightArrow'),
  bentUpArrow('bentUpArrow'),
  leftRightArrow('leftRightArrow'),
  upDownArrow('upDownArrow'),
  leftUpArrow('leftUpArrow'),
  leftRightUpArrow('leftRightUpArrow'),
  quadArrow('quadArrow'),
  leftArrowCallout('leftArrowCallout'),
  rightArrowCallout('rightArrowCallout'),
  upArrowCallout('upArrowCallout'),
  downArrowCallout('downArrowCallout'),
  leftRightArrowCallout('leftRightArrowCallout'),
  upDownArrowCallout('upDownArrowCallout'),
  quadArrowCallout('quadArrowCallout'),
  bentArrow('bentArrow'),
  uturnArrow('uturnArrow'),
  circularArrow('circularArrow'),
  leftCircularArrow('leftCircularArrow'),
  leftRightCircularArrow('leftRightCircularArrow'),
  curvedRightArrow('curvedRightArrow'),
  curvedLeftArrow('curvedLeftArrow'),
  curvedUpArrow('curvedUpArrow'),
  curvedDownArrow('curvedDownArrow'),
  swooshArrow('swooshArrow'),
  cube('cube'),
  can('can'),
  lightningBolt('lightningBolt'),
  heart('heart'),
  sun('sun'),
  moon('moon'),
  smileyFace('smileyFace'),
  irregularSeal1('irregularSeal1'),
  irregularSeal2('irregularSeal2'),
  foldedCorner('foldedCorner'),
  bevel('bevel'),
  frame('frame'),
  halfFrame('halfFrame'),
  corner('corner'),
  diagStripe('diagStripe'),
  chord('chord'),
  arc('arc'),
  leftBracket('leftBracket'),
  rightBracket('rightBracket'),
  leftBrace('leftBrace'),
  rightBrace('rightBrace'),
  bracketPair('bracketPair'),
  bracePair('bracePair'),
  straightConnector1('straightConnector1'),
  bentConnector2('bentConnector2'),
  bentConnector3('bentConnector3'),
  bentConnector4('bentConnector4'),
  bentConnector5('bentConnector5'),
  curvedConnector2('curvedConnector2'),
  curvedConnector3('curvedConnector3'),
  curvedConnector4('curvedConnector4'),
  curvedConnector5('curvedConnector5'),
  callout1('callout1'),
  callout2('callout2'),
  callout3('callout3'),
  accentCallout1('accentCallout1'),
  accentCallout2('accentCallout2'),
  accentCallout3('accentCallout3'),
  borderCallout1('borderCallout1'),
  borderCallout2('borderCallout2'),
  borderCallout3('borderCallout3'),
  accentBorderCallout1('accentBorderCallout1'),
  accentBorderCallout2('accentBorderCallout2'),
  accentBorderCallout3('accentBorderCallout3'),
  wedgeRectCallout('wedgeRectCallout'),
  wedgeRoundRectCallout('wedgeRoundRectCallout'),
  wedgeEllipseCallout('wedgeEllipseCallout'),
  cloudCallout('cloudCallout'),
  cloud('cloud'),
  ribbon('ribbon'),
  ribbon2('ribbon2'),
  ellipseRibbon('ellipseRibbon'),
  ellipseRibbon2('ellipseRibbon2'),
  leftRightRibbon('leftRightRibbon'),
  verticalScroll('verticalScroll'),
  horizontalScroll('horizontalScroll'),
  wave('wave'),
  doubleWave('doubleWave'),
  plus('plus'),
  flowChartProcess('flowChartProcess'),
  flowChartDecision('flowChartDecision'),
  flowChartInputOutput('flowChartInputOutput'),
  flowChartPredefinedProcess('flowChartPredefinedProcess'),
  flowChartInternalStorage('flowChartInternalStorage'),
  flowChartDocument('flowChartDocument'),
  flowChartMultidocument('flowChartMultidocument'),
  flowChartTerminator('flowChartTerminator'),
  flowChartPreparation('flowChartPreparation'),
  flowChartManualInput('flowChartManualInput'),
  flowChartManualOperation('flowChartManualOperation'),
  flowChartConnector('flowChartConnector'),
  flowChartPunchedCard('flowChartPunchedCard'),
  flowChartPunchedTape('flowChartPunchedTape'),
  flowChartSummingJunction('flowChartSummingJunction'),
  flowChartOr('flowChartOr'),
  flowChartCollate('flowChartCollate'),
  flowChartSort('flowChartSort'),
  flowChartExtract('flowChartExtract'),
  flowChartMerge('flowChartMerge'),
  flowChartOfflineStorage('flowChartOfflineStorage'),
  flowChartOnlineStorage('flowChartOnlineStorage'),
  flowChartMagneticTape('flowChartMagneticTape'),
  flowChartMagneticDisk('flowChartMagneticDisk'),
  flowChartMagneticDrum('flowChartMagneticDrum'),
  flowChartDisplay('flowChartDisplay'),
  flowChartDelay('flowChartDelay'),
  flowChartAlternateProcess('flowChartAlternateProcess'),
  flowChartOffpageConnector('flowChartOffpageConnector'),
  actionButtonBlank('actionButtonBlank'),
  actionButtonHome('actionButtonHome'),
  actionButtonHelp('actionButtonHelp'),
  actionButtonInformation('actionButtonInformation'),
  actionButtonForwardNext('actionButtonForwardNext'),
  actionButtonBackPrevious('actionButtonBackPrevious'),
  actionButtonEnd('actionButtonEnd'),
  actionButtonBeginning('actionButtonBeginning'),
  actionButtonReturn('actionButtonReturn'),
  actionButtonDocument('actionButtonDocument'),
  actionButtonSound('actionButtonSound'),
  actionButtonMovie('actionButtonMovie'),
  gear6('gear6'),
  gear9('gear9'),
  funnel('funnel'),
  mathPlus('mathPlus'),
  mathMinus('mathMinus'),
  mathMultiply('mathMultiply'),
  mathDivide('mathDivide'),
  mathEqual('mathEqual'),
  mathNotEqual('mathNotEqual'),
  cornerTabs('cornerTabs'),
  squareTabs('squareTabs'),
  plaqueTabs('plaqueTabs'),
  chartX('chartX'),
  chartStar('chartStar'),
  chartPlus('chartPlus');

  const D_ST_ShapeType(this.value);

  final String value;

  static D_ST_ShapeType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextShapeType {
  textNoShape('textNoShape'),
  textPlain('textPlain'),
  textStop('textStop'),
  textTriangle('textTriangle'),
  textTriangleInverted('textTriangleInverted'),
  textChevron('textChevron'),
  textChevronInverted('textChevronInverted'),
  textRingInside('textRingInside'),
  textRingOutside('textRingOutside'),
  textArchUp('textArchUp'),
  textArchDown('textArchDown'),
  textCircle('textCircle'),
  textButton('textButton'),
  textArchUpPour('textArchUpPour'),
  textArchDownPour('textArchDownPour'),
  textCirclePour('textCirclePour'),
  textButtonPour('textButtonPour'),
  textCurveUp('textCurveUp'),
  textCurveDown('textCurveDown'),
  textCanUp('textCanUp'),
  textCanDown('textCanDown'),
  textWave1('textWave1'),
  textWave2('textWave2'),
  textDoubleWave1('textDoubleWave1'),
  textWave4('textWave4'),
  textInflate('textInflate'),
  textDeflate('textDeflate'),
  textInflateBottom('textInflateBottom'),
  textDeflateBottom('textDeflateBottom'),
  textInflateTop('textInflateTop'),
  textDeflateTop('textDeflateTop'),
  textDeflateInflate('textDeflateInflate'),
  textDeflateInflateDeflate('textDeflateInflateDeflate'),
  textFadeRight('textFadeRight'),
  textFadeLeft('textFadeLeft'),
  textFadeUp('textFadeUp'),
  textFadeDown('textFadeDown'),
  textSlantUp('textSlantUp'),
  textSlantDown('textSlantDown'),
  textCascadeUp('textCascadeUp'),
  textCascadeDown('textCascadeDown');

  const D_ST_TextShapeType(this.value);

  final String value;

  static D_ST_TextShapeType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PathFillMode {
  none('none'),
  norm('norm'),
  lighten('lighten'),
  lightenLess('lightenLess'),
  darken('darken'),
  darkenLess('darkenLess');

  const D_ST_PathFillMode(this.value);

  final String value;

  static D_ST_PathFillMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LineEndType {
  none('none'),
  triangle('triangle'),
  stealth('stealth'),
  diamond('diamond'),
  oval('oval'),
  arrow('arrow');

  const D_ST_LineEndType(this.value);

  final String value;

  static D_ST_LineEndType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LineEndWidth {
  sm('sm'),
  med('med'),
  lg('lg');

  const D_ST_LineEndWidth(this.value);

  final String value;

  static D_ST_LineEndWidth? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LineEndLength {
  sm('sm'),
  med('med'),
  lg('lg');

  const D_ST_LineEndLength(this.value);

  final String value;

  static D_ST_LineEndLength? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PresetLineDashVal {
  solid('solid'),
  dot('dot'),
  dash('dash'),
  lgDash('lgDash'),
  dashDot('dashDot'),
  lgDashDot('lgDashDot'),
  lgDashDotDot('lgDashDotDot'),
  sysDash('sysDash'),
  sysDot('sysDot'),
  sysDashDot('sysDashDot'),
  sysDashDotDot('sysDashDotDot');

  const D_ST_PresetLineDashVal(this.value);

  final String value;

  static D_ST_PresetLineDashVal? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LineCap {
  rnd('rnd'),
  sq('sq'),
  flat('flat');

  const D_ST_LineCap(this.value);

  final String value;

  static D_ST_LineCap? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PenAlignment {
  ctr('ctr'),
  in_('in');

  const D_ST_PenAlignment(this.value);

  final String value;

  static D_ST_PenAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_CompoundLine {
  sng('sng'),
  dbl('dbl'),
  thickThin('thickThin'),
  thinThick('thinThick'),
  tri('tri');

  const D_ST_CompoundLine(this.value);

  final String value;

  static D_ST_CompoundLine? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_OnOffStyleType {
  on_('on'),
  off('off'),
  def('def');

  const D_ST_OnOffStyleType(this.value);

  final String value;

  static D_ST_OnOffStyleType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextAnchoringType {
  t('t'),
  ctr('ctr'),
  b('b'),
  just('just'),
  dist('dist');

  const D_ST_TextAnchoringType(this.value);

  final String value;

  static D_ST_TextAnchoringType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextVertOverflowType {
  overflow('overflow'),
  ellipsis('ellipsis'),
  clip('clip');

  const D_ST_TextVertOverflowType(this.value);

  final String value;

  static D_ST_TextVertOverflowType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextHorzOverflowType {
  overflow('overflow'),
  clip('clip');

  const D_ST_TextHorzOverflowType(this.value);

  final String value;

  static D_ST_TextHorzOverflowType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextVerticalType {
  horz('horz'),
  vert('vert'),
  vert270('vert270'),
  wordArtVert('wordArtVert'),
  eaVert('eaVert'),
  mongolianVert('mongolianVert'),
  wordArtVertRtl('wordArtVertRtl');

  const D_ST_TextVerticalType(this.value);

  final String value;

  static D_ST_TextVerticalType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextWrappingType {
  none('none'),
  square('square');

  const D_ST_TextWrappingType(this.value);

  final String value;

  static D_ST_TextWrappingType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextAutonumberScheme {
  alphaLcParenBoth('alphaLcParenBoth'),
  alphaUcParenBoth('alphaUcParenBoth'),
  alphaLcParenR('alphaLcParenR'),
  alphaUcParenR('alphaUcParenR'),
  alphaLcPeriod('alphaLcPeriod'),
  alphaUcPeriod('alphaUcPeriod'),
  arabicParenBoth('arabicParenBoth'),
  arabicParenR('arabicParenR'),
  arabicPeriod('arabicPeriod'),
  arabicPlain('arabicPlain'),
  romanLcParenBoth('romanLcParenBoth'),
  romanUcParenBoth('romanUcParenBoth'),
  romanLcParenR('romanLcParenR'),
  romanUcParenR('romanUcParenR'),
  romanLcPeriod('romanLcPeriod'),
  romanUcPeriod('romanUcPeriod'),
  circleNumDbPlain('circleNumDbPlain'),
  circleNumWdBlackPlain('circleNumWdBlackPlain'),
  circleNumWdWhitePlain('circleNumWdWhitePlain'),
  arabicDbPeriod('arabicDbPeriod'),
  arabicDbPlain('arabicDbPlain'),
  ea1ChsPeriod('ea1ChsPeriod'),
  ea1ChsPlain('ea1ChsPlain'),
  ea1ChtPeriod('ea1ChtPeriod'),
  ea1ChtPlain('ea1ChtPlain'),
  ea1JpnChsDbPeriod('ea1JpnChsDbPeriod'),
  ea1JpnKorPlain('ea1JpnKorPlain'),
  ea1JpnKorPeriod('ea1JpnKorPeriod'),
  arabic1Minus('arabic1Minus'),
  arabic2Minus('arabic2Minus'),
  hebrew2Minus('hebrew2Minus'),
  thaiAlphaPeriod('thaiAlphaPeriod'),
  thaiAlphaParenR('thaiAlphaParenR'),
  thaiAlphaParenBoth('thaiAlphaParenBoth'),
  thaiNumPeriod('thaiNumPeriod'),
  thaiNumParenR('thaiNumParenR'),
  thaiNumParenBoth('thaiNumParenBoth'),
  hindiAlphaPeriod('hindiAlphaPeriod'),
  hindiNumPeriod('hindiNumPeriod'),
  hindiNumParenR('hindiNumParenR'),
  hindiAlpha1Period('hindiAlpha1Period');

  const D_ST_TextAutonumberScheme(this.value);

  final String value;

  static D_ST_TextAutonumberScheme? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PitchFamily {
  v00('00'),
  v01('01'),
  v02('02'),
  v16('16'),
  v17('17'),
  v18('18'),
  v32('32'),
  v33('33'),
  v34('34'),
  v48('48'),
  v49('49'),
  v50('50'),
  v64('64'),
  v65('65'),
  v66('66'),
  v80('80'),
  v81('81'),
  v82('82');

  const D_ST_PitchFamily(this.value);

  final String value;

  static D_ST_PitchFamily? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextUnderlineType {
  none('none'),
  words('words'),
  sng('sng'),
  dbl('dbl'),
  heavy('heavy'),
  dotted('dotted'),
  dottedHeavy('dottedHeavy'),
  dash('dash'),
  dashHeavy('dashHeavy'),
  dashLong('dashLong'),
  dashLongHeavy('dashLongHeavy'),
  dotDash('dotDash'),
  dotDashHeavy('dotDashHeavy'),
  dotDotDash('dotDotDash'),
  dotDotDashHeavy('dotDotDashHeavy'),
  wavy('wavy'),
  wavyHeavy('wavyHeavy'),
  wavyDbl('wavyDbl');

  const D_ST_TextUnderlineType(this.value);

  final String value;

  static D_ST_TextUnderlineType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextStrikeType {
  noStrike('noStrike'),
  sngStrike('sngStrike'),
  dblStrike('dblStrike');

  const D_ST_TextStrikeType(this.value);

  final String value;

  static D_ST_TextStrikeType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextCapsType {
  none('none'),
  small('small'),
  all('all');

  const D_ST_TextCapsType(this.value);

  final String value;

  static D_ST_TextCapsType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextTabAlignType {
  l('l'),
  ctr('ctr'),
  r('r'),
  dec('dec');

  const D_ST_TextTabAlignType(this.value);

  final String value;

  static D_ST_TextTabAlignType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextAlignType {
  l('l'),
  ctr('ctr'),
  r('r'),
  just('just'),
  justLow('justLow'),
  dist('dist'),
  thaiDist('thaiDist');

  const D_ST_TextAlignType(this.value);

  final String value;

  static D_ST_TextAlignType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextFontAlignType {
  auto('auto'),
  t('t'),
  ctr('ctr'),
  base('base'),
  b('b');

  const D_ST_TextFontAlignType(this.value);

  final String value;

  static D_ST_TextFontAlignType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

extension type D_CT_CTName(_i1.XmlElement node) implements _i1.XmlElement {
  String? get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }
}
extension type D_CT_CTDescription(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }
}
extension type D_CT_CTCategory(_i1.XmlElement node) implements _i1.XmlElement {
  String get type {
    return node.getAttribute(
      'type',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  int get pri {
    return int.parse(
      node.getAttribute(
        'pri',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    );
  }
}
extension type D_CT_CTCategories(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_CTCategory> get cat {
    return node
        .findElements(
          'cat',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_CTCategory.new);
  }
}
extension type D_CT_Colors(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_ClrAppMethod? get meth {
    return node.getAttribute(
              'meth',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_ClrAppMethod.fromValue(
            node.getAttribute(
              'meth',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  D_ST_HueDir? get hueDir {
    return node.getAttribute(
              'hueDir',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_HueDir.fromValue(
            node.getAttribute(
              'hueDir',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  Iterable<D_CT_ScRgbColor> get scrgbClr {
    return node
        .findElements(
          'scrgbClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_ScRgbColor.new);
  }

  Iterable<D_CT_SRgbColor> get srgbClr {
    return node
        .findElements(
          'srgbClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_SRgbColor.new);
  }

  Iterable<D_CT_HslColor> get hslClr {
    return node
        .findElements(
          'hslClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_HslColor.new);
  }

  Iterable<D_CT_SystemColor> get sysClr {
    return node
        .findElements(
          'sysClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_SystemColor.new);
  }

  Iterable<D_CT_SchemeColor> get schemeClr {
    return node
        .findElements(
          'schemeClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_SchemeColor.new);
  }

  Iterable<D_CT_PresetColor> get prstClr {
    return node
        .findElements(
          'prstClr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_PresetColor.new);
  }
}
extension type D_CT_CTStyleLabel(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  D_CT_Colors? get fillClrLst {
    final e = node.getElement(
      'fillClrLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Colors(e) : null;
  }

  D_CT_Colors? get linClrLst {
    final e = node.getElement(
      'linClrLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Colors(e) : null;
  }

  D_CT_Colors? get effectClrLst {
    final e = node.getElement(
      'effectClrLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Colors(e) : null;
  }

  D_CT_Colors? get txLinClrLst {
    final e = node.getElement(
      'txLinClrLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Colors(e) : null;
  }

  D_CT_Colors? get txFillClrLst {
    final e = node.getElement(
      'txFillClrLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Colors(e) : null;
  }

  D_CT_Colors? get txEffectClrLst {
    final e = node.getElement(
      'txEffectClrLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Colors(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ColorTransform(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get uniqueId {
    return node.getAttribute(
      'uniqueId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get minVer {
    return node.getAttribute(
      'minVer',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  Iterable<D_CT_CTName> get title {
    return node
        .findElements(
          'title',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_CTName.new);
  }

  Iterable<D_CT_CTDescription> get desc {
    return node
        .findElements(
          'desc',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_CTDescription.new);
  }

  D_CT_CTCategories? get catLst {
    final e = node.getElement(
      'catLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_CTCategories(e) : null;
  }

  Iterable<D_CT_CTStyleLabel> get styleLbl {
    return node
        .findElements(
          'styleLbl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_CTStyleLabel.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ColorTransformHeader(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get uniqueId {
    return node.getAttribute(
      'uniqueId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  String? get minVer {
    return node.getAttribute(
      'minVer',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  int? get resId {
    return node.getAttribute(
              'resId',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'resId',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  Iterable<D_CT_CTName> get title {
    return node
        .findElements(
          'title',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_CTName.new);
  }

  Iterable<D_CT_CTDescription> get desc {
    return node
        .findElements(
          'desc',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_CTDescription.new);
  }

  D_CT_CTCategories? get catLst {
    final e = node.getElement(
      'catLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_CTCategories(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_ColorTransformHeaderLst(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_ColorTransformHeader> get colorsDefHdr {
    return node
        .findElements(
          'colorsDefHdr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_ColorTransformHeader.new);
  }
}
extension type D_CT_Pt(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_PtType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_PtType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  D_CT_ElemPropSet? get prSet {
    final e = node.getElement(
      'prSet',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_ElemPropSet(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get t {
    final e = node.getElement(
      't',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_PtList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_Pt> get pt {
    return node
        .findElements(
          'pt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Pt.new);
  }
}
extension type D_CT_Cxn(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_CxnType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_CxnType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  int get srcOrd {
    return int.parse(
      node.getAttribute(
        'srcOrd',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    );
  }

  int get destOrd {
    return int.parse(
      node.getAttribute(
        'destOrd',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    );
  }

  String? get presId {
    return node.getAttribute(
      'presId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_CxnList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_Cxn> get cxn {
    return node
        .findElements(
          'cxn',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Cxn.new);
  }
}
extension type D_CT_DataModel(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_PtList? get ptLst {
    final e = node.getElement(
      'ptLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_PtList(e) : null;
  }

  D_CT_CxnList? get cxnLst {
    final e = node.getElement(
      'cxnLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_CxnList(e) : null;
  }

  D_CT_BackgroundFormatting? get bg {
    final e = node.getElement(
      'bg',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_BackgroundFormatting(e) : null;
  }

  D_CT_WholeE2oFormatting? get whole {
    final e = node.getElement(
      'whole',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_WholeE2oFormatting(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Constraint(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_BoolOperator? get op {
    return node.getAttribute(
              'op',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_BoolOperator.fromValue(
            node.getAttribute(
              'op',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  double? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  double? get fact {
    return node.getAttribute(
              'fact',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'fact',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Constraints(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_Constraint> get constr {
    return node
        .findElements(
          'constr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Constraint.new);
  }
}
extension type D_CT_NumericRule(_i1.XmlElement node) implements _i1.XmlElement {
  double? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  double? get fact {
    return node.getAttribute(
              'fact',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'fact',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  double? get max {
    return node.getAttribute(
              'max',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'max',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Rules(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_NumericRule> get rule {
    return node
        .findElements(
          'rule',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_NumericRule.new);
  }
}
extension type D_CT_PresentationOf(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_Adj(_i1.XmlElement node) implements _i1.XmlElement {
  String get idx {
    return node.getAttribute(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  double get val {
    return double.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    );
  }
}
extension type D_CT_AdjLst(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_Adj> get adj {
    return node
        .findElements(
          'adj',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Adj.new);
  }
}
extension type D_CT_Shape(_i1.XmlElement node) implements _i1.XmlElement {
  String? get macro {
    return node.getAttribute(
      'macro',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
  }

  String? get textlink {
    return node.getAttribute(
      'textlink',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
  }

  bool? get fLocksText {
    return node.getAttribute(
              'fLocksText',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'fLocksText',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'fLocksText',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'on';
  }

  bool? get fPublished {
    return node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'on';
  }

  D_CT_ShapeNonVisual? get nvSpPr {
    final e = node.getElement(
      'nvSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_ShapeNonVisual(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  D_CT_TextBody? get txBody {
    final e = node.getElement(
      'txBody',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }
}
extension type D_CT_Parameter(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_ParameterId get type {
    return D_ST_ParameterId.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    )!;
  }
}
extension type D_CT_Algorithm(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_AlgorithmType get type {
    return D_ST_AlgorithmType.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    )!;
  }

  int? get rev {
    return node.getAttribute(
              'rev',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rev',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  Iterable<D_CT_Parameter> get param {
    return node
        .findElements(
          'param',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Parameter.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_LayoutNode(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get styleLbl {
    return node.getAttribute(
      'styleLbl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  D_ST_ChildOrderType? get chOrder {
    return node.getAttribute(
              'chOrder',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_ChildOrderType.fromValue(
            node.getAttribute(
              'chOrder',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  String? get moveWith {
    return node.getAttribute(
      'moveWith',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  Iterable<D_CT_Algorithm> get alg {
    return node
        .findElements(
          'alg',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Algorithm.new);
  }

  Iterable<D_CT_Shape> get shape {
    return node
        .findElements(
          'shape',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Shape.new);
  }

  Iterable<D_CT_PresentationOf> get presOf {
    return node
        .findElements(
          'presOf',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_PresentationOf.new);
  }

  Iterable<D_CT_Constraints> get constrLst {
    return node
        .findElements(
          'constrLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Constraints.new);
  }

  Iterable<D_CT_Rules> get ruleLst {
    return node
        .findElements(
          'ruleLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Rules.new);
  }

  Iterable<D_CT_LayoutVariablePropertySet> get varLst {
    return node
        .findElements(
          'varLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_LayoutVariablePropertySet.new);
  }

  Iterable<D_CT_ForEach> get forEach {
    return node
        .findElements(
          'forEach',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_ForEach.new);
  }

  Iterable<D_CT_LayoutNode> get layoutNode {
    return node
        .findElements(
          'layoutNode',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_LayoutNode.new);
  }

  Iterable<D_CT_Choose> get choose {
    return node
        .findElements(
          'choose',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Choose.new);
  }

  Iterable<D_CT_OfficeArtExtensionList> get extLst {
    return node
        .findElements(
          'extLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_OfficeArtExtensionList.new);
  }
}
extension type D_CT_ForEach(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  Iterable<D_CT_Algorithm> get alg {
    return node
        .findElements(
          'alg',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Algorithm.new);
  }

  Iterable<D_CT_Shape> get shape {
    return node
        .findElements(
          'shape',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Shape.new);
  }

  Iterable<D_CT_PresentationOf> get presOf {
    return node
        .findElements(
          'presOf',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_PresentationOf.new);
  }

  Iterable<D_CT_Constraints> get constrLst {
    return node
        .findElements(
          'constrLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Constraints.new);
  }

  Iterable<D_CT_Rules> get ruleLst {
    return node
        .findElements(
          'ruleLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Rules.new);
  }

  Iterable<D_CT_ForEach> get forEach {
    return node
        .findElements(
          'forEach',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_ForEach.new);
  }

  Iterable<D_CT_LayoutNode> get layoutNode {
    return node
        .findElements(
          'layoutNode',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_LayoutNode.new);
  }

  Iterable<D_CT_Choose> get choose {
    return node
        .findElements(
          'choose',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Choose.new);
  }

  Iterable<D_CT_OfficeArtExtensionList> get extLst {
    return node
        .findElements(
          'extLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_OfficeArtExtensionList.new);
  }
}
extension type D_CT_When(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  D_ST_FunctionType get func {
    return D_ST_FunctionType.fromValue(
      node.getAttribute(
        'func',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    )!;
  }

  D_ST_FunctionOperator get op {
    return D_ST_FunctionOperator.fromValue(
      node.getAttribute(
        'op',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    )!;
  }

  Iterable<D_CT_Algorithm> get alg {
    return node
        .findElements(
          'alg',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Algorithm.new);
  }

  Iterable<D_CT_Shape> get shape {
    return node
        .findElements(
          'shape',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Shape.new);
  }

  Iterable<D_CT_PresentationOf> get presOf {
    return node
        .findElements(
          'presOf',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_PresentationOf.new);
  }

  Iterable<D_CT_Constraints> get constrLst {
    return node
        .findElements(
          'constrLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Constraints.new);
  }

  Iterable<D_CT_Rules> get ruleLst {
    return node
        .findElements(
          'ruleLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Rules.new);
  }

  Iterable<D_CT_ForEach> get forEach {
    return node
        .findElements(
          'forEach',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_ForEach.new);
  }

  Iterable<D_CT_LayoutNode> get layoutNode {
    return node
        .findElements(
          'layoutNode',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_LayoutNode.new);
  }

  Iterable<D_CT_Choose> get choose {
    return node
        .findElements(
          'choose',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Choose.new);
  }

  Iterable<D_CT_OfficeArtExtensionList> get extLst {
    return node
        .findElements(
          'extLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_OfficeArtExtensionList.new);
  }
}
extension type D_CT_Otherwise(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  Iterable<D_CT_Algorithm> get alg {
    return node
        .findElements(
          'alg',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Algorithm.new);
  }

  Iterable<D_CT_Shape> get shape {
    return node
        .findElements(
          'shape',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Shape.new);
  }

  Iterable<D_CT_PresentationOf> get presOf {
    return node
        .findElements(
          'presOf',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_PresentationOf.new);
  }

  Iterable<D_CT_Constraints> get constrLst {
    return node
        .findElements(
          'constrLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Constraints.new);
  }

  Iterable<D_CT_Rules> get ruleLst {
    return node
        .findElements(
          'ruleLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Rules.new);
  }

  Iterable<D_CT_ForEach> get forEach {
    return node
        .findElements(
          'forEach',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_ForEach.new);
  }

  Iterable<D_CT_LayoutNode> get layoutNode {
    return node
        .findElements(
          'layoutNode',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_LayoutNode.new);
  }

  Iterable<D_CT_Choose> get choose {
    return node
        .findElements(
          'choose',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Choose.new);
  }

  Iterable<D_CT_OfficeArtExtensionList> get extLst {
    return node
        .findElements(
          'extLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_OfficeArtExtensionList.new);
  }
}
extension type D_CT_Choose(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  Iterable<D_CT_When> get if_ {
    return node
        .findElements(
          'if',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_When.new);
  }

  D_CT_Otherwise? get else_ {
    final e = node.getElement(
      'else',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Otherwise(e) : null;
  }
}
extension type D_CT_SampleData(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get useDef {
    return node.getAttribute(
              'useDef',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            '1' ||
        node.getAttribute(
              'useDef',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'true' ||
        node.getAttribute(
              'useDef',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'on';
  }

  D_CT_DataModel? get dataModel {
    final e = node.getElement(
      'dataModel',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_DataModel(e) : null;
  }
}
extension type D_CT_Category(_i1.XmlElement node) implements _i1.XmlElement {
  String get type {
    return node.getAttribute(
      'type',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  int get pri {
    return int.parse(
      node.getAttribute(
        'pri',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    );
  }
}
extension type D_CT_Categories(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_Category> get cat {
    return node
        .findElements(
          'cat',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Category.new);
  }
}
extension type D_CT_Name(_i1.XmlElement node) implements _i1.XmlElement {
  String? get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }
}
extension type D_CT_Description(_i1.XmlElement node) implements _i1.XmlElement {
  String? get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }
}
extension type D_CT_DiagramDefinition(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get uniqueId {
    return node.getAttribute(
      'uniqueId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get minVer {
    return node.getAttribute(
      'minVer',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get defStyle {
    return node.getAttribute(
      'defStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  Iterable<D_CT_Name> get title {
    return node
        .findElements(
          'title',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Name.new);
  }

  Iterable<D_CT_Description> get desc {
    return node
        .findElements(
          'desc',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Description.new);
  }

  D_CT_Categories? get catLst {
    final e = node.getElement(
      'catLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Categories(e) : null;
  }

  D_CT_SampleData? get sampData {
    final e = node.getElement(
      'sampData',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_SampleData(e) : null;
  }

  D_CT_SampleData? get styleData {
    final e = node.getElement(
      'styleData',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_SampleData(e) : null;
  }

  D_CT_SampleData? get clrData {
    final e = node.getElement(
      'clrData',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_SampleData(e) : null;
  }

  D_CT_LayoutNode? get layoutNode {
    final e = node.getElement(
      'layoutNode',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_LayoutNode(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_DiagramDefinitionHeader(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get uniqueId {
    return node.getAttribute(
      'uniqueId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  String? get minVer {
    return node.getAttribute(
      'minVer',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get defStyle {
    return node.getAttribute(
      'defStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  int? get resId {
    return node.getAttribute(
              'resId',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'resId',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  Iterable<D_CT_Name> get title {
    return node
        .findElements(
          'title',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Name.new);
  }

  Iterable<D_CT_Description> get desc {
    return node
        .findElements(
          'desc',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_Description.new);
  }

  D_CT_Categories? get catLst {
    final e = node.getElement(
      'catLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Categories(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_DiagramDefinitionHeaderLst(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_DiagramDefinitionHeader> get layoutDefHdr {
    return node
        .findElements(
          'layoutDefHdr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_DiagramDefinitionHeader.new);
  }
}
extension type D_CT_RelIds(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_ElemPropSet(_i1.XmlElement node) implements _i1.XmlElement {
  String? get presName {
    return node.getAttribute(
      'presName',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get presStyleLbl {
    return node.getAttribute(
      'presStyleLbl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  int? get presStyleIdx {
    return node.getAttribute(
              'presStyleIdx',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'presStyleIdx',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  int? get presStyleCnt {
    return node.getAttribute(
              'presStyleCnt',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'presStyleCnt',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  String? get loTypeId {
    return node.getAttribute(
      'loTypeId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get loCatId {
    return node.getAttribute(
      'loCatId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get qsTypeId {
    return node.getAttribute(
      'qsTypeId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get qsCatId {
    return node.getAttribute(
      'qsCatId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get csTypeId {
    return node.getAttribute(
      'csTypeId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get csCatId {
    return node.getAttribute(
      'csCatId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  bool? get coherent3DOff {
    return node.getAttribute(
              'coherent3DOff',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            '1' ||
        node.getAttribute(
              'coherent3DOff',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'true' ||
        node.getAttribute(
              'coherent3DOff',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'on';
  }

  String? get phldrT {
    return node.getAttribute(
      'phldrT',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  bool? get phldr {
    return node.getAttribute(
              'phldr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            '1' ||
        node.getAttribute(
              'phldr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'true' ||
        node.getAttribute(
              'phldr',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'on';
  }

  int? get custAng {
    return node.getAttribute(
              'custAng',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'custAng',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  bool? get custFlipVert {
    return node.getAttribute(
              'custFlipVert',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            '1' ||
        node.getAttribute(
              'custFlipVert',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'true' ||
        node.getAttribute(
              'custFlipVert',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'on';
  }

  bool? get custFlipHor {
    return node.getAttribute(
              'custFlipHor',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            '1' ||
        node.getAttribute(
              'custFlipHor',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'true' ||
        node.getAttribute(
              'custFlipHor',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'on';
  }

  int? get custSzX {
    return node.getAttribute(
              'custSzX',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'custSzX',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  int? get custSzY {
    return node.getAttribute(
              'custSzY',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'custSzY',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  bool? get custT {
    return node.getAttribute(
              'custT',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            '1' ||
        node.getAttribute(
              'custT',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'true' ||
        node.getAttribute(
              'custT',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'on';
  }

  D_CT_LayoutVariablePropertySet? get presLayoutVars {
    final e = node.getElement(
      'presLayoutVars',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_LayoutVariablePropertySet(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }
}
extension type D_CT_OrgChart(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            '1' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'true' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'on';
  }
}
extension type D_CT_ChildMax(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }
}
extension type D_CT_ChildPref(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }
}
extension type D_CT_BulletEnabled(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            '1' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'true' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) ==
            'on';
  }
}
extension type D_CT_Direction(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_Direction? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_Direction.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }
}
extension type D_CT_HierBranchStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_HierBranchStyle? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_HierBranchStyle.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }
}
extension type D_CT_AnimOne(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_AnimOneStr? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_AnimOneStr.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }
}
extension type D_CT_AnimLvl(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_AnimLvlStr? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_AnimLvlStr.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }
}
extension type D_CT_ResizeHandles(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_ResizeHandlesStr? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? D_ST_ResizeHandlesStr.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }
}
extension type D_CT_LayoutVariablePropertySet(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_OrgChart? get orgChart {
    final e = node.getElement(
      'orgChart',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OrgChart(e) : null;
  }

  D_CT_ChildMax? get chMax {
    final e = node.getElement(
      'chMax',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_ChildMax(e) : null;
  }

  D_CT_ChildPref? get chPref {
    final e = node.getElement(
      'chPref',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_ChildPref(e) : null;
  }

  D_CT_BulletEnabled? get bulletEnabled {
    final e = node.getElement(
      'bulletEnabled',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_BulletEnabled(e) : null;
  }

  D_CT_Direction? get dir {
    final e = node.getElement(
      'dir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Direction(e) : null;
  }

  D_CT_HierBranchStyle? get hierBranch {
    final e = node.getElement(
      'hierBranch',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_HierBranchStyle(e) : null;
  }

  D_CT_AnimOne? get animOne {
    final e = node.getElement(
      'animOne',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_AnimOne(e) : null;
  }

  D_CT_AnimLvl? get animLvl {
    final e = node.getElement(
      'animLvl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_AnimLvl(e) : null;
  }

  D_CT_ResizeHandles? get resizeHandles {
    final e = node.getElement(
      'resizeHandles',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_ResizeHandles(e) : null;
  }
}
extension type D_CT_SDName(_i1.XmlElement node) implements _i1.XmlElement {
  String? get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }
}
extension type D_CT_SDDescription(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }
}
extension type D_CT_SDCategory(_i1.XmlElement node) implements _i1.XmlElement {
  String get type {
    return node.getAttribute(
      'type',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  int get pri {
    return int.parse(
      node.getAttribute(
        'pri',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
      )!,
    );
  }
}
extension type D_CT_SDCategories(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_SDCategory> get cat {
    return node
        .findElements(
          'cat',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_SDCategory.new);
  }
}
extension type D_CT_TextProps(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Shape3D? get sp3d {
    final e = node.getElement(
      'sp3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Shape3D(e) : null;
  }

  D_CT_FlatText? get flatTx {
    final e = node.getElement(
      'flatTx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_FlatText(e) : null;
  }
}
extension type D_CT_StyleLabel(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  D_CT_Scene3D? get scene3d {
    final e = node.getElement(
      'scene3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Scene3D(e) : null;
  }

  D_CT_Shape3D? get sp3d {
    final e = node.getElement(
      'sp3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Shape3D(e) : null;
  }

  D_CT_TextProps? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_TextProps(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_StyleDefinition(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get uniqueId {
    return node.getAttribute(
      'uniqueId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  String? get minVer {
    return node.getAttribute(
      'minVer',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  Iterable<D_CT_SDName> get title {
    return node
        .findElements(
          'title',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_SDName.new);
  }

  Iterable<D_CT_SDDescription> get desc {
    return node
        .findElements(
          'desc',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_SDDescription.new);
  }

  D_CT_SDCategories? get catLst {
    final e = node.getElement(
      'catLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_SDCategories(e) : null;
  }

  D_CT_Scene3D? get scene3d {
    final e = node.getElement(
      'scene3d',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_Scene3D(e) : null;
  }

  Iterable<D_CT_StyleLabel> get styleLbl {
    return node
        .findElements(
          'styleLbl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_StyleLabel.new);
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_StyleDefinitionHeader(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get uniqueId {
    return node.getAttribute(
      'uniqueId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    )!;
  }

  String? get minVer {
    return node.getAttribute(
      'minVer',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
  }

  int? get resId {
    return node.getAttribute(
              'resId',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'resId',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/diagram',
            )!,
          )
        : null;
  }

  Iterable<D_CT_SDName> get title {
    return node
        .findElements(
          'title',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_SDName.new);
  }

  Iterable<D_CT_SDDescription> get desc {
    return node
        .findElements(
          'desc',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_SDDescription.new);
  }

  D_CT_SDCategories? get catLst {
    final e = node.getElement(
      'catLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_SDCategories(e) : null;
  }

  D_CT_OfficeArtExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
    );
    return e != null ? D_CT_OfficeArtExtensionList(e) : null;
  }
}
extension type D_CT_StyleDefinitionHeaderLst(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_StyleDefinitionHeader> get styleDefHdr {
    return node
        .findElements(
          'styleDefHdr',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/diagram',
        )
        .map(D_CT_StyleDefinitionHeader.new);
  }
}

enum D_ST_ClrAppMethod {
  span('span'),
  cycle('cycle'),
  repeat('repeat');

  const D_ST_ClrAppMethod(this.value);

  final String value;

  static D_ST_ClrAppMethod? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_HueDir {
  cw('cw'),
  ccw('ccw');

  const D_ST_HueDir(this.value);

  final String value;

  static D_ST_HueDir? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PtType {
  node('node'),
  asst('asst'),
  doc('doc'),
  pres('pres'),
  parTrans('parTrans'),
  sibTrans('sibTrans');

  const D_ST_PtType(this.value);

  final String value;

  static D_ST_PtType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_CxnType {
  parOf('parOf'),
  presOf('presOf'),
  presParOf('presParOf'),
  unknownRelationship('unknownRelationship');

  const D_ST_CxnType(this.value);

  final String value;

  static D_ST_CxnType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_Direction {
  norm('norm'),
  rev('rev');

  const D_ST_Direction(this.value);

  final String value;

  static D_ST_Direction? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_HierBranchStyle {
  l('l'),
  r('r'),
  hang('hang'),
  std('std'),
  init('init');

  const D_ST_HierBranchStyle(this.value);

  final String value;

  static D_ST_HierBranchStyle? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AnimOneStr {
  none('none'),
  one('one'),
  branch('branch');

  const D_ST_AnimOneStr(this.value);

  final String value;

  static D_ST_AnimOneStr? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AnimLvlStr {
  none('none'),
  lvl('lvl'),
  ctr('ctr');

  const D_ST_AnimLvlStr(this.value);

  final String value;

  static D_ST_AnimLvlStr? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ResizeHandlesStr {
  exact('exact'),
  rel('rel');

  const D_ST_ResizeHandlesStr(this.value);

  final String value;

  static D_ST_ResizeHandlesStr? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AlgorithmType {
  composite('composite'),
  conn('conn'),
  cycle('cycle'),
  hierChild('hierChild'),
  hierRoot('hierRoot'),
  pyra('pyra'),
  lin('lin'),
  sp('sp'),
  tx('tx'),
  snake('snake');

  const D_ST_AlgorithmType(this.value);

  final String value;

  static D_ST_AlgorithmType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AxisType {
  self('self'),
  ch('ch'),
  des('des'),
  desOrSelf('desOrSelf'),
  par('par'),
  ancst('ancst'),
  ancstOrSelf('ancstOrSelf'),
  followSib('followSib'),
  precedSib('precedSib'),
  follow('follow'),
  preced('preced'),
  root('root'),
  none('none');

  const D_ST_AxisType(this.value);

  final String value;

  static D_ST_AxisType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BoolOperator {
  none('none'),
  equ('equ'),
  gte('gte'),
  lte('lte');

  const D_ST_BoolOperator(this.value);

  final String value;

  static D_ST_BoolOperator? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ChildOrderType {
  b('b'),
  t('t');

  const D_ST_ChildOrderType(this.value);

  final String value;

  static D_ST_ChildOrderType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ConstraintType {
  none('none'),
  alignOff('alignOff'),
  begMarg('begMarg'),
  bendDist('bendDist'),
  begPad('begPad'),
  b('b'),
  bMarg('bMarg'),
  bOff('bOff'),
  ctrX('ctrX'),
  ctrXOff('ctrXOff'),
  ctrY('ctrY'),
  ctrYOff('ctrYOff'),
  connDist('connDist'),
  diam('diam'),
  endMarg('endMarg'),
  endPad('endPad'),
  h('h'),
  hArH('hArH'),
  hOff('hOff'),
  l('l'),
  lMarg('lMarg'),
  lOff('lOff'),
  r('r'),
  rMarg('rMarg'),
  rOff('rOff'),
  primFontSz('primFontSz'),
  pyraAcctRatio('pyraAcctRatio'),
  secFontSz('secFontSz'),
  sibSp('sibSp'),
  secSibSp('secSibSp'),
  sp('sp'),
  stemThick('stemThick'),
  t('t'),
  tMarg('tMarg'),
  tOff('tOff'),
  userA('userA'),
  userB('userB'),
  userC('userC'),
  userD('userD'),
  userE('userE'),
  userF('userF'),
  userG('userG'),
  userH('userH'),
  userI('userI'),
  userJ('userJ'),
  userK('userK'),
  userL('userL'),
  userM('userM'),
  userN('userN'),
  userO('userO'),
  userP('userP'),
  userQ('userQ'),
  userR('userR'),
  userS('userS'),
  userT('userT'),
  userU('userU'),
  userV('userV'),
  userW('userW'),
  userX('userX'),
  userY('userY'),
  userZ('userZ'),
  w('w'),
  wArH('wArH'),
  wOff('wOff');

  const D_ST_ConstraintType(this.value);

  final String value;

  static D_ST_ConstraintType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ConstraintRelationship {
  self('self'),
  ch('ch'),
  des('des');

  const D_ST_ConstraintRelationship(this.value);

  final String value;

  static D_ST_ConstraintRelationship? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ElementType {
  all('all'),
  doc('doc'),
  node('node'),
  norm('norm'),
  nonNorm('nonNorm'),
  asst('asst'),
  nonAsst('nonAsst'),
  parTrans('parTrans'),
  pres('pres'),
  sibTrans('sibTrans');

  const D_ST_ElementType(this.value);

  final String value;

  static D_ST_ElementType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ParameterId {
  horzAlign('horzAlign'),
  vertAlign('vertAlign'),
  chDir('chDir'),
  chAlign('chAlign'),
  secChAlign('secChAlign'),
  linDir('linDir'),
  secLinDir('secLinDir'),
  stElem('stElem'),
  bendPt('bendPt'),
  connRout('connRout'),
  begSty('begSty'),
  endSty('endSty'),
  dim('dim'),
  rotPath('rotPath'),
  ctrShpMap('ctrShpMap'),
  nodeHorzAlign('nodeHorzAlign'),
  nodeVertAlign('nodeVertAlign'),
  fallback('fallback'),
  txDir('txDir'),
  pyraAcctPos('pyraAcctPos'),
  pyraAcctTxMar('pyraAcctTxMar'),
  txBlDir('txBlDir'),
  txAnchorHorz('txAnchorHorz'),
  txAnchorVert('txAnchorVert'),
  txAnchorHorzCh('txAnchorHorzCh'),
  txAnchorVertCh('txAnchorVertCh'),
  parTxLTRAlign('parTxLTRAlign'),
  parTxRTLAlign('parTxRTLAlign'),
  shpTxLTRAlignCh('shpTxLTRAlignCh'),
  shpTxRTLAlignCh('shpTxRTLAlignCh'),
  autoTxRot('autoTxRot'),
  grDir('grDir'),
  flowDir('flowDir'),
  contDir('contDir'),
  bkpt('bkpt'),
  off('off'),
  hierAlign('hierAlign'),
  bkPtFixedVal('bkPtFixedVal'),
  stBulletLvl('stBulletLvl'),
  stAng('stAng'),
  spanAng('spanAng'),
  ar('ar'),
  lnSpPar('lnSpPar'),
  lnSpAfParP('lnSpAfParP'),
  lnSpCh('lnSpCh'),
  lnSpAfChP('lnSpAfChP'),
  rtShortDist('rtShortDist'),
  alignTx('alignTx'),
  pyraLvlNode('pyraLvlNode'),
  pyraAcctBkgdNode('pyraAcctBkgdNode'),
  pyraAcctTxNode('pyraAcctTxNode'),
  srcNode('srcNode'),
  dstNode('dstNode'),
  begPts('begPts'),
  endPts('endPts');

  const D_ST_ParameterId(this.value);

  final String value;

  static D_ST_ParameterId? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_FunctionType {
  cnt('cnt'),
  pos('pos'),
  revPos('revPos'),
  posEven('posEven'),
  posOdd('posOdd'),
  var_('var'),
  depth('depth'),
  maxDepth('maxDepth');

  const D_ST_FunctionType(this.value);

  final String value;

  static D_ST_FunctionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_FunctionOperator {
  equ('equ'),
  neq('neq'),
  gt('gt'),
  lt('lt'),
  gte('gte'),
  lte('lte');

  const D_ST_FunctionOperator(this.value);

  final String value;

  static D_ST_FunctionOperator? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_DiagramHorizontalAlignment {
  l('l'),
  ctr('ctr'),
  r('r'),
  none('none');

  const D_ST_DiagramHorizontalAlignment(this.value);

  final String value;

  static D_ST_DiagramHorizontalAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_VerticalAlignment {
  t('t'),
  mid('mid'),
  b('b'),
  none('none');

  const D_ST_VerticalAlignment(this.value);

  final String value;

  static D_ST_VerticalAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ChildDirection {
  horz('horz'),
  vert('vert');

  const D_ST_ChildDirection(this.value);

  final String value;

  static D_ST_ChildDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ChildAlignment {
  t('t'),
  b('b'),
  l('l'),
  r('r');

  const D_ST_ChildAlignment(this.value);

  final String value;

  static D_ST_ChildAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_SecondaryChildAlignment {
  none('none'),
  t('t'),
  b('b'),
  l('l'),
  r('r');

  const D_ST_SecondaryChildAlignment(this.value);

  final String value;

  static D_ST_SecondaryChildAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LinearDirection {
  fromL('fromL'),
  fromR('fromR'),
  fromT('fromT'),
  fromB('fromB');

  const D_ST_LinearDirection(this.value);

  final String value;

  static D_ST_LinearDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_SecondaryLinearDirection {
  none('none'),
  fromL('fromL'),
  fromR('fromR'),
  fromT('fromT'),
  fromB('fromB');

  const D_ST_SecondaryLinearDirection(this.value);

  final String value;

  static D_ST_SecondaryLinearDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_StartingElement {
  node('node'),
  trans('trans');

  const D_ST_StartingElement(this.value);

  final String value;

  static D_ST_StartingElement? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_RotationPath {
  none('none'),
  alongPath('alongPath');

  const D_ST_RotationPath(this.value);

  final String value;

  static D_ST_RotationPath? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_CenterShapeMapping {
  none('none'),
  fNode('fNode');

  const D_ST_CenterShapeMapping(this.value);

  final String value;

  static D_ST_CenterShapeMapping? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BendPoint {
  beg('beg'),
  def('def'),
  end('end');

  const D_ST_BendPoint(this.value);

  final String value;

  static D_ST_BendPoint? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ConnectorRouting {
  stra('stra'),
  bend('bend'),
  curve('curve'),
  longCurve('longCurve');

  const D_ST_ConnectorRouting(this.value);

  final String value;

  static D_ST_ConnectorRouting? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ArrowheadStyle {
  auto('auto'),
  arr('arr'),
  noArr('noArr');

  const D_ST_ArrowheadStyle(this.value);

  final String value;

  static D_ST_ArrowheadStyle? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ConnectorDimension {
  v1D('1D'),
  v2D('2D'),
  cust('cust');

  const D_ST_ConnectorDimension(this.value);

  final String value;

  static D_ST_ConnectorDimension? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ConnectorPoint {
  auto('auto'),
  bCtr('bCtr'),
  ctr('ctr'),
  midL('midL'),
  midR('midR'),
  tCtr('tCtr'),
  bL('bL'),
  bR('bR'),
  tL('tL'),
  tR('tR'),
  radial('radial');

  const D_ST_ConnectorPoint(this.value);

  final String value;

  static D_ST_ConnectorPoint? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_NodeHorizontalAlignment {
  l('l'),
  ctr('ctr'),
  r('r');

  const D_ST_NodeHorizontalAlignment(this.value);

  final String value;

  static D_ST_NodeHorizontalAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_NodeVerticalAlignment {
  t('t'),
  mid('mid'),
  b('b');

  const D_ST_NodeVerticalAlignment(this.value);

  final String value;

  static D_ST_NodeVerticalAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_FallbackDimension {
  v1D('1D'),
  v2D('2D');

  const D_ST_FallbackDimension(this.value);

  final String value;

  static D_ST_FallbackDimension? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextDirection {
  fromT('fromT'),
  fromB('fromB');

  const D_ST_TextDirection(this.value);

  final String value;

  static D_ST_TextDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PyramidAccentPosition {
  bef('bef'),
  aft('aft');

  const D_ST_PyramidAccentPosition(this.value);

  final String value;

  static D_ST_PyramidAccentPosition? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PyramidAccentTextMargin {
  step('step'),
  stack('stack');

  const D_ST_PyramidAccentTextMargin(this.value);

  final String value;

  static D_ST_PyramidAccentTextMargin? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextBlockDirection {
  horz('horz'),
  vert('vert');

  const D_ST_TextBlockDirection(this.value);

  final String value;

  static D_ST_TextBlockDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextAnchorHorizontal {
  none('none'),
  ctr('ctr');

  const D_ST_TextAnchorHorizontal(this.value);

  final String value;

  static D_ST_TextAnchorHorizontal? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TextAnchorVertical {
  t('t'),
  mid('mid'),
  b('b');

  const D_ST_TextAnchorVertical(this.value);

  final String value;

  static D_ST_TextAnchorVertical? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_DiagramTextAlignment {
  l('l'),
  ctr('ctr'),
  r('r');

  const D_ST_DiagramTextAlignment(this.value);

  final String value;

  static D_ST_DiagramTextAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AutoTextRotation {
  none('none'),
  upr('upr'),
  grav('grav');

  const D_ST_AutoTextRotation(this.value);

  final String value;

  static D_ST_AutoTextRotation? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_GrowDirection {
  tL('tL'),
  tR('tR'),
  bL('bL'),
  bR('bR');

  const D_ST_GrowDirection(this.value);

  final String value;

  static D_ST_GrowDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_FlowDirection {
  row('row'),
  col('col');

  const D_ST_FlowDirection(this.value);

  final String value;

  static D_ST_FlowDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ContinueDirection {
  revDir('revDir'),
  sameDir('sameDir');

  const D_ST_ContinueDirection(this.value);

  final String value;

  static D_ST_ContinueDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_Breakpoint {
  endCnv('endCnv'),
  bal('bal'),
  fixed('fixed');

  const D_ST_Breakpoint(this.value);

  final String value;

  static D_ST_Breakpoint? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_Offset {
  ctr('ctr'),
  off('off');

  const D_ST_Offset(this.value);

  final String value;

  static D_ST_Offset? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_HierarchyAlignment {
  tL('tL'),
  tR('tR'),
  tCtrCh('tCtrCh'),
  tCtrDes('tCtrDes'),
  bL('bL'),
  bR('bR'),
  bCtrCh('bCtrCh'),
  bCtrDes('bCtrDes'),
  lT('lT'),
  lB('lB'),
  lCtrCh('lCtrCh'),
  lCtrDes('lCtrDes'),
  rT('rT'),
  rB('rB'),
  rCtrCh('rCtrCh'),
  rCtrDes('rCtrDes');

  const D_ST_HierarchyAlignment(this.value);

  final String value;

  static D_ST_HierarchyAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_VariableType {
  none('none'),
  orgChart('orgChart'),
  chMax('chMax'),
  chPref('chPref'),
  bulEnabled('bulEnabled'),
  dir('dir'),
  hierBranch('hierBranch'),
  animOne('animOne'),
  animLvl('animLvl'),
  resizeHandles('resizeHandles');

  const D_ST_VariableType(this.value);

  final String value;

  static D_ST_VariableType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_OutputShapeType {
  none('none'),
  conn('conn');

  const D_ST_OutputShapeType(this.value);

  final String value;

  static D_ST_OutputShapeType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

extension type D_CT_Double(_i1.XmlElement node) implements _i1.XmlElement {
  double get val {
    return double.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }
}
extension type D_CT_UnsignedInt(_i1.XmlElement node) implements _i1.XmlElement {
  int get val {
    return int.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }
}
extension type D_CT_RelId(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_Extension(_i1.XmlElement node) implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }
}
extension type D_CT_ExtensionList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<D_CT_Extension> get ext {
    return node
        .findElements(
          'ext',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Extension.new);
  }
}
extension type D_CT_NumVal(_i1.XmlElement node) implements _i1.XmlElement {
  int get idx {
    return int.parse(
      node.getAttribute(
        'idx',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }

  String? get formatCode {
    return node.getAttribute(
      'formatCode',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }

  String? get v {
    final e = node.getElement(
      'v',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }
}
extension type D_CT_NumData(_i1.XmlElement node) implements _i1.XmlElement {
  String? get formatCode {
    final e = node.getElement(
      'formatCode',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_UnsignedInt? get ptCount {
    final e = node.getElement(
      'ptCount',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  Iterable<D_CT_NumVal> get pt {
    return node
        .findElements(
          'pt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_NumVal.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_NumRef(_i1.XmlElement node) implements _i1.XmlElement {
  String? get f {
    final e = node.getElement(
      'f',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_NumData? get numCache {
    final e = node.getElement(
      'numCache',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumData(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_NumDataSource(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NumRef? get numRef {
    final e = node.getElement(
      'numRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumRef(e) : null;
  }

  D_CT_NumData? get numLit {
    final e = node.getElement(
      'numLit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumData(e) : null;
  }
}
extension type D_CT_StrVal(_i1.XmlElement node) implements _i1.XmlElement {
  int get idx {
    return int.parse(
      node.getAttribute(
        'idx',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }

  String? get v {
    final e = node.getElement(
      'v',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }
}
extension type D_CT_StrData(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get ptCount {
    final e = node.getElement(
      'ptCount',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  Iterable<D_CT_StrVal> get pt {
    return node
        .findElements(
          'pt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_StrVal.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_StrRef(_i1.XmlElement node) implements _i1.XmlElement {
  String? get f {
    final e = node.getElement(
      'f',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_StrData? get strCache {
    final e = node.getElement(
      'strCache',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_StrData(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Tx(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_StrRef? get strRef {
    final e = node.getElement(
      'strRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_StrRef(e) : null;
  }

  D_CT_TextBody? get rich {
    final e = node.getElement(
      'rich',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }
}
extension type D_CT_TextLanguageID(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    )!;
  }
}
extension type D_CT_Lvl(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_StrVal> get pt {
    return node
        .findElements(
          'pt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_StrVal.new);
  }
}
extension type D_CT_MultiLvlStrData(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_UnsignedInt? get ptCount {
    final e = node.getElement(
      'ptCount',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  Iterable<D_CT_Lvl> get lvl {
    return node
        .findElements(
          'lvl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Lvl.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_MultiLvlStrRef(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get f {
    final e = node.getElement(
      'f',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_MultiLvlStrData? get multiLvlStrCache {
    final e = node.getElement(
      'multiLvlStrCache',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_MultiLvlStrData(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_AxDataSource(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_MultiLvlStrRef? get multiLvlStrRef {
    final e = node.getElement(
      'multiLvlStrRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_MultiLvlStrRef(e) : null;
  }

  D_CT_NumRef? get numRef {
    final e = node.getElement(
      'numRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumRef(e) : null;
  }

  D_CT_NumData? get numLit {
    final e = node.getElement(
      'numLit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumData(e) : null;
  }

  D_CT_StrRef? get strRef {
    final e = node.getElement(
      'strRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_StrRef(e) : null;
  }

  D_CT_StrData? get strLit {
    final e = node.getElement(
      'strLit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_StrData(e) : null;
  }
}
extension type D_CT_SerTx(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_StrRef? get strRef {
    final e = node.getElement(
      'strRef',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_StrRef(e) : null;
  }

  String? get v {
    final e = node.getElement(
      'v',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }
}
extension type D_CT_LayoutTarget(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_LayoutTarget? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_LayoutTarget.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_LayoutMode(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_LayoutMode? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_LayoutMode.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_ManualLayout(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_LayoutTarget? get layoutTarget {
    final e = node.getElement(
      'layoutTarget',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LayoutTarget(e) : null;
  }

  D_CT_LayoutMode? get xMode {
    final e = node.getElement(
      'xMode',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LayoutMode(e) : null;
  }

  D_CT_LayoutMode? get yMode {
    final e = node.getElement(
      'yMode',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LayoutMode(e) : null;
  }

  D_CT_LayoutMode? get wMode {
    final e = node.getElement(
      'wMode',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LayoutMode(e) : null;
  }

  D_CT_LayoutMode? get hMode {
    final e = node.getElement(
      'hMode',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LayoutMode(e) : null;
  }

  D_CT_Double? get x {
    final e = node.getElement(
      'x',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Double? get y {
    final e = node.getElement(
      'y',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Double? get w {
    final e = node.getElement(
      'w',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Double? get h {
    final e = node.getElement(
      'h',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Layout(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_ManualLayout? get manualLayout {
    final e = node.getElement(
      'manualLayout',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ManualLayout(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Title(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Tx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Tx(e) : null;
  }

  D_CT_Layout? get layout {
    final e = node.getElement(
      'layout',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Layout(e) : null;
  }

  D_CT_Boolean? get overlay {
    final e = node.getElement(
      'overlay',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_RotX(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }
}
extension type D_CT_HPercent(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_RotY(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }
}
extension type D_CT_DepthPercent(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_Perspective(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }
}
extension type D_CT_View3D(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_RotX? get rotX {
    final e = node.getElement(
      'rotX',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_RotX(e) : null;
  }

  D_CT_HPercent? get hPercent {
    final e = node.getElement(
      'hPercent',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_HPercent(e) : null;
  }

  D_CT_RotY? get rotY {
    final e = node.getElement(
      'rotY',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_RotY(e) : null;
  }

  D_CT_DepthPercent? get depthPercent {
    final e = node.getElement(
      'depthPercent',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DepthPercent(e) : null;
  }

  D_CT_Boolean? get rAngAx {
    final e = node.getElement(
      'rAngAx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Perspective? get perspective {
    final e = node.getElement(
      'perspective',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Perspective(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Surface(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Thickness? get thickness {
    final e = node.getElement(
      'thickness',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Thickness(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_PictureOptions? get pictureOptions {
    final e = node.getElement(
      'pictureOptions',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PictureOptions(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Thickness(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_DTable(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Boolean? get showHorzBorder {
    final e = node.getElement(
      'showHorzBorder',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showVertBorder {
    final e = node.getElement(
      'showVertBorder',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showOutline {
    final e = node.getElement(
      'showOutline',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showKeys {
    final e = node.getElement(
      'showKeys',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_GapAmount(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_Overlap(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_BubbleScale(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_SizeRepresents(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_SizeRepresents? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_SizeRepresents.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_FirstSliceAng(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }
}
extension type D_CT_HoleSize(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_SplitType(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_SplitType? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_SplitType.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_CustSplit(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_UnsignedInt> get secondPiePt {
    return node
        .findElements(
          'secondPiePt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }
}
extension type D_CT_SecondPieSize(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type D_CT_NumFmt(_i1.XmlElement node) implements _i1.XmlElement {
  String get formatCode {
    return node.getAttribute(
      'formatCode',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    )!;
  }

  bool? get sourceLinked {
    return node.getAttribute(
              'sourceLinked',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            '1' ||
        node.getAttribute(
              'sourceLinked',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'true' ||
        node.getAttribute(
              'sourceLinked',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'on';
  }
}
extension type D_CT_LblAlgn(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_LblAlgn get val {
    return D_ST_LblAlgn.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    )!;
  }
}
extension type D_CT_DLblPos(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_DLblPos get val {
    return D_ST_DLblPos.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    )!;
  }
}
extension type D_CT_DLbl(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Boolean? get delete {
    final e = node.getElement(
      'delete',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Layout? get layout {
    final e = node.getElement(
      'layout',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Layout(e) : null;
  }

  D_CT_Tx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Tx(e) : null;
  }

  D_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumFmt(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_DLblPos? get dLblPos {
    final e = node.getElement(
      'dLblPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLblPos(e) : null;
  }

  D_CT_Boolean? get showLegendKey {
    final e = node.getElement(
      'showLegendKey',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showVal {
    final e = node.getElement(
      'showVal',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showCatName {
    final e = node.getElement(
      'showCatName',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showSerName {
    final e = node.getElement(
      'showSerName',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showPercent {
    final e = node.getElement(
      'showPercent',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showBubbleSize {
    final e = node.getElement(
      'showBubbleSize',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  String? get separator {
    final e = node.getElement(
      'separator',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_DLbls(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_DLbl> get dLbl {
    return node
        .findElements(
          'dLbl',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DLbl.new);
  }

  D_CT_Boolean? get delete {
    final e = node.getElement(
      'delete',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumFmt(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_DLblPos? get dLblPos {
    final e = node.getElement(
      'dLblPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLblPos(e) : null;
  }

  D_CT_Boolean? get showLegendKey {
    final e = node.getElement(
      'showLegendKey',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showVal {
    final e = node.getElement(
      'showVal',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showCatName {
    final e = node.getElement(
      'showCatName',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showSerName {
    final e = node.getElement(
      'showSerName',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showPercent {
    final e = node.getElement(
      'showPercent',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get showBubbleSize {
    final e = node.getElement(
      'showBubbleSize',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  String? get separator {
    final e = node.getElement(
      'separator',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_Boolean? get showLeaderLines {
    final e = node.getElement(
      'showLeaderLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ChartLines? get leaderLines {
    final e = node.getElement(
      'leaderLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_MarkerStyle(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_MarkerStyle get val {
    return D_ST_MarkerStyle.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    )!;
  }
}
extension type D_CT_MarkerSize(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }
}
extension type D_CT_Marker(_i1.XmlElement node) implements _i1.XmlElement {
  String? get col {
    final e = node.getElement(
      'col',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? e.innerText : null;
  }

  String? get row {
    final e = node.getElement(
      'row',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? e.innerText : null;
  }
}
extension type D_CT_DPt(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Boolean? get invertIfNegative {
    final e = node.getElement(
      'invertIfNegative',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Marker? get marker {
    final e = node.getElement(
      'marker',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  D_CT_Boolean? get bubble3D {
    final e = node.getElement(
      'bubble3D',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_UnsignedInt? get explosion {
    final e = node.getElement(
      'explosion',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_PictureOptions? get pictureOptions {
    final e = node.getElement(
      'pictureOptions',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PictureOptions(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_TrendlineType(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_TrendlineType? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_TrendlineType.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_Order(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }
}
extension type D_CT_Period(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }
}
extension type D_CT_TrendlineLbl(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Layout? get layout {
    final e = node.getElement(
      'layout',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Layout(e) : null;
  }

  D_CT_Tx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Tx(e) : null;
  }

  D_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumFmt(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Trendline(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    final e = node.getElement(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TrendlineType? get trendlineType {
    final e = node.getElement(
      'trendlineType',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TrendlineType(e) : null;
  }

  D_CT_Order? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Order(e) : null;
  }

  D_CT_Period? get period {
    final e = node.getElement(
      'period',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Period(e) : null;
  }

  D_CT_Double? get forward {
    final e = node.getElement(
      'forward',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Double? get backward {
    final e = node.getElement(
      'backward',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Double? get intercept {
    final e = node.getElement(
      'intercept',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Boolean? get dispRSqr {
    final e = node.getElement(
      'dispRSqr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get dispEq {
    final e = node.getElement(
      'dispEq',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_TrendlineLbl? get trendlineLbl {
    final e = node.getElement(
      'trendlineLbl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TrendlineLbl(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_ErrDir(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_ErrDir get val {
    return D_ST_ErrDir.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    )!;
  }
}
extension type D_CT_ErrBarType(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_ErrBarType? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_ErrBarType.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_ErrValType(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_ErrValType? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_ErrValType.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_ErrBars(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_ErrDir? get errDir {
    final e = node.getElement(
      'errDir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ErrDir(e) : null;
  }

  D_CT_ErrBarType? get errBarType {
    final e = node.getElement(
      'errBarType',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ErrBarType(e) : null;
  }

  D_CT_ErrValType? get errValType {
    final e = node.getElement(
      'errValType',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ErrValType(e) : null;
  }

  D_CT_Boolean? get noEndCap {
    final e = node.getElement(
      'noEndCap',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_NumDataSource? get plus {
    final e = node.getElement(
      'plus',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_NumDataSource? get minus {
    final e = node.getElement(
      'minus',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_Double? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_UpDownBar(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }
}
extension type D_CT_UpDownBars(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_GapAmount? get gapWidth {
    final e = node.getElement(
      'gapWidth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_GapAmount(e) : null;
  }

  D_CT_UpDownBar? get upBars {
    final e = node.getElement(
      'upBars',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UpDownBar(e) : null;
  }

  D_CT_UpDownBar? get downBars {
    final e = node.getElement(
      'downBars',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UpDownBar(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_LineSer(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_UnsignedInt? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_SerTx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SerTx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_Marker? get marker {
    final e = node.getElement(
      'marker',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  Iterable<D_CT_DPt> get dPt {
    return node
        .findElements(
          'dPt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DPt.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  Iterable<D_CT_Trendline> get trendline {
    return node
        .findElements(
          'trendline',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Trendline.new);
  }

  D_CT_ErrBars? get errBars {
    final e = node.getElement(
      'errBars',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ErrBars(e) : null;
  }

  D_CT_AxDataSource? get cat {
    final e = node.getElement(
      'cat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxDataSource(e) : null;
  }

  D_CT_NumDataSource? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_Boolean? get smooth {
    final e = node.getElement(
      'smooth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_ScatterSer(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_UnsignedInt? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_SerTx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SerTx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_Marker? get marker {
    final e = node.getElement(
      'marker',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  Iterable<D_CT_DPt> get dPt {
    return node
        .findElements(
          'dPt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DPt.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  Iterable<D_CT_Trendline> get trendline {
    return node
        .findElements(
          'trendline',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Trendline.new);
  }

  Iterable<D_CT_ErrBars> get errBars {
    return node
        .findElements(
          'errBars',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ErrBars.new);
  }

  D_CT_AxDataSource? get xVal {
    final e = node.getElement(
      'xVal',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxDataSource(e) : null;
  }

  D_CT_NumDataSource? get yVal {
    final e = node.getElement(
      'yVal',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_Boolean? get smooth {
    final e = node.getElement(
      'smooth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_RadarSer(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_UnsignedInt? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_SerTx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SerTx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_Marker? get marker {
    final e = node.getElement(
      'marker',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  Iterable<D_CT_DPt> get dPt {
    return node
        .findElements(
          'dPt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DPt.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_AxDataSource? get cat {
    final e = node.getElement(
      'cat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxDataSource(e) : null;
  }

  D_CT_NumDataSource? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_BarSer(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_UnsignedInt? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_SerTx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SerTx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_Boolean? get invertIfNegative {
    final e = node.getElement(
      'invertIfNegative',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_PictureOptions? get pictureOptions {
    final e = node.getElement(
      'pictureOptions',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PictureOptions(e) : null;
  }

  Iterable<D_CT_DPt> get dPt {
    return node
        .findElements(
          'dPt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DPt.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  Iterable<D_CT_Trendline> get trendline {
    return node
        .findElements(
          'trendline',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Trendline.new);
  }

  D_CT_ErrBars? get errBars {
    final e = node.getElement(
      'errBars',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ErrBars(e) : null;
  }

  D_CT_AxDataSource? get cat {
    final e = node.getElement(
      'cat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxDataSource(e) : null;
  }

  D_CT_NumDataSource? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_Shape? get shape {
    final e = node.getElement(
      'shape',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Shape(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_AreaSer(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_UnsignedInt? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_SerTx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SerTx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_PictureOptions? get pictureOptions {
    final e = node.getElement(
      'pictureOptions',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PictureOptions(e) : null;
  }

  Iterable<D_CT_DPt> get dPt {
    return node
        .findElements(
          'dPt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DPt.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  Iterable<D_CT_Trendline> get trendline {
    return node
        .findElements(
          'trendline',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Trendline.new);
  }

  Iterable<D_CT_ErrBars> get errBars {
    return node
        .findElements(
          'errBars',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ErrBars.new);
  }

  D_CT_AxDataSource? get cat {
    final e = node.getElement(
      'cat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxDataSource(e) : null;
  }

  D_CT_NumDataSource? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_PieSer(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_UnsignedInt? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_SerTx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SerTx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_UnsignedInt? get explosion {
    final e = node.getElement(
      'explosion',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  Iterable<D_CT_DPt> get dPt {
    return node
        .findElements(
          'dPt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DPt.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_AxDataSource? get cat {
    final e = node.getElement(
      'cat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxDataSource(e) : null;
  }

  D_CT_NumDataSource? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_BubbleSer(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_UnsignedInt? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_SerTx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SerTx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_Boolean? get invertIfNegative {
    final e = node.getElement(
      'invertIfNegative',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_DPt> get dPt {
    return node
        .findElements(
          'dPt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DPt.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  Iterable<D_CT_Trendline> get trendline {
    return node
        .findElements(
          'trendline',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Trendline.new);
  }

  Iterable<D_CT_ErrBars> get errBars {
    return node
        .findElements(
          'errBars',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ErrBars.new);
  }

  D_CT_AxDataSource? get xVal {
    final e = node.getElement(
      'xVal',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxDataSource(e) : null;
  }

  D_CT_NumDataSource? get yVal {
    final e = node.getElement(
      'yVal',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_NumDataSource? get bubbleSize {
    final e = node.getElement(
      'bubbleSize',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_Boolean? get bubble3D {
    final e = node.getElement(
      'bubble3D',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_SurfaceSer(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_UnsignedInt? get order {
    final e = node.getElement(
      'order',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_SerTx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SerTx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_AxDataSource? get cat {
    final e = node.getElement(
      'cat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxDataSource(e) : null;
  }

  D_CT_NumDataSource? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumDataSource(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Grouping(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_Grouping? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_Grouping.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_ChartLines(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }
}
extension type D_CT_LineChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Grouping? get grouping {
    final e = node.getElement(
      'grouping',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Grouping(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_LineSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_LineSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_ChartLines? get dropLines {
    final e = node.getElement(
      'dropLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_ChartLines? get hiLowLines {
    final e = node.getElement(
      'hiLowLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_UpDownBars? get upDownBars {
    final e = node.getElement(
      'upDownBars',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UpDownBars(e) : null;
  }

  D_CT_Boolean? get marker {
    final e = node.getElement(
      'marker',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get smooth {
    final e = node.getElement(
      'smooth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Line3DChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Grouping? get grouping {
    final e = node.getElement(
      'grouping',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Grouping(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_LineSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_LineSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_ChartLines? get dropLines {
    final e = node.getElement(
      'dropLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_GapAmount? get gapDepth {
    final e = node.getElement(
      'gapDepth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_GapAmount(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_StockChart(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_LineSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_LineSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_ChartLines? get dropLines {
    final e = node.getElement(
      'dropLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_ChartLines? get hiLowLines {
    final e = node.getElement(
      'hiLowLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_UpDownBars? get upDownBars {
    final e = node.getElement(
      'upDownBars',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UpDownBars(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_ScatterStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_ScatterStyle? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_ScatterStyle.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_ScatterChart(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_ScatterStyle? get scatterStyle {
    final e = node.getElement(
      'scatterStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ScatterStyle(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_ScatterSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ScatterSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_RadarStyle(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_RadarStyle? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_RadarStyle.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_RadarChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_RadarStyle? get radarStyle {
    final e = node.getElement(
      'radarStyle',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_RadarStyle(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_RadarSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_RadarSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_BarGrouping(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_BarGrouping? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_BarGrouping.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_BarDir(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_BarDir? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_BarDir.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_BarChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_BarDir? get barDir {
    final e = node.getElement(
      'barDir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_BarDir(e) : null;
  }

  D_CT_BarGrouping? get grouping {
    final e = node.getElement(
      'grouping',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_BarGrouping(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_BarSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_BarSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_GapAmount? get gapWidth {
    final e = node.getElement(
      'gapWidth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_GapAmount(e) : null;
  }

  D_CT_Overlap? get overlap {
    final e = node.getElement(
      'overlap',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Overlap(e) : null;
  }

  Iterable<D_CT_ChartLines> get serLines {
    return node
        .findElements(
          'serLines',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ChartLines.new);
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Bar3DChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_BarDir? get barDir {
    final e = node.getElement(
      'barDir',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_BarDir(e) : null;
  }

  D_CT_BarGrouping? get grouping {
    final e = node.getElement(
      'grouping',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_BarGrouping(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_BarSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_BarSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_GapAmount? get gapWidth {
    final e = node.getElement(
      'gapWidth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_GapAmount(e) : null;
  }

  D_CT_GapAmount? get gapDepth {
    final e = node.getElement(
      'gapDepth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_GapAmount(e) : null;
  }

  D_CT_Shape? get shape {
    final e = node.getElement(
      'shape',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Shape(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_AreaChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Grouping? get grouping {
    final e = node.getElement(
      'grouping',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Grouping(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_AreaSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_AreaSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_ChartLines? get dropLines {
    final e = node.getElement(
      'dropLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Area3DChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Grouping? get grouping {
    final e = node.getElement(
      'grouping',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Grouping(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_AreaSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_AreaSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_ChartLines? get dropLines {
    final e = node.getElement(
      'dropLines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_GapAmount? get gapDepth {
    final e = node.getElement(
      'gapDepth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_GapAmount(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_PieChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_PieSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_PieSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_FirstSliceAng? get firstSliceAng {
    final e = node.getElement(
      'firstSliceAng',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_FirstSliceAng(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Pie3DChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_PieSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_PieSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_DoughnutChart(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_PieSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_PieSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_FirstSliceAng? get firstSliceAng {
    final e = node.getElement(
      'firstSliceAng',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_FirstSliceAng(e) : null;
  }

  D_CT_HoleSize? get holeSize {
    final e = node.getElement(
      'holeSize',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_HoleSize(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_OfPieType(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_OfPieType? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_OfPieType.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_OfPieChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_OfPieType? get ofPieType {
    final e = node.getElement(
      'ofPieType',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_OfPieType(e) : null;
  }

  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_PieSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_PieSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_GapAmount? get gapWidth {
    final e = node.getElement(
      'gapWidth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_GapAmount(e) : null;
  }

  D_CT_SplitType? get splitType {
    final e = node.getElement(
      'splitType',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SplitType(e) : null;
  }

  D_CT_Double? get splitPos {
    final e = node.getElement(
      'splitPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_CustSplit? get custSplit {
    final e = node.getElement(
      'custSplit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_CustSplit(e) : null;
  }

  D_CT_SecondPieSize? get secondPieSize {
    final e = node.getElement(
      'secondPieSize',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SecondPieSize(e) : null;
  }

  Iterable<D_CT_ChartLines> get serLines {
    return node
        .findElements(
          'serLines',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ChartLines.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_BubbleChart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Boolean? get varyColors {
    final e = node.getElement(
      'varyColors',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_BubbleSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_BubbleSer.new);
  }

  D_CT_DLbls? get dLbls {
    final e = node.getElement(
      'dLbls',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbls(e) : null;
  }

  D_CT_Boolean? get bubble3D {
    final e = node.getElement(
      'bubble3D',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_BubbleScale? get bubbleScale {
    final e = node.getElement(
      'bubbleScale',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_BubbleScale(e) : null;
  }

  D_CT_Boolean? get showNegBubbles {
    final e = node.getElement(
      'showNegBubbles',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_SizeRepresents? get sizeRepresents {
    final e = node.getElement(
      'sizeRepresents',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_SizeRepresents(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_BandFmt(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }
}
extension type D_CT_BandFmts(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_BandFmt> get bandFmt {
    return node
        .findElements(
          'bandFmt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_BandFmt.new);
  }
}
extension type D_CT_SurfaceChart(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Boolean? get wireframe {
    final e = node.getElement(
      'wireframe',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_SurfaceSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_SurfaceSer.new);
  }

  D_CT_BandFmts? get bandFmts {
    final e = node.getElement(
      'bandFmts',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_BandFmts(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Surface3DChart(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Boolean? get wireframe {
    final e = node.getElement(
      'wireframe',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  Iterable<D_CT_SurfaceSer> get ser {
    return node
        .findElements(
          'ser',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_SurfaceSer.new);
  }

  D_CT_BandFmts? get bandFmts {
    final e = node.getElement(
      'bandFmts',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_BandFmts(e) : null;
  }

  Iterable<D_CT_UnsignedInt> get axId {
    return node
        .findElements(
          'axId',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_UnsignedInt.new);
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_AxPos(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_AxPos get val {
    return D_ST_AxPos.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    )!;
  }
}
extension type D_CT_Crosses(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_Crosses get val {
    return D_ST_Crosses.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    )!;
  }
}
extension type D_CT_CrossBetween(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_CrossBetween get val {
    return D_ST_CrossBetween.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    )!;
  }
}
extension type D_CT_TickMark(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_TickMark? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_TickMark.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_TickLblPos(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_TickLblPos? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_TickLblPos.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_Skip(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    )!;
  }
}
extension type D_CT_TimeUnit(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_TimeUnit? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_TimeUnit.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_AxisUnit(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    )!;
  }
}
extension type D_CT_BuiltInUnit(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_BuiltInUnit? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_BuiltInUnit.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_PictureFormat(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_PictureFormat get val {
    return D_ST_PictureFormat.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    )!;
  }
}
extension type D_CT_PictureStackUnit(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    )!;
  }
}
extension type D_CT_PictureOptions(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Boolean? get applyToFront {
    final e = node.getElement(
      'applyToFront',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get applyToSides {
    final e = node.getElement(
      'applyToSides',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get applyToEnd {
    final e = node.getElement(
      'applyToEnd',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_PictureFormat? get pictureFormat {
    final e = node.getElement(
      'pictureFormat',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PictureFormat(e) : null;
  }

  D_CT_PictureStackUnit? get pictureStackUnit {
    final e = node.getElement(
      'pictureStackUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PictureStackUnit(e) : null;
  }
}
extension type D_CT_DispUnitsLbl(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Layout? get layout {
    final e = node.getElement(
      'layout',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Layout(e) : null;
  }

  D_CT_Tx? get tx {
    final e = node.getElement(
      'tx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Tx(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }
}
extension type D_CT_DispUnits(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Double? get custUnit {
    final e = node.getElement(
      'custUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_BuiltInUnit? get builtInUnit {
    final e = node.getElement(
      'builtInUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_BuiltInUnit(e) : null;
  }

  D_CT_DispUnitsLbl? get dispUnitsLbl {
    final e = node.getElement(
      'dispUnitsLbl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DispUnitsLbl(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Orientation(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_Orientation? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_Orientation.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_LogBase(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    )!;
  }
}
extension type D_CT_Scaling(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_LogBase? get logBase {
    final e = node.getElement(
      'logBase',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LogBase(e) : null;
  }

  D_CT_Orientation? get orientation {
    final e = node.getElement(
      'orientation',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Orientation(e) : null;
  }

  D_CT_Double? get max {
    final e = node.getElement(
      'max',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Double? get min {
    final e = node.getElement(
      'min',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_LblOffset(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_CatAx(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get axId {
    final e = node.getElement(
      'axId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Scaling? get scaling {
    final e = node.getElement(
      'scaling',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Scaling(e) : null;
  }

  D_CT_Boolean? get delete {
    final e = node.getElement(
      'delete',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_AxPos? get axPos {
    final e = node.getElement(
      'axPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxPos(e) : null;
  }

  D_CT_ChartLines? get majorGridlines {
    final e = node.getElement(
      'majorGridlines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_ChartLines? get minorGridlines {
    final e = node.getElement(
      'minorGridlines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_Title? get title {
    final e = node.getElement(
      'title',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Title(e) : null;
  }

  D_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumFmt(e) : null;
  }

  D_CT_TickMark? get majorTickMark {
    final e = node.getElement(
      'majorTickMark',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickMark(e) : null;
  }

  D_CT_TickMark? get minorTickMark {
    final e = node.getElement(
      'minorTickMark',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickMark(e) : null;
  }

  D_CT_TickLblPos? get tickLblPos {
    final e = node.getElement(
      'tickLblPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickLblPos(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_UnsignedInt? get crossAx {
    final e = node.getElement(
      'crossAx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Crosses? get crosses {
    final e = node.getElement(
      'crosses',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Crosses(e) : null;
  }

  D_CT_Double? get crossesAt {
    final e = node.getElement(
      'crossesAt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Boolean? get auto {
    final e = node.getElement(
      'auto',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_LblAlgn? get lblAlgn {
    final e = node.getElement(
      'lblAlgn',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LblAlgn(e) : null;
  }

  D_CT_LblOffset? get lblOffset {
    final e = node.getElement(
      'lblOffset',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LblOffset(e) : null;
  }

  D_CT_Skip? get tickLblSkip {
    final e = node.getElement(
      'tickLblSkip',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Skip(e) : null;
  }

  D_CT_Skip? get tickMarkSkip {
    final e = node.getElement(
      'tickMarkSkip',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Skip(e) : null;
  }

  D_CT_Boolean? get noMultiLvlLbl {
    final e = node.getElement(
      'noMultiLvlLbl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_DateAx(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get axId {
    final e = node.getElement(
      'axId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Scaling? get scaling {
    final e = node.getElement(
      'scaling',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Scaling(e) : null;
  }

  D_CT_Boolean? get delete {
    final e = node.getElement(
      'delete',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_AxPos? get axPos {
    final e = node.getElement(
      'axPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxPos(e) : null;
  }

  D_CT_ChartLines? get majorGridlines {
    final e = node.getElement(
      'majorGridlines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_ChartLines? get minorGridlines {
    final e = node.getElement(
      'minorGridlines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_Title? get title {
    final e = node.getElement(
      'title',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Title(e) : null;
  }

  D_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumFmt(e) : null;
  }

  D_CT_TickMark? get majorTickMark {
    final e = node.getElement(
      'majorTickMark',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickMark(e) : null;
  }

  D_CT_TickMark? get minorTickMark {
    final e = node.getElement(
      'minorTickMark',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickMark(e) : null;
  }

  D_CT_TickLblPos? get tickLblPos {
    final e = node.getElement(
      'tickLblPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickLblPos(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_UnsignedInt? get crossAx {
    final e = node.getElement(
      'crossAx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Crosses? get crosses {
    final e = node.getElement(
      'crosses',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Crosses(e) : null;
  }

  D_CT_Double? get crossesAt {
    final e = node.getElement(
      'crossesAt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Boolean? get auto {
    final e = node.getElement(
      'auto',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_LblOffset? get lblOffset {
    final e = node.getElement(
      'lblOffset',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LblOffset(e) : null;
  }

  D_CT_TimeUnit? get baseTimeUnit {
    final e = node.getElement(
      'baseTimeUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TimeUnit(e) : null;
  }

  D_CT_AxisUnit? get majorUnit {
    final e = node.getElement(
      'majorUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxisUnit(e) : null;
  }

  D_CT_TimeUnit? get majorTimeUnit {
    final e = node.getElement(
      'majorTimeUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TimeUnit(e) : null;
  }

  D_CT_AxisUnit? get minorUnit {
    final e = node.getElement(
      'minorUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxisUnit(e) : null;
  }

  D_CT_TimeUnit? get minorTimeUnit {
    final e = node.getElement(
      'minorTimeUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TimeUnit(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_SerAx(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get axId {
    final e = node.getElement(
      'axId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Scaling? get scaling {
    final e = node.getElement(
      'scaling',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Scaling(e) : null;
  }

  D_CT_Boolean? get delete {
    final e = node.getElement(
      'delete',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_AxPos? get axPos {
    final e = node.getElement(
      'axPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxPos(e) : null;
  }

  D_CT_ChartLines? get majorGridlines {
    final e = node.getElement(
      'majorGridlines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_ChartLines? get minorGridlines {
    final e = node.getElement(
      'minorGridlines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_Title? get title {
    final e = node.getElement(
      'title',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Title(e) : null;
  }

  D_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumFmt(e) : null;
  }

  D_CT_TickMark? get majorTickMark {
    final e = node.getElement(
      'majorTickMark',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickMark(e) : null;
  }

  D_CT_TickMark? get minorTickMark {
    final e = node.getElement(
      'minorTickMark',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickMark(e) : null;
  }

  D_CT_TickLblPos? get tickLblPos {
    final e = node.getElement(
      'tickLblPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickLblPos(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_UnsignedInt? get crossAx {
    final e = node.getElement(
      'crossAx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Crosses? get crosses {
    final e = node.getElement(
      'crosses',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Crosses(e) : null;
  }

  D_CT_Double? get crossesAt {
    final e = node.getElement(
      'crossesAt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_Skip? get tickLblSkip {
    final e = node.getElement(
      'tickLblSkip',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Skip(e) : null;
  }

  D_CT_Skip? get tickMarkSkip {
    final e = node.getElement(
      'tickMarkSkip',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Skip(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_ValAx(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get axId {
    final e = node.getElement(
      'axId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Scaling? get scaling {
    final e = node.getElement(
      'scaling',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Scaling(e) : null;
  }

  D_CT_Boolean? get delete {
    final e = node.getElement(
      'delete',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_AxPos? get axPos {
    final e = node.getElement(
      'axPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxPos(e) : null;
  }

  D_CT_ChartLines? get majorGridlines {
    final e = node.getElement(
      'majorGridlines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_ChartLines? get minorGridlines {
    final e = node.getElement(
      'minorGridlines',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ChartLines(e) : null;
  }

  D_CT_Title? get title {
    final e = node.getElement(
      'title',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Title(e) : null;
  }

  D_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_NumFmt(e) : null;
  }

  D_CT_TickMark? get majorTickMark {
    final e = node.getElement(
      'majorTickMark',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickMark(e) : null;
  }

  D_CT_TickMark? get minorTickMark {
    final e = node.getElement(
      'minorTickMark',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickMark(e) : null;
  }

  D_CT_TickLblPos? get tickLblPos {
    final e = node.getElement(
      'tickLblPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TickLblPos(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_UnsignedInt? get crossAx {
    final e = node.getElement(
      'crossAx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Crosses? get crosses {
    final e = node.getElement(
      'crosses',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Crosses(e) : null;
  }

  D_CT_Double? get crossesAt {
    final e = node.getElement(
      'crossesAt',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Double(e) : null;
  }

  D_CT_CrossBetween? get crossBetween {
    final e = node.getElement(
      'crossBetween',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_CrossBetween(e) : null;
  }

  D_CT_AxisUnit? get majorUnit {
    final e = node.getElement(
      'majorUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxisUnit(e) : null;
  }

  D_CT_AxisUnit? get minorUnit {
    final e = node.getElement(
      'minorUnit',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_AxisUnit(e) : null;
  }

  D_CT_DispUnits? get dispUnits {
    final e = node.getElement(
      'dispUnits',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DispUnits(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_PlotArea(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Layout? get layout {
    final e = node.getElement(
      'layout',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Layout(e) : null;
  }

  Iterable<D_CT_AreaChart> get areaChart {
    return node
        .findElements(
          'areaChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_AreaChart.new);
  }

  Iterable<D_CT_Area3DChart> get area3DChart {
    return node
        .findElements(
          'area3DChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Area3DChart.new);
  }

  Iterable<D_CT_LineChart> get lineChart {
    return node
        .findElements(
          'lineChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_LineChart.new);
  }

  Iterable<D_CT_Line3DChart> get line3DChart {
    return node
        .findElements(
          'line3DChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Line3DChart.new);
  }

  Iterable<D_CT_StockChart> get stockChart {
    return node
        .findElements(
          'stockChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_StockChart.new);
  }

  Iterable<D_CT_RadarChart> get radarChart {
    return node
        .findElements(
          'radarChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_RadarChart.new);
  }

  Iterable<D_CT_ScatterChart> get scatterChart {
    return node
        .findElements(
          'scatterChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ScatterChart.new);
  }

  Iterable<D_CT_PieChart> get pieChart {
    return node
        .findElements(
          'pieChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_PieChart.new);
  }

  Iterable<D_CT_Pie3DChart> get pie3DChart {
    return node
        .findElements(
          'pie3DChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Pie3DChart.new);
  }

  Iterable<D_CT_DoughnutChart> get doughnutChart {
    return node
        .findElements(
          'doughnutChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DoughnutChart.new);
  }

  Iterable<D_CT_BarChart> get barChart {
    return node
        .findElements(
          'barChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_BarChart.new);
  }

  Iterable<D_CT_Bar3DChart> get bar3DChart {
    return node
        .findElements(
          'bar3DChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Bar3DChart.new);
  }

  Iterable<D_CT_OfPieChart> get ofPieChart {
    return node
        .findElements(
          'ofPieChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_OfPieChart.new);
  }

  Iterable<D_CT_SurfaceChart> get surfaceChart {
    return node
        .findElements(
          'surfaceChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_SurfaceChart.new);
  }

  Iterable<D_CT_Surface3DChart> get surface3DChart {
    return node
        .findElements(
          'surface3DChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_Surface3DChart.new);
  }

  Iterable<D_CT_BubbleChart> get bubbleChart {
    return node
        .findElements(
          'bubbleChart',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_BubbleChart.new);
  }

  Iterable<D_CT_ValAx> get valAx {
    return node
        .findElements(
          'valAx',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ValAx.new);
  }

  Iterable<D_CT_CatAx> get catAx {
    return node
        .findElements(
          'catAx',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_CatAx.new);
  }

  Iterable<D_CT_DateAx> get dateAx {
    return node
        .findElements(
          'dateAx',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_DateAx.new);
  }

  Iterable<D_CT_SerAx> get serAx {
    return node
        .findElements(
          'serAx',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_SerAx.new);
  }

  D_CT_DTable? get dTable {
    final e = node.getElement(
      'dTable',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DTable(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_PivotFmt(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_Marker? get marker {
    final e = node.getElement(
      'marker',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  D_CT_DLbl? get dLbl {
    final e = node.getElement(
      'dLbl',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DLbl(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_PivotFmts(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_PivotFmt> get pivotFmt {
    return node
        .findElements(
          'pivotFmt',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_PivotFmt.new);
  }
}
extension type D_CT_LegendPos(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_LegendPos? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_LegendPos.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_LegendEntry(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_UnsignedInt? get idx {
    final e = node.getElement(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  D_CT_Boolean? get delete {
    final e = node.getElement(
      'delete',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Legend(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_LegendPos? get legendPos {
    final e = node.getElement(
      'legendPos',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_LegendPos(e) : null;
  }

  Iterable<D_CT_LegendEntry> get legendEntry {
    return node
        .findElements(
          'legendEntry',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_LegendEntry.new);
  }

  D_CT_Layout? get layout {
    final e = node.getElement(
      'layout',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Layout(e) : null;
  }

  D_CT_Boolean? get overlay {
    final e = node.getElement(
      'overlay',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_DispBlanksAs(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_DispBlanksAs? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_DispBlanksAs.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_Chart(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Title? get title {
    final e = node.getElement(
      'title',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Title(e) : null;
  }

  D_CT_Boolean? get autoTitleDeleted {
    final e = node.getElement(
      'autoTitleDeleted',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_PivotFmts? get pivotFmts {
    final e = node.getElement(
      'pivotFmts',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PivotFmts(e) : null;
  }

  D_CT_View3D? get view3D {
    final e = node.getElement(
      'view3D',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_View3D(e) : null;
  }

  D_CT_Surface? get floor {
    final e = node.getElement(
      'floor',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Surface(e) : null;
  }

  D_CT_Surface? get sideWall {
    final e = node.getElement(
      'sideWall',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Surface(e) : null;
  }

  D_CT_Surface? get backWall {
    final e = node.getElement(
      'backWall',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Surface(e) : null;
  }

  D_CT_PlotArea? get plotArea {
    final e = node.getElement(
      'plotArea',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PlotArea(e) : null;
  }

  D_CT_Legend? get legend {
    final e = node.getElement(
      'legend',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Legend(e) : null;
  }

  D_CT_Boolean? get plotVisOnly {
    final e = node.getElement(
      'plotVisOnly',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_DispBlanksAs? get dispBlanksAs {
    final e = node.getElement(
      'dispBlanksAs',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_DispBlanksAs(e) : null;
  }

  D_CT_Boolean? get showDLblsOverMax {
    final e = node.getElement(
      'showDLblsOverMax',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}
extension type D_CT_Style(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    )!;
  }
}
extension type D_CT_PivotSource(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    final e = node.getElement(
      'name',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  D_CT_UnsignedInt? get fmtId {
    final e = node.getElement(
      'fmtId',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_UnsignedInt(e) : null;
  }

  Iterable<D_CT_ExtensionList> get extLst {
    return node
        .findElements(
          'extLst',
          namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
        )
        .map(D_CT_ExtensionList.new);
  }
}
extension type D_CT_Protection(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Boolean? get chartObject {
    final e = node.getElement(
      'chartObject',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get data {
    final e = node.getElement(
      'data',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get formatting {
    final e = node.getElement(
      'formatting',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get selection {
    final e = node.getElement(
      'selection',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Boolean? get userInterface {
    final e = node.getElement(
      'userInterface',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }
}
extension type D_CT_HeaderFooter(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get alignWithMargins {
    return node.getAttribute(
              'alignWithMargins',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            '1' ||
        node.getAttribute(
              'alignWithMargins',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'true' ||
        node.getAttribute(
              'alignWithMargins',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'on';
  }

  bool? get differentOddEven {
    return node.getAttribute(
              'differentOddEven',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            '1' ||
        node.getAttribute(
              'differentOddEven',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'true' ||
        node.getAttribute(
              'differentOddEven',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'on';
  }

  bool? get differentFirst {
    return node.getAttribute(
              'differentFirst',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            '1' ||
        node.getAttribute(
              'differentFirst',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'true' ||
        node.getAttribute(
              'differentFirst',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'on';
  }

  String? get oddHeader {
    final e = node.getElement(
      'oddHeader',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  String? get oddFooter {
    final e = node.getElement(
      'oddFooter',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  String? get evenHeader {
    final e = node.getElement(
      'evenHeader',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  String? get evenFooter {
    final e = node.getElement(
      'evenFooter',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  String? get firstHeader {
    final e = node.getElement(
      'firstHeader',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }

  String? get firstFooter {
    final e = node.getElement(
      'firstFooter',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? e.innerText : null;
  }
}
extension type D_CT_PageMargins(_i1.XmlElement node) implements _i1.XmlElement {
  double get l {
    return double.parse(
      node.getAttribute(
        'l',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }

  double get r {
    return double.parse(
      node.getAttribute(
        'r',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }

  double get t {
    return double.parse(
      node.getAttribute(
        't',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }

  double get b {
    return double.parse(
      node.getAttribute(
        'b',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }

  double get header {
    return double.parse(
      node.getAttribute(
        'header',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }

  double get footer {
    return double.parse(
      node.getAttribute(
        'footer',
        namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
      )!,
    );
  }
}
extension type D_CT_ExternalData(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Boolean? get autoUpdate {
    final e = node.getElement(
      'autoUpdate',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }
}
extension type D_CT_PageSetup(_i1.XmlElement node) implements _i1.XmlElement {
  int? get paperSize {
    return node.getAttribute(
              'paperSize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'paperSize',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }

  String? get paperHeight {
    return node.getAttribute(
      'paperHeight',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }

  String? get paperWidth {
    return node.getAttribute(
      'paperWidth',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
  }

  int? get firstPageNumber {
    return node.getAttribute(
              'firstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'firstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }

  D_ST_PageSetupOrientation? get orientation {
    return node.getAttribute(
              'orientation',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? D_ST_PageSetupOrientation.fromValue(
            node.getAttribute(
              'orientation',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }

  bool? get blackAndWhite {
    return node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            '1' ||
        node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'true' ||
        node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'on';
  }

  bool? get draft {
    return node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            '1' ||
        node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'true' ||
        node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'on';
  }

  bool? get useFirstPageNumber {
    return node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            '1' ||
        node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'true' ||
        node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) ==
            'on';
  }

  int? get horizontalDpi {
    return node.getAttribute(
              'horizontalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'horizontalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }

  int? get verticalDpi {
    return node.getAttribute(
              'verticalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'verticalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }

  int? get copies {
    return node.getAttribute(
              'copies',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'copies',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/chart',
            )!,
          )
        : null;
  }
}
extension type D_CT_PrintSettings(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_HeaderFooter? get headerFooter {
    final e = node.getElement(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_HeaderFooter(e) : null;
  }

  D_CT_PageMargins? get pageMargins {
    final e = node.getElement(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PageMargins(e) : null;
  }

  D_CT_PageSetup? get pageSetup {
    final e = node.getElement(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PageSetup(e) : null;
  }

  D_CT_RelId? get legacyDrawingHF {
    final e = node.getElement(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_RelId(e) : null;
  }
}
extension type D_CT_ChartSpace(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_Boolean? get date1904 {
    final e = node.getElement(
      'date1904',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_TextLanguageID? get lang {
    final e = node.getElement(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextLanguageID(e) : null;
  }

  D_CT_Boolean? get roundedCorners {
    final e = node.getElement(
      'roundedCorners',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Boolean(e) : null;
  }

  D_CT_Style? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Style(e) : null;
  }

  D_CT_ColorMapping? get clrMapOvr {
    final e = node.getElement(
      'clrMapOvr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ColorMapping(e) : null;
  }

  D_CT_PivotSource? get pivotSource {
    final e = node.getElement(
      'pivotSource',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PivotSource(e) : null;
  }

  D_CT_Protection? get protection {
    final e = node.getElement(
      'protection',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Protection(e) : null;
  }

  D_CT_Chart? get chart {
    final e = node.getElement(
      'chart',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_Chart(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_TextBody? get txPr {
    final e = node.getElement(
      'txPr',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  D_CT_ExternalData? get externalData {
    final e = node.getElement(
      'externalData',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExternalData(e) : null;
  }

  D_CT_PrintSettings? get printSettings {
    final e = node.getElement(
      'printSettings',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_PrintSettings(e) : null;
  }

  D_CT_RelId? get userShapes {
    final e = node.getElement(
      'userShapes',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_RelId(e) : null;
  }

  D_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/drawingml/2006/chart',
    );
    return e != null ? D_CT_ExtensionList(e) : null;
  }
}

enum D_ST_LayoutTarget {
  inner('inner'),
  outer('outer');

  const D_ST_LayoutTarget(this.value);

  final String value;

  static D_ST_LayoutTarget? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LayoutMode {
  edge('edge'),
  factor('factor');

  const D_ST_LayoutMode(this.value);

  final String value;

  static D_ST_LayoutMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_SizeRepresents {
  area('area'),
  w('w');

  const D_ST_SizeRepresents(this.value);

  final String value;

  static D_ST_SizeRepresents? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_SplitType {
  auto('auto'),
  cust('cust'),
  percent('percent'),
  pos('pos'),
  val('val');

  const D_ST_SplitType(this.value);

  final String value;

  static D_ST_SplitType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LblAlgn {
  ctr('ctr'),
  l('l'),
  r('r');

  const D_ST_LblAlgn(this.value);

  final String value;

  static D_ST_LblAlgn? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_DLblPos {
  bestFit('bestFit'),
  b('b'),
  ctr('ctr'),
  inBase('inBase'),
  inEnd('inEnd'),
  l('l'),
  outEnd('outEnd'),
  r('r'),
  t('t');

  const D_ST_DLblPos(this.value);

  final String value;

  static D_ST_DLblPos? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_MarkerStyle {
  circle('circle'),
  dash('dash'),
  diamond('diamond'),
  dot('dot'),
  none('none'),
  picture('picture'),
  plus('plus'),
  square('square'),
  star('star'),
  triangle('triangle'),
  x('x'),
  auto('auto');

  const D_ST_MarkerStyle(this.value);

  final String value;

  static D_ST_MarkerStyle? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TrendlineType {
  exp('exp'),
  linear('linear'),
  log('log'),
  movingAvg('movingAvg'),
  poly('poly'),
  power('power');

  const D_ST_TrendlineType(this.value);

  final String value;

  static D_ST_TrendlineType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ErrDir {
  x('x'),
  y('y');

  const D_ST_ErrDir(this.value);

  final String value;

  static D_ST_ErrDir? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ErrBarType {
  both('both'),
  minus('minus'),
  plus('plus');

  const D_ST_ErrBarType(this.value);

  final String value;

  static D_ST_ErrBarType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ErrValType {
  cust('cust'),
  fixedVal('fixedVal'),
  percentage('percentage'),
  stdDev('stdDev'),
  stdErr('stdErr');

  const D_ST_ErrValType(this.value);

  final String value;

  static D_ST_ErrValType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_Grouping {
  percentStacked('percentStacked'),
  standard('standard'),
  stacked('stacked');

  const D_ST_Grouping(this.value);

  final String value;

  static D_ST_Grouping? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_ScatterStyle {
  none('none'),
  line('line'),
  lineMarker('lineMarker'),
  marker('marker'),
  smooth('smooth'),
  smoothMarker('smoothMarker');

  const D_ST_ScatterStyle(this.value);

  final String value;

  static D_ST_ScatterStyle? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_RadarStyle {
  standard('standard'),
  marker('marker'),
  filled('filled');

  const D_ST_RadarStyle(this.value);

  final String value;

  static D_ST_RadarStyle? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BarGrouping {
  percentStacked('percentStacked'),
  clustered('clustered'),
  standard('standard'),
  stacked('stacked');

  const D_ST_BarGrouping(this.value);

  final String value;

  static D_ST_BarGrouping? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BarDir {
  bar('bar'),
  col('col');

  const D_ST_BarDir(this.value);

  final String value;

  static D_ST_BarDir? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_Shape {
  cone('cone'),
  coneToMax('coneToMax'),
  box('box'),
  cylinder('cylinder'),
  pyramid('pyramid'),
  pyramidToMax('pyramidToMax');

  const D_ST_Shape(this.value);

  final String value;

  static D_ST_Shape? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_OfPieType {
  pie('pie'),
  bar('bar');

  const D_ST_OfPieType(this.value);

  final String value;

  static D_ST_OfPieType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_AxPos {
  b('b'),
  l('l'),
  r('r'),
  t('t');

  const D_ST_AxPos(this.value);

  final String value;

  static D_ST_AxPos? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_Crosses {
  autoZero('autoZero'),
  max('max'),
  min('min');

  const D_ST_Crosses(this.value);

  final String value;

  static D_ST_Crosses? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_CrossBetween {
  between('between'),
  midCat('midCat');

  const D_ST_CrossBetween(this.value);

  final String value;

  static D_ST_CrossBetween? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TickMark {
  cross('cross'),
  in_('in'),
  none('none'),
  out('out');

  const D_ST_TickMark(this.value);

  final String value;

  static D_ST_TickMark? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TickLblPos {
  high('high'),
  low('low'),
  nextTo('nextTo'),
  none('none');

  const D_ST_TickLblPos(this.value);

  final String value;

  static D_ST_TickLblPos? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_TimeUnit {
  days('days'),
  months('months'),
  years('years');

  const D_ST_TimeUnit(this.value);

  final String value;

  static D_ST_TimeUnit? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_BuiltInUnit {
  hundreds('hundreds'),
  thousands('thousands'),
  tenThousands('tenThousands'),
  hundredThousands('hundredThousands'),
  millions('millions'),
  tenMillions('tenMillions'),
  hundredMillions('hundredMillions'),
  billions('billions'),
  trillions('trillions');

  const D_ST_BuiltInUnit(this.value);

  final String value;

  static D_ST_BuiltInUnit? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PictureFormat {
  stretch('stretch'),
  stack('stack'),
  stackScale('stackScale');

  const D_ST_PictureFormat(this.value);

  final String value;

  static D_ST_PictureFormat? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_Orientation {
  maxMin('maxMin'),
  minMax('minMax');

  const D_ST_Orientation(this.value);

  final String value;

  static D_ST_Orientation? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_LegendPos {
  b('b'),
  tr('tr'),
  l('l'),
  r('r'),
  t('t');

  const D_ST_LegendPos(this.value);

  final String value;

  static D_ST_LegendPos? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_DispBlanksAs {
  span('span'),
  gap('gap'),
  zero('zero');

  const D_ST_DispBlanksAs(this.value);

  final String value;

  static D_ST_DispBlanksAs? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum D_ST_PageSetupOrientation {
  default_('default'),
  portrait('portrait'),
  landscape('landscape');

  const D_ST_PageSetupOrientation(this.value);

  final String value;

  static D_ST_PageSetupOrientation? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

extension type D_CT_ShapeNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualDrawingShapeProps? get cNvSpPr {
    final e = node.getElement(
      'cNvSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingShapeProps(e) : null;
  }
}
extension type D_CT_ConnectorNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualConnectorProperties? get cNvCxnSpPr {
    final e = node.getElement(
      'cNvCxnSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualConnectorProperties(e) : null;
  }
}
extension type D_CT_Connector(_i1.XmlElement node) implements _i1.XmlElement {
  String? get macro {
    return node.getAttribute(
      'macro',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
  }

  bool? get fPublished {
    return node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'on';
  }

  D_CT_ConnectorNonVisual? get nvCxnSpPr {
    final e = node.getElement(
      'nvCxnSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_ConnectorNonVisual(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }
}
extension type D_CT_PictureNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualPictureProperties? get cNvPicPr {
    final e = node.getElement(
      'cNvPicPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualPictureProperties(e) : null;
  }
}
extension type D_CT_Picture(_i1.XmlElement node) implements _i1.XmlElement {
  String? get macro {
    return node.getAttribute(
      'macro',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
  }

  bool? get fPublished {
    return node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'on';
  }

  D_CT_PictureNonVisual? get nvPicPr {
    final e = node.getElement(
      'nvPicPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_PictureNonVisual(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }
}
extension type D_CT_GraphicFrameNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGraphicFrameProperties? get cNvGraphicFramePr {
    final e = node.getElement(
      'cNvGraphicFramePr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_NonVisualGraphicFrameProperties(e) : null;
  }
}
extension type D_CT_GroupShapeNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGroupDrawingShapeProps? get cNvGrpSpPr {
    final e = node.getElement(
      'cNvGrpSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualGroupDrawingShapeProps(e) : null;
  }
}
extension type D_CT_GroupShape(_i1.XmlElement node) implements _i1.XmlElement {
  D_CT_GroupShapeNonVisual? get nvGrpSpPr {
    final e = node.getElement(
      'nvGrpSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GroupShapeNonVisual(e) : null;
  }

  D_CT_GroupShapeProperties? get grpSpPr {
    final e = node.getElement(
      'grpSpPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GroupShapeProperties(e) : null;
  }

  Iterable<D_CT_Shape> get sp {
    return node
        .findElements(
          'sp',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
        )
        .map(D_CT_Shape.new);
  }

  Iterable<D_CT_GroupShape> get grpSp {
    return node
        .findElements(
          'grpSp',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
        )
        .map(D_CT_GroupShape.new);
  }

  Iterable<D_CT_GraphicalObjectFrame> get graphicFrame {
    return node
        .findElements(
          'graphicFrame',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
        )
        .map(D_CT_GraphicalObjectFrame.new);
  }

  Iterable<D_CT_Connector> get cxnSp {
    return node
        .findElements(
          'cxnSp',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
        )
        .map(D_CT_Connector.new);
  }

  Iterable<D_CT_Picture> get pic {
    return node
        .findElements(
          'pic',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
        )
        .map(D_CT_Picture.new);
  }
}
extension type D_CT_RelSizeAnchor(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Marker? get from {
    final e = node.getElement(
      'from',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  D_CT_Marker? get to {
    final e = node.getElement(
      'to',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  D_CT_Shape? get sp {
    final e = node.getElement(
      'sp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Shape(e) : null;
  }

  D_CT_GroupShape? get grpSp {
    final e = node.getElement(
      'grpSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_GroupShape(e) : null;
  }

  D_CT_GraphicalObjectFrame? get graphicFrame {
    final e = node.getElement(
      'graphicFrame',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_GraphicalObjectFrame(e) : null;
  }

  D_CT_Connector? get cxnSp {
    final e = node.getElement(
      'cxnSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Connector(e) : null;
  }

  D_CT_Picture? get pic {
    final e = node.getElement(
      'pic',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Picture(e) : null;
  }

  D_CT_Rel? get contentPart {
    final e = node.getElement(
      'contentPart',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Rel(e) : null;
  }
}
extension type D_CT_AbsSizeAnchor(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Marker? get from {
    final e = node.getElement(
      'from',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  D_CT_PositiveSize2D? get ext {
    final e = node.getElement(
      'ext',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }

  D_CT_Shape? get sp {
    final e = node.getElement(
      'sp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Shape(e) : null;
  }

  D_CT_GroupShape? get grpSp {
    final e = node.getElement(
      'grpSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_GroupShape(e) : null;
  }

  D_CT_GraphicalObjectFrame? get graphicFrame {
    final e = node.getElement(
      'graphicFrame',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_GraphicalObjectFrame(e) : null;
  }

  D_CT_Connector? get cxnSp {
    final e = node.getElement(
      'cxnSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Connector(e) : null;
  }

  D_CT_Picture? get pic {
    final e = node.getElement(
      'pic',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Picture(e) : null;
  }

  D_CT_Rel? get contentPart {
    final e = node.getElement(
      'contentPart',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/chartDrawing',
    );
    return e != null ? D_CT_Rel(e) : null;
  }
}
extension type D_CT_Drawing(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<D_CT_TwoCellAnchor> get twoCellAnchor {
    return node
        .findElements(
          'twoCellAnchor',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
        )
        .map(D_CT_TwoCellAnchor.new);
  }

  Iterable<D_CT_OneCellAnchor> get oneCellAnchor {
    return node
        .findElements(
          'oneCellAnchor',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
        )
        .map(D_CT_OneCellAnchor.new);
  }

  Iterable<D_CT_AbsoluteAnchor> get absoluteAnchor {
    return node
        .findElements(
          'absoluteAnchor',
          namespace:
              'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
        )
        .map(D_CT_AbsoluteAnchor.new);
  }
}
extension type D_CT_AnchorClientData(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get fLocksWithSheet {
    return node.getAttribute(
              'fLocksWithSheet',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'fLocksWithSheet',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'fLocksWithSheet',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'on';
  }

  bool? get fPrintsWithSheet {
    return node.getAttribute(
              'fPrintsWithSheet',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'fPrintsWithSheet',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'fPrintsWithSheet',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'on';
  }
}
extension type D_CT_GraphicalObjectFrameNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGraphicFrameProperties? get cNvGraphicFramePr {
    final e = node.getElement(
      'cNvGraphicFramePr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_NonVisualGraphicFrameProperties(e) : null;
  }
}
extension type D_CT_GraphicalObjectFrame(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get macro {
    return node.getAttribute(
      'macro',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
  }

  bool? get fPublished {
    return node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            '1' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'true' ||
        node.getAttribute(
              'fPublished',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) ==
            'on';
  }

  D_CT_GraphicalObjectFrameNonVisual? get nvGraphicFramePr {
    final e = node.getElement(
      'nvGraphicFramePr',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GraphicalObjectFrameNonVisual(e) : null;
  }

  D_CT_Transform2D? get xfrm {
    final e = node.getElement(
      'xfrm',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Transform2D(e) : null;
  }
}
extension type D_CT_Rel(_i1.XmlElement node) implements _i1.XmlElement {}
extension type D_CT_TwoCellAnchor(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_EditAs? get editAs {
    return node.getAttribute(
              'editAs',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            ) !=
            null
        ? D_ST_EditAs.fromValue(
            node.getAttribute(
              'editAs',
              namespace:
                  'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
            )!,
          )
        : null;
  }

  D_CT_Marker? get from {
    final e = node.getElement(
      'from',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  D_CT_Marker? get to {
    final e = node.getElement(
      'to',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  D_CT_Shape? get sp {
    final e = node.getElement(
      'sp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Shape(e) : null;
  }

  D_CT_GroupShape? get grpSp {
    final e = node.getElement(
      'grpSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GroupShape(e) : null;
  }

  D_CT_GraphicalObjectFrame? get graphicFrame {
    final e = node.getElement(
      'graphicFrame',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GraphicalObjectFrame(e) : null;
  }

  D_CT_Connector? get cxnSp {
    final e = node.getElement(
      'cxnSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Connector(e) : null;
  }

  D_CT_Picture? get pic {
    final e = node.getElement(
      'pic',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Picture(e) : null;
  }

  D_CT_Rel? get contentPart {
    final e = node.getElement(
      'contentPart',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Rel(e) : null;
  }

  D_CT_AnchorClientData? get clientData {
    final e = node.getElement(
      'clientData',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_AnchorClientData(e) : null;
  }
}
extension type D_CT_OneCellAnchor(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Marker? get from {
    final e = node.getElement(
      'from',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Marker(e) : null;
  }

  D_CT_PositiveSize2D? get ext {
    final e = node.getElement(
      'ext',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }

  D_CT_Shape? get sp {
    final e = node.getElement(
      'sp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Shape(e) : null;
  }

  D_CT_GroupShape? get grpSp {
    final e = node.getElement(
      'grpSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GroupShape(e) : null;
  }

  D_CT_GraphicalObjectFrame? get graphicFrame {
    final e = node.getElement(
      'graphicFrame',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GraphicalObjectFrame(e) : null;
  }

  D_CT_Connector? get cxnSp {
    final e = node.getElement(
      'cxnSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Connector(e) : null;
  }

  D_CT_Picture? get pic {
    final e = node.getElement(
      'pic',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Picture(e) : null;
  }

  D_CT_Rel? get contentPart {
    final e = node.getElement(
      'contentPart',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Rel(e) : null;
  }

  D_CT_AnchorClientData? get clientData {
    final e = node.getElement(
      'clientData',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_AnchorClientData(e) : null;
  }
}
extension type D_CT_AbsoluteAnchor(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_Point2D? get pos {
    final e = node.getElement(
      'pos',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Point2D(e) : null;
  }

  D_CT_PositiveSize2D? get ext {
    final e = node.getElement(
      'ext',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }

  D_CT_Shape? get sp {
    final e = node.getElement(
      'sp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Shape(e) : null;
  }

  D_CT_GroupShape? get grpSp {
    final e = node.getElement(
      'grpSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GroupShape(e) : null;
  }

  D_CT_GraphicalObjectFrame? get graphicFrame {
    final e = node.getElement(
      'graphicFrame',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_GraphicalObjectFrame(e) : null;
  }

  D_CT_Connector? get cxnSp {
    final e = node.getElement(
      'cxnSp',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Connector(e) : null;
  }

  D_CT_Picture? get pic {
    final e = node.getElement(
      'pic',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Picture(e) : null;
  }

  D_CT_Rel? get contentPart {
    final e = node.getElement(
      'contentPart',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_Rel(e) : null;
  }

  D_CT_AnchorClientData? get clientData {
    final e = node.getElement(
      'clientData',
      namespace:
          'http://schemas.openxmlformats.org/drawingml/2006/spreadsheetDrawing',
    );
    return e != null ? D_CT_AnchorClientData(e) : null;
  }
}

enum D_ST_EditAs {
  twoCell('twoCell'),
  oneCell('oneCell'),
  absolute('absolute');

  const D_ST_EditAs(this.value);

  final String value;

  static D_ST_EditAs? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}
