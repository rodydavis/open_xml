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

enum ST_CalendarType {
  gregorian('gregorian'),
  gregorianUs('gregorianUs'),
  gregorianMeFrench('gregorianMeFrench'),
  gregorianArabic('gregorianArabic'),
  hijri('hijri'),
  hebrew('hebrew'),
  taiwan('taiwan'),
  japan('japan'),
  thai('thai'),
  korea('korea'),
  saka('saka'),
  gregorianXlitEnglish('gregorianXlitEnglish'),
  gregorianXlitFrench('gregorianXlitFrench'),
  none('none');

  const ST_CalendarType(this.value);

  final String value;

  static ST_CalendarType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_AlgClass {
  hash('hash'),
  custom('custom');

  const ST_AlgClass(this.value);

  final String value;

  static ST_AlgClass? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_CryptProv {
  rsaAES('rsaAES'),
  rsaFull('rsaFull'),
  custom('custom');

  const ST_CryptProv(this.value);

  final String value;

  static ST_CryptProv? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_AlgType {
  typeAny('typeAny'),
  custom('custom');

  const ST_AlgType(this.value);

  final String value;

  static ST_AlgType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_OnOff1 {
  on_('on'),
  off('off');

  const ST_OnOff1(this.value);

  final String value;

  static ST_OnOff1? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_TrueFalse {
  t('t'),
  f('f'),
  true_('true'),
  false_('false');

  const ST_TrueFalse(this.value);

  final String value;

  static ST_TrueFalse? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_TrueFalseBlank {
  t('t'),
  f('f'),
  true_('true'),
  false_('false'),
  empty(''),
  True('True'),
  False('False');

  const ST_TrueFalseBlank(this.value);

  final String value;

  static ST_TrueFalseBlank? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_VerticalAlignRun {
  baseline('baseline'),
  superscript('superscript'),
  subscript('subscript');

  const ST_VerticalAlignRun(this.value);

  final String value;

  static ST_VerticalAlignRun? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_XAlign {
  left('left'),
  center('center'),
  right('right'),
  inside('inside'),
  outside('outside');

  const ST_XAlign(this.value);

  final String value;

  static ST_XAlign? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_YAlign {
  inline('inline'),
  top('top'),
  center('center'),
  bottom('bottom'),
  inside('inside'),
  outside('outside');

  const ST_YAlign(this.value);

  final String value;

  static ST_YAlign? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum ST_ConformanceClass {
  strict('strict'),
  transitional('transitional');

  const ST_ConformanceClass(this.value);

  final String value;

  static ST_ConformanceClass? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

extension type M_CT_Integer255(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    )!;
  }
}
extension type M_CT_Integer2(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    )!;
  }
}
extension type M_CT_SpacingRule(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    )!;
  }
}
extension type M_CT_UnSignedInteger(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    )!;
  }
}
extension type M_CT_Char(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    )!;
  }
}
extension type M_CT_OnOff(_i1.XmlElement node) implements _i1.XmlElement {}
extension type M_CT_String(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
  }
}
extension type M_CT_XAlign(_i1.XmlElement node) implements _i1.XmlElement {
  ST_XAlign get val {
    return ST_XAlign.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      )!,
    )!;
  }
}
extension type M_CT_YAlign(_i1.XmlElement node) implements _i1.XmlElement {
  ST_YAlign get val {
    return ST_YAlign.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      )!,
    )!;
  }
}
extension type M_CT_Shp(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_Shp get val {
    return M_ST_Shp.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      )!,
    )!;
  }
}
extension type M_CT_FType(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_FType get val {
    return M_ST_FType.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      )!,
    )!;
  }
}
extension type M_CT_LimLoc(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_LimLoc get val {
    return M_ST_LimLoc.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      )!,
    )!;
  }
}
extension type M_CT_TopBot(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_TopBot get val {
    return M_ST_TopBot.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
      )!,
    )!;
  }
}
extension type M_CT_Script(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_Script? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            ) !=
            null
        ? M_ST_Script.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            )!,
          )
        : null;
  }
}
extension type M_CT_Style(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_Style? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            ) !=
            null
        ? M_ST_Style.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            )!,
          )
        : null;
  }
}
extension type M_CT_ManualBreak(_i1.XmlElement node) implements _i1.XmlElement {
  String? get alnAt {
    return node.getAttribute(
      'alnAt',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
  }
}
extension type M_CT_RPR(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OnOff? get lit {
    final e = node.getElement(
      'lit',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get nor {
    final e = node.getElement(
      'nor',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_Script? get scr {
    final e = node.getElement(
      'scr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Script(e) : null;
  }

  M_CT_Style? get sty {
    final e = node.getElement(
      'sty',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Style(e) : null;
  }

  M_CT_ManualBreak? get brk {
    final e = node.getElement(
      'brk',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_ManualBreak(e) : null;
  }

  M_CT_OnOff? get aln {
    final e = node.getElement(
      'aln',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }
}
extension type M_CT_Text(_i1.XmlElement node) implements _i1.XmlElement {}
extension type M_CT_R(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_RPR? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_RPR(e) : null;
  }

  Iterable<W_CT_Br> get br {
    return node
        .findElements(
          'br',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Br.new);
  }

  Iterable<W_CT_Text> get t {
    return node
        .findElements(
          't',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Text.new);
  }

  Iterable<W_CT_Rel> get contentPart {
    return node
        .findElements(
          'contentPart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Rel.new);
  }

  Iterable<W_CT_Text> get delText {
    return node
        .findElements(
          'delText',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Text.new);
  }

  Iterable<W_CT_Text> get instrText {
    return node
        .findElements(
          'instrText',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Text.new);
  }

  Iterable<W_CT_Text> get delInstrText {
    return node
        .findElements(
          'delInstrText',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Text.new);
  }

  Iterable<W_CT_Empty> get noBreakHyphen {
    return node
        .findElements(
          'noBreakHyphen',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get softHyphen {
    return node
        .findElements(
          'softHyphen',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get dayShort {
    return node
        .findElements(
          'dayShort',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get monthShort {
    return node
        .findElements(
          'monthShort',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get yearShort {
    return node
        .findElements(
          'yearShort',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get dayLong {
    return node
        .findElements(
          'dayLong',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get monthLong {
    return node
        .findElements(
          'monthLong',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get yearLong {
    return node
        .findElements(
          'yearLong',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get annotationRef {
    return node
        .findElements(
          'annotationRef',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get footnoteRef {
    return node
        .findElements(
          'footnoteRef',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get endnoteRef {
    return node
        .findElements(
          'endnoteRef',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get separator {
    return node
        .findElements(
          'separator',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get continuationSeparator {
    return node
        .findElements(
          'continuationSeparator',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Sym> get sym {
    return node
        .findElements(
          'sym',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Sym.new);
  }

  Iterable<W_CT_Empty> get pgNum {
    return node
        .findElements(
          'pgNum',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get cr {
    return node
        .findElements(
          'cr',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Empty> get tab {
    return node
        .findElements(
          'tab',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }

  Iterable<W_CT_Object> get object {
    return node
        .findElements(
          'object',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Object.new);
  }

  Iterable<W_CT_Picture> get pict {
    return node
        .findElements(
          'pict',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Picture.new);
  }

  Iterable<W_CT_FldChar> get fldChar {
    return node
        .findElements(
          'fldChar',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_FldChar.new);
  }

  Iterable<W_CT_Ruby> get ruby {
    return node
        .findElements(
          'ruby',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Ruby.new);
  }

  Iterable<W_CT_FtnEdnRef> get footnoteReference {
    return node
        .findElements(
          'footnoteReference',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_FtnEdnRef.new);
  }

  Iterable<W_CT_FtnEdnRef> get endnoteReference {
    return node
        .findElements(
          'endnoteReference',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_FtnEdnRef.new);
  }

  Iterable<W_CT_Markup> get commentReference {
    return node
        .findElements(
          'commentReference',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_Drawing> get drawing {
    return node
        .findElements(
          'drawing',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Drawing.new);
  }

  Iterable<W_CT_PTab> get ptab {
    return node
        .findElements(
          'ptab',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_PTab.new);
  }

  Iterable<W_CT_Empty> get lastRenderedPageBreak {
    return node
        .findElements(
          'lastRenderedPageBreak',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Empty.new);
  }
}
extension type M_CT_CtrlPr(_i1.XmlElement node) implements _i1.XmlElement {
  W_CT_RPr? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? W_CT_RPr(e) : null;
  }

  W_CT_MathCtrlIns? get ins {
    final e = node.getElement(
      'ins',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? W_CT_MathCtrlIns(e) : null;
  }

  W_CT_MathCtrlDel? get del {
    final e = node.getElement(
      'del',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? W_CT_MathCtrlDel(e) : null;
  }
}
extension type M_CT_AccPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_Char? get chr {
    final e = node.getElement(
      'chr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Char(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_Acc(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_AccPr? get accPr {
    final e = node.getElement(
      'accPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_AccPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_BarPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_TopBot? get pos {
    final e = node.getElement(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TopBot(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_Bar(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_BarPr? get barPr {
    final e = node.getElement(
      'barPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_BarPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_BoxPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OnOff? get opEmu {
    final e = node.getElement(
      'opEmu',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get noBreak {
    final e = node.getElement(
      'noBreak',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get diff {
    final e = node.getElement(
      'diff',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_ManualBreak? get brk {
    final e = node.getElement(
      'brk',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_ManualBreak(e) : null;
  }

  M_CT_OnOff? get aln {
    final e = node.getElement(
      'aln',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_Box(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_BoxPr? get boxPr {
    final e = node.getElement(
      'boxPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_BoxPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_BorderBoxPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OnOff? get hideTop {
    final e = node.getElement(
      'hideTop',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get hideBot {
    final e = node.getElement(
      'hideBot',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get hideLeft {
    final e = node.getElement(
      'hideLeft',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get hideRight {
    final e = node.getElement(
      'hideRight',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get strikeH {
    final e = node.getElement(
      'strikeH',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get strikeV {
    final e = node.getElement(
      'strikeV',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get strikeBLTR {
    final e = node.getElement(
      'strikeBLTR',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get strikeTLBR {
    final e = node.getElement(
      'strikeTLBR',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_BorderBox(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_BorderBoxPr? get borderBoxPr {
    final e = node.getElement(
      'borderBoxPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_BorderBoxPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_DPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_Char? get begChr {
    final e = node.getElement(
      'begChr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Char(e) : null;
  }

  M_CT_Char? get sepChr {
    final e = node.getElement(
      'sepChr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Char(e) : null;
  }

  M_CT_Char? get endChr {
    final e = node.getElement(
      'endChr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Char(e) : null;
  }

  M_CT_OnOff? get grow {
    final e = node.getElement(
      'grow',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_Shp? get shp {
    final e = node.getElement(
      'shp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Shp(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_D(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_DPr? get dPr {
    final e = node.getElement(
      'dPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_DPr(e) : null;
  }

  Iterable<M_CT_OMathArg> get e {
    return node
        .findElements(
          'e',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_OMathArg.new);
  }
}
extension type M_CT_EqArrPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_YAlign? get baseJc {
    final e = node.getElement(
      'baseJc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_YAlign(e) : null;
  }

  M_CT_OnOff? get maxDist {
    final e = node.getElement(
      'maxDist',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get objDist {
    final e = node.getElement(
      'objDist',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_SpacingRule? get rSpRule {
    final e = node.getElement(
      'rSpRule',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_SpacingRule(e) : null;
  }

  M_CT_UnSignedInteger? get rSp {
    final e = node.getElement(
      'rSp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_UnSignedInteger(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_EqArr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_EqArrPr? get eqArrPr {
    final e = node.getElement(
      'eqArrPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_EqArrPr(e) : null;
  }

  Iterable<M_CT_OMathArg> get e {
    return node
        .findElements(
          'e',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_OMathArg.new);
  }
}
extension type M_CT_FPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_FType? get type {
    final e = node.getElement(
      'type',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_FType(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_F(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_FPr? get fPr {
    final e = node.getElement(
      'fPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_FPr(e) : null;
  }

  M_CT_OMathArg? get num_ {
    final e = node.getElement(
      'num',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get den {
    final e = node.getElement(
      'den',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_FuncPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_Func(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_FuncPr? get funcPr {
    final e = node.getElement(
      'funcPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_FuncPr(e) : null;
  }

  M_CT_OMathArg? get fName {
    final e = node.getElement(
      'fName',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_GroupChrPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_Char? get chr {
    final e = node.getElement(
      'chr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Char(e) : null;
  }

  M_CT_TopBot? get pos {
    final e = node.getElement(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TopBot(e) : null;
  }

  M_CT_TopBot? get vertJc {
    final e = node.getElement(
      'vertJc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TopBot(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_GroupChr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_GroupChrPr? get groupChrPr {
    final e = node.getElement(
      'groupChrPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_GroupChrPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_LimLowPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_LimLow(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_LimLowPr? get limLowPr {
    final e = node.getElement(
      'limLowPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_LimLowPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get lim {
    final e = node.getElement(
      'lim',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_LimUppPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_LimUpp(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_LimUppPr? get limUppPr {
    final e = node.getElement(
      'limUppPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_LimUppPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get lim {
    final e = node.getElement(
      'lim',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_MCPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_Integer255? get count {
    final e = node.getElement(
      'count',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Integer255(e) : null;
  }

  M_CT_XAlign? get mcJc {
    final e = node.getElement(
      'mcJc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_XAlign(e) : null;
  }
}
extension type M_CT_MC(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_MCPr? get mcPr {
    final e = node.getElement(
      'mcPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_MCPr(e) : null;
  }
}
extension type M_CT_MCS(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<M_CT_MC> get mc {
    return node
        .findElements(
          'mc',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_MC.new);
  }
}
extension type M_CT_MPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_YAlign? get baseJc {
    final e = node.getElement(
      'baseJc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_YAlign(e) : null;
  }

  M_CT_OnOff? get plcHide {
    final e = node.getElement(
      'plcHide',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_SpacingRule? get rSpRule {
    final e = node.getElement(
      'rSpRule',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_SpacingRule(e) : null;
  }

  M_CT_SpacingRule? get cGpRule {
    final e = node.getElement(
      'cGpRule',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_SpacingRule(e) : null;
  }

  M_CT_UnSignedInteger? get rSp {
    final e = node.getElement(
      'rSp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_UnSignedInteger(e) : null;
  }

  M_CT_UnSignedInteger? get cSp {
    final e = node.getElement(
      'cSp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_UnSignedInteger(e) : null;
  }

  M_CT_UnSignedInteger? get cGp {
    final e = node.getElement(
      'cGp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_UnSignedInteger(e) : null;
  }

  M_CT_MCS? get mcs {
    final e = node.getElement(
      'mcs',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_MCS(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_MR(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<M_CT_OMathArg> get e {
    return node
        .findElements(
          'e',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_OMathArg.new);
  }
}
extension type M_CT_M(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_MPr? get mPr {
    final e = node.getElement(
      'mPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_MPr(e) : null;
  }

  Iterable<M_CT_MR> get mr {
    return node
        .findElements(
          'mr',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_MR.new);
  }
}
extension type M_CT_NaryPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_Char? get chr {
    final e = node.getElement(
      'chr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Char(e) : null;
  }

  M_CT_LimLoc? get limLoc {
    final e = node.getElement(
      'limLoc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_LimLoc(e) : null;
  }

  M_CT_OnOff? get grow {
    final e = node.getElement(
      'grow',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get subHide {
    final e = node.getElement(
      'subHide',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get supHide {
    final e = node.getElement(
      'supHide',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_Nary(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_NaryPr? get naryPr {
    final e = node.getElement(
      'naryPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_NaryPr(e) : null;
  }

  M_CT_OMathArg? get sub {
    final e = node.getElement(
      'sub',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get sup {
    final e = node.getElement(
      'sup',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_PhantPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OnOff? get show_ {
    final e = node.getElement(
      'show',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get zeroWid {
    final e = node.getElement(
      'zeroWid',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get zeroAsc {
    final e = node.getElement(
      'zeroAsc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get zeroDesc {
    final e = node.getElement(
      'zeroDesc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get transp {
    final e = node.getElement(
      'transp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_Phant(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_PhantPr? get phantPr {
    final e = node.getElement(
      'phantPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_PhantPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_RadPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OnOff? get degHide {
    final e = node.getElement(
      'degHide',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_Rad(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_RadPr? get radPr {
    final e = node.getElement(
      'radPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_RadPr(e) : null;
  }

  M_CT_OMathArg? get deg {
    final e = node.getElement(
      'deg',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_SPrePr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_SPre(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_SPrePr? get sPrePr {
    final e = node.getElement(
      'sPrePr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_SPrePr(e) : null;
  }

  M_CT_OMathArg? get sub {
    final e = node.getElement(
      'sub',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get sup {
    final e = node.getElement(
      'sup',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_SSubPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_SSub(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_SSubPr? get sSubPr {
    final e = node.getElement(
      'sSubPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_SSubPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get sub {
    final e = node.getElement(
      'sub',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_SSubSupPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OnOff? get alnScr {
    final e = node.getElement(
      'alnScr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_SSubSup(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_SSubSupPr? get sSubSupPr {
    final e = node.getElement(
      'sSubSupPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_SSubSupPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get sub {
    final e = node.getElement(
      'sub',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get sup {
    final e = node.getElement(
      'sup',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_SSupPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_SSup(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_SSupPr? get sSupPr {
    final e = node.getElement(
      'sSupPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_SSupPr(e) : null;
  }

  M_CT_OMathArg? get e {
    final e = node.getElement(
      'e',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }

  M_CT_OMathArg? get sup {
    final e = node.getElement(
      'sup',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArg(e) : null;
  }
}
extension type M_CT_OMathArgPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_Integer2? get argSz {
    final e = node.getElement(
      'argSz',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_Integer2(e) : null;
  }
}
extension type M_CT_OMathArg(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OMathArgPr? get argPr {
    final e = node.getElement(
      'argPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathArgPr(e) : null;
  }

  Iterable<M_CT_Acc> get acc {
    return node
        .findElements(
          'acc',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Acc.new);
  }

  Iterable<M_CT_Bar> get bar {
    return node
        .findElements(
          'bar',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Bar.new);
  }

  Iterable<M_CT_Box> get box {
    return node
        .findElements(
          'box',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Box.new);
  }

  Iterable<M_CT_BorderBox> get borderBox {
    return node
        .findElements(
          'borderBox',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_BorderBox.new);
  }

  Iterable<M_CT_D> get d {
    return node
        .findElements(
          'd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_D.new);
  }

  Iterable<M_CT_EqArr> get eqArr {
    return node
        .findElements(
          'eqArr',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_EqArr.new);
  }

  Iterable<M_CT_F> get f {
    return node
        .findElements(
          'f',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_F.new);
  }

  Iterable<M_CT_Func> get func {
    return node
        .findElements(
          'func',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Func.new);
  }

  Iterable<M_CT_GroupChr> get groupChr {
    return node
        .findElements(
          'groupChr',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_GroupChr.new);
  }

  Iterable<M_CT_LimLow> get limLow {
    return node
        .findElements(
          'limLow',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_LimLow.new);
  }

  Iterable<M_CT_LimUpp> get limUpp {
    return node
        .findElements(
          'limUpp',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_LimUpp.new);
  }

  Iterable<M_CT_M> get m {
    return node
        .findElements(
          'm',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_M.new);
  }

  Iterable<M_CT_Nary> get nary {
    return node
        .findElements(
          'nary',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Nary.new);
  }

  Iterable<M_CT_Phant> get phant {
    return node
        .findElements(
          'phant',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Phant.new);
  }

  Iterable<M_CT_Rad> get rad {
    return node
        .findElements(
          'rad',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Rad.new);
  }

  Iterable<M_CT_SPre> get sPre {
    return node
        .findElements(
          'sPre',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_SPre.new);
  }

  Iterable<M_CT_SSub> get sSub {
    return node
        .findElements(
          'sSub',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_SSub.new);
  }

  Iterable<M_CT_SSubSup> get sSubSup {
    return node
        .findElements(
          'sSubSup',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_SSubSup.new);
  }

  Iterable<M_CT_SSup> get sSup {
    return node
        .findElements(
          'sSup',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_SSup.new);
  }

  Iterable<M_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_R.new);
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_RunTrackChange.new);
  }

  M_CT_CtrlPr? get ctrlPr {
    final e = node.getElement(
      'ctrlPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_CtrlPr(e) : null;
  }
}
extension type M_CT_OMathJc(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_Jc? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            ) !=
            null
        ? M_ST_Jc.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            )!,
          )
        : null;
  }
}
extension type M_CT_OMathParaPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OMathJc? get jc {
    final e = node.getElement(
      'jc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathJc(e) : null;
  }
}
extension type M_CT_TwipsMeasure(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type M_CT_BreakBin(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_BreakBin? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            ) !=
            null
        ? M_ST_BreakBin.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            )!,
          )
        : null;
  }
}
extension type M_CT_BreakBinSub(_i1.XmlElement node) implements _i1.XmlElement {
  M_ST_BreakBinSub? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            ) !=
            null
        ? M_ST_BreakBinSub.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/officeDocument/2006/math',
            )!,
          )
        : null;
  }
}
extension type M_CT_MathPr(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_String? get mathFont {
    final e = node.getElement(
      'mathFont',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_String(e) : null;
  }

  M_CT_BreakBin? get brkBin {
    final e = node.getElement(
      'brkBin',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_BreakBin(e) : null;
  }

  M_CT_BreakBinSub? get brkBinSub {
    final e = node.getElement(
      'brkBinSub',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_BreakBinSub(e) : null;
  }

  M_CT_OnOff? get smallFrac {
    final e = node.getElement(
      'smallFrac',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_OnOff? get dispDef {
    final e = node.getElement(
      'dispDef',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_TwipsMeasure? get lMargin {
    final e = node.getElement(
      'lMargin',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TwipsMeasure(e) : null;
  }

  M_CT_TwipsMeasure? get rMargin {
    final e = node.getElement(
      'rMargin',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TwipsMeasure(e) : null;
  }

  M_CT_OMathJc? get defJc {
    final e = node.getElement(
      'defJc',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathJc(e) : null;
  }

  M_CT_TwipsMeasure? get preSp {
    final e = node.getElement(
      'preSp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TwipsMeasure(e) : null;
  }

  M_CT_TwipsMeasure? get postSp {
    final e = node.getElement(
      'postSp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TwipsMeasure(e) : null;
  }

  M_CT_TwipsMeasure? get interSp {
    final e = node.getElement(
      'interSp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TwipsMeasure(e) : null;
  }

  M_CT_TwipsMeasure? get intraSp {
    final e = node.getElement(
      'intraSp',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TwipsMeasure(e) : null;
  }

  M_CT_TwipsMeasure? get wrapIndent {
    final e = node.getElement(
      'wrapIndent',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_TwipsMeasure(e) : null;
  }

  M_CT_OnOff? get wrapRight {
    final e = node.getElement(
      'wrapRight',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OnOff(e) : null;
  }

  M_CT_LimLoc? get intLim {
    final e = node.getElement(
      'intLim',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_LimLoc(e) : null;
  }

  M_CT_LimLoc? get naryLim {
    final e = node.getElement(
      'naryLim',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_LimLoc(e) : null;
  }
}
extension type M_CT_OMathPara(_i1.XmlElement node) implements _i1.XmlElement {
  M_CT_OMathParaPr? get oMathParaPr {
    final e = node.getElement(
      'oMathParaPr',
      namespace: 'http://schemas.openxmlformats.org/officeDocument/2006/math',
    );
    return e != null ? M_CT_OMathParaPr(e) : null;
  }

  Iterable<M_CT_OMath> get oMath {
    return node
        .findElements(
          'oMath',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_OMath.new);
  }
}
extension type M_CT_OMath(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<M_CT_Acc> get acc {
    return node
        .findElements(
          'acc',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Acc.new);
  }

  Iterable<M_CT_Bar> get bar {
    return node
        .findElements(
          'bar',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Bar.new);
  }

  Iterable<M_CT_Box> get box {
    return node
        .findElements(
          'box',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Box.new);
  }

  Iterable<M_CT_BorderBox> get borderBox {
    return node
        .findElements(
          'borderBox',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_BorderBox.new);
  }

  Iterable<M_CT_D> get d {
    return node
        .findElements(
          'd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_D.new);
  }

  Iterable<M_CT_EqArr> get eqArr {
    return node
        .findElements(
          'eqArr',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_EqArr.new);
  }

  Iterable<M_CT_F> get f {
    return node
        .findElements(
          'f',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_F.new);
  }

  Iterable<M_CT_Func> get func {
    return node
        .findElements(
          'func',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Func.new);
  }

  Iterable<M_CT_GroupChr> get groupChr {
    return node
        .findElements(
          'groupChr',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_GroupChr.new);
  }

  Iterable<M_CT_LimLow> get limLow {
    return node
        .findElements(
          'limLow',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_LimLow.new);
  }

  Iterable<M_CT_LimUpp> get limUpp {
    return node
        .findElements(
          'limUpp',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_LimUpp.new);
  }

  Iterable<M_CT_M> get m {
    return node
        .findElements(
          'm',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_M.new);
  }

  Iterable<M_CT_Nary> get nary {
    return node
        .findElements(
          'nary',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Nary.new);
  }

  Iterable<M_CT_Phant> get phant {
    return node
        .findElements(
          'phant',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Phant.new);
  }

  Iterable<M_CT_Rad> get rad {
    return node
        .findElements(
          'rad',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_Rad.new);
  }

  Iterable<M_CT_SPre> get sPre {
    return node
        .findElements(
          'sPre',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_SPre.new);
  }

  Iterable<M_CT_SSub> get sSub {
    return node
        .findElements(
          'sSub',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_SSub.new);
  }

  Iterable<M_CT_SSubSup> get sSubSup {
    return node
        .findElements(
          'sSubSup',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_SSubSup.new);
  }

  Iterable<M_CT_SSup> get sSup {
    return node
        .findElements(
          'sSup',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_SSup.new);
  }

  Iterable<M_CT_R> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(M_CT_R.new);
  }

  Iterable<W_CT_CustomXmlRun> get customXml {
    return node
        .findElements(
          'customXml',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_CustomXmlRun.new);
  }

  Iterable<W_CT_SimpleField> get fldSimple {
    return node
        .findElements(
          'fldSimple',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_SimpleField.new);
  }

  Iterable<W_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Hyperlink.new);
  }

  Iterable<W_CT_SmartTagRun> get smartTag {
    return node
        .findElements(
          'smartTag',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_SmartTagRun.new);
  }

  Iterable<W_CT_SdtRun> get sdt {
    return node
        .findElements(
          'sdt',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_SdtRun.new);
  }

  Iterable<W_CT_ProofErr> get proofErr {
    return node
        .findElements(
          'proofErr',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_ProofErr.new);
  }

  Iterable<W_CT_PermStart> get permStart {
    return node
        .findElements(
          'permStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_PermStart.new);
  }

  Iterable<W_CT_Perm> get permEnd {
    return node
        .findElements(
          'permEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Perm.new);
  }

  Iterable<W_CT_Bookmark> get bookmarkStart {
    return node
        .findElements(
          'bookmarkStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Bookmark.new);
  }

  Iterable<W_CT_MarkupRange> get bookmarkEnd {
    return node
        .findElements(
          'bookmarkEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveFromRangeStart {
    return node
        .findElements(
          'moveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveFromRangeEnd {
    return node
        .findElements(
          'moveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MoveBookmark> get moveToRangeStart {
    return node
        .findElements(
          'moveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MoveBookmark.new);
  }

  Iterable<W_CT_MarkupRange> get moveToRangeEnd {
    return node
        .findElements(
          'moveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeStart {
    return node
        .findElements(
          'commentRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_MarkupRange> get commentRangeEnd {
    return node
        .findElements(
          'commentRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_MarkupRange.new);
  }

  Iterable<W_CT_TrackChange> get customXmlInsRangeStart {
    return node
        .findElements(
          'customXmlInsRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlInsRangeEnd {
    return node
        .findElements(
          'customXmlInsRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlDelRangeStart {
    return node
        .findElements(
          'customXmlDelRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlDelRangeEnd {
    return node
        .findElements(
          'customXmlDelRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveFromRangeStart {
    return node
        .findElements(
          'customXmlMoveFromRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveFromRangeEnd {
    return node
        .findElements(
          'customXmlMoveFromRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_TrackChange> get customXmlMoveToRangeStart {
    return node
        .findElements(
          'customXmlMoveToRangeStart',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_TrackChange.new);
  }

  Iterable<W_CT_Markup> get customXmlMoveToRangeEnd {
    return node
        .findElements(
          'customXmlMoveToRangeEnd',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_Markup.new);
  }

  Iterable<W_CT_RunTrackChange> get ins {
    return node
        .findElements(
          'ins',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get del {
    return node
        .findElements(
          'del',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveFrom {
    return node
        .findElements(
          'moveFrom',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_RunTrackChange.new);
  }

  Iterable<W_CT_RunTrackChange> get moveTo {
    return node
        .findElements(
          'moveTo',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/math',
        )
        .map(W_CT_RunTrackChange.new);
  }
}

enum M_ST_Shp {
  centered('centered'),
  match('match');

  const M_ST_Shp(this.value);

  final String value;

  static M_ST_Shp? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum M_ST_FType {
  bar('bar'),
  skw('skw'),
  lin('lin'),
  noBar('noBar');

  const M_ST_FType(this.value);

  final String value;

  static M_ST_FType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum M_ST_LimLoc {
  undOvr('undOvr'),
  subSup('subSup');

  const M_ST_LimLoc(this.value);

  final String value;

  static M_ST_LimLoc? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum M_ST_TopBot {
  top('top'),
  bot('bot');

  const M_ST_TopBot(this.value);

  final String value;

  static M_ST_TopBot? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum M_ST_Script {
  roman('roman'),
  script('script'),
  fraktur('fraktur'),
  double_minusstruck('double-struck'),
  sans_minusserif('sans-serif'),
  monospace('monospace');

  const M_ST_Script(this.value);

  final String value;

  static M_ST_Script? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum M_ST_Style {
  p('p'),
  b('b'),
  i('i'),
  bi('bi');

  const M_ST_Style(this.value);

  final String value;

  static M_ST_Style? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum M_ST_Jc {
  left('left'),
  right('right'),
  center('center'),
  centerGroup('centerGroup');

  const M_ST_Jc(this.value);

  final String value;

  static M_ST_Jc? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum M_ST_BreakBin {
  before('before'),
  after('after'),
  repeat('repeat');

  const M_ST_BreakBin(this.value);

  final String value;

  static M_ST_BreakBin? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum M_ST_BreakBinSub {
  _minus_minus('--'),
  _minus_plus('-+'),
  _plus_minus('+-');

  const M_ST_BreakBinSub(this.value);

  final String value;

  static M_ST_BreakBinSub? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

extension type CT_Schema(_i1.XmlElement node) implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
    );
  }

  String? get manifestLocation {
    return node.getAttribute(
      'manifestLocation',
      namespace: 'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
    );
  }

  String? get schemaLocation {
    return node.getAttribute(
      'schemaLocation',
      namespace: 'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
    );
  }

  String? get schemaLanguage {
    return node.getAttribute(
      'schemaLanguage',
      namespace: 'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
    );
  }
}
extension type CT_SchemaLibrary(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<CT_Schema> get schema {
    return node
        .findElements(
          'schema',
          namespace:
              'http://schemas.openxmlformats.org/schemaLibrary/2006/main',
        )
        .map(CT_Schema.new);
  }
}
