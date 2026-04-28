// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:xml/xml.dart' as _i1;
import 'package:xml/xml.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';

extension S_CT_AutoFilter_Builder on _i1.XmlBuilder {
  void s_ct_autofilter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (ref != null) this.attribute('ref', ref);
    children?.call(this);
  }
}

extension S_CT_FilterColumn_Builder on _i1.XmlBuilder {
  void s_ct_filtercolumn({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? colId,
    bool? hiddenButton,
    bool? showButton,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, colId, hiddenButton, showButton);
        },
      );
    } else {
      _buildBody(children, colId, hiddenButton, showButton);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? colId,
    bool? hiddenButton,
    bool? showButton,
  ) {
    if (colId != null) this.attribute('colId', colId.toString());
    if (hiddenButton != null)
      this.attribute('hiddenButton', hiddenButton == true ? 'true' : 'false');
    if (showButton != null)
      this.attribute('showButton', showButton == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Filters_Builder on _i1.XmlBuilder {
  void s_ct_filters({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? blank,
    ST_CalendarType? calendarType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, blank, calendarType);
        },
      );
    } else {
      _buildBody(children, blank, calendarType);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? blank,
    ST_CalendarType? calendarType,
  ) {
    if (blank != null)
      this.attribute('blank', blank == true ? 'true' : 'false');
    if (calendarType != null)
      this.attribute('calendarType', calendarType!.value);
    children?.call(this);
  }
}

extension S_CT_Filter_Builder on _i1.XmlBuilder {
  void s_ct_filter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val);
    children?.call(this);
  }
}

extension S_CT_CustomFilters_Builder on _i1.XmlBuilder {
  void s_ct_customfilters({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? and,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, and);
        },
      );
    } else {
      _buildBody(children, and);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? and) {
    if (and != null) this.attribute('and', and == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_CustomFilter_Builder on _i1.XmlBuilder {
  void s_ct_customfilter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_FilterOperator? operator_,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, operator_, val);
        },
      );
    } else {
      _buildBody(children, operator_, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_FilterOperator? operator_,
    String? val,
  ) {
    if (operator_ != null) this.attribute('operator', operator_!.value);
    if (val != null) this.attribute('val', val);
    children?.call(this);
  }
}

extension S_CT_Top10_Builder on _i1.XmlBuilder {
  void s_ct_top10({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? top,
    bool? percent,
    double? val,
    double? filterVal,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, top, percent, val, filterVal);
        },
      );
    } else {
      _buildBody(children, top, percent, val, filterVal);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? top,
    bool? percent,
    double? val,
    double? filterVal,
  ) {
    if (top != null) this.attribute('top', top == true ? 'true' : 'false');
    if (percent != null)
      this.attribute('percent', percent == true ? 'true' : 'false');
    if (val != null) this.attribute('val', val.toString());
    if (filterVal != null) this.attribute('filterVal', filterVal.toString());
    children?.call(this);
  }
}

extension S_CT_ColorFilter_Builder on _i1.XmlBuilder {
  void s_ct_colorfilter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? dxfId,
    bool? cellColor,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, dxfId, cellColor);
        },
      );
    } else {
      _buildBody(children, dxfId, cellColor);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? dxfId,
    bool? cellColor,
  ) {
    if (dxfId != null) this.attribute('dxfId', dxfId);
    if (cellColor != null)
      this.attribute('cellColor', cellColor == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_IconFilter_Builder on _i1.XmlBuilder {
  void s_ct_iconfilter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_IconSetType? iconSet,
    int? iconId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, iconSet, iconId);
        },
      );
    } else {
      _buildBody(children, iconSet, iconId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_IconSetType? iconSet,
    int? iconId,
  ) {
    if (iconSet != null) this.attribute('iconSet', iconSet!.value);
    if (iconId != null) this.attribute('iconId', iconId.toString());
    children?.call(this);
  }
}

extension S_CT_DynamicFilter_Builder on _i1.XmlBuilder {
  void s_ct_dynamicfilter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_DynamicFilterType? type,
    double? val,
    String? valIso,
    double? maxVal,
    String? maxValIso,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, val, valIso, maxVal, maxValIso);
        },
      );
    } else {
      _buildBody(children, type, val, valIso, maxVal, maxValIso);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_DynamicFilterType? type,
    double? val,
    String? valIso,
    double? maxVal,
    String? maxValIso,
  ) {
    if (type != null) this.attribute('type', type!.value);
    if (val != null) this.attribute('val', val.toString());
    if (valIso != null) this.attribute('valIso', valIso);
    if (maxVal != null) this.attribute('maxVal', maxVal.toString());
    if (maxValIso != null) this.attribute('maxValIso', maxValIso);
    children?.call(this);
  }
}

extension S_CT_SortState_Builder on _i1.XmlBuilder {
  void s_ct_sortstate({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? columnSort,
    bool? caseSensitive,
    S_ST_SortMethod? sortMethod,
    String? ref,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, columnSort, caseSensitive, sortMethod, ref);
        },
      );
    } else {
      _buildBody(children, columnSort, caseSensitive, sortMethod, ref);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? columnSort,
    bool? caseSensitive,
    S_ST_SortMethod? sortMethod,
    String? ref,
  ) {
    if (columnSort != null)
      this.attribute('columnSort', columnSort == true ? 'true' : 'false');
    if (caseSensitive != null)
      this.attribute('caseSensitive', caseSensitive == true ? 'true' : 'false');
    if (sortMethod != null) this.attribute('sortMethod', sortMethod!.value);
    if (ref != null) this.attribute('ref', ref);
    children?.call(this);
  }
}

extension S_CT_SortCondition_Builder on _i1.XmlBuilder {
  void s_ct_sortcondition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? descending,
    S_ST_SortBy? sortBy,
    String? ref,
    String? customList,
    String? dxfId,
    S_ST_IconSetType? iconSet,
    int? iconId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            descending,
            sortBy,
            ref,
            customList,
            dxfId,
            iconSet,
            iconId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        descending,
        sortBy,
        ref,
        customList,
        dxfId,
        iconSet,
        iconId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? descending,
    S_ST_SortBy? sortBy,
    String? ref,
    String? customList,
    String? dxfId,
    S_ST_IconSetType? iconSet,
    int? iconId,
  ) {
    if (descending != null)
      this.attribute('descending', descending == true ? 'true' : 'false');
    if (sortBy != null) this.attribute('sortBy', sortBy!.value);
    if (ref != null) this.attribute('ref', ref);
    if (customList != null) this.attribute('customList', customList);
    if (dxfId != null) this.attribute('dxfId', dxfId);
    if (iconSet != null) this.attribute('iconSet', iconSet!.value);
    if (iconId != null) this.attribute('iconId', iconId.toString());
    children?.call(this);
  }
}

extension S_CT_DateGroupItem_Builder on _i1.XmlBuilder {
  void s_ct_dategroupitem({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    S_ST_DateTimeGrouping? dateTimeGrouping,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            year,
            month,
            day,
            hour,
            minute,
            second,
            dateTimeGrouping,
          );
        },
      );
    } else {
      _buildBody(
        children,
        year,
        month,
        day,
        hour,
        minute,
        second,
        dateTimeGrouping,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    S_ST_DateTimeGrouping? dateTimeGrouping,
  ) {
    if (year != null) this.attribute('year', year.toString());
    if (month != null) this.attribute('month', month.toString());
    if (day != null) this.attribute('day', day.toString());
    if (hour != null) this.attribute('hour', hour.toString());
    if (minute != null) this.attribute('minute', minute.toString());
    if (second != null) this.attribute('second', second.toString());
    if (dateTimeGrouping != null)
      this.attribute('dateTimeGrouping', dateTimeGrouping!.value);
    children?.call(this);
  }
}

extension S_CT_XStringElement_Builder on _i1.XmlBuilder {
  void s_ct_xstringelement({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? v,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, v);
        },
      );
    } else {
      _buildBody(children, v);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? v) {
    if (v != null) this.attribute('v', v);
    children?.call(this);
  }
}

extension S_CT_Extension_Builder on _i1.XmlBuilder {
  void s_ct_extension({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (uri != null) this.attribute('uri', uri);
    children?.call(this);
  }
}

extension S_CT_ObjectAnchor_Builder on _i1.XmlBuilder {
  void s_ct_objectanchor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? moveWithCells,
    bool? sizeWithCells,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, moveWithCells, sizeWithCells);
        },
      );
    } else {
      _buildBody(children, moveWithCells, sizeWithCells);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? moveWithCells,
    bool? sizeWithCells,
  ) {
    if (moveWithCells != null)
      this.attribute('moveWithCells', moveWithCells == true ? 'true' : 'false');
    if (sizeWithCells != null)
      this.attribute('sizeWithCells', sizeWithCells == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_ExtensionList_Builder on _i1.XmlBuilder {
  void s_ct_extensionlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CalcChain_Builder on _i1.XmlBuilder {
  void s_ct_calcchain({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CalcCell_Builder on _i1.XmlBuilder {
  void s_ct_calccell({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r,
    String? ref,
    int? i,
    bool? s,
    bool? l,
    bool? t,
    bool? a,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r, ref, i, s, l, t, a);
        },
      );
    } else {
      _buildBody(children, r, ref, i, s, l, t, a);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? r,
    String? ref,
    int? i,
    bool? s,
    bool? l,
    bool? t,
    bool? a,
  ) {
    if (r != null) this.attribute('r', r);
    if (ref != null) this.attribute('ref', ref);
    if (i != null) this.attribute('i', i.toString());
    if (s != null) this.attribute('s', s == true ? 'true' : 'false');
    if (l != null) this.attribute('l', l == true ? 'true' : 'false');
    if (t != null) this.attribute('t', t == true ? 'true' : 'false');
    if (a != null) this.attribute('a', a == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Comments_Builder on _i1.XmlBuilder {
  void s_ct_comments({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Authors_Builder on _i1.XmlBuilder {
  void s_ct_authors({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CommentList_Builder on _i1.XmlBuilder {
  void s_ct_commentlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Comment_Builder on _i1.XmlBuilder {
  void s_ct_comment({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? ref,
    int? authorId,
    String? guid,
    int? shapeId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ref, authorId, guid, shapeId);
        },
      );
    } else {
      _buildBody(children, ref, authorId, guid, shapeId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ref,
    int? authorId,
    String? guid,
    int? shapeId,
  ) {
    if (ref != null) this.attribute('ref', ref);
    if (authorId != null) this.attribute('authorId', authorId.toString());
    if (guid != null) this.attribute('guid', guid);
    if (shapeId != null) this.attribute('shapeId', shapeId.toString());
    children?.call(this);
  }
}

extension S_CT_CommentPr_Builder on _i1.XmlBuilder {
  void s_ct_commentpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? locked,
    bool? defaultSize,
    bool? print,
    bool? disabled,
    bool? autoFill,
    bool? autoLine,
    String? altText,
    S_ST_TextHAlign? textHAlign,
    S_ST_TextVAlign? textVAlign,
    bool? lockText,
    bool? justLastX,
    bool? autoScale,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            locked,
            defaultSize,
            print,
            disabled,
            autoFill,
            autoLine,
            altText,
            textHAlign,
            textVAlign,
            lockText,
            justLastX,
            autoScale,
          );
        },
      );
    } else {
      _buildBody(
        children,
        locked,
        defaultSize,
        print,
        disabled,
        autoFill,
        autoLine,
        altText,
        textHAlign,
        textVAlign,
        lockText,
        justLastX,
        autoScale,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? locked,
    bool? defaultSize,
    bool? print,
    bool? disabled,
    bool? autoFill,
    bool? autoLine,
    String? altText,
    S_ST_TextHAlign? textHAlign,
    S_ST_TextVAlign? textVAlign,
    bool? lockText,
    bool? justLastX,
    bool? autoScale,
  ) {
    if (locked != null)
      this.attribute('locked', locked == true ? 'true' : 'false');
    if (defaultSize != null)
      this.attribute('defaultSize', defaultSize == true ? 'true' : 'false');
    if (print != null)
      this.attribute('print', print == true ? 'true' : 'false');
    if (disabled != null)
      this.attribute('disabled', disabled == true ? 'true' : 'false');
    if (autoFill != null)
      this.attribute('autoFill', autoFill == true ? 'true' : 'false');
    if (autoLine != null)
      this.attribute('autoLine', autoLine == true ? 'true' : 'false');
    if (altText != null) this.attribute('altText', altText);
    if (textHAlign != null) this.attribute('textHAlign', textHAlign!.value);
    if (textVAlign != null) this.attribute('textVAlign', textVAlign!.value);
    if (lockText != null)
      this.attribute('lockText', lockText == true ? 'true' : 'false');
    if (justLastX != null)
      this.attribute('justLastX', justLastX == true ? 'true' : 'false');
    if (autoScale != null)
      this.attribute('autoScale', autoScale == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_MapInfo_Builder on _i1.XmlBuilder {
  void s_ct_mapinfo({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? SelectionNamespaces,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, SelectionNamespaces);
        },
      );
    } else {
      _buildBody(children, SelectionNamespaces);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? SelectionNamespaces,
  ) {
    if (SelectionNamespaces != null)
      this.attribute('SelectionNamespaces', SelectionNamespaces);
    children?.call(this);
  }
}

extension S_CT_Schema_Builder on _i1.XmlBuilder {
  void s_ct_schema({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? ID,
    String? SchemaRef,
    String? Namespace,
    String? SchemaLanguage,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ID, SchemaRef, Namespace, SchemaLanguage);
        },
      );
    } else {
      _buildBody(children, ID, SchemaRef, Namespace, SchemaLanguage);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ID,
    String? SchemaRef,
    String? Namespace,
    String? SchemaLanguage,
  ) {
    if (ID != null) this.attribute('ID', ID);
    if (SchemaRef != null) this.attribute('SchemaRef', SchemaRef);
    if (Namespace != null) this.attribute('Namespace', Namespace);
    if (SchemaLanguage != null)
      this.attribute('SchemaLanguage', SchemaLanguage);
    children?.call(this);
  }
}

extension S_CT_Map_Builder on _i1.XmlBuilder {
  void s_ct_map({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? ID,
    String? Name,
    String? RootElement,
    String? SchemaID,
    bool? ShowImportExportValidationErrors,
    bool? AutoFit,
    bool? Append,
    bool? PreserveSortAFLayout,
    bool? PreserveFormat,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            ID,
            Name,
            RootElement,
            SchemaID,
            ShowImportExportValidationErrors,
            AutoFit,
            Append,
            PreserveSortAFLayout,
            PreserveFormat,
          );
        },
      );
    } else {
      _buildBody(
        children,
        ID,
        Name,
        RootElement,
        SchemaID,
        ShowImportExportValidationErrors,
        AutoFit,
        Append,
        PreserveSortAFLayout,
        PreserveFormat,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? ID,
    String? Name,
    String? RootElement,
    String? SchemaID,
    bool? ShowImportExportValidationErrors,
    bool? AutoFit,
    bool? Append,
    bool? PreserveSortAFLayout,
    bool? PreserveFormat,
  ) {
    if (ID != null) this.attribute('ID', ID.toString());
    if (Name != null) this.attribute('Name', Name);
    if (RootElement != null) this.attribute('RootElement', RootElement);
    if (SchemaID != null) this.attribute('SchemaID', SchemaID);
    if (ShowImportExportValidationErrors != null)
      this.attribute(
        'ShowImportExportValidationErrors',
        ShowImportExportValidationErrors == true ? 'true' : 'false',
      );
    if (AutoFit != null)
      this.attribute('AutoFit', AutoFit == true ? 'true' : 'false');
    if (Append != null)
      this.attribute('Append', Append == true ? 'true' : 'false');
    if (PreserveSortAFLayout != null)
      this.attribute(
        'PreserveSortAFLayout',
        PreserveSortAFLayout == true ? 'true' : 'false',
      );
    if (PreserveFormat != null)
      this.attribute(
        'PreserveFormat',
        PreserveFormat == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_DataBinding_Builder on _i1.XmlBuilder {
  void s_ct_databinding({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? DataBindingName,
    bool? FileBinding,
    int? ConnectionID,
    String? FileBindingName,
    int? DataBindingLoadMode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            DataBindingName,
            FileBinding,
            ConnectionID,
            FileBindingName,
            DataBindingLoadMode,
          );
        },
      );
    } else {
      _buildBody(
        children,
        DataBindingName,
        FileBinding,
        ConnectionID,
        FileBindingName,
        DataBindingLoadMode,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? DataBindingName,
    bool? FileBinding,
    int? ConnectionID,
    String? FileBindingName,
    int? DataBindingLoadMode,
  ) {
    if (DataBindingName != null)
      this.attribute('DataBindingName', DataBindingName);
    if (FileBinding != null)
      this.attribute('FileBinding', FileBinding == true ? 'true' : 'false');
    if (ConnectionID != null)
      this.attribute('ConnectionID', ConnectionID.toString());
    if (FileBindingName != null)
      this.attribute('FileBindingName', FileBindingName);
    if (DataBindingLoadMode != null)
      this.attribute('DataBindingLoadMode', DataBindingLoadMode.toString());
    children?.call(this);
  }
}

extension S_CT_Connections_Builder on _i1.XmlBuilder {
  void s_ct_connections({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Connection_Builder on _i1.XmlBuilder {
  void s_ct_connection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    String? sourceFile,
    String? odcFile,
    bool? keepAlive,
    int? interval,
    String? name,
    String? description,
    int? type,
    int? reconnectionMethod,
    int? refreshedVersion,
    int? minRefreshableVersion,
    bool? savePassword,
    bool? new_,
    bool? deleted,
    bool? onlyUseConnectionFile,
    bool? background,
    bool? refreshOnLoad,
    bool? saveData,
    S_ST_CredMethod? credentials,
    String? singleSignOnId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            id,
            sourceFile,
            odcFile,
            keepAlive,
            interval,
            name,
            description,
            type,
            reconnectionMethod,
            refreshedVersion,
            minRefreshableVersion,
            savePassword,
            new_,
            deleted,
            onlyUseConnectionFile,
            background,
            refreshOnLoad,
            saveData,
            credentials,
            singleSignOnId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        id,
        sourceFile,
        odcFile,
        keepAlive,
        interval,
        name,
        description,
        type,
        reconnectionMethod,
        refreshedVersion,
        minRefreshableVersion,
        savePassword,
        new_,
        deleted,
        onlyUseConnectionFile,
        background,
        refreshOnLoad,
        saveData,
        credentials,
        singleSignOnId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? sourceFile,
    String? odcFile,
    bool? keepAlive,
    int? interval,
    String? name,
    String? description,
    int? type,
    int? reconnectionMethod,
    int? refreshedVersion,
    int? minRefreshableVersion,
    bool? savePassword,
    bool? new_,
    bool? deleted,
    bool? onlyUseConnectionFile,
    bool? background,
    bool? refreshOnLoad,
    bool? saveData,
    S_ST_CredMethod? credentials,
    String? singleSignOnId,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (sourceFile != null) this.attribute('sourceFile', sourceFile);
    if (odcFile != null) this.attribute('odcFile', odcFile);
    if (keepAlive != null)
      this.attribute('keepAlive', keepAlive == true ? 'true' : 'false');
    if (interval != null) this.attribute('interval', interval.toString());
    if (name != null) this.attribute('name', name);
    if (description != null) this.attribute('description', description);
    if (type != null) this.attribute('type', type.toString());
    if (reconnectionMethod != null)
      this.attribute('reconnectionMethod', reconnectionMethod.toString());
    if (refreshedVersion != null)
      this.attribute('refreshedVersion', refreshedVersion.toString());
    if (minRefreshableVersion != null)
      this.attribute('minRefreshableVersion', minRefreshableVersion.toString());
    if (savePassword != null)
      this.attribute('savePassword', savePassword == true ? 'true' : 'false');
    if (new_ != null) this.attribute('new', new_ == true ? 'true' : 'false');
    if (deleted != null)
      this.attribute('deleted', deleted == true ? 'true' : 'false');
    if (onlyUseConnectionFile != null)
      this.attribute(
        'onlyUseConnectionFile',
        onlyUseConnectionFile == true ? 'true' : 'false',
      );
    if (background != null)
      this.attribute('background', background == true ? 'true' : 'false');
    if (refreshOnLoad != null)
      this.attribute('refreshOnLoad', refreshOnLoad == true ? 'true' : 'false');
    if (saveData != null)
      this.attribute('saveData', saveData == true ? 'true' : 'false');
    if (credentials != null) this.attribute('credentials', credentials!.value);
    if (singleSignOnId != null)
      this.attribute('singleSignOnId', singleSignOnId);
    children?.call(this);
  }
}

extension S_CT_DbPr_Builder on _i1.XmlBuilder {
  void s_ct_dbpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? connection,
    String? command,
    String? serverCommand,
    int? commandType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, connection, command, serverCommand, commandType);
        },
      );
    } else {
      _buildBody(children, connection, command, serverCommand, commandType);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? connection,
    String? command,
    String? serverCommand,
    int? commandType,
  ) {
    if (connection != null) this.attribute('connection', connection);
    if (command != null) this.attribute('command', command);
    if (serverCommand != null) this.attribute('serverCommand', serverCommand);
    if (commandType != null)
      this.attribute('commandType', commandType.toString());
    children?.call(this);
  }
}

extension S_CT_OlapPr_Builder on _i1.XmlBuilder {
  void s_ct_olappr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? local,
    String? localConnection,
    bool? localRefresh,
    bool? sendLocale,
    int? rowDrillCount,
    bool? serverFill,
    bool? serverNumberFormat,
    bool? serverFont,
    bool? serverFontColor,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            local,
            localConnection,
            localRefresh,
            sendLocale,
            rowDrillCount,
            serverFill,
            serverNumberFormat,
            serverFont,
            serverFontColor,
          );
        },
      );
    } else {
      _buildBody(
        children,
        local,
        localConnection,
        localRefresh,
        sendLocale,
        rowDrillCount,
        serverFill,
        serverNumberFormat,
        serverFont,
        serverFontColor,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? local,
    String? localConnection,
    bool? localRefresh,
    bool? sendLocale,
    int? rowDrillCount,
    bool? serverFill,
    bool? serverNumberFormat,
    bool? serverFont,
    bool? serverFontColor,
  ) {
    if (local != null)
      this.attribute('local', local == true ? 'true' : 'false');
    if (localConnection != null)
      this.attribute('localConnection', localConnection);
    if (localRefresh != null)
      this.attribute('localRefresh', localRefresh == true ? 'true' : 'false');
    if (sendLocale != null)
      this.attribute('sendLocale', sendLocale == true ? 'true' : 'false');
    if (rowDrillCount != null)
      this.attribute('rowDrillCount', rowDrillCount.toString());
    if (serverFill != null)
      this.attribute('serverFill', serverFill == true ? 'true' : 'false');
    if (serverNumberFormat != null)
      this.attribute(
        'serverNumberFormat',
        serverNumberFormat == true ? 'true' : 'false',
      );
    if (serverFont != null)
      this.attribute('serverFont', serverFont == true ? 'true' : 'false');
    if (serverFontColor != null)
      this.attribute(
        'serverFontColor',
        serverFontColor == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_WebPr_Builder on _i1.XmlBuilder {
  void s_ct_webpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? xml,
    bool? sourceData,
    bool? parsePre,
    bool? consecutive,
    bool? firstRow,
    bool? xl97,
    bool? textDates,
    bool? xl2000,
    String? url,
    String? post,
    bool? htmlTables,
    S_ST_HtmlFmt? htmlFormat,
    String? editPage,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            xml,
            sourceData,
            parsePre,
            consecutive,
            firstRow,
            xl97,
            textDates,
            xl2000,
            url,
            post,
            htmlTables,
            htmlFormat,
            editPage,
          );
        },
      );
    } else {
      _buildBody(
        children,
        xml,
        sourceData,
        parsePre,
        consecutive,
        firstRow,
        xl97,
        textDates,
        xl2000,
        url,
        post,
        htmlTables,
        htmlFormat,
        editPage,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? xml,
    bool? sourceData,
    bool? parsePre,
    bool? consecutive,
    bool? firstRow,
    bool? xl97,
    bool? textDates,
    bool? xl2000,
    String? url,
    String? post,
    bool? htmlTables,
    S_ST_HtmlFmt? htmlFormat,
    String? editPage,
  ) {
    if (xml != null) this.attribute('xml', xml == true ? 'true' : 'false');
    if (sourceData != null)
      this.attribute('sourceData', sourceData == true ? 'true' : 'false');
    if (parsePre != null)
      this.attribute('parsePre', parsePre == true ? 'true' : 'false');
    if (consecutive != null)
      this.attribute('consecutive', consecutive == true ? 'true' : 'false');
    if (firstRow != null)
      this.attribute('firstRow', firstRow == true ? 'true' : 'false');
    if (xl97 != null) this.attribute('xl97', xl97 == true ? 'true' : 'false');
    if (textDates != null)
      this.attribute('textDates', textDates == true ? 'true' : 'false');
    if (xl2000 != null)
      this.attribute('xl2000', xl2000 == true ? 'true' : 'false');
    if (url != null) this.attribute('url', url);
    if (post != null) this.attribute('post', post);
    if (htmlTables != null)
      this.attribute('htmlTables', htmlTables == true ? 'true' : 'false');
    if (htmlFormat != null) this.attribute('htmlFormat', htmlFormat!.value);
    if (editPage != null) this.attribute('editPage', editPage);
    children?.call(this);
  }
}

extension S_CT_Parameters_Builder on _i1.XmlBuilder {
  void s_ct_parameters({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Parameter_Builder on _i1.XmlBuilder {
  void s_ct_parameter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    int? sqlType,
    S_ST_ParameterType? parameterType,
    bool? refreshOnChange,
    String? prompt,
    bool? boolean,
    double? double_,
    int? integer,
    String? string,
    String? cell,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            sqlType,
            parameterType,
            refreshOnChange,
            prompt,
            boolean,
            double_,
            integer,
            string,
            cell,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        sqlType,
        parameterType,
        refreshOnChange,
        prompt,
        boolean,
        double_,
        integer,
        string,
        cell,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    int? sqlType,
    S_ST_ParameterType? parameterType,
    bool? refreshOnChange,
    String? prompt,
    bool? boolean,
    double? double_,
    int? integer,
    String? string,
    String? cell,
  ) {
    if (name != null) this.attribute('name', name);
    if (sqlType != null) this.attribute('sqlType', sqlType.toString());
    if (parameterType != null)
      this.attribute('parameterType', parameterType!.value);
    if (refreshOnChange != null)
      this.attribute(
        'refreshOnChange',
        refreshOnChange == true ? 'true' : 'false',
      );
    if (prompt != null) this.attribute('prompt', prompt);
    if (boolean != null)
      this.attribute('boolean', boolean == true ? 'true' : 'false');
    if (double_ != null) this.attribute('double', double_.toString());
    if (integer != null) this.attribute('integer', integer.toString());
    if (string != null) this.attribute('string', string);
    if (cell != null) this.attribute('cell', cell);
    children?.call(this);
  }
}

extension S_CT_Tables_Builder on _i1.XmlBuilder {
  void s_ct_tables({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_TableMissing_Builder on _i1.XmlBuilder {
  void s_ct_tablemissing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_TextPr_Builder on _i1.XmlBuilder {
  void s_ct_textpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? prompt,
    S_ST_FileType? fileType,
    int? codePage,
    String? characterSet,
    int? firstRow,
    String? sourceFile,
    bool? delimited,
    String? decimal,
    String? thousands,
    bool? tab,
    bool? space,
    bool? comma,
    bool? semicolon,
    bool? consecutive,
    S_ST_Qualifier? qualifier,
    String? delimiter,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            prompt,
            fileType,
            codePage,
            characterSet,
            firstRow,
            sourceFile,
            delimited,
            decimal,
            thousands,
            tab,
            space,
            comma,
            semicolon,
            consecutive,
            qualifier,
            delimiter,
          );
        },
      );
    } else {
      _buildBody(
        children,
        prompt,
        fileType,
        codePage,
        characterSet,
        firstRow,
        sourceFile,
        delimited,
        decimal,
        thousands,
        tab,
        space,
        comma,
        semicolon,
        consecutive,
        qualifier,
        delimiter,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? prompt,
    S_ST_FileType? fileType,
    int? codePage,
    String? characterSet,
    int? firstRow,
    String? sourceFile,
    bool? delimited,
    String? decimal,
    String? thousands,
    bool? tab,
    bool? space,
    bool? comma,
    bool? semicolon,
    bool? consecutive,
    S_ST_Qualifier? qualifier,
    String? delimiter,
  ) {
    if (prompt != null)
      this.attribute('prompt', prompt == true ? 'true' : 'false');
    if (fileType != null) this.attribute('fileType', fileType!.value);
    if (codePage != null) this.attribute('codePage', codePage.toString());
    if (characterSet != null) this.attribute('characterSet', characterSet);
    if (firstRow != null) this.attribute('firstRow', firstRow.toString());
    if (sourceFile != null) this.attribute('sourceFile', sourceFile);
    if (delimited != null)
      this.attribute('delimited', delimited == true ? 'true' : 'false');
    if (decimal != null) this.attribute('decimal', decimal);
    if (thousands != null) this.attribute('thousands', thousands);
    if (tab != null) this.attribute('tab', tab == true ? 'true' : 'false');
    if (space != null)
      this.attribute('space', space == true ? 'true' : 'false');
    if (comma != null)
      this.attribute('comma', comma == true ? 'true' : 'false');
    if (semicolon != null)
      this.attribute('semicolon', semicolon == true ? 'true' : 'false');
    if (consecutive != null)
      this.attribute('consecutive', consecutive == true ? 'true' : 'false');
    if (qualifier != null) this.attribute('qualifier', qualifier!.value);
    if (delimiter != null) this.attribute('delimiter', delimiter);
    children?.call(this);
  }
}

extension S_CT_TextFields_Builder on _i1.XmlBuilder {
  void s_ct_textfields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_TextField_Builder on _i1.XmlBuilder {
  void s_ct_textfield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_ExternalConnectionType? type,
    int? position,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, position);
        },
      );
    } else {
      _buildBody(children, type, position);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_ExternalConnectionType? type,
    int? position,
  ) {
    if (type != null) this.attribute('type', type!.value);
    if (position != null) this.attribute('position', position.toString());
    children?.call(this);
  }
}

extension S_CT_PivotCacheDefinition_Builder on _i1.XmlBuilder {
  void s_ct_pivotcachedefinition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    bool? invalid,
    bool? saveData,
    bool? refreshOnLoad,
    bool? optimizeMemory,
    bool? enableRefresh,
    String? refreshedBy,
    double? refreshedDate,
    String? refreshedDateIso,
    bool? backgroundQuery,
    int? missingItemsLimit,
    int? createdVersion,
    int? refreshedVersion,
    int? minRefreshableVersion,
    int? recordCount,
    bool? upgradeOnRefresh,
    bool? tupleCache,
    bool? supportSubquery,
    bool? supportAdvancedDrill,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            r_id,
            invalid,
            saveData,
            refreshOnLoad,
            optimizeMemory,
            enableRefresh,
            refreshedBy,
            refreshedDate,
            refreshedDateIso,
            backgroundQuery,
            missingItemsLimit,
            createdVersion,
            refreshedVersion,
            minRefreshableVersion,
            recordCount,
            upgradeOnRefresh,
            tupleCache,
            supportSubquery,
            supportAdvancedDrill,
          );
        },
      );
    } else {
      _buildBody(
        children,
        r_id,
        invalid,
        saveData,
        refreshOnLoad,
        optimizeMemory,
        enableRefresh,
        refreshedBy,
        refreshedDate,
        refreshedDateIso,
        backgroundQuery,
        missingItemsLimit,
        createdVersion,
        refreshedVersion,
        minRefreshableVersion,
        recordCount,
        upgradeOnRefresh,
        tupleCache,
        supportSubquery,
        supportAdvancedDrill,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? r_id,
    bool? invalid,
    bool? saveData,
    bool? refreshOnLoad,
    bool? optimizeMemory,
    bool? enableRefresh,
    String? refreshedBy,
    double? refreshedDate,
    String? refreshedDateIso,
    bool? backgroundQuery,
    int? missingItemsLimit,
    int? createdVersion,
    int? refreshedVersion,
    int? minRefreshableVersion,
    int? recordCount,
    bool? upgradeOnRefresh,
    bool? tupleCache,
    bool? supportSubquery,
    bool? supportAdvancedDrill,
  ) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    if (invalid != null)
      this.attribute('invalid', invalid == true ? 'true' : 'false');
    if (saveData != null)
      this.attribute('saveData', saveData == true ? 'true' : 'false');
    if (refreshOnLoad != null)
      this.attribute('refreshOnLoad', refreshOnLoad == true ? 'true' : 'false');
    if (optimizeMemory != null)
      this.attribute(
        'optimizeMemory',
        optimizeMemory == true ? 'true' : 'false',
      );
    if (enableRefresh != null)
      this.attribute('enableRefresh', enableRefresh == true ? 'true' : 'false');
    if (refreshedBy != null) this.attribute('refreshedBy', refreshedBy);
    if (refreshedDate != null)
      this.attribute('refreshedDate', refreshedDate.toString());
    if (refreshedDateIso != null)
      this.attribute('refreshedDateIso', refreshedDateIso);
    if (backgroundQuery != null)
      this.attribute(
        'backgroundQuery',
        backgroundQuery == true ? 'true' : 'false',
      );
    if (missingItemsLimit != null)
      this.attribute('missingItemsLimit', missingItemsLimit.toString());
    if (createdVersion != null)
      this.attribute('createdVersion', createdVersion.toString());
    if (refreshedVersion != null)
      this.attribute('refreshedVersion', refreshedVersion.toString());
    if (minRefreshableVersion != null)
      this.attribute('minRefreshableVersion', minRefreshableVersion.toString());
    if (recordCount != null)
      this.attribute('recordCount', recordCount.toString());
    if (upgradeOnRefresh != null)
      this.attribute(
        'upgradeOnRefresh',
        upgradeOnRefresh == true ? 'true' : 'false',
      );
    if (tupleCache != null)
      this.attribute('tupleCache', tupleCache == true ? 'true' : 'false');
    if (supportSubquery != null)
      this.attribute(
        'supportSubquery',
        supportSubquery == true ? 'true' : 'false',
      );
    if (supportAdvancedDrill != null)
      this.attribute(
        'supportAdvancedDrill',
        supportAdvancedDrill == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_CacheFields_Builder on _i1.XmlBuilder {
  void s_ct_cachefields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_CacheField_Builder on _i1.XmlBuilder {
  void s_ct_cachefield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    String? caption,
    String? propertyName,
    bool? serverField,
    bool? uniqueList,
    String? numFmtId,
    String? formula,
    int? sqlType,
    int? hierarchy,
    int? level,
    bool? databaseField,
    int? mappingCount,
    bool? memberPropertyField,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            caption,
            propertyName,
            serverField,
            uniqueList,
            numFmtId,
            formula,
            sqlType,
            hierarchy,
            level,
            databaseField,
            mappingCount,
            memberPropertyField,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        caption,
        propertyName,
        serverField,
        uniqueList,
        numFmtId,
        formula,
        sqlType,
        hierarchy,
        level,
        databaseField,
        mappingCount,
        memberPropertyField,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? caption,
    String? propertyName,
    bool? serverField,
    bool? uniqueList,
    String? numFmtId,
    String? formula,
    int? sqlType,
    int? hierarchy,
    int? level,
    bool? databaseField,
    int? mappingCount,
    bool? memberPropertyField,
  ) {
    if (name != null) this.attribute('name', name);
    if (caption != null) this.attribute('caption', caption);
    if (propertyName != null) this.attribute('propertyName', propertyName);
    if (serverField != null)
      this.attribute('serverField', serverField == true ? 'true' : 'false');
    if (uniqueList != null)
      this.attribute('uniqueList', uniqueList == true ? 'true' : 'false');
    if (numFmtId != null) this.attribute('numFmtId', numFmtId);
    if (formula != null) this.attribute('formula', formula);
    if (sqlType != null) this.attribute('sqlType', sqlType.toString());
    if (hierarchy != null) this.attribute('hierarchy', hierarchy.toString());
    if (level != null) this.attribute('level', level.toString());
    if (databaseField != null)
      this.attribute('databaseField', databaseField == true ? 'true' : 'false');
    if (mappingCount != null)
      this.attribute('mappingCount', mappingCount.toString());
    if (memberPropertyField != null)
      this.attribute(
        'memberPropertyField',
        memberPropertyField == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_CacheSource_Builder on _i1.XmlBuilder {
  void s_ct_cachesource({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_SourceType? type,
    int? connectionId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, connectionId);
        },
      );
    } else {
      _buildBody(children, type, connectionId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_SourceType? type,
    int? connectionId,
  ) {
    if (type != null) this.attribute('type', type!.value);
    if (connectionId != null)
      this.attribute('connectionId', connectionId.toString());
    children?.call(this);
  }
}

extension S_CT_WorksheetSource_Builder on _i1.XmlBuilder {
  void s_ct_worksheetsource({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? ref,
    String? name,
    String? sheet,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ref, name, sheet, r_id);
        },
      );
    } else {
      _buildBody(children, ref, name, sheet, r_id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ref,
    String? name,
    String? sheet,
    String? r_id,
  ) {
    if (ref != null) this.attribute('ref', ref);
    if (name != null) this.attribute('name', name);
    if (sheet != null) this.attribute('sheet', sheet);
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_Consolidation_Builder on _i1.XmlBuilder {
  void s_ct_consolidation({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? autoPage,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, autoPage);
        },
      );
    } else {
      _buildBody(children, autoPage);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? autoPage) {
    if (autoPage != null)
      this.attribute('autoPage', autoPage == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Pages_Builder on _i1.XmlBuilder {
  void s_ct_pages({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PCDSCPage_Builder on _i1.XmlBuilder {
  void s_ct_pcdscpage({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PageItem_Builder on _i1.XmlBuilder {
  void s_ct_pageitem({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (name != null) this.attribute('name', name);
    children?.call(this);
  }
}

extension S_CT_RangeSets_Builder on _i1.XmlBuilder {
  void s_ct_rangesets({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_RangeSet_Builder on _i1.XmlBuilder {
  void s_ct_rangeset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? i1,
    int? i2,
    int? i3,
    int? i4,
    String? ref,
    String? name,
    String? sheet,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, i1, i2, i3, i4, ref, name, sheet, r_id);
        },
      );
    } else {
      _buildBody(children, i1, i2, i3, i4, ref, name, sheet, r_id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? i1,
    int? i2,
    int? i3,
    int? i4,
    String? ref,
    String? name,
    String? sheet,
    String? r_id,
  ) {
    if (i1 != null) this.attribute('i1', i1.toString());
    if (i2 != null) this.attribute('i2', i2.toString());
    if (i3 != null) this.attribute('i3', i3.toString());
    if (i4 != null) this.attribute('i4', i4.toString());
    if (ref != null) this.attribute('ref', ref);
    if (name != null) this.attribute('name', name);
    if (sheet != null) this.attribute('sheet', sheet);
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_SharedItems_Builder on _i1.XmlBuilder {
  void s_ct_shareditems({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? containsSemiMixedTypes,
    bool? containsNonDate,
    bool? containsDate,
    bool? containsString,
    bool? containsBlank,
    bool? containsMixedTypes,
    bool? containsNumber,
    bool? containsInteger,
    double? minValue,
    double? maxValue,
    String? minDate,
    String? maxDate,
    int? count,
    bool? longText,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            containsSemiMixedTypes,
            containsNonDate,
            containsDate,
            containsString,
            containsBlank,
            containsMixedTypes,
            containsNumber,
            containsInteger,
            minValue,
            maxValue,
            minDate,
            maxDate,
            count,
            longText,
          );
        },
      );
    } else {
      _buildBody(
        children,
        containsSemiMixedTypes,
        containsNonDate,
        containsDate,
        containsString,
        containsBlank,
        containsMixedTypes,
        containsNumber,
        containsInteger,
        minValue,
        maxValue,
        minDate,
        maxDate,
        count,
        longText,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? containsSemiMixedTypes,
    bool? containsNonDate,
    bool? containsDate,
    bool? containsString,
    bool? containsBlank,
    bool? containsMixedTypes,
    bool? containsNumber,
    bool? containsInteger,
    double? minValue,
    double? maxValue,
    String? minDate,
    String? maxDate,
    int? count,
    bool? longText,
  ) {
    if (containsSemiMixedTypes != null)
      this.attribute(
        'containsSemiMixedTypes',
        containsSemiMixedTypes == true ? 'true' : 'false',
      );
    if (containsNonDate != null)
      this.attribute(
        'containsNonDate',
        containsNonDate == true ? 'true' : 'false',
      );
    if (containsDate != null)
      this.attribute('containsDate', containsDate == true ? 'true' : 'false');
    if (containsString != null)
      this.attribute(
        'containsString',
        containsString == true ? 'true' : 'false',
      );
    if (containsBlank != null)
      this.attribute('containsBlank', containsBlank == true ? 'true' : 'false');
    if (containsMixedTypes != null)
      this.attribute(
        'containsMixedTypes',
        containsMixedTypes == true ? 'true' : 'false',
      );
    if (containsNumber != null)
      this.attribute(
        'containsNumber',
        containsNumber == true ? 'true' : 'false',
      );
    if (containsInteger != null)
      this.attribute(
        'containsInteger',
        containsInteger == true ? 'true' : 'false',
      );
    if (minValue != null) this.attribute('minValue', minValue.toString());
    if (maxValue != null) this.attribute('maxValue', maxValue.toString());
    if (minDate != null) this.attribute('minDate', minDate);
    if (maxDate != null) this.attribute('maxDate', maxDate);
    if (count != null) this.attribute('count', count.toString());
    if (longText != null)
      this.attribute('longText', longText == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Missing_Builder on _i1.XmlBuilder {
  void s_ct_missing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? u,
    bool? f,
    String? c,
    int? cp,
    int? in_,
    String? bc,
    String? fc,
    bool? i,
    bool? un,
    bool? st,
    bool? b,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, u, f, c, cp, in_, bc, fc, i, un, st, b);
        },
      );
    } else {
      _buildBody(children, u, f, c, cp, in_, bc, fc, i, un, st, b);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    int? in_,
    String? bc,
    String? fc,
    bool? i,
    bool? un,
    bool? st,
    bool? b,
  ) {
    if (u != null) this.attribute('u', u == true ? 'true' : 'false');
    if (f != null) this.attribute('f', f == true ? 'true' : 'false');
    if (c != null) this.attribute('c', c);
    if (cp != null) this.attribute('cp', cp.toString());
    if (in_ != null) this.attribute('in', in_.toString());
    if (bc != null) this.attribute('bc', bc);
    if (fc != null) this.attribute('fc', fc);
    if (i != null) this.attribute('i', i == true ? 'true' : 'false');
    if (un != null) this.attribute('un', un == true ? 'true' : 'false');
    if (st != null) this.attribute('st', st == true ? 'true' : 'false');
    if (b != null) this.attribute('b', b == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Number_Builder on _i1.XmlBuilder {
  void s_ct_number({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    double? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    int? in_,
    String? bc,
    String? fc,
    bool? i,
    bool? un,
    bool? st,
    bool? b,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, v, u, f, c, cp, in_, bc, fc, i, un, st, b);
        },
      );
    } else {
      _buildBody(children, v, u, f, c, cp, in_, bc, fc, i, un, st, b);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    double? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    int? in_,
    String? bc,
    String? fc,
    bool? i,
    bool? un,
    bool? st,
    bool? b,
  ) {
    if (v != null) this.attribute('v', v.toString());
    if (u != null) this.attribute('u', u == true ? 'true' : 'false');
    if (f != null) this.attribute('f', f == true ? 'true' : 'false');
    if (c != null) this.attribute('c', c);
    if (cp != null) this.attribute('cp', cp.toString());
    if (in_ != null) this.attribute('in', in_.toString());
    if (bc != null) this.attribute('bc', bc);
    if (fc != null) this.attribute('fc', fc);
    if (i != null) this.attribute('i', i == true ? 'true' : 'false');
    if (un != null) this.attribute('un', un == true ? 'true' : 'false');
    if (st != null) this.attribute('st', st == true ? 'true' : 'false');
    if (b != null) this.attribute('b', b == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Boolean_Builder on _i1.XmlBuilder {
  void s_ct_boolean({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, v, u, f, c, cp);
        },
      );
    } else {
      _buildBody(children, v, u, f, c, cp);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
  ) {
    if (v != null) this.attribute('v', v == true ? 'true' : 'false');
    if (u != null) this.attribute('u', u == true ? 'true' : 'false');
    if (f != null) this.attribute('f', f == true ? 'true' : 'false');
    if (c != null) this.attribute('c', c);
    if (cp != null) this.attribute('cp', cp.toString());
    children?.call(this);
  }
}

extension S_CT_Error_Builder on _i1.XmlBuilder {
  void s_ct_error({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    int? in_,
    String? bc,
    String? fc,
    bool? i,
    bool? un,
    bool? st,
    bool? b,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, v, u, f, c, cp, in_, bc, fc, i, un, st, b);
        },
      );
    } else {
      _buildBody(children, v, u, f, c, cp, in_, bc, fc, i, un, st, b);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    int? in_,
    String? bc,
    String? fc,
    bool? i,
    bool? un,
    bool? st,
    bool? b,
  ) {
    if (v != null) this.attribute('v', v);
    if (u != null) this.attribute('u', u == true ? 'true' : 'false');
    if (f != null) this.attribute('f', f == true ? 'true' : 'false');
    if (c != null) this.attribute('c', c);
    if (cp != null) this.attribute('cp', cp.toString());
    if (in_ != null) this.attribute('in', in_.toString());
    if (bc != null) this.attribute('bc', bc);
    if (fc != null) this.attribute('fc', fc);
    if (i != null) this.attribute('i', i == true ? 'true' : 'false');
    if (un != null) this.attribute('un', un == true ? 'true' : 'false');
    if (st != null) this.attribute('st', st == true ? 'true' : 'false');
    if (b != null) this.attribute('b', b == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_String_Builder on _i1.XmlBuilder {
  void s_ct_string({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    int? in_,
    String? bc,
    String? fc,
    bool? i,
    bool? un,
    bool? st,
    bool? b,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, v, u, f, c, cp, in_, bc, fc, i, un, st, b);
        },
      );
    } else {
      _buildBody(children, v, u, f, c, cp, in_, bc, fc, i, un, st, b);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    int? in_,
    String? bc,
    String? fc,
    bool? i,
    bool? un,
    bool? st,
    bool? b,
  ) {
    if (v != null) this.attribute('v', v);
    if (u != null) this.attribute('u', u == true ? 'true' : 'false');
    if (f != null) this.attribute('f', f == true ? 'true' : 'false');
    if (c != null) this.attribute('c', c);
    if (cp != null) this.attribute('cp', cp.toString());
    if (in_ != null) this.attribute('in', in_.toString());
    if (bc != null) this.attribute('bc', bc);
    if (fc != null) this.attribute('fc', fc);
    if (i != null) this.attribute('i', i == true ? 'true' : 'false');
    if (un != null) this.attribute('un', un == true ? 'true' : 'false');
    if (st != null) this.attribute('st', st == true ? 'true' : 'false');
    if (b != null) this.attribute('b', b == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_DateTime_Builder on _i1.XmlBuilder {
  void s_ct_datetime({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, v, u, f, c, cp);
        },
      );
    } else {
      _buildBody(children, v, u, f, c, cp);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? v,
    bool? u,
    bool? f,
    String? c,
    int? cp,
  ) {
    if (v != null) this.attribute('v', v);
    if (u != null) this.attribute('u', u == true ? 'true' : 'false');
    if (f != null) this.attribute('f', f == true ? 'true' : 'false');
    if (c != null) this.attribute('c', c);
    if (cp != null) this.attribute('cp', cp.toString());
    children?.call(this);
  }
}

extension S_CT_FieldGroup_Builder on _i1.XmlBuilder {
  void s_ct_fieldgroup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? par,
    int? base,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, par, base);
        },
      );
    } else {
      _buildBody(children, par, base);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? par, int? base) {
    if (par != null) this.attribute('par', par.toString());
    if (base != null) this.attribute('base', base.toString());
    children?.call(this);
  }
}

extension S_CT_RangePr_Builder on _i1.XmlBuilder {
  void s_ct_rangepr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? autoStart,
    bool? autoEnd,
    S_ST_GroupBy? groupBy,
    double? startNum,
    double? endNum,
    String? startDate,
    String? endDate,
    double? groupInterval,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            autoStart,
            autoEnd,
            groupBy,
            startNum,
            endNum,
            startDate,
            endDate,
            groupInterval,
          );
        },
      );
    } else {
      _buildBody(
        children,
        autoStart,
        autoEnd,
        groupBy,
        startNum,
        endNum,
        startDate,
        endDate,
        groupInterval,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? autoStart,
    bool? autoEnd,
    S_ST_GroupBy? groupBy,
    double? startNum,
    double? endNum,
    String? startDate,
    String? endDate,
    double? groupInterval,
  ) {
    if (autoStart != null)
      this.attribute('autoStart', autoStart == true ? 'true' : 'false');
    if (autoEnd != null)
      this.attribute('autoEnd', autoEnd == true ? 'true' : 'false');
    if (groupBy != null) this.attribute('groupBy', groupBy!.value);
    if (startNum != null) this.attribute('startNum', startNum.toString());
    if (endNum != null) this.attribute('endNum', endNum.toString());
    if (startDate != null) this.attribute('startDate', startDate);
    if (endDate != null) this.attribute('endDate', endDate);
    if (groupInterval != null)
      this.attribute('groupInterval', groupInterval.toString());
    children?.call(this);
  }
}

extension S_CT_DiscretePr_Builder on _i1.XmlBuilder {
  void s_ct_discretepr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_GroupItems_Builder on _i1.XmlBuilder {
  void s_ct_groupitems({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PivotCacheRecords_Builder on _i1.XmlBuilder {
  void s_ct_pivotcacherecords({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Record_Builder on _i1.XmlBuilder {
  void s_ct_record({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_PCDKPIs_Builder on _i1.XmlBuilder {
  void s_ct_pcdkpis({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PCDKPI_Builder on _i1.XmlBuilder {
  void s_ct_pcdkpi({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? uniqueName,
    String? caption,
    String? displayFolder,
    String? measureGroup,
    String? parent,
    String? value_,
    String? goal,
    String? status,
    String? trend,
    String? weight,
    String? time,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            uniqueName,
            caption,
            displayFolder,
            measureGroup,
            parent,
            value_,
            goal,
            status,
            trend,
            weight,
            time,
          );
        },
      );
    } else {
      _buildBody(
        children,
        uniqueName,
        caption,
        displayFolder,
        measureGroup,
        parent,
        value_,
        goal,
        status,
        trend,
        weight,
        time,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueName,
    String? caption,
    String? displayFolder,
    String? measureGroup,
    String? parent,
    String? value_,
    String? goal,
    String? status,
    String? trend,
    String? weight,
    String? time,
  ) {
    if (uniqueName != null) this.attribute('uniqueName', uniqueName);
    if (caption != null) this.attribute('caption', caption);
    if (displayFolder != null) this.attribute('displayFolder', displayFolder);
    if (measureGroup != null) this.attribute('measureGroup', measureGroup);
    if (parent != null) this.attribute('parent', parent);
    if (value_ != null) this.attribute('value', value_);
    if (goal != null) this.attribute('goal', goal);
    if (status != null) this.attribute('status', status);
    if (trend != null) this.attribute('trend', trend);
    if (weight != null) this.attribute('weight', weight);
    if (time != null) this.attribute('time', time);
    children?.call(this);
  }
}

extension S_CT_CacheHierarchies_Builder on _i1.XmlBuilder {
  void s_ct_cachehierarchies({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_CacheHierarchy_Builder on _i1.XmlBuilder {
  void s_ct_cachehierarchy({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? uniqueName,
    String? caption,
    bool? measure,
    bool? set_,
    int? parentSet,
    int? iconSet,
    bool? attribute,
    bool? time,
    bool? keyAttribute,
    String? defaultMemberUniqueName,
    String? allUniqueName,
    String? allCaption,
    String? dimensionUniqueName,
    String? displayFolder,
    String? measureGroup,
    bool? measures,
    int? count,
    bool? oneField,
    int? memberValueDatatype,
    bool? unbalanced,
    bool? unbalancedGroup,
    bool? hidden,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            uniqueName,
            caption,
            measure,
            set_,
            parentSet,
            iconSet,
            attribute,
            time,
            keyAttribute,
            defaultMemberUniqueName,
            allUniqueName,
            allCaption,
            dimensionUniqueName,
            displayFolder,
            measureGroup,
            measures,
            count,
            oneField,
            memberValueDatatype,
            unbalanced,
            unbalancedGroup,
            hidden,
          );
        },
      );
    } else {
      _buildBody(
        children,
        uniqueName,
        caption,
        measure,
        set_,
        parentSet,
        iconSet,
        attribute,
        time,
        keyAttribute,
        defaultMemberUniqueName,
        allUniqueName,
        allCaption,
        dimensionUniqueName,
        displayFolder,
        measureGroup,
        measures,
        count,
        oneField,
        memberValueDatatype,
        unbalanced,
        unbalancedGroup,
        hidden,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueName,
    String? caption,
    bool? measure,
    bool? set_,
    int? parentSet,
    int? iconSet,
    bool? attribute,
    bool? time,
    bool? keyAttribute,
    String? defaultMemberUniqueName,
    String? allUniqueName,
    String? allCaption,
    String? dimensionUniqueName,
    String? displayFolder,
    String? measureGroup,
    bool? measures,
    int? count,
    bool? oneField,
    int? memberValueDatatype,
    bool? unbalanced,
    bool? unbalancedGroup,
    bool? hidden,
  ) {
    if (uniqueName != null) this.attribute('uniqueName', uniqueName);
    if (caption != null) this.attribute('caption', caption);
    if (measure != null)
      this.attribute('measure', measure == true ? 'true' : 'false');
    if (set_ != null) this.attribute('set', set_ == true ? 'true' : 'false');
    if (parentSet != null) this.attribute('parentSet', parentSet.toString());
    if (iconSet != null) this.attribute('iconSet', iconSet.toString());
    if (attribute != null)
      this.attribute('attribute', attribute == true ? 'true' : 'false');
    if (time != null) this.attribute('time', time == true ? 'true' : 'false');
    if (keyAttribute != null)
      this.attribute('keyAttribute', keyAttribute == true ? 'true' : 'false');
    if (defaultMemberUniqueName != null)
      this.attribute('defaultMemberUniqueName', defaultMemberUniqueName);
    if (allUniqueName != null) this.attribute('allUniqueName', allUniqueName);
    if (allCaption != null) this.attribute('allCaption', allCaption);
    if (dimensionUniqueName != null)
      this.attribute('dimensionUniqueName', dimensionUniqueName);
    if (displayFolder != null) this.attribute('displayFolder', displayFolder);
    if (measureGroup != null) this.attribute('measureGroup', measureGroup);
    if (measures != null)
      this.attribute('measures', measures == true ? 'true' : 'false');
    if (count != null) this.attribute('count', count.toString());
    if (oneField != null)
      this.attribute('oneField', oneField == true ? 'true' : 'false');
    if (memberValueDatatype != null)
      this.attribute('memberValueDatatype', memberValueDatatype.toString());
    if (unbalanced != null)
      this.attribute('unbalanced', unbalanced == true ? 'true' : 'false');
    if (unbalancedGroup != null)
      this.attribute(
        'unbalancedGroup',
        unbalancedGroup == true ? 'true' : 'false',
      );
    if (hidden != null)
      this.attribute('hidden', hidden == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_FieldsUsage_Builder on _i1.XmlBuilder {
  void s_ct_fieldsusage({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_FieldUsage_Builder on _i1.XmlBuilder {
  void s_ct_fieldusage({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? x,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, x);
        },
      );
    } else {
      _buildBody(children, x);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? x) {
    if (x != null) this.attribute('x', x.toString());
    children?.call(this);
  }
}

extension S_CT_GroupLevels_Builder on _i1.XmlBuilder {
  void s_ct_grouplevels({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_GroupLevel_Builder on _i1.XmlBuilder {
  void s_ct_grouplevel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? uniqueName,
    String? caption,
    bool? user,
    bool? customRollUp,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uniqueName, caption, user, customRollUp);
        },
      );
    } else {
      _buildBody(children, uniqueName, caption, user, customRollUp);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueName,
    String? caption,
    bool? user,
    bool? customRollUp,
  ) {
    if (uniqueName != null) this.attribute('uniqueName', uniqueName);
    if (caption != null) this.attribute('caption', caption);
    if (user != null) this.attribute('user', user == true ? 'true' : 'false');
    if (customRollUp != null)
      this.attribute('customRollUp', customRollUp == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Groups_Builder on _i1.XmlBuilder {
  void s_ct_groups({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_LevelGroup_Builder on _i1.XmlBuilder {
  void s_ct_levelgroup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    String? uniqueName,
    String? caption,
    String? uniqueParent,
    int? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, uniqueName, caption, uniqueParent, id);
        },
      );
    } else {
      _buildBody(children, name, uniqueName, caption, uniqueParent, id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? uniqueName,
    String? caption,
    String? uniqueParent,
    int? id,
  ) {
    if (name != null) this.attribute('name', name);
    if (uniqueName != null) this.attribute('uniqueName', uniqueName);
    if (caption != null) this.attribute('caption', caption);
    if (uniqueParent != null) this.attribute('uniqueParent', uniqueParent);
    if (id != null) this.attribute('id', id.toString());
    children?.call(this);
  }
}

extension S_CT_GroupMembers_Builder on _i1.XmlBuilder {
  void s_ct_groupmembers({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_GroupMember_Builder on _i1.XmlBuilder {
  void s_ct_groupmember({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? uniqueName,
    bool? group,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, uniqueName, group);
        },
      );
    } else {
      _buildBody(children, uniqueName, group);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? uniqueName,
    bool? group,
  ) {
    if (uniqueName != null) this.attribute('uniqueName', uniqueName);
    if (group != null)
      this.attribute('group', group == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_TupleCache_Builder on _i1.XmlBuilder {
  void s_ct_tuplecache({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ServerFormat_Builder on _i1.XmlBuilder {
  void s_ct_serverformat({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? culture,
    String? format,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, culture, format);
        },
      );
    } else {
      _buildBody(children, culture, format);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? culture,
    String? format,
  ) {
    if (culture != null) this.attribute('culture', culture);
    if (format != null) this.attribute('format', format);
    children?.call(this);
  }
}

extension S_CT_ServerFormats_Builder on _i1.XmlBuilder {
  void s_ct_serverformats({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PCDSDTCEntries_Builder on _i1.XmlBuilder {
  void s_ct_pcdsdtcentries({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Tuples_Builder on _i1.XmlBuilder {
  void s_ct_tuples({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? c,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, c);
        },
      );
    } else {
      _buildBody(children, c);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? c) {
    if (c != null) this.attribute('c', c.toString());
    children?.call(this);
  }
}

extension S_CT_Tuple_Builder on _i1.XmlBuilder {
  void s_ct_tuple({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? fld,
    int? hier,
    int? item,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fld, hier, item);
        },
      );
    } else {
      _buildBody(children, fld, hier, item);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? fld,
    int? hier,
    int? item,
  ) {
    if (fld != null) this.attribute('fld', fld.toString());
    if (hier != null) this.attribute('hier', hier.toString());
    if (item != null) this.attribute('item', item.toString());
    children?.call(this);
  }
}

extension S_CT_Sets_Builder on _i1.XmlBuilder {
  void s_ct_sets({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Set_Builder on _i1.XmlBuilder {
  void s_ct_set({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    int? maxRank,
    String? setDefinition,
    S_ST_SortType? sortType,
    bool? queryFailed,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            count,
            maxRank,
            setDefinition,
            sortType,
            queryFailed,
          );
        },
      );
    } else {
      _buildBody(
        children,
        count,
        maxRank,
        setDefinition,
        sortType,
        queryFailed,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? count,
    int? maxRank,
    String? setDefinition,
    S_ST_SortType? sortType,
    bool? queryFailed,
  ) {
    if (count != null) this.attribute('count', count.toString());
    if (maxRank != null) this.attribute('maxRank', maxRank.toString());
    if (setDefinition != null) this.attribute('setDefinition', setDefinition);
    if (sortType != null) this.attribute('sortType', sortType!.value);
    if (queryFailed != null)
      this.attribute('queryFailed', queryFailed == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_QueryCache_Builder on _i1.XmlBuilder {
  void s_ct_querycache({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Query_Builder on _i1.XmlBuilder {
  void s_ct_query({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? mdx,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, mdx);
        },
      );
    } else {
      _buildBody(children, mdx);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? mdx) {
    if (mdx != null) this.attribute('mdx', mdx);
    children?.call(this);
  }
}

extension S_CT_CalculatedItems_Builder on _i1.XmlBuilder {
  void s_ct_calculateditems({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_CalculatedItem_Builder on _i1.XmlBuilder {
  void s_ct_calculateditem({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? field,
    String? formula,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, field, formula);
        },
      );
    } else {
      _buildBody(children, field, formula);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? field,
    String? formula,
  ) {
    if (field != null) this.attribute('field', field.toString());
    if (formula != null) this.attribute('formula', formula);
    children?.call(this);
  }
}

extension S_CT_CalculatedMembers_Builder on _i1.XmlBuilder {
  void s_ct_calculatedmembers({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_CalculatedMember_Builder on _i1.XmlBuilder {
  void s_ct_calculatedmember({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    String? mdx,
    String? memberName,
    String? hierarchy,
    String? parent,
    int? solveOrder,
    bool? set_,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            mdx,
            memberName,
            hierarchy,
            parent,
            solveOrder,
            set_,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        mdx,
        memberName,
        hierarchy,
        parent,
        solveOrder,
        set_,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? mdx,
    String? memberName,
    String? hierarchy,
    String? parent,
    int? solveOrder,
    bool? set_,
  ) {
    if (name != null) this.attribute('name', name);
    if (mdx != null) this.attribute('mdx', mdx);
    if (memberName != null) this.attribute('memberName', memberName);
    if (hierarchy != null) this.attribute('hierarchy', hierarchy);
    if (parent != null) this.attribute('parent', parent);
    if (solveOrder != null) this.attribute('solveOrder', solveOrder.toString());
    if (set_ != null) this.attribute('set', set_ == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_pivotTableDefinition_Builder on _i1.XmlBuilder {
  void s_ct_pivottabledefinition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    int? cacheId,
    bool? dataOnRows,
    int? dataPosition,
    String? dataCaption,
    String? grandTotalCaption,
    String? errorCaption,
    bool? showError,
    String? missingCaption,
    bool? showMissing,
    String? pageStyle,
    String? pivotTableStyle,
    String? vacatedStyle,
    String? tag,
    int? updatedVersion,
    int? minRefreshableVersion,
    bool? asteriskTotals,
    bool? showItems,
    bool? editData,
    bool? disableFieldList,
    bool? showCalcMbrs,
    bool? visualTotals,
    bool? showMultipleLabel,
    bool? showDataDropDown,
    bool? showDrill,
    bool? printDrill,
    bool? showMemberPropertyTips,
    bool? showDataTips,
    bool? enableWizard,
    bool? enableDrill,
    bool? enableFieldProperties,
    bool? preserveFormatting,
    bool? useAutoFormatting,
    int? pageWrap,
    bool? pageOverThenDown,
    bool? subtotalHiddenItems,
    bool? rowGrandTotals,
    bool? colGrandTotals,
    bool? fieldPrintTitles,
    bool? itemPrintTitles,
    bool? mergeItem,
    bool? showDropZones,
    int? createdVersion,
    int? indent,
    bool? showEmptyRow,
    bool? showEmptyCol,
    bool? showHeaders,
    bool? compact,
    bool? outline,
    bool? outlineData,
    bool? compactData,
    bool? published,
    bool? gridDropZones,
    bool? immersive,
    bool? multipleFieldFilters,
    int? chartFormat,
    String? rowHeaderCaption,
    String? colHeaderCaption,
    bool? fieldListSortAscending,
    bool? mdxSubqueries,
    bool? customListSort,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            cacheId,
            dataOnRows,
            dataPosition,
            dataCaption,
            grandTotalCaption,
            errorCaption,
            showError,
            missingCaption,
            showMissing,
            pageStyle,
            pivotTableStyle,
            vacatedStyle,
            tag,
            updatedVersion,
            minRefreshableVersion,
            asteriskTotals,
            showItems,
            editData,
            disableFieldList,
            showCalcMbrs,
            visualTotals,
            showMultipleLabel,
            showDataDropDown,
            showDrill,
            printDrill,
            showMemberPropertyTips,
            showDataTips,
            enableWizard,
            enableDrill,
            enableFieldProperties,
            preserveFormatting,
            useAutoFormatting,
            pageWrap,
            pageOverThenDown,
            subtotalHiddenItems,
            rowGrandTotals,
            colGrandTotals,
            fieldPrintTitles,
            itemPrintTitles,
            mergeItem,
            showDropZones,
            createdVersion,
            indent,
            showEmptyRow,
            showEmptyCol,
            showHeaders,
            compact,
            outline,
            outlineData,
            compactData,
            published,
            gridDropZones,
            immersive,
            multipleFieldFilters,
            chartFormat,
            rowHeaderCaption,
            colHeaderCaption,
            fieldListSortAscending,
            mdxSubqueries,
            customListSort,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        cacheId,
        dataOnRows,
        dataPosition,
        dataCaption,
        grandTotalCaption,
        errorCaption,
        showError,
        missingCaption,
        showMissing,
        pageStyle,
        pivotTableStyle,
        vacatedStyle,
        tag,
        updatedVersion,
        minRefreshableVersion,
        asteriskTotals,
        showItems,
        editData,
        disableFieldList,
        showCalcMbrs,
        visualTotals,
        showMultipleLabel,
        showDataDropDown,
        showDrill,
        printDrill,
        showMemberPropertyTips,
        showDataTips,
        enableWizard,
        enableDrill,
        enableFieldProperties,
        preserveFormatting,
        useAutoFormatting,
        pageWrap,
        pageOverThenDown,
        subtotalHiddenItems,
        rowGrandTotals,
        colGrandTotals,
        fieldPrintTitles,
        itemPrintTitles,
        mergeItem,
        showDropZones,
        createdVersion,
        indent,
        showEmptyRow,
        showEmptyCol,
        showHeaders,
        compact,
        outline,
        outlineData,
        compactData,
        published,
        gridDropZones,
        immersive,
        multipleFieldFilters,
        chartFormat,
        rowHeaderCaption,
        colHeaderCaption,
        fieldListSortAscending,
        mdxSubqueries,
        customListSort,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    int? cacheId,
    bool? dataOnRows,
    int? dataPosition,
    String? dataCaption,
    String? grandTotalCaption,
    String? errorCaption,
    bool? showError,
    String? missingCaption,
    bool? showMissing,
    String? pageStyle,
    String? pivotTableStyle,
    String? vacatedStyle,
    String? tag,
    int? updatedVersion,
    int? minRefreshableVersion,
    bool? asteriskTotals,
    bool? showItems,
    bool? editData,
    bool? disableFieldList,
    bool? showCalcMbrs,
    bool? visualTotals,
    bool? showMultipleLabel,
    bool? showDataDropDown,
    bool? showDrill,
    bool? printDrill,
    bool? showMemberPropertyTips,
    bool? showDataTips,
    bool? enableWizard,
    bool? enableDrill,
    bool? enableFieldProperties,
    bool? preserveFormatting,
    bool? useAutoFormatting,
    int? pageWrap,
    bool? pageOverThenDown,
    bool? subtotalHiddenItems,
    bool? rowGrandTotals,
    bool? colGrandTotals,
    bool? fieldPrintTitles,
    bool? itemPrintTitles,
    bool? mergeItem,
    bool? showDropZones,
    int? createdVersion,
    int? indent,
    bool? showEmptyRow,
    bool? showEmptyCol,
    bool? showHeaders,
    bool? compact,
    bool? outline,
    bool? outlineData,
    bool? compactData,
    bool? published,
    bool? gridDropZones,
    bool? immersive,
    bool? multipleFieldFilters,
    int? chartFormat,
    String? rowHeaderCaption,
    String? colHeaderCaption,
    bool? fieldListSortAscending,
    bool? mdxSubqueries,
    bool? customListSort,
  ) {
    if (name != null) this.attribute('name', name);
    if (cacheId != null) this.attribute('cacheId', cacheId.toString());
    if (dataOnRows != null)
      this.attribute('dataOnRows', dataOnRows == true ? 'true' : 'false');
    if (dataPosition != null)
      this.attribute('dataPosition', dataPosition.toString());
    if (dataCaption != null) this.attribute('dataCaption', dataCaption);
    if (grandTotalCaption != null)
      this.attribute('grandTotalCaption', grandTotalCaption);
    if (errorCaption != null) this.attribute('errorCaption', errorCaption);
    if (showError != null)
      this.attribute('showError', showError == true ? 'true' : 'false');
    if (missingCaption != null)
      this.attribute('missingCaption', missingCaption);
    if (showMissing != null)
      this.attribute('showMissing', showMissing == true ? 'true' : 'false');
    if (pageStyle != null) this.attribute('pageStyle', pageStyle);
    if (pivotTableStyle != null)
      this.attribute('pivotTableStyle', pivotTableStyle);
    if (vacatedStyle != null) this.attribute('vacatedStyle', vacatedStyle);
    if (tag != null) this.attribute('tag', tag);
    if (updatedVersion != null)
      this.attribute('updatedVersion', updatedVersion.toString());
    if (minRefreshableVersion != null)
      this.attribute('minRefreshableVersion', minRefreshableVersion.toString());
    if (asteriskTotals != null)
      this.attribute(
        'asteriskTotals',
        asteriskTotals == true ? 'true' : 'false',
      );
    if (showItems != null)
      this.attribute('showItems', showItems == true ? 'true' : 'false');
    if (editData != null)
      this.attribute('editData', editData == true ? 'true' : 'false');
    if (disableFieldList != null)
      this.attribute(
        'disableFieldList',
        disableFieldList == true ? 'true' : 'false',
      );
    if (showCalcMbrs != null)
      this.attribute('showCalcMbrs', showCalcMbrs == true ? 'true' : 'false');
    if (visualTotals != null)
      this.attribute('visualTotals', visualTotals == true ? 'true' : 'false');
    if (showMultipleLabel != null)
      this.attribute(
        'showMultipleLabel',
        showMultipleLabel == true ? 'true' : 'false',
      );
    if (showDataDropDown != null)
      this.attribute(
        'showDataDropDown',
        showDataDropDown == true ? 'true' : 'false',
      );
    if (showDrill != null)
      this.attribute('showDrill', showDrill == true ? 'true' : 'false');
    if (printDrill != null)
      this.attribute('printDrill', printDrill == true ? 'true' : 'false');
    if (showMemberPropertyTips != null)
      this.attribute(
        'showMemberPropertyTips',
        showMemberPropertyTips == true ? 'true' : 'false',
      );
    if (showDataTips != null)
      this.attribute('showDataTips', showDataTips == true ? 'true' : 'false');
    if (enableWizard != null)
      this.attribute('enableWizard', enableWizard == true ? 'true' : 'false');
    if (enableDrill != null)
      this.attribute('enableDrill', enableDrill == true ? 'true' : 'false');
    if (enableFieldProperties != null)
      this.attribute(
        'enableFieldProperties',
        enableFieldProperties == true ? 'true' : 'false',
      );
    if (preserveFormatting != null)
      this.attribute(
        'preserveFormatting',
        preserveFormatting == true ? 'true' : 'false',
      );
    if (useAutoFormatting != null)
      this.attribute(
        'useAutoFormatting',
        useAutoFormatting == true ? 'true' : 'false',
      );
    if (pageWrap != null) this.attribute('pageWrap', pageWrap.toString());
    if (pageOverThenDown != null)
      this.attribute(
        'pageOverThenDown',
        pageOverThenDown == true ? 'true' : 'false',
      );
    if (subtotalHiddenItems != null)
      this.attribute(
        'subtotalHiddenItems',
        subtotalHiddenItems == true ? 'true' : 'false',
      );
    if (rowGrandTotals != null)
      this.attribute(
        'rowGrandTotals',
        rowGrandTotals == true ? 'true' : 'false',
      );
    if (colGrandTotals != null)
      this.attribute(
        'colGrandTotals',
        colGrandTotals == true ? 'true' : 'false',
      );
    if (fieldPrintTitles != null)
      this.attribute(
        'fieldPrintTitles',
        fieldPrintTitles == true ? 'true' : 'false',
      );
    if (itemPrintTitles != null)
      this.attribute(
        'itemPrintTitles',
        itemPrintTitles == true ? 'true' : 'false',
      );
    if (mergeItem != null)
      this.attribute('mergeItem', mergeItem == true ? 'true' : 'false');
    if (showDropZones != null)
      this.attribute('showDropZones', showDropZones == true ? 'true' : 'false');
    if (createdVersion != null)
      this.attribute('createdVersion', createdVersion.toString());
    if (indent != null) this.attribute('indent', indent.toString());
    if (showEmptyRow != null)
      this.attribute('showEmptyRow', showEmptyRow == true ? 'true' : 'false');
    if (showEmptyCol != null)
      this.attribute('showEmptyCol', showEmptyCol == true ? 'true' : 'false');
    if (showHeaders != null)
      this.attribute('showHeaders', showHeaders == true ? 'true' : 'false');
    if (compact != null)
      this.attribute('compact', compact == true ? 'true' : 'false');
    if (outline != null)
      this.attribute('outline', outline == true ? 'true' : 'false');
    if (outlineData != null)
      this.attribute('outlineData', outlineData == true ? 'true' : 'false');
    if (compactData != null)
      this.attribute('compactData', compactData == true ? 'true' : 'false');
    if (published != null)
      this.attribute('published', published == true ? 'true' : 'false');
    if (gridDropZones != null)
      this.attribute('gridDropZones', gridDropZones == true ? 'true' : 'false');
    if (immersive != null)
      this.attribute('immersive', immersive == true ? 'true' : 'false');
    if (multipleFieldFilters != null)
      this.attribute(
        'multipleFieldFilters',
        multipleFieldFilters == true ? 'true' : 'false',
      );
    if (chartFormat != null)
      this.attribute('chartFormat', chartFormat.toString());
    if (rowHeaderCaption != null)
      this.attribute('rowHeaderCaption', rowHeaderCaption);
    if (colHeaderCaption != null)
      this.attribute('colHeaderCaption', colHeaderCaption);
    if (fieldListSortAscending != null)
      this.attribute(
        'fieldListSortAscending',
        fieldListSortAscending == true ? 'true' : 'false',
      );
    if (mdxSubqueries != null)
      this.attribute('mdxSubqueries', mdxSubqueries == true ? 'true' : 'false');
    if (customListSort != null)
      this.attribute(
        'customListSort',
        customListSort == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_Location_Builder on _i1.XmlBuilder {
  void s_ct_location({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? ref,
    int? firstHeaderRow,
    int? firstDataRow,
    int? firstDataCol,
    int? rowPageCount,
    int? colPageCount,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            ref,
            firstHeaderRow,
            firstDataRow,
            firstDataCol,
            rowPageCount,
            colPageCount,
          );
        },
      );
    } else {
      _buildBody(
        children,
        ref,
        firstHeaderRow,
        firstDataRow,
        firstDataCol,
        rowPageCount,
        colPageCount,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ref,
    int? firstHeaderRow,
    int? firstDataRow,
    int? firstDataCol,
    int? rowPageCount,
    int? colPageCount,
  ) {
    if (ref != null) this.attribute('ref', ref);
    if (firstHeaderRow != null)
      this.attribute('firstHeaderRow', firstHeaderRow.toString());
    if (firstDataRow != null)
      this.attribute('firstDataRow', firstDataRow.toString());
    if (firstDataCol != null)
      this.attribute('firstDataCol', firstDataCol.toString());
    if (rowPageCount != null)
      this.attribute('rowPageCount', rowPageCount.toString());
    if (colPageCount != null)
      this.attribute('colPageCount', colPageCount.toString());
    children?.call(this);
  }
}

extension S_CT_PivotFields_Builder on _i1.XmlBuilder {
  void s_ct_pivotfields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PivotField_Builder on _i1.XmlBuilder {
  void s_ct_pivotfield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    S_ST_Axis? axis,
    bool? dataField,
    String? subtotalCaption,
    bool? showDropDowns,
    bool? hiddenLevel,
    String? uniqueMemberProperty,
    bool? compact,
    bool? allDrilled,
    String? numFmtId,
    bool? outline,
    bool? subtotalTop,
    bool? dragToRow,
    bool? dragToCol,
    bool? multipleItemSelectionAllowed,
    bool? dragToPage,
    bool? dragToData,
    bool? dragOff,
    bool? showAll,
    bool? insertBlankRow,
    bool? serverField,
    bool? insertPageBreak,
    bool? autoShow,
    bool? topAutoShow,
    bool? hideNewItems,
    bool? measureFilter,
    bool? includeNewItemsInFilter,
    int? itemPageCount,
    S_ST_FieldSortType? sortType,
    bool? dataSourceSort,
    bool? nonAutoSortDefault,
    int? rankBy,
    bool? defaultSubtotal,
    bool? sumSubtotal,
    bool? countASubtotal,
    bool? avgSubtotal,
    bool? maxSubtotal,
    bool? minSubtotal,
    bool? productSubtotal,
    bool? countSubtotal,
    bool? stdDevSubtotal,
    bool? stdDevPSubtotal,
    bool? varSubtotal,
    bool? varPSubtotal,
    bool? showPropCell,
    bool? showPropTip,
    bool? showPropAsCaption,
    bool? defaultAttributeDrillState,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            axis,
            dataField,
            subtotalCaption,
            showDropDowns,
            hiddenLevel,
            uniqueMemberProperty,
            compact,
            allDrilled,
            numFmtId,
            outline,
            subtotalTop,
            dragToRow,
            dragToCol,
            multipleItemSelectionAllowed,
            dragToPage,
            dragToData,
            dragOff,
            showAll,
            insertBlankRow,
            serverField,
            insertPageBreak,
            autoShow,
            topAutoShow,
            hideNewItems,
            measureFilter,
            includeNewItemsInFilter,
            itemPageCount,
            sortType,
            dataSourceSort,
            nonAutoSortDefault,
            rankBy,
            defaultSubtotal,
            sumSubtotal,
            countASubtotal,
            avgSubtotal,
            maxSubtotal,
            minSubtotal,
            productSubtotal,
            countSubtotal,
            stdDevSubtotal,
            stdDevPSubtotal,
            varSubtotal,
            varPSubtotal,
            showPropCell,
            showPropTip,
            showPropAsCaption,
            defaultAttributeDrillState,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        axis,
        dataField,
        subtotalCaption,
        showDropDowns,
        hiddenLevel,
        uniqueMemberProperty,
        compact,
        allDrilled,
        numFmtId,
        outline,
        subtotalTop,
        dragToRow,
        dragToCol,
        multipleItemSelectionAllowed,
        dragToPage,
        dragToData,
        dragOff,
        showAll,
        insertBlankRow,
        serverField,
        insertPageBreak,
        autoShow,
        topAutoShow,
        hideNewItems,
        measureFilter,
        includeNewItemsInFilter,
        itemPageCount,
        sortType,
        dataSourceSort,
        nonAutoSortDefault,
        rankBy,
        defaultSubtotal,
        sumSubtotal,
        countASubtotal,
        avgSubtotal,
        maxSubtotal,
        minSubtotal,
        productSubtotal,
        countSubtotal,
        stdDevSubtotal,
        stdDevPSubtotal,
        varSubtotal,
        varPSubtotal,
        showPropCell,
        showPropTip,
        showPropAsCaption,
        defaultAttributeDrillState,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    S_ST_Axis? axis,
    bool? dataField,
    String? subtotalCaption,
    bool? showDropDowns,
    bool? hiddenLevel,
    String? uniqueMemberProperty,
    bool? compact,
    bool? allDrilled,
    String? numFmtId,
    bool? outline,
    bool? subtotalTop,
    bool? dragToRow,
    bool? dragToCol,
    bool? multipleItemSelectionAllowed,
    bool? dragToPage,
    bool? dragToData,
    bool? dragOff,
    bool? showAll,
    bool? insertBlankRow,
    bool? serverField,
    bool? insertPageBreak,
    bool? autoShow,
    bool? topAutoShow,
    bool? hideNewItems,
    bool? measureFilter,
    bool? includeNewItemsInFilter,
    int? itemPageCount,
    S_ST_FieldSortType? sortType,
    bool? dataSourceSort,
    bool? nonAutoSortDefault,
    int? rankBy,
    bool? defaultSubtotal,
    bool? sumSubtotal,
    bool? countASubtotal,
    bool? avgSubtotal,
    bool? maxSubtotal,
    bool? minSubtotal,
    bool? productSubtotal,
    bool? countSubtotal,
    bool? stdDevSubtotal,
    bool? stdDevPSubtotal,
    bool? varSubtotal,
    bool? varPSubtotal,
    bool? showPropCell,
    bool? showPropTip,
    bool? showPropAsCaption,
    bool? defaultAttributeDrillState,
  ) {
    if (name != null) this.attribute('name', name);
    if (axis != null) this.attribute('axis', axis!.value);
    if (dataField != null)
      this.attribute('dataField', dataField == true ? 'true' : 'false');
    if (subtotalCaption != null)
      this.attribute('subtotalCaption', subtotalCaption);
    if (showDropDowns != null)
      this.attribute('showDropDowns', showDropDowns == true ? 'true' : 'false');
    if (hiddenLevel != null)
      this.attribute('hiddenLevel', hiddenLevel == true ? 'true' : 'false');
    if (uniqueMemberProperty != null)
      this.attribute('uniqueMemberProperty', uniqueMemberProperty);
    if (compact != null)
      this.attribute('compact', compact == true ? 'true' : 'false');
    if (allDrilled != null)
      this.attribute('allDrilled', allDrilled == true ? 'true' : 'false');
    if (numFmtId != null) this.attribute('numFmtId', numFmtId);
    if (outline != null)
      this.attribute('outline', outline == true ? 'true' : 'false');
    if (subtotalTop != null)
      this.attribute('subtotalTop', subtotalTop == true ? 'true' : 'false');
    if (dragToRow != null)
      this.attribute('dragToRow', dragToRow == true ? 'true' : 'false');
    if (dragToCol != null)
      this.attribute('dragToCol', dragToCol == true ? 'true' : 'false');
    if (multipleItemSelectionAllowed != null)
      this.attribute(
        'multipleItemSelectionAllowed',
        multipleItemSelectionAllowed == true ? 'true' : 'false',
      );
    if (dragToPage != null)
      this.attribute('dragToPage', dragToPage == true ? 'true' : 'false');
    if (dragToData != null)
      this.attribute('dragToData', dragToData == true ? 'true' : 'false');
    if (dragOff != null)
      this.attribute('dragOff', dragOff == true ? 'true' : 'false');
    if (showAll != null)
      this.attribute('showAll', showAll == true ? 'true' : 'false');
    if (insertBlankRow != null)
      this.attribute(
        'insertBlankRow',
        insertBlankRow == true ? 'true' : 'false',
      );
    if (serverField != null)
      this.attribute('serverField', serverField == true ? 'true' : 'false');
    if (insertPageBreak != null)
      this.attribute(
        'insertPageBreak',
        insertPageBreak == true ? 'true' : 'false',
      );
    if (autoShow != null)
      this.attribute('autoShow', autoShow == true ? 'true' : 'false');
    if (topAutoShow != null)
      this.attribute('topAutoShow', topAutoShow == true ? 'true' : 'false');
    if (hideNewItems != null)
      this.attribute('hideNewItems', hideNewItems == true ? 'true' : 'false');
    if (measureFilter != null)
      this.attribute('measureFilter', measureFilter == true ? 'true' : 'false');
    if (includeNewItemsInFilter != null)
      this.attribute(
        'includeNewItemsInFilter',
        includeNewItemsInFilter == true ? 'true' : 'false',
      );
    if (itemPageCount != null)
      this.attribute('itemPageCount', itemPageCount.toString());
    if (sortType != null) this.attribute('sortType', sortType!.value);
    if (dataSourceSort != null)
      this.attribute(
        'dataSourceSort',
        dataSourceSort == true ? 'true' : 'false',
      );
    if (nonAutoSortDefault != null)
      this.attribute(
        'nonAutoSortDefault',
        nonAutoSortDefault == true ? 'true' : 'false',
      );
    if (rankBy != null) this.attribute('rankBy', rankBy.toString());
    if (defaultSubtotal != null)
      this.attribute(
        'defaultSubtotal',
        defaultSubtotal == true ? 'true' : 'false',
      );
    if (sumSubtotal != null)
      this.attribute('sumSubtotal', sumSubtotal == true ? 'true' : 'false');
    if (countASubtotal != null)
      this.attribute(
        'countASubtotal',
        countASubtotal == true ? 'true' : 'false',
      );
    if (avgSubtotal != null)
      this.attribute('avgSubtotal', avgSubtotal == true ? 'true' : 'false');
    if (maxSubtotal != null)
      this.attribute('maxSubtotal', maxSubtotal == true ? 'true' : 'false');
    if (minSubtotal != null)
      this.attribute('minSubtotal', minSubtotal == true ? 'true' : 'false');
    if (productSubtotal != null)
      this.attribute(
        'productSubtotal',
        productSubtotal == true ? 'true' : 'false',
      );
    if (countSubtotal != null)
      this.attribute('countSubtotal', countSubtotal == true ? 'true' : 'false');
    if (stdDevSubtotal != null)
      this.attribute(
        'stdDevSubtotal',
        stdDevSubtotal == true ? 'true' : 'false',
      );
    if (stdDevPSubtotal != null)
      this.attribute(
        'stdDevPSubtotal',
        stdDevPSubtotal == true ? 'true' : 'false',
      );
    if (varSubtotal != null)
      this.attribute('varSubtotal', varSubtotal == true ? 'true' : 'false');
    if (varPSubtotal != null)
      this.attribute('varPSubtotal', varPSubtotal == true ? 'true' : 'false');
    if (showPropCell != null)
      this.attribute('showPropCell', showPropCell == true ? 'true' : 'false');
    if (showPropTip != null)
      this.attribute('showPropTip', showPropTip == true ? 'true' : 'false');
    if (showPropAsCaption != null)
      this.attribute(
        'showPropAsCaption',
        showPropAsCaption == true ? 'true' : 'false',
      );
    if (defaultAttributeDrillState != null)
      this.attribute(
        'defaultAttributeDrillState',
        defaultAttributeDrillState == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_AutoSortScope_Builder on _i1.XmlBuilder {
  void s_ct_autosortscope({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Items_Builder on _i1.XmlBuilder {
  void s_ct_items({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Item_Builder on _i1.XmlBuilder {
  void s_ct_item({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? n,
    S_ST_ItemType? t,
    bool? h,
    bool? s,
    bool? sd,
    bool? f,
    bool? m,
    bool? c,
    int? x,
    bool? d,
    bool? e,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, n, t, h, s, sd, f, m, c, x, d, e);
        },
      );
    } else {
      _buildBody(children, n, t, h, s, sd, f, m, c, x, d, e);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? n,
    S_ST_ItemType? t,
    bool? h,
    bool? s,
    bool? sd,
    bool? f,
    bool? m,
    bool? c,
    int? x,
    bool? d,
    bool? e,
  ) {
    if (n != null) this.attribute('n', n);
    if (t != null) this.attribute('t', t!.value);
    if (h != null) this.attribute('h', h == true ? 'true' : 'false');
    if (s != null) this.attribute('s', s == true ? 'true' : 'false');
    if (sd != null) this.attribute('sd', sd == true ? 'true' : 'false');
    if (f != null) this.attribute('f', f == true ? 'true' : 'false');
    if (m != null) this.attribute('m', m == true ? 'true' : 'false');
    if (c != null) this.attribute('c', c == true ? 'true' : 'false');
    if (x != null) this.attribute('x', x.toString());
    if (d != null) this.attribute('d', d == true ? 'true' : 'false');
    if (e != null) this.attribute('e', e == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_PageFields_Builder on _i1.XmlBuilder {
  void s_ct_pagefields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PageField_Builder on _i1.XmlBuilder {
  void s_ct_pagefield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? fld,
    int? item,
    int? hier,
    String? name,
    String? cap,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fld, item, hier, name, cap);
        },
      );
    } else {
      _buildBody(children, fld, item, hier, name, cap);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? fld,
    int? item,
    int? hier,
    String? name,
    String? cap,
  ) {
    if (fld != null) this.attribute('fld', fld.toString());
    if (item != null) this.attribute('item', item.toString());
    if (hier != null) this.attribute('hier', hier.toString());
    if (name != null) this.attribute('name', name);
    if (cap != null) this.attribute('cap', cap);
    children?.call(this);
  }
}

extension S_CT_DataFields_Builder on _i1.XmlBuilder {
  void s_ct_datafields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_DataField_Builder on _i1.XmlBuilder {
  void s_ct_datafield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    int? fld,
    S_ST_DataConsolidateFunction? subtotal,
    S_ST_ShowDataAs? showDataAs,
    int? baseField,
    int? baseItem,
    String? numFmtId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            fld,
            subtotal,
            showDataAs,
            baseField,
            baseItem,
            numFmtId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        fld,
        subtotal,
        showDataAs,
        baseField,
        baseItem,
        numFmtId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    int? fld,
    S_ST_DataConsolidateFunction? subtotal,
    S_ST_ShowDataAs? showDataAs,
    int? baseField,
    int? baseItem,
    String? numFmtId,
  ) {
    if (name != null) this.attribute('name', name);
    if (fld != null) this.attribute('fld', fld.toString());
    if (subtotal != null) this.attribute('subtotal', subtotal!.value);
    if (showDataAs != null) this.attribute('showDataAs', showDataAs!.value);
    if (baseField != null) this.attribute('baseField', baseField.toString());
    if (baseItem != null) this.attribute('baseItem', baseItem.toString());
    if (numFmtId != null) this.attribute('numFmtId', numFmtId);
    children?.call(this);
  }
}

extension S_CT_rowItems_Builder on _i1.XmlBuilder {
  void s_ct_rowitems({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_colItems_Builder on _i1.XmlBuilder {
  void s_ct_colitems({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_I_Builder on _i1.XmlBuilder {
  void s_ct_i({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_ItemType? t,
    int? r,
    int? i,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, t, r, i);
        },
      );
    } else {
      _buildBody(children, t, r, i);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_ItemType? t,
    int? r,
    int? i,
  ) {
    if (t != null) this.attribute('t', t!.value);
    if (r != null) this.attribute('r', r.toString());
    if (i != null) this.attribute('i', i.toString());
    children?.call(this);
  }
}

extension S_CT_X_Builder on _i1.XmlBuilder {
  void s_ct_x({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? v,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, v);
        },
      );
    } else {
      _buildBody(children, v);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? v) {
    if (v != null) this.attribute('v', v.toString());
    children?.call(this);
  }
}

extension S_CT_RowFields_Builder on _i1.XmlBuilder {
  void s_ct_rowfields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_ColFields_Builder on _i1.XmlBuilder {
  void s_ct_colfields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Field_Builder on _i1.XmlBuilder {
  void s_ct_field({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? x,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, x);
        },
      );
    } else {
      _buildBody(children, x);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? x) {
    if (x != null) this.attribute('x', x.toString());
    children?.call(this);
  }
}

extension S_CT_Formats_Builder on _i1.XmlBuilder {
  void s_ct_formats({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Format_Builder on _i1.XmlBuilder {
  void s_ct_format({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_FormatAction? action,
    String? dxfId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, action, dxfId);
        },
      );
    } else {
      _buildBody(children, action, dxfId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_FormatAction? action,
    String? dxfId,
  ) {
    if (action != null) this.attribute('action', action!.value);
    if (dxfId != null) this.attribute('dxfId', dxfId);
    children?.call(this);
  }
}

extension S_CT_ConditionalFormats_Builder on _i1.XmlBuilder {
  void s_ct_conditionalformats({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_ConditionalFormat_Builder on _i1.XmlBuilder {
  void s_ct_conditionalformat({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_Scope? scope,
    S_ST_Type? type,
    int? priority,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, scope, type, priority);
        },
      );
    } else {
      _buildBody(children, scope, type, priority);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_Scope? scope,
    S_ST_Type? type,
    int? priority,
  ) {
    if (scope != null) this.attribute('scope', scope!.value);
    if (type != null) this.attribute('type', type!.value);
    if (priority != null) this.attribute('priority', priority.toString());
    children?.call(this);
  }
}

extension S_CT_PivotAreas_Builder on _i1.XmlBuilder {
  void s_ct_pivotareas({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_ChartFormats_Builder on _i1.XmlBuilder {
  void s_ct_chartformats({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_ChartFormat_Builder on _i1.XmlBuilder {
  void s_ct_chartformat({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? chart,
    int? format,
    bool? series,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, chart, format, series);
        },
      );
    } else {
      _buildBody(children, chart, format, series);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? chart,
    int? format,
    bool? series,
  ) {
    if (chart != null) this.attribute('chart', chart.toString());
    if (format != null) this.attribute('format', format.toString());
    if (series != null)
      this.attribute('series', series == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_PivotHierarchies_Builder on _i1.XmlBuilder {
  void s_ct_pivothierarchies({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PivotHierarchy_Builder on _i1.XmlBuilder {
  void s_ct_pivothierarchy({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? outline,
    bool? multipleItemSelectionAllowed,
    bool? subtotalTop,
    bool? showInFieldList,
    bool? dragToRow,
    bool? dragToCol,
    bool? dragToPage,
    bool? dragToData,
    bool? dragOff,
    bool? includeNewItemsInFilter,
    String? caption,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            outline,
            multipleItemSelectionAllowed,
            subtotalTop,
            showInFieldList,
            dragToRow,
            dragToCol,
            dragToPage,
            dragToData,
            dragOff,
            includeNewItemsInFilter,
            caption,
          );
        },
      );
    } else {
      _buildBody(
        children,
        outline,
        multipleItemSelectionAllowed,
        subtotalTop,
        showInFieldList,
        dragToRow,
        dragToCol,
        dragToPage,
        dragToData,
        dragOff,
        includeNewItemsInFilter,
        caption,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? outline,
    bool? multipleItemSelectionAllowed,
    bool? subtotalTop,
    bool? showInFieldList,
    bool? dragToRow,
    bool? dragToCol,
    bool? dragToPage,
    bool? dragToData,
    bool? dragOff,
    bool? includeNewItemsInFilter,
    String? caption,
  ) {
    if (outline != null)
      this.attribute('outline', outline == true ? 'true' : 'false');
    if (multipleItemSelectionAllowed != null)
      this.attribute(
        'multipleItemSelectionAllowed',
        multipleItemSelectionAllowed == true ? 'true' : 'false',
      );
    if (subtotalTop != null)
      this.attribute('subtotalTop', subtotalTop == true ? 'true' : 'false');
    if (showInFieldList != null)
      this.attribute(
        'showInFieldList',
        showInFieldList == true ? 'true' : 'false',
      );
    if (dragToRow != null)
      this.attribute('dragToRow', dragToRow == true ? 'true' : 'false');
    if (dragToCol != null)
      this.attribute('dragToCol', dragToCol == true ? 'true' : 'false');
    if (dragToPage != null)
      this.attribute('dragToPage', dragToPage == true ? 'true' : 'false');
    if (dragToData != null)
      this.attribute('dragToData', dragToData == true ? 'true' : 'false');
    if (dragOff != null)
      this.attribute('dragOff', dragOff == true ? 'true' : 'false');
    if (includeNewItemsInFilter != null)
      this.attribute(
        'includeNewItemsInFilter',
        includeNewItemsInFilter == true ? 'true' : 'false',
      );
    if (caption != null) this.attribute('caption', caption);
    children?.call(this);
  }
}

extension S_CT_RowHierarchiesUsage_Builder on _i1.XmlBuilder {
  void s_ct_rowhierarchiesusage({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_ColHierarchiesUsage_Builder on _i1.XmlBuilder {
  void s_ct_colhierarchiesusage({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_HierarchyUsage_Builder on _i1.XmlBuilder {
  void s_ct_hierarchyusage({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? hierarchyUsage,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, hierarchyUsage);
        },
      );
    } else {
      _buildBody(children, hierarchyUsage);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? hierarchyUsage) {
    if (hierarchyUsage != null)
      this.attribute('hierarchyUsage', hierarchyUsage.toString());
    children?.call(this);
  }
}

extension S_CT_MemberProperties_Builder on _i1.XmlBuilder {
  void s_ct_memberproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_MemberProperty_Builder on _i1.XmlBuilder {
  void s_ct_memberproperty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    bool? showCell,
    bool? showTip,
    bool? showAsCaption,
    int? nameLen,
    int? pPos,
    int? pLen,
    int? level,
    int? field,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            showCell,
            showTip,
            showAsCaption,
            nameLen,
            pPos,
            pLen,
            level,
            field,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        showCell,
        showTip,
        showAsCaption,
        nameLen,
        pPos,
        pLen,
        level,
        field,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    bool? showCell,
    bool? showTip,
    bool? showAsCaption,
    int? nameLen,
    int? pPos,
    int? pLen,
    int? level,
    int? field,
  ) {
    if (name != null) this.attribute('name', name);
    if (showCell != null)
      this.attribute('showCell', showCell == true ? 'true' : 'false');
    if (showTip != null)
      this.attribute('showTip', showTip == true ? 'true' : 'false');
    if (showAsCaption != null)
      this.attribute('showAsCaption', showAsCaption == true ? 'true' : 'false');
    if (nameLen != null) this.attribute('nameLen', nameLen.toString());
    if (pPos != null) this.attribute('pPos', pPos.toString());
    if (pLen != null) this.attribute('pLen', pLen.toString());
    if (level != null) this.attribute('level', level.toString());
    if (field != null) this.attribute('field', field.toString());
    children?.call(this);
  }
}

extension S_CT_Members_Builder on _i1.XmlBuilder {
  void s_ct_members({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    int? level,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count, level);
        },
      );
    } else {
      _buildBody(children, count, level);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count, int? level) {
    if (count != null) this.attribute('count', count.toString());
    if (level != null) this.attribute('level', level.toString());
    children?.call(this);
  }
}

extension S_CT_Member_Builder on _i1.XmlBuilder {
  void s_ct_member({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (name != null) this.attribute('name', name);
    children?.call(this);
  }
}

extension S_CT_Dimensions_Builder on _i1.XmlBuilder {
  void s_ct_dimensions({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PivotDimension_Builder on _i1.XmlBuilder {
  void s_ct_pivotdimension({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? measure,
    String? name,
    String? uniqueName,
    String? caption,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, measure, name, uniqueName, caption);
        },
      );
    } else {
      _buildBody(children, measure, name, uniqueName, caption);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? measure,
    String? name,
    String? uniqueName,
    String? caption,
  ) {
    if (measure != null)
      this.attribute('measure', measure == true ? 'true' : 'false');
    if (name != null) this.attribute('name', name);
    if (uniqueName != null) this.attribute('uniqueName', uniqueName);
    if (caption != null) this.attribute('caption', caption);
    children?.call(this);
  }
}

extension S_CT_MeasureGroups_Builder on _i1.XmlBuilder {
  void s_ct_measuregroups({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_MeasureDimensionMaps_Builder on _i1.XmlBuilder {
  void s_ct_measuredimensionmaps({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_MeasureGroup_Builder on _i1.XmlBuilder {
  void s_ct_measuregroup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (name != null) this.attribute('name', name);
    if (caption != null) this.attribute('caption', caption);
    children?.call(this);
  }
}

extension S_CT_MeasureDimensionMap_Builder on _i1.XmlBuilder {
  void s_ct_measuredimensionmap({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? measureGroup,
    int? dimension,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, measureGroup, dimension);
        },
      );
    } else {
      _buildBody(children, measureGroup, dimension);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? measureGroup,
    int? dimension,
  ) {
    if (measureGroup != null)
      this.attribute('measureGroup', measureGroup.toString());
    if (dimension != null) this.attribute('dimension', dimension.toString());
    children?.call(this);
  }
}

extension S_CT_PivotTableStyle_Builder on _i1.XmlBuilder {
  void s_ct_pivottablestyle({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    bool? showRowHeaders,
    bool? showColHeaders,
    bool? showRowStripes,
    bool? showColStripes,
    bool? showLastColumn,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            showRowHeaders,
            showColHeaders,
            showRowStripes,
            showColStripes,
            showLastColumn,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        showRowHeaders,
        showColHeaders,
        showRowStripes,
        showColStripes,
        showLastColumn,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    bool? showRowHeaders,
    bool? showColHeaders,
    bool? showRowStripes,
    bool? showColStripes,
    bool? showLastColumn,
  ) {
    if (name != null) this.attribute('name', name);
    if (showRowHeaders != null)
      this.attribute(
        'showRowHeaders',
        showRowHeaders == true ? 'true' : 'false',
      );
    if (showColHeaders != null)
      this.attribute(
        'showColHeaders',
        showColHeaders == true ? 'true' : 'false',
      );
    if (showRowStripes != null)
      this.attribute(
        'showRowStripes',
        showRowStripes == true ? 'true' : 'false',
      );
    if (showColStripes != null)
      this.attribute(
        'showColStripes',
        showColStripes == true ? 'true' : 'false',
      );
    if (showLastColumn != null)
      this.attribute(
        'showLastColumn',
        showLastColumn == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_PivotFilters_Builder on _i1.XmlBuilder {
  void s_ct_pivotfilters({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PivotFilter_Builder on _i1.XmlBuilder {
  void s_ct_pivotfilter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? fld,
    int? mpFld,
    S_ST_PivotFilterType? type,
    int? evalOrder,
    int? id,
    int? iMeasureHier,
    int? iMeasureFld,
    String? name,
    String? description,
    String? stringValue1,
    String? stringValue2,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            fld,
            mpFld,
            type,
            evalOrder,
            id,
            iMeasureHier,
            iMeasureFld,
            name,
            description,
            stringValue1,
            stringValue2,
          );
        },
      );
    } else {
      _buildBody(
        children,
        fld,
        mpFld,
        type,
        evalOrder,
        id,
        iMeasureHier,
        iMeasureFld,
        name,
        description,
        stringValue1,
        stringValue2,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? fld,
    int? mpFld,
    S_ST_PivotFilterType? type,
    int? evalOrder,
    int? id,
    int? iMeasureHier,
    int? iMeasureFld,
    String? name,
    String? description,
    String? stringValue1,
    String? stringValue2,
  ) {
    if (fld != null) this.attribute('fld', fld.toString());
    if (mpFld != null) this.attribute('mpFld', mpFld.toString());
    if (type != null) this.attribute('type', type!.value);
    if (evalOrder != null) this.attribute('evalOrder', evalOrder.toString());
    if (id != null) this.attribute('id', id.toString());
    if (iMeasureHier != null)
      this.attribute('iMeasureHier', iMeasureHier.toString());
    if (iMeasureFld != null)
      this.attribute('iMeasureFld', iMeasureFld.toString());
    if (name != null) this.attribute('name', name);
    if (description != null) this.attribute('description', description);
    if (stringValue1 != null) this.attribute('stringValue1', stringValue1);
    if (stringValue2 != null) this.attribute('stringValue2', stringValue2);
    children?.call(this);
  }
}

extension S_CT_PivotArea_Builder on _i1.XmlBuilder {
  void s_ct_pivotarea({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? field,
    S_ST_PivotAreaType? type,
    bool? dataOnly,
    bool? labelOnly,
    bool? grandRow,
    bool? grandCol,
    bool? cacheIndex,
    bool? outline,
    String? offset,
    bool? collapsedLevelsAreSubtotals,
    S_ST_Axis? axis,
    int? fieldPosition,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            field,
            type,
            dataOnly,
            labelOnly,
            grandRow,
            grandCol,
            cacheIndex,
            outline,
            offset,
            collapsedLevelsAreSubtotals,
            axis,
            fieldPosition,
          );
        },
      );
    } else {
      _buildBody(
        children,
        field,
        type,
        dataOnly,
        labelOnly,
        grandRow,
        grandCol,
        cacheIndex,
        outline,
        offset,
        collapsedLevelsAreSubtotals,
        axis,
        fieldPosition,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? field,
    S_ST_PivotAreaType? type,
    bool? dataOnly,
    bool? labelOnly,
    bool? grandRow,
    bool? grandCol,
    bool? cacheIndex,
    bool? outline,
    String? offset,
    bool? collapsedLevelsAreSubtotals,
    S_ST_Axis? axis,
    int? fieldPosition,
  ) {
    if (field != null) this.attribute('field', field.toString());
    if (type != null) this.attribute('type', type!.value);
    if (dataOnly != null)
      this.attribute('dataOnly', dataOnly == true ? 'true' : 'false');
    if (labelOnly != null)
      this.attribute('labelOnly', labelOnly == true ? 'true' : 'false');
    if (grandRow != null)
      this.attribute('grandRow', grandRow == true ? 'true' : 'false');
    if (grandCol != null)
      this.attribute('grandCol', grandCol == true ? 'true' : 'false');
    if (cacheIndex != null)
      this.attribute('cacheIndex', cacheIndex == true ? 'true' : 'false');
    if (outline != null)
      this.attribute('outline', outline == true ? 'true' : 'false');
    if (offset != null) this.attribute('offset', offset);
    if (collapsedLevelsAreSubtotals != null)
      this.attribute(
        'collapsedLevelsAreSubtotals',
        collapsedLevelsAreSubtotals == true ? 'true' : 'false',
      );
    if (axis != null) this.attribute('axis', axis!.value);
    if (fieldPosition != null)
      this.attribute('fieldPosition', fieldPosition.toString());
    children?.call(this);
  }
}

extension S_CT_PivotAreaReferences_Builder on _i1.XmlBuilder {
  void s_ct_pivotareareferences({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_PivotAreaReference_Builder on _i1.XmlBuilder {
  void s_ct_pivotareareference({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? field,
    int? count,
    bool? selected,
    bool? byPosition,
    bool? relative,
    bool? defaultSubtotal,
    bool? sumSubtotal,
    bool? countASubtotal,
    bool? avgSubtotal,
    bool? maxSubtotal,
    bool? minSubtotal,
    bool? productSubtotal,
    bool? countSubtotal,
    bool? stdDevSubtotal,
    bool? stdDevPSubtotal,
    bool? varSubtotal,
    bool? varPSubtotal,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            field,
            count,
            selected,
            byPosition,
            relative,
            defaultSubtotal,
            sumSubtotal,
            countASubtotal,
            avgSubtotal,
            maxSubtotal,
            minSubtotal,
            productSubtotal,
            countSubtotal,
            stdDevSubtotal,
            stdDevPSubtotal,
            varSubtotal,
            varPSubtotal,
          );
        },
      );
    } else {
      _buildBody(
        children,
        field,
        count,
        selected,
        byPosition,
        relative,
        defaultSubtotal,
        sumSubtotal,
        countASubtotal,
        avgSubtotal,
        maxSubtotal,
        minSubtotal,
        productSubtotal,
        countSubtotal,
        stdDevSubtotal,
        stdDevPSubtotal,
        varSubtotal,
        varPSubtotal,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? field,
    int? count,
    bool? selected,
    bool? byPosition,
    bool? relative,
    bool? defaultSubtotal,
    bool? sumSubtotal,
    bool? countASubtotal,
    bool? avgSubtotal,
    bool? maxSubtotal,
    bool? minSubtotal,
    bool? productSubtotal,
    bool? countSubtotal,
    bool? stdDevSubtotal,
    bool? stdDevPSubtotal,
    bool? varSubtotal,
    bool? varPSubtotal,
  ) {
    if (field != null) this.attribute('field', field.toString());
    if (count != null) this.attribute('count', count.toString());
    if (selected != null)
      this.attribute('selected', selected == true ? 'true' : 'false');
    if (byPosition != null)
      this.attribute('byPosition', byPosition == true ? 'true' : 'false');
    if (relative != null)
      this.attribute('relative', relative == true ? 'true' : 'false');
    if (defaultSubtotal != null)
      this.attribute(
        'defaultSubtotal',
        defaultSubtotal == true ? 'true' : 'false',
      );
    if (sumSubtotal != null)
      this.attribute('sumSubtotal', sumSubtotal == true ? 'true' : 'false');
    if (countASubtotal != null)
      this.attribute(
        'countASubtotal',
        countASubtotal == true ? 'true' : 'false',
      );
    if (avgSubtotal != null)
      this.attribute('avgSubtotal', avgSubtotal == true ? 'true' : 'false');
    if (maxSubtotal != null)
      this.attribute('maxSubtotal', maxSubtotal == true ? 'true' : 'false');
    if (minSubtotal != null)
      this.attribute('minSubtotal', minSubtotal == true ? 'true' : 'false');
    if (productSubtotal != null)
      this.attribute(
        'productSubtotal',
        productSubtotal == true ? 'true' : 'false',
      );
    if (countSubtotal != null)
      this.attribute('countSubtotal', countSubtotal == true ? 'true' : 'false');
    if (stdDevSubtotal != null)
      this.attribute(
        'stdDevSubtotal',
        stdDevSubtotal == true ? 'true' : 'false',
      );
    if (stdDevPSubtotal != null)
      this.attribute(
        'stdDevPSubtotal',
        stdDevPSubtotal == true ? 'true' : 'false',
      );
    if (varSubtotal != null)
      this.attribute('varSubtotal', varSubtotal == true ? 'true' : 'false');
    if (varPSubtotal != null)
      this.attribute('varPSubtotal', varPSubtotal == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Index_Builder on _i1.XmlBuilder {
  void s_ct_index({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? v,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, v);
        },
      );
    } else {
      _buildBody(children, v);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? v) {
    if (v != null) this.attribute('v', v.toString());
    children?.call(this);
  }
}

extension S_CT_QueryTable_Builder on _i1.XmlBuilder {
  void s_ct_querytable({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    bool? headers,
    bool? rowNumbers,
    bool? disableRefresh,
    bool? backgroundRefresh,
    bool? firstBackgroundRefresh,
    bool? refreshOnLoad,
    S_ST_GrowShrinkType? growShrinkType,
    bool? fillFormulas,
    bool? removeDataOnSave,
    bool? disableEdit,
    bool? preserveFormatting,
    bool? adjustColumnWidth,
    bool? intermediate,
    int? connectionId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            headers,
            rowNumbers,
            disableRefresh,
            backgroundRefresh,
            firstBackgroundRefresh,
            refreshOnLoad,
            growShrinkType,
            fillFormulas,
            removeDataOnSave,
            disableEdit,
            preserveFormatting,
            adjustColumnWidth,
            intermediate,
            connectionId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        headers,
        rowNumbers,
        disableRefresh,
        backgroundRefresh,
        firstBackgroundRefresh,
        refreshOnLoad,
        growShrinkType,
        fillFormulas,
        removeDataOnSave,
        disableEdit,
        preserveFormatting,
        adjustColumnWidth,
        intermediate,
        connectionId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    bool? headers,
    bool? rowNumbers,
    bool? disableRefresh,
    bool? backgroundRefresh,
    bool? firstBackgroundRefresh,
    bool? refreshOnLoad,
    S_ST_GrowShrinkType? growShrinkType,
    bool? fillFormulas,
    bool? removeDataOnSave,
    bool? disableEdit,
    bool? preserveFormatting,
    bool? adjustColumnWidth,
    bool? intermediate,
    int? connectionId,
  ) {
    if (name != null) this.attribute('name', name);
    if (headers != null)
      this.attribute('headers', headers == true ? 'true' : 'false');
    if (rowNumbers != null)
      this.attribute('rowNumbers', rowNumbers == true ? 'true' : 'false');
    if (disableRefresh != null)
      this.attribute(
        'disableRefresh',
        disableRefresh == true ? 'true' : 'false',
      );
    if (backgroundRefresh != null)
      this.attribute(
        'backgroundRefresh',
        backgroundRefresh == true ? 'true' : 'false',
      );
    if (firstBackgroundRefresh != null)
      this.attribute(
        'firstBackgroundRefresh',
        firstBackgroundRefresh == true ? 'true' : 'false',
      );
    if (refreshOnLoad != null)
      this.attribute('refreshOnLoad', refreshOnLoad == true ? 'true' : 'false');
    if (growShrinkType != null)
      this.attribute('growShrinkType', growShrinkType!.value);
    if (fillFormulas != null)
      this.attribute('fillFormulas', fillFormulas == true ? 'true' : 'false');
    if (removeDataOnSave != null)
      this.attribute(
        'removeDataOnSave',
        removeDataOnSave == true ? 'true' : 'false',
      );
    if (disableEdit != null)
      this.attribute('disableEdit', disableEdit == true ? 'true' : 'false');
    if (preserveFormatting != null)
      this.attribute(
        'preserveFormatting',
        preserveFormatting == true ? 'true' : 'false',
      );
    if (adjustColumnWidth != null)
      this.attribute(
        'adjustColumnWidth',
        adjustColumnWidth == true ? 'true' : 'false',
      );
    if (intermediate != null)
      this.attribute('intermediate', intermediate == true ? 'true' : 'false');
    if (connectionId != null)
      this.attribute('connectionId', connectionId.toString());
    children?.call(this);
  }
}

extension S_CT_QueryTableRefresh_Builder on _i1.XmlBuilder {
  void s_ct_querytablerefresh({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? preserveSortFilterLayout,
    bool? fieldIdWrapped,
    bool? headersInLastRefresh,
    int? minimumVersion,
    int? nextId,
    int? unboundColumnsLeft,
    int? unboundColumnsRight,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            preserveSortFilterLayout,
            fieldIdWrapped,
            headersInLastRefresh,
            minimumVersion,
            nextId,
            unboundColumnsLeft,
            unboundColumnsRight,
          );
        },
      );
    } else {
      _buildBody(
        children,
        preserveSortFilterLayout,
        fieldIdWrapped,
        headersInLastRefresh,
        minimumVersion,
        nextId,
        unboundColumnsLeft,
        unboundColumnsRight,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? preserveSortFilterLayout,
    bool? fieldIdWrapped,
    bool? headersInLastRefresh,
    int? minimumVersion,
    int? nextId,
    int? unboundColumnsLeft,
    int? unboundColumnsRight,
  ) {
    if (preserveSortFilterLayout != null)
      this.attribute(
        'preserveSortFilterLayout',
        preserveSortFilterLayout == true ? 'true' : 'false',
      );
    if (fieldIdWrapped != null)
      this.attribute(
        'fieldIdWrapped',
        fieldIdWrapped == true ? 'true' : 'false',
      );
    if (headersInLastRefresh != null)
      this.attribute(
        'headersInLastRefresh',
        headersInLastRefresh == true ? 'true' : 'false',
      );
    if (minimumVersion != null)
      this.attribute('minimumVersion', minimumVersion.toString());
    if (nextId != null) this.attribute('nextId', nextId.toString());
    if (unboundColumnsLeft != null)
      this.attribute('unboundColumnsLeft', unboundColumnsLeft.toString());
    if (unboundColumnsRight != null)
      this.attribute('unboundColumnsRight', unboundColumnsRight.toString());
    children?.call(this);
  }
}

extension S_CT_QueryTableDeletedFields_Builder on _i1.XmlBuilder {
  void s_ct_querytabledeletedfields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_DeletedField_Builder on _i1.XmlBuilder {
  void s_ct_deletedfield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (name != null) this.attribute('name', name);
    children?.call(this);
  }
}

extension S_CT_QueryTableFields_Builder on _i1.XmlBuilder {
  void s_ct_querytablefields({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_QueryTableField_Builder on _i1.XmlBuilder {
  void s_ct_querytablefield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    String? name,
    bool? dataBound,
    bool? rowNumbers,
    bool? fillFormulas,
    bool? clipped,
    int? tableColumnId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            id,
            name,
            dataBound,
            rowNumbers,
            fillFormulas,
            clipped,
            tableColumnId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        id,
        name,
        dataBound,
        rowNumbers,
        fillFormulas,
        clipped,
        tableColumnId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? name,
    bool? dataBound,
    bool? rowNumbers,
    bool? fillFormulas,
    bool? clipped,
    int? tableColumnId,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (name != null) this.attribute('name', name);
    if (dataBound != null)
      this.attribute('dataBound', dataBound == true ? 'true' : 'false');
    if (rowNumbers != null)
      this.attribute('rowNumbers', rowNumbers == true ? 'true' : 'false');
    if (fillFormulas != null)
      this.attribute('fillFormulas', fillFormulas == true ? 'true' : 'false');
    if (clipped != null)
      this.attribute('clipped', clipped == true ? 'true' : 'false');
    if (tableColumnId != null)
      this.attribute('tableColumnId', tableColumnId.toString());
    children?.call(this);
  }
}

extension S_CT_Sst_Builder on _i1.XmlBuilder {
  void s_ct_sst({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    int? uniqueCount,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count, uniqueCount);
        },
      );
    } else {
      _buildBody(children, count, uniqueCount);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? count,
    int? uniqueCount,
  ) {
    if (count != null) this.attribute('count', count.toString());
    if (uniqueCount != null)
      this.attribute('uniqueCount', uniqueCount.toString());
    children?.call(this);
  }
}

extension S_CT_PhoneticRun_Builder on _i1.XmlBuilder {
  void s_ct_phoneticrun({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sb,
    int? eb,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sb, eb);
        },
      );
    } else {
      _buildBody(children, sb, eb);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? sb, int? eb) {
    if (sb != null) this.attribute('sb', sb.toString());
    if (eb != null) this.attribute('eb', eb.toString());
    children?.call(this);
  }
}

extension S_CT_RElt_Builder on _i1.XmlBuilder {
  void s_ct_relt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_RPrElt_Builder on _i1.XmlBuilder {
  void s_ct_rprelt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Rst_Builder on _i1.XmlBuilder {
  void s_ct_rst({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_PhoneticPr_Builder on _i1.XmlBuilder {
  void s_ct_phoneticpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? fontId,
    S_ST_PhoneticType? type,
    S_ST_PhoneticAlignment? alignment,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fontId, type, alignment);
        },
      );
    } else {
      _buildBody(children, fontId, type, alignment);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? fontId,
    S_ST_PhoneticType? type,
    S_ST_PhoneticAlignment? alignment,
  ) {
    if (fontId != null) this.attribute('fontId', fontId);
    if (type != null) this.attribute('type', type!.value);
    if (alignment != null) this.attribute('alignment', alignment!.value);
    children?.call(this);
  }
}

extension S_CT_RevisionHeaders_Builder on _i1.XmlBuilder {
  void s_ct_revisionheaders({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? guid,
    String? lastGuid,
    bool? shared,
    bool? diskRevisions,
    bool? history,
    bool? trackRevisions,
    bool? exclusive,
    int? revisionId,
    int? version,
    bool? keepChangeHistory,
    bool? protected,
    int? preserveHistory,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            guid,
            lastGuid,
            shared,
            diskRevisions,
            history,
            trackRevisions,
            exclusive,
            revisionId,
            version,
            keepChangeHistory,
            protected,
            preserveHistory,
          );
        },
      );
    } else {
      _buildBody(
        children,
        guid,
        lastGuid,
        shared,
        diskRevisions,
        history,
        trackRevisions,
        exclusive,
        revisionId,
        version,
        keepChangeHistory,
        protected,
        preserveHistory,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? guid,
    String? lastGuid,
    bool? shared,
    bool? diskRevisions,
    bool? history,
    bool? trackRevisions,
    bool? exclusive,
    int? revisionId,
    int? version,
    bool? keepChangeHistory,
    bool? protected,
    int? preserveHistory,
  ) {
    if (guid != null) this.attribute('guid', guid);
    if (lastGuid != null) this.attribute('lastGuid', lastGuid);
    if (shared != null)
      this.attribute('shared', shared == true ? 'true' : 'false');
    if (diskRevisions != null)
      this.attribute('diskRevisions', diskRevisions == true ? 'true' : 'false');
    if (history != null)
      this.attribute('history', history == true ? 'true' : 'false');
    if (trackRevisions != null)
      this.attribute(
        'trackRevisions',
        trackRevisions == true ? 'true' : 'false',
      );
    if (exclusive != null)
      this.attribute('exclusive', exclusive == true ? 'true' : 'false');
    if (revisionId != null) this.attribute('revisionId', revisionId.toString());
    if (version != null) this.attribute('version', version.toString());
    if (keepChangeHistory != null)
      this.attribute(
        'keepChangeHistory',
        keepChangeHistory == true ? 'true' : 'false',
      );
    if (protected != null)
      this.attribute('protected', protected == true ? 'true' : 'false');
    if (preserveHistory != null)
      this.attribute('preserveHistory', preserveHistory.toString());
    children?.call(this);
  }
}

extension S_CT_Revisions_Builder on _i1.XmlBuilder {
  void s_ct_revisions({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_RevisionHeader_Builder on _i1.XmlBuilder {
  void s_ct_revisionheader({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? guid,
    String? dateTime,
    int? maxSheetId,
    String? userName,
    String? r_id,
    int? minRId,
    int? maxRId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            guid,
            dateTime,
            maxSheetId,
            userName,
            r_id,
            minRId,
            maxRId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        guid,
        dateTime,
        maxSheetId,
        userName,
        r_id,
        minRId,
        maxRId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? guid,
    String? dateTime,
    int? maxSheetId,
    String? userName,
    String? r_id,
    int? minRId,
    int? maxRId,
  ) {
    if (guid != null) this.attribute('guid', guid);
    if (dateTime != null) this.attribute('dateTime', dateTime);
    if (maxSheetId != null) this.attribute('maxSheetId', maxSheetId.toString());
    if (userName != null) this.attribute('userName', userName);
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    if (minRId != null) this.attribute('minRId', minRId.toString());
    if (maxRId != null) this.attribute('maxRId', maxRId.toString());
    children?.call(this);
  }
}

extension S_CT_SheetIdMap_Builder on _i1.XmlBuilder {
  void s_ct_sheetidmap({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_SheetId_Builder on _i1.XmlBuilder {
  void s_ct_sheetid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val.toString());
    children?.call(this);
  }
}

extension S_CT_ReviewedRevisions_Builder on _i1.XmlBuilder {
  void s_ct_reviewedrevisions({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Reviewed_Builder on _i1.XmlBuilder {
  void s_ct_reviewed({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? rId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rId);
        },
      );
    } else {
      _buildBody(children, rId);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? rId) {
    if (rId != null) this.attribute('rId', rId.toString());
    children?.call(this);
  }
}

extension S_CT_UndoInfo_Builder on _i1.XmlBuilder {
  void s_ct_undoinfo({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? index_,
    S_ST_FormulaExpression? exp,
    bool? ref3D,
    bool? array,
    bool? v,
    bool? nf,
    bool? cs,
    String? dr,
    String? dn,
    String? r,
    int? sId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            index_,
            exp,
            ref3D,
            array,
            v,
            nf,
            cs,
            dr,
            dn,
            r,
            sId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        index_,
        exp,
        ref3D,
        array,
        v,
        nf,
        cs,
        dr,
        dn,
        r,
        sId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? index_,
    S_ST_FormulaExpression? exp,
    bool? ref3D,
    bool? array,
    bool? v,
    bool? nf,
    bool? cs,
    String? dr,
    String? dn,
    String? r,
    int? sId,
  ) {
    if (index_ != null) this.attribute('index', index_.toString());
    if (exp != null) this.attribute('exp', exp!.value);
    if (ref3D != null)
      this.attribute('ref3D', ref3D == true ? 'true' : 'false');
    if (array != null)
      this.attribute('array', array == true ? 'true' : 'false');
    if (v != null) this.attribute('v', v == true ? 'true' : 'false');
    if (nf != null) this.attribute('nf', nf == true ? 'true' : 'false');
    if (cs != null) this.attribute('cs', cs == true ? 'true' : 'false');
    if (dr != null) this.attribute('dr', dr);
    if (dn != null) this.attribute('dn', dn);
    if (r != null) this.attribute('r', r);
    if (sId != null) this.attribute('sId', sId.toString());
    children?.call(this);
  }
}

extension S_CT_RevisionRowColumn_Builder on _i1.XmlBuilder {
  void s_ct_revisionrowcolumn({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sId,
    bool? eol,
    String? ref,
    S_ST_rwColActionType? action,
    bool? edge,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sId, eol, ref, action, edge);
        },
      );
    } else {
      _buildBody(children, sId, eol, ref, action, edge);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sId,
    bool? eol,
    String? ref,
    S_ST_rwColActionType? action,
    bool? edge,
  ) {
    if (sId != null) this.attribute('sId', sId.toString());
    if (eol != null) this.attribute('eol', eol == true ? 'true' : 'false');
    if (ref != null) this.attribute('ref', ref);
    if (action != null) this.attribute('action', action!.value);
    if (edge != null) this.attribute('edge', edge == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_RevisionMove_Builder on _i1.XmlBuilder {
  void s_ct_revisionmove({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    String? source,
    String? destination,
    int? sourceSheetId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sheetId, source, destination, sourceSheetId);
        },
      );
    } else {
      _buildBody(children, sheetId, source, destination, sourceSheetId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sheetId,
    String? source,
    String? destination,
    int? sourceSheetId,
  ) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (source != null) this.attribute('source', source);
    if (destination != null) this.attribute('destination', destination);
    if (sourceSheetId != null)
      this.attribute('sourceSheetId', sourceSheetId.toString());
    children?.call(this);
  }
}

extension S_CT_RevisionCustomView_Builder on _i1.XmlBuilder {
  void s_ct_revisioncustomview({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? guid,
    S_ST_RevisionAction? action,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, guid, action);
        },
      );
    } else {
      _buildBody(children, guid, action);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? guid,
    S_ST_RevisionAction? action,
  ) {
    if (guid != null) this.attribute('guid', guid);
    if (action != null) this.attribute('action', action!.value);
    children?.call(this);
  }
}

extension S_CT_RevisionSheetRename_Builder on _i1.XmlBuilder {
  void s_ct_revisionsheetrename({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    String? oldName,
    String? newName,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sheetId, oldName, newName);
        },
      );
    } else {
      _buildBody(children, sheetId, oldName, newName);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sheetId,
    String? oldName,
    String? newName,
  ) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (oldName != null) this.attribute('oldName', oldName);
    if (newName != null) this.attribute('newName', newName);
    children?.call(this);
  }
}

extension S_CT_RevisionInsertSheet_Builder on _i1.XmlBuilder {
  void s_ct_revisioninsertsheet({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    String? name,
    int? sheetPosition,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sheetId, name, sheetPosition);
        },
      );
    } else {
      _buildBody(children, sheetId, name, sheetPosition);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sheetId,
    String? name,
    int? sheetPosition,
  ) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (name != null) this.attribute('name', name);
    if (sheetPosition != null)
      this.attribute('sheetPosition', sheetPosition.toString());
    children?.call(this);
  }
}

extension S_CT_RevisionCellChange_Builder on _i1.XmlBuilder {
  void s_ct_revisioncellchange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sId,
    bool? odxf,
    bool? xfDxf,
    bool? s,
    bool? dxf,
    String? numFmtId,
    bool? quotePrefix,
    bool? oldQuotePrefix,
    bool? ph,
    bool? oldPh,
    bool? endOfListFormulaUpdate,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            sId,
            odxf,
            xfDxf,
            s,
            dxf,
            numFmtId,
            quotePrefix,
            oldQuotePrefix,
            ph,
            oldPh,
            endOfListFormulaUpdate,
          );
        },
      );
    } else {
      _buildBody(
        children,
        sId,
        odxf,
        xfDxf,
        s,
        dxf,
        numFmtId,
        quotePrefix,
        oldQuotePrefix,
        ph,
        oldPh,
        endOfListFormulaUpdate,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sId,
    bool? odxf,
    bool? xfDxf,
    bool? s,
    bool? dxf,
    String? numFmtId,
    bool? quotePrefix,
    bool? oldQuotePrefix,
    bool? ph,
    bool? oldPh,
    bool? endOfListFormulaUpdate,
  ) {
    if (sId != null) this.attribute('sId', sId.toString());
    if (odxf != null) this.attribute('odxf', odxf == true ? 'true' : 'false');
    if (xfDxf != null)
      this.attribute('xfDxf', xfDxf == true ? 'true' : 'false');
    if (s != null) this.attribute('s', s == true ? 'true' : 'false');
    if (dxf != null) this.attribute('dxf', dxf == true ? 'true' : 'false');
    if (numFmtId != null) this.attribute('numFmtId', numFmtId);
    if (quotePrefix != null)
      this.attribute('quotePrefix', quotePrefix == true ? 'true' : 'false');
    if (oldQuotePrefix != null)
      this.attribute(
        'oldQuotePrefix',
        oldQuotePrefix == true ? 'true' : 'false',
      );
    if (ph != null) this.attribute('ph', ph == true ? 'true' : 'false');
    if (oldPh != null)
      this.attribute('oldPh', oldPh == true ? 'true' : 'false');
    if (endOfListFormulaUpdate != null)
      this.attribute(
        'endOfListFormulaUpdate',
        endOfListFormulaUpdate == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_RevisionFormatting_Builder on _i1.XmlBuilder {
  void s_ct_revisionformatting({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    bool? xfDxf,
    bool? s,
    int? start,
    int? length,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sheetId, xfDxf, s, start, length);
        },
      );
    } else {
      _buildBody(children, sheetId, xfDxf, s, start, length);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sheetId,
    bool? xfDxf,
    bool? s,
    int? start,
    int? length,
  ) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (xfDxf != null)
      this.attribute('xfDxf', xfDxf == true ? 'true' : 'false');
    if (s != null) this.attribute('s', s == true ? 'true' : 'false');
    if (start != null) this.attribute('start', start.toString());
    if (length != null) this.attribute('length', length.toString());
    children?.call(this);
  }
}

extension S_CT_RevisionAutoFormatting_Builder on _i1.XmlBuilder {
  void s_ct_revisionautoformatting({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    String? ref,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sheetId, ref);
        },
      );
    } else {
      _buildBody(children, sheetId, ref);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sheetId,
    String? ref,
  ) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (ref != null) this.attribute('ref', ref);
    children?.call(this);
  }
}

extension S_CT_RevisionComment_Builder on _i1.XmlBuilder {
  void s_ct_revisioncomment({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    String? cell,
    String? guid,
    S_ST_RevisionAction? action,
    bool? alwaysShow,
    bool? old,
    bool? hiddenRow,
    bool? hiddenColumn,
    String? author,
    int? oldLength,
    int? newLength,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            sheetId,
            cell,
            guid,
            action,
            alwaysShow,
            old,
            hiddenRow,
            hiddenColumn,
            author,
            oldLength,
            newLength,
          );
        },
      );
    } else {
      _buildBody(
        children,
        sheetId,
        cell,
        guid,
        action,
        alwaysShow,
        old,
        hiddenRow,
        hiddenColumn,
        author,
        oldLength,
        newLength,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sheetId,
    String? cell,
    String? guid,
    S_ST_RevisionAction? action,
    bool? alwaysShow,
    bool? old,
    bool? hiddenRow,
    bool? hiddenColumn,
    String? author,
    int? oldLength,
    int? newLength,
  ) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (cell != null) this.attribute('cell', cell);
    if (guid != null) this.attribute('guid', guid);
    if (action != null) this.attribute('action', action!.value);
    if (alwaysShow != null)
      this.attribute('alwaysShow', alwaysShow == true ? 'true' : 'false');
    if (old != null) this.attribute('old', old == true ? 'true' : 'false');
    if (hiddenRow != null)
      this.attribute('hiddenRow', hiddenRow == true ? 'true' : 'false');
    if (hiddenColumn != null)
      this.attribute('hiddenColumn', hiddenColumn == true ? 'true' : 'false');
    if (author != null) this.attribute('author', author);
    if (oldLength != null) this.attribute('oldLength', oldLength.toString());
    if (newLength != null) this.attribute('newLength', newLength.toString());
    children?.call(this);
  }
}

extension S_CT_RevisionDefinedName_Builder on _i1.XmlBuilder {
  void s_ct_revisiondefinedname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? localSheetId,
    bool? customView,
    String? name,
    bool? function_,
    bool? oldFunction,
    int? functionGroupId,
    int? oldFunctionGroupId,
    int? shortcutKey,
    int? oldShortcutKey,
    bool? hidden,
    bool? oldHidden,
    String? customMenu,
    String? oldCustomMenu,
    String? description,
    String? oldDescription,
    String? help,
    String? oldHelp,
    String? statusBar,
    String? oldStatusBar,
    String? comment,
    String? oldComment,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            localSheetId,
            customView,
            name,
            function_,
            oldFunction,
            functionGroupId,
            oldFunctionGroupId,
            shortcutKey,
            oldShortcutKey,
            hidden,
            oldHidden,
            customMenu,
            oldCustomMenu,
            description,
            oldDescription,
            help,
            oldHelp,
            statusBar,
            oldStatusBar,
            comment,
            oldComment,
          );
        },
      );
    } else {
      _buildBody(
        children,
        localSheetId,
        customView,
        name,
        function_,
        oldFunction,
        functionGroupId,
        oldFunctionGroupId,
        shortcutKey,
        oldShortcutKey,
        hidden,
        oldHidden,
        customMenu,
        oldCustomMenu,
        description,
        oldDescription,
        help,
        oldHelp,
        statusBar,
        oldStatusBar,
        comment,
        oldComment,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? localSheetId,
    bool? customView,
    String? name,
    bool? function_,
    bool? oldFunction,
    int? functionGroupId,
    int? oldFunctionGroupId,
    int? shortcutKey,
    int? oldShortcutKey,
    bool? hidden,
    bool? oldHidden,
    String? customMenu,
    String? oldCustomMenu,
    String? description,
    String? oldDescription,
    String? help,
    String? oldHelp,
    String? statusBar,
    String? oldStatusBar,
    String? comment,
    String? oldComment,
  ) {
    if (localSheetId != null)
      this.attribute('localSheetId', localSheetId.toString());
    if (customView != null)
      this.attribute('customView', customView == true ? 'true' : 'false');
    if (name != null) this.attribute('name', name);
    if (function_ != null)
      this.attribute('function', function_ == true ? 'true' : 'false');
    if (oldFunction != null)
      this.attribute('oldFunction', oldFunction == true ? 'true' : 'false');
    if (functionGroupId != null)
      this.attribute('functionGroupId', functionGroupId.toString());
    if (oldFunctionGroupId != null)
      this.attribute('oldFunctionGroupId', oldFunctionGroupId.toString());
    if (shortcutKey != null)
      this.attribute('shortcutKey', shortcutKey.toString());
    if (oldShortcutKey != null)
      this.attribute('oldShortcutKey', oldShortcutKey.toString());
    if (hidden != null)
      this.attribute('hidden', hidden == true ? 'true' : 'false');
    if (oldHidden != null)
      this.attribute('oldHidden', oldHidden == true ? 'true' : 'false');
    if (customMenu != null) this.attribute('customMenu', customMenu);
    if (oldCustomMenu != null) this.attribute('oldCustomMenu', oldCustomMenu);
    if (description != null) this.attribute('description', description);
    if (oldDescription != null)
      this.attribute('oldDescription', oldDescription);
    if (help != null) this.attribute('help', help);
    if (oldHelp != null) this.attribute('oldHelp', oldHelp);
    if (statusBar != null) this.attribute('statusBar', statusBar);
    if (oldStatusBar != null) this.attribute('oldStatusBar', oldStatusBar);
    if (comment != null) this.attribute('comment', comment);
    if (oldComment != null) this.attribute('oldComment', oldComment);
    children?.call(this);
  }
}

extension S_CT_RevisionConflict_Builder on _i1.XmlBuilder {
  void s_ct_revisionconflict({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sheetId);
        },
      );
    } else {
      _buildBody(children, sheetId);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? sheetId) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    children?.call(this);
  }
}

extension S_CT_RevisionQueryTableField_Builder on _i1.XmlBuilder {
  void s_ct_revisionquerytablefield({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    String? ref,
    int? fieldId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sheetId, ref, fieldId);
        },
      );
    } else {
      _buildBody(children, sheetId, ref, fieldId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sheetId,
    String? ref,
    int? fieldId,
  ) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (ref != null) this.attribute('ref', ref);
    if (fieldId != null) this.attribute('fieldId', fieldId.toString());
    children?.call(this);
  }
}

extension S_CT_Users_Builder on _i1.XmlBuilder {
  void s_ct_users({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_SharedUser_Builder on _i1.XmlBuilder {
  void s_ct_shareduser({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? guid,
    String? name,
    int? id,
    String? dateTime,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, guid, name, id, dateTime);
        },
      );
    } else {
      _buildBody(children, guid, name, id, dateTime);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? guid,
    String? name,
    int? id,
    String? dateTime,
  ) {
    if (guid != null) this.attribute('guid', guid);
    if (name != null) this.attribute('name', name);
    if (id != null) this.attribute('id', id.toString());
    if (dateTime != null) this.attribute('dateTime', dateTime);
    children?.call(this);
  }
}

extension S_CT_Macrosheet_Builder on _i1.XmlBuilder {
  void s_ct_macrosheet({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Dialogsheet_Builder on _i1.XmlBuilder {
  void s_ct_dialogsheet({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Worksheet_Builder on _i1.XmlBuilder {
  void s_ct_worksheet({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_SheetData_Builder on _i1.XmlBuilder {
  void s_ct_sheetdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_SheetCalcPr_Builder on _i1.XmlBuilder {
  void s_ct_sheetcalcpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? fullCalcOnLoad,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fullCalcOnLoad);
        },
      );
    } else {
      _buildBody(children, fullCalcOnLoad);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? fullCalcOnLoad) {
    if (fullCalcOnLoad != null)
      this.attribute(
        'fullCalcOnLoad',
        fullCalcOnLoad == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_SheetFormatPr_Builder on _i1.XmlBuilder {
  void s_ct_sheetformatpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? baseColWidth,
    double? defaultColWidth,
    double? defaultRowHeight,
    bool? customHeight,
    bool? zeroHeight,
    bool? thickTop,
    bool? thickBottom,
    int? outlineLevelRow,
    int? outlineLevelCol,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            baseColWidth,
            defaultColWidth,
            defaultRowHeight,
            customHeight,
            zeroHeight,
            thickTop,
            thickBottom,
            outlineLevelRow,
            outlineLevelCol,
          );
        },
      );
    } else {
      _buildBody(
        children,
        baseColWidth,
        defaultColWidth,
        defaultRowHeight,
        customHeight,
        zeroHeight,
        thickTop,
        thickBottom,
        outlineLevelRow,
        outlineLevelCol,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? baseColWidth,
    double? defaultColWidth,
    double? defaultRowHeight,
    bool? customHeight,
    bool? zeroHeight,
    bool? thickTop,
    bool? thickBottom,
    int? outlineLevelRow,
    int? outlineLevelCol,
  ) {
    if (baseColWidth != null)
      this.attribute('baseColWidth', baseColWidth.toString());
    if (defaultColWidth != null)
      this.attribute('defaultColWidth', defaultColWidth.toString());
    if (defaultRowHeight != null)
      this.attribute('defaultRowHeight', defaultRowHeight.toString());
    if (customHeight != null)
      this.attribute('customHeight', customHeight == true ? 'true' : 'false');
    if (zeroHeight != null)
      this.attribute('zeroHeight', zeroHeight == true ? 'true' : 'false');
    if (thickTop != null)
      this.attribute('thickTop', thickTop == true ? 'true' : 'false');
    if (thickBottom != null)
      this.attribute('thickBottom', thickBottom == true ? 'true' : 'false');
    if (outlineLevelRow != null)
      this.attribute('outlineLevelRow', outlineLevelRow.toString());
    if (outlineLevelCol != null)
      this.attribute('outlineLevelCol', outlineLevelCol.toString());
    children?.call(this);
  }
}

extension S_CT_Cols_Builder on _i1.XmlBuilder {
  void s_ct_cols({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Col_Builder on _i1.XmlBuilder {
  void s_ct_col({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? min,
    int? max,
    double? width,
    int? style,
    bool? hidden,
    bool? bestFit,
    bool? customWidth,
    bool? phonetic,
    int? outlineLevel,
    bool? collapsed,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            min,
            max,
            width,
            style,
            hidden,
            bestFit,
            customWidth,
            phonetic,
            outlineLevel,
            collapsed,
          );
        },
      );
    } else {
      _buildBody(
        children,
        min,
        max,
        width,
        style,
        hidden,
        bestFit,
        customWidth,
        phonetic,
        outlineLevel,
        collapsed,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? min,
    int? max,
    double? width,
    int? style,
    bool? hidden,
    bool? bestFit,
    bool? customWidth,
    bool? phonetic,
    int? outlineLevel,
    bool? collapsed,
  ) {
    if (min != null) this.attribute('min', min.toString());
    if (max != null) this.attribute('max', max.toString());
    if (width != null) this.attribute('width', width.toString());
    if (style != null) this.attribute('style', style.toString());
    if (hidden != null)
      this.attribute('hidden', hidden == true ? 'true' : 'false');
    if (bestFit != null)
      this.attribute('bestFit', bestFit == true ? 'true' : 'false');
    if (customWidth != null)
      this.attribute('customWidth', customWidth == true ? 'true' : 'false');
    if (phonetic != null)
      this.attribute('phonetic', phonetic == true ? 'true' : 'false');
    if (outlineLevel != null)
      this.attribute('outlineLevel', outlineLevel.toString());
    if (collapsed != null)
      this.attribute('collapsed', collapsed == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Row_Builder on _i1.XmlBuilder {
  void s_ct_row({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? r,
    int? s,
    bool? customFormat,
    double? ht,
    bool? hidden,
    bool? customHeight,
    int? outlineLevel,
    bool? collapsed,
    bool? thickTop,
    bool? thickBot,
    bool? ph,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            r,
            s,
            customFormat,
            ht,
            hidden,
            customHeight,
            outlineLevel,
            collapsed,
            thickTop,
            thickBot,
            ph,
          );
        },
      );
    } else {
      _buildBody(
        children,
        r,
        s,
        customFormat,
        ht,
        hidden,
        customHeight,
        outlineLevel,
        collapsed,
        thickTop,
        thickBot,
        ph,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? r,
    int? s,
    bool? customFormat,
    double? ht,
    bool? hidden,
    bool? customHeight,
    int? outlineLevel,
    bool? collapsed,
    bool? thickTop,
    bool? thickBot,
    bool? ph,
  ) {
    if (r != null) this.attribute('r', r.toString());
    if (s != null) this.attribute('s', s.toString());
    if (customFormat != null)
      this.attribute('customFormat', customFormat == true ? 'true' : 'false');
    if (ht != null) this.attribute('ht', ht.toString());
    if (hidden != null)
      this.attribute('hidden', hidden == true ? 'true' : 'false');
    if (customHeight != null)
      this.attribute('customHeight', customHeight == true ? 'true' : 'false');
    if (outlineLevel != null)
      this.attribute('outlineLevel', outlineLevel.toString());
    if (collapsed != null)
      this.attribute('collapsed', collapsed == true ? 'true' : 'false');
    if (thickTop != null)
      this.attribute('thickTop', thickTop == true ? 'true' : 'false');
    if (thickBot != null)
      this.attribute('thickBot', thickBot == true ? 'true' : 'false');
    if (ph != null) this.attribute('ph', ph == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Cell_Builder on _i1.XmlBuilder {
  void s_ct_cell({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r,
    int? s,
    S_ST_CellType? t,
    int? cm,
    int? vm,
    bool? ph,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r, s, t, cm, vm, ph);
        },
      );
    } else {
      _buildBody(children, r, s, t, cm, vm, ph);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? r,
    int? s,
    S_ST_CellType? t,
    int? cm,
    int? vm,
    bool? ph,
  ) {
    if (r != null) this.attribute('r', r);
    if (s != null) this.attribute('s', s.toString());
    if (t != null) this.attribute('t', t!.value);
    if (cm != null) this.attribute('cm', cm.toString());
    if (vm != null) this.attribute('vm', vm.toString());
    if (ph != null) this.attribute('ph', ph == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_SheetPr_Builder on _i1.XmlBuilder {
  void s_ct_sheetpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? syncHorizontal,
    bool? syncVertical,
    String? syncRef,
    bool? transitionEvaluation,
    bool? transitionEntry,
    bool? published,
    String? codeName,
    bool? filterMode,
    bool? enableFormatConditionsCalculation,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            syncHorizontal,
            syncVertical,
            syncRef,
            transitionEvaluation,
            transitionEntry,
            published,
            codeName,
            filterMode,
            enableFormatConditionsCalculation,
          );
        },
      );
    } else {
      _buildBody(
        children,
        syncHorizontal,
        syncVertical,
        syncRef,
        transitionEvaluation,
        transitionEntry,
        published,
        codeName,
        filterMode,
        enableFormatConditionsCalculation,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? syncHorizontal,
    bool? syncVertical,
    String? syncRef,
    bool? transitionEvaluation,
    bool? transitionEntry,
    bool? published,
    String? codeName,
    bool? filterMode,
    bool? enableFormatConditionsCalculation,
  ) {
    if (syncHorizontal != null)
      this.attribute(
        'syncHorizontal',
        syncHorizontal == true ? 'true' : 'false',
      );
    if (syncVertical != null)
      this.attribute('syncVertical', syncVertical == true ? 'true' : 'false');
    if (syncRef != null) this.attribute('syncRef', syncRef);
    if (transitionEvaluation != null)
      this.attribute(
        'transitionEvaluation',
        transitionEvaluation == true ? 'true' : 'false',
      );
    if (transitionEntry != null)
      this.attribute(
        'transitionEntry',
        transitionEntry == true ? 'true' : 'false',
      );
    if (published != null)
      this.attribute('published', published == true ? 'true' : 'false');
    if (codeName != null) this.attribute('codeName', codeName);
    if (filterMode != null)
      this.attribute('filterMode', filterMode == true ? 'true' : 'false');
    if (enableFormatConditionsCalculation != null)
      this.attribute(
        'enableFormatConditionsCalculation',
        enableFormatConditionsCalculation == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_SheetDimension_Builder on _i1.XmlBuilder {
  void s_ct_sheetdimension({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (ref != null) this.attribute('ref', ref);
    children?.call(this);
  }
}

extension S_CT_SheetViews_Builder on _i1.XmlBuilder {
  void s_ct_sheetviews({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_SheetView_Builder on _i1.XmlBuilder {
  void s_ct_sheetview({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? windowProtection,
    bool? showFormulas,
    bool? showGridLines,
    bool? showRowColHeaders,
    bool? showZeros,
    bool? rightToLeft,
    bool? tabSelected,
    bool? showRuler,
    bool? showOutlineSymbols,
    bool? defaultGridColor,
    bool? showWhiteSpace,
    S_ST_SheetViewType? view,
    String? topLeftCell,
    int? colorId,
    int? zoomScale,
    int? zoomScaleNormal,
    int? zoomScaleSheetLayoutView,
    int? zoomScalePageLayoutView,
    int? workbookViewId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            windowProtection,
            showFormulas,
            showGridLines,
            showRowColHeaders,
            showZeros,
            rightToLeft,
            tabSelected,
            showRuler,
            showOutlineSymbols,
            defaultGridColor,
            showWhiteSpace,
            view,
            topLeftCell,
            colorId,
            zoomScale,
            zoomScaleNormal,
            zoomScaleSheetLayoutView,
            zoomScalePageLayoutView,
            workbookViewId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        windowProtection,
        showFormulas,
        showGridLines,
        showRowColHeaders,
        showZeros,
        rightToLeft,
        tabSelected,
        showRuler,
        showOutlineSymbols,
        defaultGridColor,
        showWhiteSpace,
        view,
        topLeftCell,
        colorId,
        zoomScale,
        zoomScaleNormal,
        zoomScaleSheetLayoutView,
        zoomScalePageLayoutView,
        workbookViewId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? windowProtection,
    bool? showFormulas,
    bool? showGridLines,
    bool? showRowColHeaders,
    bool? showZeros,
    bool? rightToLeft,
    bool? tabSelected,
    bool? showRuler,
    bool? showOutlineSymbols,
    bool? defaultGridColor,
    bool? showWhiteSpace,
    S_ST_SheetViewType? view,
    String? topLeftCell,
    int? colorId,
    int? zoomScale,
    int? zoomScaleNormal,
    int? zoomScaleSheetLayoutView,
    int? zoomScalePageLayoutView,
    int? workbookViewId,
  ) {
    if (windowProtection != null)
      this.attribute(
        'windowProtection',
        windowProtection == true ? 'true' : 'false',
      );
    if (showFormulas != null)
      this.attribute('showFormulas', showFormulas == true ? 'true' : 'false');
    if (showGridLines != null)
      this.attribute('showGridLines', showGridLines == true ? 'true' : 'false');
    if (showRowColHeaders != null)
      this.attribute(
        'showRowColHeaders',
        showRowColHeaders == true ? 'true' : 'false',
      );
    if (showZeros != null)
      this.attribute('showZeros', showZeros == true ? 'true' : 'false');
    if (rightToLeft != null)
      this.attribute('rightToLeft', rightToLeft == true ? 'true' : 'false');
    if (tabSelected != null)
      this.attribute('tabSelected', tabSelected == true ? 'true' : 'false');
    if (showRuler != null)
      this.attribute('showRuler', showRuler == true ? 'true' : 'false');
    if (showOutlineSymbols != null)
      this.attribute(
        'showOutlineSymbols',
        showOutlineSymbols == true ? 'true' : 'false',
      );
    if (defaultGridColor != null)
      this.attribute(
        'defaultGridColor',
        defaultGridColor == true ? 'true' : 'false',
      );
    if (showWhiteSpace != null)
      this.attribute(
        'showWhiteSpace',
        showWhiteSpace == true ? 'true' : 'false',
      );
    if (view != null) this.attribute('view', view!.value);
    if (topLeftCell != null) this.attribute('topLeftCell', topLeftCell);
    if (colorId != null) this.attribute('colorId', colorId.toString());
    if (zoomScale != null) this.attribute('zoomScale', zoomScale.toString());
    if (zoomScaleNormal != null)
      this.attribute('zoomScaleNormal', zoomScaleNormal.toString());
    if (zoomScaleSheetLayoutView != null)
      this.attribute(
        'zoomScaleSheetLayoutView',
        zoomScaleSheetLayoutView.toString(),
      );
    if (zoomScalePageLayoutView != null)
      this.attribute(
        'zoomScalePageLayoutView',
        zoomScalePageLayoutView.toString(),
      );
    if (workbookViewId != null)
      this.attribute('workbookViewId', workbookViewId.toString());
    children?.call(this);
  }
}

extension S_CT_Pane_Builder on _i1.XmlBuilder {
  void s_ct_pane({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    double? xSplit,
    double? ySplit,
    String? topLeftCell,
    S_ST_Pane? activePane,
    S_ST_PaneState? state,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, xSplit, ySplit, topLeftCell, activePane, state);
        },
      );
    } else {
      _buildBody(children, xSplit, ySplit, topLeftCell, activePane, state);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    double? xSplit,
    double? ySplit,
    String? topLeftCell,
    S_ST_Pane? activePane,
    S_ST_PaneState? state,
  ) {
    if (xSplit != null) this.attribute('xSplit', xSplit.toString());
    if (ySplit != null) this.attribute('ySplit', ySplit.toString());
    if (topLeftCell != null) this.attribute('topLeftCell', topLeftCell);
    if (activePane != null) this.attribute('activePane', activePane!.value);
    if (state != null) this.attribute('state', state!.value);
    children?.call(this);
  }
}

extension S_CT_PivotSelection_Builder on _i1.XmlBuilder {
  void s_ct_pivotselection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_Pane? pane,
    bool? showHeader,
    bool? label,
    bool? data,
    bool? extendable,
    int? count,
    S_ST_Axis? axis,
    int? dimension,
    int? start,
    int? min,
    int? max,
    int? activeRow,
    int? activeCol,
    int? previousRow,
    int? previousCol,
    int? click,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            pane,
            showHeader,
            label,
            data,
            extendable,
            count,
            axis,
            dimension,
            start,
            min,
            max,
            activeRow,
            activeCol,
            previousRow,
            previousCol,
            click,
            r_id,
          );
        },
      );
    } else {
      _buildBody(
        children,
        pane,
        showHeader,
        label,
        data,
        extendable,
        count,
        axis,
        dimension,
        start,
        min,
        max,
        activeRow,
        activeCol,
        previousRow,
        previousCol,
        click,
        r_id,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_Pane? pane,
    bool? showHeader,
    bool? label,
    bool? data,
    bool? extendable,
    int? count,
    S_ST_Axis? axis,
    int? dimension,
    int? start,
    int? min,
    int? max,
    int? activeRow,
    int? activeCol,
    int? previousRow,
    int? previousCol,
    int? click,
    String? r_id,
  ) {
    if (pane != null) this.attribute('pane', pane!.value);
    if (showHeader != null)
      this.attribute('showHeader', showHeader == true ? 'true' : 'false');
    if (label != null)
      this.attribute('label', label == true ? 'true' : 'false');
    if (data != null) this.attribute('data', data == true ? 'true' : 'false');
    if (extendable != null)
      this.attribute('extendable', extendable == true ? 'true' : 'false');
    if (count != null) this.attribute('count', count.toString());
    if (axis != null) this.attribute('axis', axis!.value);
    if (dimension != null) this.attribute('dimension', dimension.toString());
    if (start != null) this.attribute('start', start.toString());
    if (min != null) this.attribute('min', min.toString());
    if (max != null) this.attribute('max', max.toString());
    if (activeRow != null) this.attribute('activeRow', activeRow.toString());
    if (activeCol != null) this.attribute('activeCol', activeCol.toString());
    if (previousRow != null)
      this.attribute('previousRow', previousRow.toString());
    if (previousCol != null)
      this.attribute('previousCol', previousCol.toString());
    if (click != null) this.attribute('click', click.toString());
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_Selection_Builder on _i1.XmlBuilder {
  void s_ct_selection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_Pane? pane,
    String? activeCell,
    int? activeCellId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, pane, activeCell, activeCellId);
        },
      );
    } else {
      _buildBody(children, pane, activeCell, activeCellId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_Pane? pane,
    String? activeCell,
    int? activeCellId,
  ) {
    if (pane != null) this.attribute('pane', pane!.value);
    if (activeCell != null) this.attribute('activeCell', activeCell);
    if (activeCellId != null)
      this.attribute('activeCellId', activeCellId.toString());
    children?.call(this);
  }
}

extension S_CT_PageBreak_Builder on _i1.XmlBuilder {
  void s_ct_pagebreak({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    int? manualBreakCount,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count, manualBreakCount);
        },
      );
    } else {
      _buildBody(children, count, manualBreakCount);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? count,
    int? manualBreakCount,
  ) {
    if (count != null) this.attribute('count', count.toString());
    if (manualBreakCount != null)
      this.attribute('manualBreakCount', manualBreakCount.toString());
    children?.call(this);
  }
}

extension S_CT_Break_Builder on _i1.XmlBuilder {
  void s_ct_break({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    int? min,
    int? max,
    bool? man,
    bool? pt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, min, max, man, pt);
        },
      );
    } else {
      _buildBody(children, id, min, max, man, pt);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    int? min,
    int? max,
    bool? man,
    bool? pt,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (min != null) this.attribute('min', min.toString());
    if (max != null) this.attribute('max', max.toString());
    if (man != null) this.attribute('man', man == true ? 'true' : 'false');
    if (pt != null) this.attribute('pt', pt == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_OutlinePr_Builder on _i1.XmlBuilder {
  void s_ct_outlinepr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? applyStyles,
    bool? summaryBelow,
    bool? summaryRight,
    bool? showOutlineSymbols,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            applyStyles,
            summaryBelow,
            summaryRight,
            showOutlineSymbols,
          );
        },
      );
    } else {
      _buildBody(
        children,
        applyStyles,
        summaryBelow,
        summaryRight,
        showOutlineSymbols,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? applyStyles,
    bool? summaryBelow,
    bool? summaryRight,
    bool? showOutlineSymbols,
  ) {
    if (applyStyles != null)
      this.attribute('applyStyles', applyStyles == true ? 'true' : 'false');
    if (summaryBelow != null)
      this.attribute('summaryBelow', summaryBelow == true ? 'true' : 'false');
    if (summaryRight != null)
      this.attribute('summaryRight', summaryRight == true ? 'true' : 'false');
    if (showOutlineSymbols != null)
      this.attribute(
        'showOutlineSymbols',
        showOutlineSymbols == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_PageSetUpPr_Builder on _i1.XmlBuilder {
  void s_ct_pagesetuppr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? autoPageBreaks,
    bool? fitToPage,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, autoPageBreaks, fitToPage);
        },
      );
    } else {
      _buildBody(children, autoPageBreaks, fitToPage);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? autoPageBreaks,
    bool? fitToPage,
  ) {
    if (autoPageBreaks != null)
      this.attribute(
        'autoPageBreaks',
        autoPageBreaks == true ? 'true' : 'false',
      );
    if (fitToPage != null)
      this.attribute('fitToPage', fitToPage == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_DataConsolidate_Builder on _i1.XmlBuilder {
  void s_ct_dataconsolidate({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_DataConsolidateFunction? function_,
    bool? startLabels,
    bool? leftLabels,
    bool? topLabels,
    bool? link,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            function_,
            startLabels,
            leftLabels,
            topLabels,
            link,
          );
        },
      );
    } else {
      _buildBody(children, function_, startLabels, leftLabels, topLabels, link);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_DataConsolidateFunction? function_,
    bool? startLabels,
    bool? leftLabels,
    bool? topLabels,
    bool? link,
  ) {
    if (function_ != null) this.attribute('function', function_!.value);
    if (startLabels != null)
      this.attribute('startLabels', startLabels == true ? 'true' : 'false');
    if (leftLabels != null)
      this.attribute('leftLabels', leftLabels == true ? 'true' : 'false');
    if (topLabels != null)
      this.attribute('topLabels', topLabels == true ? 'true' : 'false');
    if (link != null) this.attribute('link', link == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_DataRefs_Builder on _i1.XmlBuilder {
  void s_ct_datarefs({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_DataRef_Builder on _i1.XmlBuilder {
  void s_ct_dataref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? ref,
    String? name,
    String? sheet,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ref, name, sheet, r_id);
        },
      );
    } else {
      _buildBody(children, ref, name, sheet, r_id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ref,
    String? name,
    String? sheet,
    String? r_id,
  ) {
    if (ref != null) this.attribute('ref', ref);
    if (name != null) this.attribute('name', name);
    if (sheet != null) this.attribute('sheet', sheet);
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_MergeCells_Builder on _i1.XmlBuilder {
  void s_ct_mergecells({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_MergeCell_Builder on _i1.XmlBuilder {
  void s_ct_mergecell({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (ref != null) this.attribute('ref', ref);
    children?.call(this);
  }
}

extension S_CT_SmartTags_Builder on _i1.XmlBuilder {
  void s_ct_smarttags({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CellSmartTags_Builder on _i1.XmlBuilder {
  void s_ct_cellsmarttags({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r);
        },
      );
    } else {
      _buildBody(children, r);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r) {
    if (r != null) this.attribute('r', r);
    children?.call(this);
  }
}

extension S_CT_CellSmartTag_Builder on _i1.XmlBuilder {
  void s_ct_cellsmarttag({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? type,
    bool? deleted,
    bool? xmlBased,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, deleted, xmlBased);
        },
      );
    } else {
      _buildBody(children, type, deleted, xmlBased);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? type,
    bool? deleted,
    bool? xmlBased,
  ) {
    if (type != null) this.attribute('type', type.toString());
    if (deleted != null)
      this.attribute('deleted', deleted == true ? 'true' : 'false');
    if (xmlBased != null)
      this.attribute('xmlBased', xmlBased == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_CellSmartTagPr_Builder on _i1.XmlBuilder {
  void s_ct_cellsmarttagpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? key,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, key, val);
        },
      );
    } else {
      _buildBody(children, key, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? key,
    String? val,
  ) {
    if (key != null) this.attribute('key', key);
    if (val != null) this.attribute('val', val);
    children?.call(this);
  }
}

extension S_CT_Drawing_Builder on _i1.XmlBuilder {
  void s_ct_drawing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r_id);
        },
      );
    } else {
      _buildBody(children, r_id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r_id) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_LegacyDrawing_Builder on _i1.XmlBuilder {
  void s_ct_legacydrawing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r_id);
        },
      );
    } else {
      _buildBody(children, r_id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r_id) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_DrawingHF_Builder on _i1.XmlBuilder {
  void s_ct_drawinghf({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    int? lho,
    int? lhe,
    int? lhf,
    int? cho,
    int? che,
    int? chf,
    int? rho,
    int? rhe,
    int? rhf,
    int? lfo,
    int? lfe,
    int? lff,
    int? cfo,
    int? cfe,
    int? cff,
    int? rfo,
    int? rfe,
    int? rff,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            r_id,
            lho,
            lhe,
            lhf,
            cho,
            che,
            chf,
            rho,
            rhe,
            rhf,
            lfo,
            lfe,
            lff,
            cfo,
            cfe,
            cff,
            rfo,
            rfe,
            rff,
          );
        },
      );
    } else {
      _buildBody(
        children,
        r_id,
        lho,
        lhe,
        lhf,
        cho,
        che,
        chf,
        rho,
        rhe,
        rhf,
        lfo,
        lfe,
        lff,
        cfo,
        cfe,
        cff,
        rfo,
        rfe,
        rff,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? r_id,
    int? lho,
    int? lhe,
    int? lhf,
    int? cho,
    int? che,
    int? chf,
    int? rho,
    int? rhe,
    int? rhf,
    int? lfo,
    int? lfe,
    int? lff,
    int? cfo,
    int? cfe,
    int? cff,
    int? rfo,
    int? rfe,
    int? rff,
  ) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    if (lho != null) this.attribute('lho', lho.toString());
    if (lhe != null) this.attribute('lhe', lhe.toString());
    if (lhf != null) this.attribute('lhf', lhf.toString());
    if (cho != null) this.attribute('cho', cho.toString());
    if (che != null) this.attribute('che', che.toString());
    if (chf != null) this.attribute('chf', chf.toString());
    if (rho != null) this.attribute('rho', rho.toString());
    if (rhe != null) this.attribute('rhe', rhe.toString());
    if (rhf != null) this.attribute('rhf', rhf.toString());
    if (lfo != null) this.attribute('lfo', lfo.toString());
    if (lfe != null) this.attribute('lfe', lfe.toString());
    if (lff != null) this.attribute('lff', lff.toString());
    if (cfo != null) this.attribute('cfo', cfo.toString());
    if (cfe != null) this.attribute('cfe', cfe.toString());
    if (cff != null) this.attribute('cff', cff.toString());
    if (rfo != null) this.attribute('rfo', rfo.toString());
    if (rfe != null) this.attribute('rfe', rfe.toString());
    if (rff != null) this.attribute('rff', rff.toString());
    children?.call(this);
  }
}

extension S_CT_CustomSheetViews_Builder on _i1.XmlBuilder {
  void s_ct_customsheetviews({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CustomSheetView_Builder on _i1.XmlBuilder {
  void s_ct_customsheetview({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? guid,
    int? scale,
    int? colorId,
    bool? showPageBreaks,
    bool? showFormulas,
    bool? showGridLines,
    bool? showRowCol,
    bool? outlineSymbols,
    bool? zeroValues,
    bool? fitToPage,
    bool? printArea,
    bool? filter,
    bool? showAutoFilter,
    bool? hiddenRows,
    bool? hiddenColumns,
    S_ST_SheetState? state,
    bool? filterUnique,
    S_ST_SheetViewType? view,
    bool? showRuler,
    String? topLeftCell,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            guid,
            scale,
            colorId,
            showPageBreaks,
            showFormulas,
            showGridLines,
            showRowCol,
            outlineSymbols,
            zeroValues,
            fitToPage,
            printArea,
            filter,
            showAutoFilter,
            hiddenRows,
            hiddenColumns,
            state,
            filterUnique,
            view,
            showRuler,
            topLeftCell,
          );
        },
      );
    } else {
      _buildBody(
        children,
        guid,
        scale,
        colorId,
        showPageBreaks,
        showFormulas,
        showGridLines,
        showRowCol,
        outlineSymbols,
        zeroValues,
        fitToPage,
        printArea,
        filter,
        showAutoFilter,
        hiddenRows,
        hiddenColumns,
        state,
        filterUnique,
        view,
        showRuler,
        topLeftCell,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? guid,
    int? scale,
    int? colorId,
    bool? showPageBreaks,
    bool? showFormulas,
    bool? showGridLines,
    bool? showRowCol,
    bool? outlineSymbols,
    bool? zeroValues,
    bool? fitToPage,
    bool? printArea,
    bool? filter,
    bool? showAutoFilter,
    bool? hiddenRows,
    bool? hiddenColumns,
    S_ST_SheetState? state,
    bool? filterUnique,
    S_ST_SheetViewType? view,
    bool? showRuler,
    String? topLeftCell,
  ) {
    if (guid != null) this.attribute('guid', guid);
    if (scale != null) this.attribute('scale', scale.toString());
    if (colorId != null) this.attribute('colorId', colorId.toString());
    if (showPageBreaks != null)
      this.attribute(
        'showPageBreaks',
        showPageBreaks == true ? 'true' : 'false',
      );
    if (showFormulas != null)
      this.attribute('showFormulas', showFormulas == true ? 'true' : 'false');
    if (showGridLines != null)
      this.attribute('showGridLines', showGridLines == true ? 'true' : 'false');
    if (showRowCol != null)
      this.attribute('showRowCol', showRowCol == true ? 'true' : 'false');
    if (outlineSymbols != null)
      this.attribute(
        'outlineSymbols',
        outlineSymbols == true ? 'true' : 'false',
      );
    if (zeroValues != null)
      this.attribute('zeroValues', zeroValues == true ? 'true' : 'false');
    if (fitToPage != null)
      this.attribute('fitToPage', fitToPage == true ? 'true' : 'false');
    if (printArea != null)
      this.attribute('printArea', printArea == true ? 'true' : 'false');
    if (filter != null)
      this.attribute('filter', filter == true ? 'true' : 'false');
    if (showAutoFilter != null)
      this.attribute(
        'showAutoFilter',
        showAutoFilter == true ? 'true' : 'false',
      );
    if (hiddenRows != null)
      this.attribute('hiddenRows', hiddenRows == true ? 'true' : 'false');
    if (hiddenColumns != null)
      this.attribute('hiddenColumns', hiddenColumns == true ? 'true' : 'false');
    if (state != null) this.attribute('state', state!.value);
    if (filterUnique != null)
      this.attribute('filterUnique', filterUnique == true ? 'true' : 'false');
    if (view != null) this.attribute('view', view!.value);
    if (showRuler != null)
      this.attribute('showRuler', showRuler == true ? 'true' : 'false');
    if (topLeftCell != null) this.attribute('topLeftCell', topLeftCell);
    children?.call(this);
  }
}

extension S_CT_DataValidations_Builder on _i1.XmlBuilder {
  void s_ct_datavalidations({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? disablePrompts,
    int? xWindow,
    int? yWindow,
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, disablePrompts, xWindow, yWindow, count);
        },
      );
    } else {
      _buildBody(children, disablePrompts, xWindow, yWindow, count);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? disablePrompts,
    int? xWindow,
    int? yWindow,
    int? count,
  ) {
    if (disablePrompts != null)
      this.attribute(
        'disablePrompts',
        disablePrompts == true ? 'true' : 'false',
      );
    if (xWindow != null) this.attribute('xWindow', xWindow.toString());
    if (yWindow != null) this.attribute('yWindow', yWindow.toString());
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_DataValidation_Builder on _i1.XmlBuilder {
  void s_ct_datavalidation({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_DataValidationType? type,
    S_ST_DataValidationErrorStyle? errorStyle,
    S_ST_DataValidationImeMode? imeMode,
    S_ST_DataValidationOperator? operator_,
    bool? allowBlank,
    bool? showDropDown,
    bool? showInputMessage,
    bool? showErrorMessage,
    String? errorTitle,
    String? error,
    String? promptTitle,
    String? prompt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            type,
            errorStyle,
            imeMode,
            operator_,
            allowBlank,
            showDropDown,
            showInputMessage,
            showErrorMessage,
            errorTitle,
            error,
            promptTitle,
            prompt,
          );
        },
      );
    } else {
      _buildBody(
        children,
        type,
        errorStyle,
        imeMode,
        operator_,
        allowBlank,
        showDropDown,
        showInputMessage,
        showErrorMessage,
        errorTitle,
        error,
        promptTitle,
        prompt,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_DataValidationType? type,
    S_ST_DataValidationErrorStyle? errorStyle,
    S_ST_DataValidationImeMode? imeMode,
    S_ST_DataValidationOperator? operator_,
    bool? allowBlank,
    bool? showDropDown,
    bool? showInputMessage,
    bool? showErrorMessage,
    String? errorTitle,
    String? error,
    String? promptTitle,
    String? prompt,
  ) {
    if (type != null) this.attribute('type', type!.value);
    if (errorStyle != null) this.attribute('errorStyle', errorStyle!.value);
    if (imeMode != null) this.attribute('imeMode', imeMode!.value);
    if (operator_ != null) this.attribute('operator', operator_!.value);
    if (allowBlank != null)
      this.attribute('allowBlank', allowBlank == true ? 'true' : 'false');
    if (showDropDown != null)
      this.attribute('showDropDown', showDropDown == true ? 'true' : 'false');
    if (showInputMessage != null)
      this.attribute(
        'showInputMessage',
        showInputMessage == true ? 'true' : 'false',
      );
    if (showErrorMessage != null)
      this.attribute(
        'showErrorMessage',
        showErrorMessage == true ? 'true' : 'false',
      );
    if (errorTitle != null) this.attribute('errorTitle', errorTitle);
    if (error != null) this.attribute('error', error);
    if (promptTitle != null) this.attribute('promptTitle', promptTitle);
    if (prompt != null) this.attribute('prompt', prompt);
    children?.call(this);
  }
}

extension S_CT_ConditionalFormatting_Builder on _i1.XmlBuilder {
  void s_ct_conditionalformatting({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? pivot,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, pivot);
        },
      );
    } else {
      _buildBody(children, pivot);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? pivot) {
    if (pivot != null)
      this.attribute('pivot', pivot == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_CfRule_Builder on _i1.XmlBuilder {
  void s_ct_cfrule({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_CfType? type,
    String? dxfId,
    int? priority,
    bool? stopIfTrue,
    bool? aboveAverage,
    bool? percent,
    bool? bottom,
    S_ST_ConditionalFormattingOperator? operator_,
    String? text,
    S_ST_TimePeriod? timePeriod,
    int? rank,
    int? stdDev,
    bool? equalAverage,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            type,
            dxfId,
            priority,
            stopIfTrue,
            aboveAverage,
            percent,
            bottom,
            operator_,
            text,
            timePeriod,
            rank,
            stdDev,
            equalAverage,
          );
        },
      );
    } else {
      _buildBody(
        children,
        type,
        dxfId,
        priority,
        stopIfTrue,
        aboveAverage,
        percent,
        bottom,
        operator_,
        text,
        timePeriod,
        rank,
        stdDev,
        equalAverage,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_CfType? type,
    String? dxfId,
    int? priority,
    bool? stopIfTrue,
    bool? aboveAverage,
    bool? percent,
    bool? bottom,
    S_ST_ConditionalFormattingOperator? operator_,
    String? text,
    S_ST_TimePeriod? timePeriod,
    int? rank,
    int? stdDev,
    bool? equalAverage,
  ) {
    if (type != null) this.attribute('type', type!.value);
    if (dxfId != null) this.attribute('dxfId', dxfId);
    if (priority != null) this.attribute('priority', priority.toString());
    if (stopIfTrue != null)
      this.attribute('stopIfTrue', stopIfTrue == true ? 'true' : 'false');
    if (aboveAverage != null)
      this.attribute('aboveAverage', aboveAverage == true ? 'true' : 'false');
    if (percent != null)
      this.attribute('percent', percent == true ? 'true' : 'false');
    if (bottom != null)
      this.attribute('bottom', bottom == true ? 'true' : 'false');
    if (operator_ != null) this.attribute('operator', operator_!.value);
    if (text != null) this.attribute('text', text);
    if (timePeriod != null) this.attribute('timePeriod', timePeriod!.value);
    if (rank != null) this.attribute('rank', rank.toString());
    if (stdDev != null) this.attribute('stdDev', stdDev.toString());
    if (equalAverage != null)
      this.attribute('equalAverage', equalAverage == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Hyperlinks_Builder on _i1.XmlBuilder {
  void s_ct_hyperlinks({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Hyperlink_Builder on _i1.XmlBuilder {
  void s_ct_hyperlink({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? ref,
    String? r_id,
    String? location,
    String? tooltip,
    String? display,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ref, r_id, location, tooltip, display);
        },
      );
    } else {
      _buildBody(children, ref, r_id, location, tooltip, display);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ref,
    String? r_id,
    String? location,
    String? tooltip,
    String? display,
  ) {
    if (ref != null) this.attribute('ref', ref);
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    if (location != null) this.attribute('location', location);
    if (tooltip != null) this.attribute('tooltip', tooltip);
    if (display != null) this.attribute('display', display);
    children?.call(this);
  }
}

extension S_CT_CellFormula_Builder on _i1.XmlBuilder {
  void s_ct_cellformula({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_CellFormulaType? t,
    bool? aca,
    String? ref,
    bool? dt2D,
    bool? dtr,
    bool? del1,
    bool? del2,
    String? r1,
    String? r2,
    bool? ca,
    int? si,
    bool? bx,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            t,
            aca,
            ref,
            dt2D,
            dtr,
            del1,
            del2,
            r1,
            r2,
            ca,
            si,
            bx,
          );
        },
      );
    } else {
      _buildBody(
        children,
        t,
        aca,
        ref,
        dt2D,
        dtr,
        del1,
        del2,
        r1,
        r2,
        ca,
        si,
        bx,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_CellFormulaType? t,
    bool? aca,
    String? ref,
    bool? dt2D,
    bool? dtr,
    bool? del1,
    bool? del2,
    String? r1,
    String? r2,
    bool? ca,
    int? si,
    bool? bx,
  ) {
    if (t != null) this.attribute('t', t!.value);
    if (aca != null) this.attribute('aca', aca == true ? 'true' : 'false');
    if (ref != null) this.attribute('ref', ref);
    if (dt2D != null) this.attribute('dt2D', dt2D == true ? 'true' : 'false');
    if (dtr != null) this.attribute('dtr', dtr == true ? 'true' : 'false');
    if (del1 != null) this.attribute('del1', del1 == true ? 'true' : 'false');
    if (del2 != null) this.attribute('del2', del2 == true ? 'true' : 'false');
    if (r1 != null) this.attribute('r1', r1);
    if (r2 != null) this.attribute('r2', r2);
    if (ca != null) this.attribute('ca', ca == true ? 'true' : 'false');
    if (si != null) this.attribute('si', si.toString());
    if (bx != null) this.attribute('bx', bx == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_ColorScale_Builder on _i1.XmlBuilder {
  void s_ct_colorscale({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_DataBar_Builder on _i1.XmlBuilder {
  void s_ct_databar({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? minLength,
    int? maxLength,
    bool? showValue,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, minLength, maxLength, showValue);
        },
      );
    } else {
      _buildBody(children, minLength, maxLength, showValue);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? minLength,
    int? maxLength,
    bool? showValue,
  ) {
    if (minLength != null) this.attribute('minLength', minLength.toString());
    if (maxLength != null) this.attribute('maxLength', maxLength.toString());
    if (showValue != null)
      this.attribute('showValue', showValue == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_IconSet_Builder on _i1.XmlBuilder {
  void s_ct_iconset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_IconSetType? iconSet,
    bool? showValue,
    bool? percent,
    bool? reverse,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, iconSet, showValue, percent, reverse);
        },
      );
    } else {
      _buildBody(children, iconSet, showValue, percent, reverse);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_IconSetType? iconSet,
    bool? showValue,
    bool? percent,
    bool? reverse,
  ) {
    if (iconSet != null) this.attribute('iconSet', iconSet!.value);
    if (showValue != null)
      this.attribute('showValue', showValue == true ? 'true' : 'false');
    if (percent != null)
      this.attribute('percent', percent == true ? 'true' : 'false');
    if (reverse != null)
      this.attribute('reverse', reverse == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Cfvo_Builder on _i1.XmlBuilder {
  void s_ct_cfvo({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_CfvoType? type,
    String? val,
    bool? gte,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, val, gte);
        },
      );
    } else {
      _buildBody(children, type, val, gte);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_CfvoType? type,
    String? val,
    bool? gte,
  ) {
    if (type != null) this.attribute('type', type!.value);
    if (val != null) this.attribute('val', val);
    if (gte != null) this.attribute('gte', gte == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_PageMargins_Builder on _i1.XmlBuilder {
  void s_ct_pagemargins({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    double? left,
    double? right,
    double? top,
    double? bottom,
    double? header,
    double? footer,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, left, right, top, bottom, header, footer);
        },
      );
    } else {
      _buildBody(children, left, right, top, bottom, header, footer);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    double? left,
    double? right,
    double? top,
    double? bottom,
    double? header,
    double? footer,
  ) {
    if (left != null) this.attribute('left', left.toString());
    if (right != null) this.attribute('right', right.toString());
    if (top != null) this.attribute('top', top.toString());
    if (bottom != null) this.attribute('bottom', bottom.toString());
    if (header != null) this.attribute('header', header.toString());
    if (footer != null) this.attribute('footer', footer.toString());
    children?.call(this);
  }
}

extension S_CT_PrintOptions_Builder on _i1.XmlBuilder {
  void s_ct_printoptions({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? horizontalCentered,
    bool? verticalCentered,
    bool? headings,
    bool? gridLines,
    bool? gridLinesSet,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            horizontalCentered,
            verticalCentered,
            headings,
            gridLines,
            gridLinesSet,
          );
        },
      );
    } else {
      _buildBody(
        children,
        horizontalCentered,
        verticalCentered,
        headings,
        gridLines,
        gridLinesSet,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? horizontalCentered,
    bool? verticalCentered,
    bool? headings,
    bool? gridLines,
    bool? gridLinesSet,
  ) {
    if (horizontalCentered != null)
      this.attribute(
        'horizontalCentered',
        horizontalCentered == true ? 'true' : 'false',
      );
    if (verticalCentered != null)
      this.attribute(
        'verticalCentered',
        verticalCentered == true ? 'true' : 'false',
      );
    if (headings != null)
      this.attribute('headings', headings == true ? 'true' : 'false');
    if (gridLines != null)
      this.attribute('gridLines', gridLines == true ? 'true' : 'false');
    if (gridLinesSet != null)
      this.attribute('gridLinesSet', gridLinesSet == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_PageSetup_Builder on _i1.XmlBuilder {
  void s_ct_pagesetup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? paperSize,
    String? paperHeight,
    String? paperWidth,
    int? scale,
    int? firstPageNumber,
    int? fitToWidth,
    int? fitToHeight,
    S_ST_PageOrder? pageOrder,
    S_ST_Orientation? orientation,
    bool? usePrinterDefaults,
    bool? blackAndWhite,
    bool? draft,
    S_ST_CellComments? cellComments,
    bool? useFirstPageNumber,
    S_ST_PrintError? errors,
    int? horizontalDpi,
    int? verticalDpi,
    int? copies,
    String? r_id,
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
            scale,
            firstPageNumber,
            fitToWidth,
            fitToHeight,
            pageOrder,
            orientation,
            usePrinterDefaults,
            blackAndWhite,
            draft,
            cellComments,
            useFirstPageNumber,
            errors,
            horizontalDpi,
            verticalDpi,
            copies,
            r_id,
          );
        },
      );
    } else {
      _buildBody(
        children,
        paperSize,
        paperHeight,
        paperWidth,
        scale,
        firstPageNumber,
        fitToWidth,
        fitToHeight,
        pageOrder,
        orientation,
        usePrinterDefaults,
        blackAndWhite,
        draft,
        cellComments,
        useFirstPageNumber,
        errors,
        horizontalDpi,
        verticalDpi,
        copies,
        r_id,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? paperSize,
    String? paperHeight,
    String? paperWidth,
    int? scale,
    int? firstPageNumber,
    int? fitToWidth,
    int? fitToHeight,
    S_ST_PageOrder? pageOrder,
    S_ST_Orientation? orientation,
    bool? usePrinterDefaults,
    bool? blackAndWhite,
    bool? draft,
    S_ST_CellComments? cellComments,
    bool? useFirstPageNumber,
    S_ST_PrintError? errors,
    int? horizontalDpi,
    int? verticalDpi,
    int? copies,
    String? r_id,
  ) {
    if (paperSize != null) this.attribute('paperSize', paperSize.toString());
    if (paperHeight != null) this.attribute('paperHeight', paperHeight);
    if (paperWidth != null) this.attribute('paperWidth', paperWidth);
    if (scale != null) this.attribute('scale', scale.toString());
    if (firstPageNumber != null)
      this.attribute('firstPageNumber', firstPageNumber.toString());
    if (fitToWidth != null) this.attribute('fitToWidth', fitToWidth.toString());
    if (fitToHeight != null)
      this.attribute('fitToHeight', fitToHeight.toString());
    if (pageOrder != null) this.attribute('pageOrder', pageOrder!.value);
    if (orientation != null) this.attribute('orientation', orientation!.value);
    if (usePrinterDefaults != null)
      this.attribute(
        'usePrinterDefaults',
        usePrinterDefaults == true ? 'true' : 'false',
      );
    if (blackAndWhite != null)
      this.attribute('blackAndWhite', blackAndWhite == true ? 'true' : 'false');
    if (draft != null)
      this.attribute('draft', draft == true ? 'true' : 'false');
    if (cellComments != null)
      this.attribute('cellComments', cellComments!.value);
    if (useFirstPageNumber != null)
      this.attribute(
        'useFirstPageNumber',
        useFirstPageNumber == true ? 'true' : 'false',
      );
    if (errors != null) this.attribute('errors', errors!.value);
    if (horizontalDpi != null)
      this.attribute('horizontalDpi', horizontalDpi.toString());
    if (verticalDpi != null)
      this.attribute('verticalDpi', verticalDpi.toString());
    if (copies != null) this.attribute('copies', copies.toString());
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_HeaderFooter_Builder on _i1.XmlBuilder {
  void s_ct_headerfooter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? differentOddEven,
    bool? differentFirst,
    bool? scaleWithDoc,
    bool? alignWithMargins,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            differentOddEven,
            differentFirst,
            scaleWithDoc,
            alignWithMargins,
          );
        },
      );
    } else {
      _buildBody(
        children,
        differentOddEven,
        differentFirst,
        scaleWithDoc,
        alignWithMargins,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? differentOddEven,
    bool? differentFirst,
    bool? scaleWithDoc,
    bool? alignWithMargins,
  ) {
    if (differentOddEven != null)
      this.attribute(
        'differentOddEven',
        differentOddEven == true ? 'true' : 'false',
      );
    if (differentFirst != null)
      this.attribute(
        'differentFirst',
        differentFirst == true ? 'true' : 'false',
      );
    if (scaleWithDoc != null)
      this.attribute('scaleWithDoc', scaleWithDoc == true ? 'true' : 'false');
    if (alignWithMargins != null)
      this.attribute(
        'alignWithMargins',
        alignWithMargins == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_Scenarios_Builder on _i1.XmlBuilder {
  void s_ct_scenarios({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? current,
    int? show_,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, current, show_);
        },
      );
    } else {
      _buildBody(children, current, show_);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? current,
    int? show_,
  ) {
    if (current != null) this.attribute('current', current.toString());
    if (show_ != null) this.attribute('show', show_.toString());
    children?.call(this);
  }
}

extension S_CT_SheetProtection_Builder on _i1.XmlBuilder {
  void s_ct_sheetprotection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? password,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinCount,
    bool? sheet,
    bool? objects,
    bool? scenarios,
    bool? formatCells,
    bool? formatColumns,
    bool? formatRows,
    bool? insertColumns,
    bool? insertRows,
    bool? insertHyperlinks,
    bool? deleteColumns,
    bool? deleteRows,
    bool? selectLockedCells,
    bool? sort,
    bool? autoFilter,
    bool? pivotTables,
    bool? selectUnlockedCells,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            password,
            algorithmName,
            hashValue,
            saltValue,
            spinCount,
            sheet,
            objects,
            scenarios,
            formatCells,
            formatColumns,
            formatRows,
            insertColumns,
            insertRows,
            insertHyperlinks,
            deleteColumns,
            deleteRows,
            selectLockedCells,
            sort,
            autoFilter,
            pivotTables,
            selectUnlockedCells,
          );
        },
      );
    } else {
      _buildBody(
        children,
        password,
        algorithmName,
        hashValue,
        saltValue,
        spinCount,
        sheet,
        objects,
        scenarios,
        formatCells,
        formatColumns,
        formatRows,
        insertColumns,
        insertRows,
        insertHyperlinks,
        deleteColumns,
        deleteRows,
        selectLockedCells,
        sort,
        autoFilter,
        pivotTables,
        selectUnlockedCells,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? password,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinCount,
    bool? sheet,
    bool? objects,
    bool? scenarios,
    bool? formatCells,
    bool? formatColumns,
    bool? formatRows,
    bool? insertColumns,
    bool? insertRows,
    bool? insertHyperlinks,
    bool? deleteColumns,
    bool? deleteRows,
    bool? selectLockedCells,
    bool? sort,
    bool? autoFilter,
    bool? pivotTables,
    bool? selectUnlockedCells,
  ) {
    if (password != null) this.attribute('password', password);
    if (algorithmName != null) this.attribute('algorithmName', algorithmName);
    if (hashValue != null) this.attribute('hashValue', hashValue);
    if (saltValue != null) this.attribute('saltValue', saltValue);
    if (spinCount != null) this.attribute('spinCount', spinCount.toString());
    if (sheet != null)
      this.attribute('sheet', sheet == true ? 'true' : 'false');
    if (objects != null)
      this.attribute('objects', objects == true ? 'true' : 'false');
    if (scenarios != null)
      this.attribute('scenarios', scenarios == true ? 'true' : 'false');
    if (formatCells != null)
      this.attribute('formatCells', formatCells == true ? 'true' : 'false');
    if (formatColumns != null)
      this.attribute('formatColumns', formatColumns == true ? 'true' : 'false');
    if (formatRows != null)
      this.attribute('formatRows', formatRows == true ? 'true' : 'false');
    if (insertColumns != null)
      this.attribute('insertColumns', insertColumns == true ? 'true' : 'false');
    if (insertRows != null)
      this.attribute('insertRows', insertRows == true ? 'true' : 'false');
    if (insertHyperlinks != null)
      this.attribute(
        'insertHyperlinks',
        insertHyperlinks == true ? 'true' : 'false',
      );
    if (deleteColumns != null)
      this.attribute('deleteColumns', deleteColumns == true ? 'true' : 'false');
    if (deleteRows != null)
      this.attribute('deleteRows', deleteRows == true ? 'true' : 'false');
    if (selectLockedCells != null)
      this.attribute(
        'selectLockedCells',
        selectLockedCells == true ? 'true' : 'false',
      );
    if (sort != null) this.attribute('sort', sort == true ? 'true' : 'false');
    if (autoFilter != null)
      this.attribute('autoFilter', autoFilter == true ? 'true' : 'false');
    if (pivotTables != null)
      this.attribute('pivotTables', pivotTables == true ? 'true' : 'false');
    if (selectUnlockedCells != null)
      this.attribute(
        'selectUnlockedCells',
        selectUnlockedCells == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_ProtectedRanges_Builder on _i1.XmlBuilder {
  void s_ct_protectedranges({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ProtectedRange_Builder on _i1.XmlBuilder {
  void s_ct_protectedrange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? password,
    String? name,
    String? securityDescriptor,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinCount,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            password,
            name,
            securityDescriptor,
            algorithmName,
            hashValue,
            saltValue,
            spinCount,
          );
        },
      );
    } else {
      _buildBody(
        children,
        password,
        name,
        securityDescriptor,
        algorithmName,
        hashValue,
        saltValue,
        spinCount,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? password,
    String? name,
    String? securityDescriptor,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinCount,
  ) {
    if (password != null) this.attribute('password', password);
    if (name != null) this.attribute('name', name);
    if (securityDescriptor != null)
      this.attribute('securityDescriptor', securityDescriptor);
    if (algorithmName != null) this.attribute('algorithmName', algorithmName);
    if (hashValue != null) this.attribute('hashValue', hashValue);
    if (saltValue != null) this.attribute('saltValue', saltValue);
    if (spinCount != null) this.attribute('spinCount', spinCount.toString());
    children?.call(this);
  }
}

extension S_CT_Scenario_Builder on _i1.XmlBuilder {
  void s_ct_scenario({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    bool? locked,
    bool? hidden,
    int? count,
    String? user,
    String? comment,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, locked, hidden, count, user, comment);
        },
      );
    } else {
      _buildBody(children, name, locked, hidden, count, user, comment);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    bool? locked,
    bool? hidden,
    int? count,
    String? user,
    String? comment,
  ) {
    if (name != null) this.attribute('name', name);
    if (locked != null)
      this.attribute('locked', locked == true ? 'true' : 'false');
    if (hidden != null)
      this.attribute('hidden', hidden == true ? 'true' : 'false');
    if (count != null) this.attribute('count', count.toString());
    if (user != null) this.attribute('user', user);
    if (comment != null) this.attribute('comment', comment);
    children?.call(this);
  }
}

extension S_CT_InputCells_Builder on _i1.XmlBuilder {
  void s_ct_inputcells({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r,
    bool? deleted,
    bool? undone,
    String? val,
    String? numFmtId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r, deleted, undone, val, numFmtId);
        },
      );
    } else {
      _buildBody(children, r, deleted, undone, val, numFmtId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? r,
    bool? deleted,
    bool? undone,
    String? val,
    String? numFmtId,
  ) {
    if (r != null) this.attribute('r', r);
    if (deleted != null)
      this.attribute('deleted', deleted == true ? 'true' : 'false');
    if (undone != null)
      this.attribute('undone', undone == true ? 'true' : 'false');
    if (val != null) this.attribute('val', val);
    if (numFmtId != null) this.attribute('numFmtId', numFmtId);
    children?.call(this);
  }
}

extension S_CT_CellWatches_Builder on _i1.XmlBuilder {
  void s_ct_cellwatches({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CellWatch_Builder on _i1.XmlBuilder {
  void s_ct_cellwatch({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r);
        },
      );
    } else {
      _buildBody(children, r);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r) {
    if (r != null) this.attribute('r', r);
    children?.call(this);
  }
}

extension S_CT_Chartsheet_Builder on _i1.XmlBuilder {
  void s_ct_chartsheet({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ChartsheetPr_Builder on _i1.XmlBuilder {
  void s_ct_chartsheetpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? published,
    String? codeName,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, published, codeName);
        },
      );
    } else {
      _buildBody(children, published, codeName);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? published,
    String? codeName,
  ) {
    if (published != null)
      this.attribute('published', published == true ? 'true' : 'false');
    if (codeName != null) this.attribute('codeName', codeName);
    children?.call(this);
  }
}

extension S_CT_ChartsheetViews_Builder on _i1.XmlBuilder {
  void s_ct_chartsheetviews({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ChartsheetView_Builder on _i1.XmlBuilder {
  void s_ct_chartsheetview({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? tabSelected,
    int? zoomScale,
    int? workbookViewId,
    bool? zoomToFit,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            tabSelected,
            zoomScale,
            workbookViewId,
            zoomToFit,
          );
        },
      );
    } else {
      _buildBody(children, tabSelected, zoomScale, workbookViewId, zoomToFit);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? tabSelected,
    int? zoomScale,
    int? workbookViewId,
    bool? zoomToFit,
  ) {
    if (tabSelected != null)
      this.attribute('tabSelected', tabSelected == true ? 'true' : 'false');
    if (zoomScale != null) this.attribute('zoomScale', zoomScale.toString());
    if (workbookViewId != null)
      this.attribute('workbookViewId', workbookViewId.toString());
    if (zoomToFit != null)
      this.attribute('zoomToFit', zoomToFit == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_ChartsheetProtection_Builder on _i1.XmlBuilder {
  void s_ct_chartsheetprotection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? password,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinCount,
    bool? content,
    bool? objects,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            password,
            algorithmName,
            hashValue,
            saltValue,
            spinCount,
            content,
            objects,
          );
        },
      );
    } else {
      _buildBody(
        children,
        password,
        algorithmName,
        hashValue,
        saltValue,
        spinCount,
        content,
        objects,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? password,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinCount,
    bool? content,
    bool? objects,
  ) {
    if (password != null) this.attribute('password', password);
    if (algorithmName != null) this.attribute('algorithmName', algorithmName);
    if (hashValue != null) this.attribute('hashValue', hashValue);
    if (saltValue != null) this.attribute('saltValue', saltValue);
    if (spinCount != null) this.attribute('spinCount', spinCount.toString());
    if (content != null)
      this.attribute('content', content == true ? 'true' : 'false');
    if (objects != null)
      this.attribute('objects', objects == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_CsPageSetup_Builder on _i1.XmlBuilder {
  void s_ct_cspagesetup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? paperSize,
    String? paperHeight,
    String? paperWidth,
    int? firstPageNumber,
    S_ST_Orientation? orientation,
    bool? usePrinterDefaults,
    bool? blackAndWhite,
    bool? draft,
    bool? useFirstPageNumber,
    int? horizontalDpi,
    int? verticalDpi,
    int? copies,
    String? r_id,
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
            usePrinterDefaults,
            blackAndWhite,
            draft,
            useFirstPageNumber,
            horizontalDpi,
            verticalDpi,
            copies,
            r_id,
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
        usePrinterDefaults,
        blackAndWhite,
        draft,
        useFirstPageNumber,
        horizontalDpi,
        verticalDpi,
        copies,
        r_id,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? paperSize,
    String? paperHeight,
    String? paperWidth,
    int? firstPageNumber,
    S_ST_Orientation? orientation,
    bool? usePrinterDefaults,
    bool? blackAndWhite,
    bool? draft,
    bool? useFirstPageNumber,
    int? horizontalDpi,
    int? verticalDpi,
    int? copies,
    String? r_id,
  ) {
    if (paperSize != null) this.attribute('paperSize', paperSize.toString());
    if (paperHeight != null) this.attribute('paperHeight', paperHeight);
    if (paperWidth != null) this.attribute('paperWidth', paperWidth);
    if (firstPageNumber != null)
      this.attribute('firstPageNumber', firstPageNumber.toString());
    if (orientation != null) this.attribute('orientation', orientation!.value);
    if (usePrinterDefaults != null)
      this.attribute(
        'usePrinterDefaults',
        usePrinterDefaults == true ? 'true' : 'false',
      );
    if (blackAndWhite != null)
      this.attribute('blackAndWhite', blackAndWhite == true ? 'true' : 'false');
    if (draft != null)
      this.attribute('draft', draft == true ? 'true' : 'false');
    if (useFirstPageNumber != null)
      this.attribute(
        'useFirstPageNumber',
        useFirstPageNumber == true ? 'true' : 'false',
      );
    if (horizontalDpi != null)
      this.attribute('horizontalDpi', horizontalDpi.toString());
    if (verticalDpi != null)
      this.attribute('verticalDpi', verticalDpi.toString());
    if (copies != null) this.attribute('copies', copies.toString());
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_CustomChartsheetViews_Builder on _i1.XmlBuilder {
  void s_ct_customchartsheetviews({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CustomChartsheetView_Builder on _i1.XmlBuilder {
  void s_ct_customchartsheetview({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? guid,
    int? scale,
    S_ST_SheetState? state,
    bool? zoomToFit,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, guid, scale, state, zoomToFit);
        },
      );
    } else {
      _buildBody(children, guid, scale, state, zoomToFit);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? guid,
    int? scale,
    S_ST_SheetState? state,
    bool? zoomToFit,
  ) {
    if (guid != null) this.attribute('guid', guid);
    if (scale != null) this.attribute('scale', scale.toString());
    if (state != null) this.attribute('state', state!.value);
    if (zoomToFit != null)
      this.attribute('zoomToFit', zoomToFit == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_CustomProperties_Builder on _i1.XmlBuilder {
  void s_ct_customproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CustomProperty_Builder on _i1.XmlBuilder {
  void s_ct_customproperty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, r_id);
        },
      );
    } else {
      _buildBody(children, name, r_id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? r_id,
  ) {
    if (name != null) this.attribute('name', name);
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_OleObjects_Builder on _i1.XmlBuilder {
  void s_ct_oleobjects({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_OleObject_Builder on _i1.XmlBuilder {
  void s_ct_oleobject({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? progId,
    S_ST_DvAspect? dvAspect,
    String? link,
    S_ST_OleUpdate? oleUpdate,
    bool? autoLoad,
    int? shapeId,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            progId,
            dvAspect,
            link,
            oleUpdate,
            autoLoad,
            shapeId,
            r_id,
          );
        },
      );
    } else {
      _buildBody(
        children,
        progId,
        dvAspect,
        link,
        oleUpdate,
        autoLoad,
        shapeId,
        r_id,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? progId,
    S_ST_DvAspect? dvAspect,
    String? link,
    S_ST_OleUpdate? oleUpdate,
    bool? autoLoad,
    int? shapeId,
    String? r_id,
  ) {
    if (progId != null) this.attribute('progId', progId);
    if (dvAspect != null) this.attribute('dvAspect', dvAspect!.value);
    if (link != null) this.attribute('link', link);
    if (oleUpdate != null) this.attribute('oleUpdate', oleUpdate!.value);
    if (autoLoad != null)
      this.attribute('autoLoad', autoLoad == true ? 'true' : 'false');
    if (shapeId != null) this.attribute('shapeId', shapeId.toString());
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_ObjectPr_Builder on _i1.XmlBuilder {
  void s_ct_objectpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? locked,
    bool? defaultSize,
    bool? print,
    bool? disabled,
    bool? uiObject,
    bool? autoFill,
    bool? autoLine,
    bool? autoPict,
    String? macro,
    String? altText,
    bool? dde,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            locked,
            defaultSize,
            print,
            disabled,
            uiObject,
            autoFill,
            autoLine,
            autoPict,
            macro,
            altText,
            dde,
            r_id,
          );
        },
      );
    } else {
      _buildBody(
        children,
        locked,
        defaultSize,
        print,
        disabled,
        uiObject,
        autoFill,
        autoLine,
        autoPict,
        macro,
        altText,
        dde,
        r_id,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? locked,
    bool? defaultSize,
    bool? print,
    bool? disabled,
    bool? uiObject,
    bool? autoFill,
    bool? autoLine,
    bool? autoPict,
    String? macro,
    String? altText,
    bool? dde,
    String? r_id,
  ) {
    if (locked != null)
      this.attribute('locked', locked == true ? 'true' : 'false');
    if (defaultSize != null)
      this.attribute('defaultSize', defaultSize == true ? 'true' : 'false');
    if (print != null)
      this.attribute('print', print == true ? 'true' : 'false');
    if (disabled != null)
      this.attribute('disabled', disabled == true ? 'true' : 'false');
    if (uiObject != null)
      this.attribute('uiObject', uiObject == true ? 'true' : 'false');
    if (autoFill != null)
      this.attribute('autoFill', autoFill == true ? 'true' : 'false');
    if (autoLine != null)
      this.attribute('autoLine', autoLine == true ? 'true' : 'false');
    if (autoPict != null)
      this.attribute('autoPict', autoPict == true ? 'true' : 'false');
    if (macro != null) this.attribute('macro', macro);
    if (altText != null) this.attribute('altText', altText);
    if (dde != null) this.attribute('dde', dde == true ? 'true' : 'false');
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_WebPublishItems_Builder on _i1.XmlBuilder {
  void s_ct_webpublishitems({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_WebPublishItem_Builder on _i1.XmlBuilder {
  void s_ct_webpublishitem({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    String? divId,
    S_ST_WebSourceType? sourceType,
    String? sourceRef,
    String? sourceObject,
    String? destinationFile,
    String? title,
    bool? autoRepublish,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            id,
            divId,
            sourceType,
            sourceRef,
            sourceObject,
            destinationFile,
            title,
            autoRepublish,
          );
        },
      );
    } else {
      _buildBody(
        children,
        id,
        divId,
        sourceType,
        sourceRef,
        sourceObject,
        destinationFile,
        title,
        autoRepublish,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? divId,
    S_ST_WebSourceType? sourceType,
    String? sourceRef,
    String? sourceObject,
    String? destinationFile,
    String? title,
    bool? autoRepublish,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (divId != null) this.attribute('divId', divId);
    if (sourceType != null) this.attribute('sourceType', sourceType!.value);
    if (sourceRef != null) this.attribute('sourceRef', sourceRef);
    if (sourceObject != null) this.attribute('sourceObject', sourceObject);
    if (destinationFile != null)
      this.attribute('destinationFile', destinationFile);
    if (title != null) this.attribute('title', title);
    if (autoRepublish != null)
      this.attribute('autoRepublish', autoRepublish == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Controls_Builder on _i1.XmlBuilder {
  void s_ct_controls({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Control_Builder on _i1.XmlBuilder {
  void s_ct_control({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? shapeId,
    String? r_id,
    String? name,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, shapeId, r_id, name);
        },
      );
    } else {
      _buildBody(children, shapeId, r_id, name);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? shapeId,
    String? r_id,
    String? name,
  ) {
    if (shapeId != null) this.attribute('shapeId', shapeId.toString());
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    if (name != null) this.attribute('name', name);
    children?.call(this);
  }
}

extension S_CT_ControlPr_Builder on _i1.XmlBuilder {
  void s_ct_controlpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? locked,
    bool? defaultSize,
    bool? print,
    bool? disabled,
    bool? recalcAlways,
    bool? uiObject,
    bool? autoFill,
    bool? autoLine,
    bool? autoPict,
    String? macro,
    String? altText,
    String? linkedCell,
    String? listFillRange,
    String? cf,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            locked,
            defaultSize,
            print,
            disabled,
            recalcAlways,
            uiObject,
            autoFill,
            autoLine,
            autoPict,
            macro,
            altText,
            linkedCell,
            listFillRange,
            cf,
            r_id,
          );
        },
      );
    } else {
      _buildBody(
        children,
        locked,
        defaultSize,
        print,
        disabled,
        recalcAlways,
        uiObject,
        autoFill,
        autoLine,
        autoPict,
        macro,
        altText,
        linkedCell,
        listFillRange,
        cf,
        r_id,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? locked,
    bool? defaultSize,
    bool? print,
    bool? disabled,
    bool? recalcAlways,
    bool? uiObject,
    bool? autoFill,
    bool? autoLine,
    bool? autoPict,
    String? macro,
    String? altText,
    String? linkedCell,
    String? listFillRange,
    String? cf,
    String? r_id,
  ) {
    if (locked != null)
      this.attribute('locked', locked == true ? 'true' : 'false');
    if (defaultSize != null)
      this.attribute('defaultSize', defaultSize == true ? 'true' : 'false');
    if (print != null)
      this.attribute('print', print == true ? 'true' : 'false');
    if (disabled != null)
      this.attribute('disabled', disabled == true ? 'true' : 'false');
    if (recalcAlways != null)
      this.attribute('recalcAlways', recalcAlways == true ? 'true' : 'false');
    if (uiObject != null)
      this.attribute('uiObject', uiObject == true ? 'true' : 'false');
    if (autoFill != null)
      this.attribute('autoFill', autoFill == true ? 'true' : 'false');
    if (autoLine != null)
      this.attribute('autoLine', autoLine == true ? 'true' : 'false');
    if (autoPict != null)
      this.attribute('autoPict', autoPict == true ? 'true' : 'false');
    if (macro != null) this.attribute('macro', macro);
    if (altText != null) this.attribute('altText', altText);
    if (linkedCell != null) this.attribute('linkedCell', linkedCell);
    if (listFillRange != null) this.attribute('listFillRange', listFillRange);
    if (cf != null) this.attribute('cf', cf);
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_IgnoredErrors_Builder on _i1.XmlBuilder {
  void s_ct_ignorederrors({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_IgnoredError_Builder on _i1.XmlBuilder {
  void s_ct_ignorederror({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? evalError,
    bool? twoDigitTextYear,
    bool? numberStoredAsText,
    bool? formula,
    bool? formulaRange,
    bool? unlockedFormula,
    bool? emptyCellReference,
    bool? listDataValidation,
    bool? calculatedColumn,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            evalError,
            twoDigitTextYear,
            numberStoredAsText,
            formula,
            formulaRange,
            unlockedFormula,
            emptyCellReference,
            listDataValidation,
            calculatedColumn,
          );
        },
      );
    } else {
      _buildBody(
        children,
        evalError,
        twoDigitTextYear,
        numberStoredAsText,
        formula,
        formulaRange,
        unlockedFormula,
        emptyCellReference,
        listDataValidation,
        calculatedColumn,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? evalError,
    bool? twoDigitTextYear,
    bool? numberStoredAsText,
    bool? formula,
    bool? formulaRange,
    bool? unlockedFormula,
    bool? emptyCellReference,
    bool? listDataValidation,
    bool? calculatedColumn,
  ) {
    if (evalError != null)
      this.attribute('evalError', evalError == true ? 'true' : 'false');
    if (twoDigitTextYear != null)
      this.attribute(
        'twoDigitTextYear',
        twoDigitTextYear == true ? 'true' : 'false',
      );
    if (numberStoredAsText != null)
      this.attribute(
        'numberStoredAsText',
        numberStoredAsText == true ? 'true' : 'false',
      );
    if (formula != null)
      this.attribute('formula', formula == true ? 'true' : 'false');
    if (formulaRange != null)
      this.attribute('formulaRange', formulaRange == true ? 'true' : 'false');
    if (unlockedFormula != null)
      this.attribute(
        'unlockedFormula',
        unlockedFormula == true ? 'true' : 'false',
      );
    if (emptyCellReference != null)
      this.attribute(
        'emptyCellReference',
        emptyCellReference == true ? 'true' : 'false',
      );
    if (listDataValidation != null)
      this.attribute(
        'listDataValidation',
        listDataValidation == true ? 'true' : 'false',
      );
    if (calculatedColumn != null)
      this.attribute(
        'calculatedColumn',
        calculatedColumn == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_TableParts_Builder on _i1.XmlBuilder {
  void s_ct_tableparts({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_TablePart_Builder on _i1.XmlBuilder {
  void s_ct_tablepart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r_id);
        },
      );
    } else {
      _buildBody(children, r_id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r_id) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_Metadata_Builder on _i1.XmlBuilder {
  void s_ct_metadata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_MetadataTypes_Builder on _i1.XmlBuilder {
  void s_ct_metadatatypes({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_MetadataType_Builder on _i1.XmlBuilder {
  void s_ct_metadatatype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    int? minSupportedVersion,
    bool? ghostRow,
    bool? ghostCol,
    bool? edit,
    bool? delete,
    bool? copy,
    bool? pasteAll,
    bool? pasteFormulas,
    bool? pasteValues,
    bool? pasteFormats,
    bool? pasteComments,
    bool? pasteDataValidation,
    bool? pasteBorders,
    bool? pasteColWidths,
    bool? pasteNumberFormats,
    bool? merge,
    bool? splitFirst,
    bool? splitAll,
    bool? rowColShift,
    bool? clearAll,
    bool? clearFormats,
    bool? clearContents,
    bool? clearComments,
    bool? assign,
    bool? coerce,
    bool? adjust,
    bool? cellMeta,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            minSupportedVersion,
            ghostRow,
            ghostCol,
            edit,
            delete,
            copy,
            pasteAll,
            pasteFormulas,
            pasteValues,
            pasteFormats,
            pasteComments,
            pasteDataValidation,
            pasteBorders,
            pasteColWidths,
            pasteNumberFormats,
            merge,
            splitFirst,
            splitAll,
            rowColShift,
            clearAll,
            clearFormats,
            clearContents,
            clearComments,
            assign,
            coerce,
            adjust,
            cellMeta,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        minSupportedVersion,
        ghostRow,
        ghostCol,
        edit,
        delete,
        copy,
        pasteAll,
        pasteFormulas,
        pasteValues,
        pasteFormats,
        pasteComments,
        pasteDataValidation,
        pasteBorders,
        pasteColWidths,
        pasteNumberFormats,
        merge,
        splitFirst,
        splitAll,
        rowColShift,
        clearAll,
        clearFormats,
        clearContents,
        clearComments,
        assign,
        coerce,
        adjust,
        cellMeta,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    int? minSupportedVersion,
    bool? ghostRow,
    bool? ghostCol,
    bool? edit,
    bool? delete,
    bool? copy,
    bool? pasteAll,
    bool? pasteFormulas,
    bool? pasteValues,
    bool? pasteFormats,
    bool? pasteComments,
    bool? pasteDataValidation,
    bool? pasteBorders,
    bool? pasteColWidths,
    bool? pasteNumberFormats,
    bool? merge,
    bool? splitFirst,
    bool? splitAll,
    bool? rowColShift,
    bool? clearAll,
    bool? clearFormats,
    bool? clearContents,
    bool? clearComments,
    bool? assign,
    bool? coerce,
    bool? adjust,
    bool? cellMeta,
  ) {
    if (name != null) this.attribute('name', name);
    if (minSupportedVersion != null)
      this.attribute('minSupportedVersion', minSupportedVersion.toString());
    if (ghostRow != null)
      this.attribute('ghostRow', ghostRow == true ? 'true' : 'false');
    if (ghostCol != null)
      this.attribute('ghostCol', ghostCol == true ? 'true' : 'false');
    if (edit != null) this.attribute('edit', edit == true ? 'true' : 'false');
    if (delete != null)
      this.attribute('delete', delete == true ? 'true' : 'false');
    if (copy != null) this.attribute('copy', copy == true ? 'true' : 'false');
    if (pasteAll != null)
      this.attribute('pasteAll', pasteAll == true ? 'true' : 'false');
    if (pasteFormulas != null)
      this.attribute('pasteFormulas', pasteFormulas == true ? 'true' : 'false');
    if (pasteValues != null)
      this.attribute('pasteValues', pasteValues == true ? 'true' : 'false');
    if (pasteFormats != null)
      this.attribute('pasteFormats', pasteFormats == true ? 'true' : 'false');
    if (pasteComments != null)
      this.attribute('pasteComments', pasteComments == true ? 'true' : 'false');
    if (pasteDataValidation != null)
      this.attribute(
        'pasteDataValidation',
        pasteDataValidation == true ? 'true' : 'false',
      );
    if (pasteBorders != null)
      this.attribute('pasteBorders', pasteBorders == true ? 'true' : 'false');
    if (pasteColWidths != null)
      this.attribute(
        'pasteColWidths',
        pasteColWidths == true ? 'true' : 'false',
      );
    if (pasteNumberFormats != null)
      this.attribute(
        'pasteNumberFormats',
        pasteNumberFormats == true ? 'true' : 'false',
      );
    if (merge != null)
      this.attribute('merge', merge == true ? 'true' : 'false');
    if (splitFirst != null)
      this.attribute('splitFirst', splitFirst == true ? 'true' : 'false');
    if (splitAll != null)
      this.attribute('splitAll', splitAll == true ? 'true' : 'false');
    if (rowColShift != null)
      this.attribute('rowColShift', rowColShift == true ? 'true' : 'false');
    if (clearAll != null)
      this.attribute('clearAll', clearAll == true ? 'true' : 'false');
    if (clearFormats != null)
      this.attribute('clearFormats', clearFormats == true ? 'true' : 'false');
    if (clearContents != null)
      this.attribute('clearContents', clearContents == true ? 'true' : 'false');
    if (clearComments != null)
      this.attribute('clearComments', clearComments == true ? 'true' : 'false');
    if (assign != null)
      this.attribute('assign', assign == true ? 'true' : 'false');
    if (coerce != null)
      this.attribute('coerce', coerce == true ? 'true' : 'false');
    if (adjust != null)
      this.attribute('adjust', adjust == true ? 'true' : 'false');
    if (cellMeta != null)
      this.attribute('cellMeta', cellMeta == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_MetadataBlocks_Builder on _i1.XmlBuilder {
  void s_ct_metadatablocks({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_MetadataBlock_Builder on _i1.XmlBuilder {
  void s_ct_metadatablock({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_MetadataRecord_Builder on _i1.XmlBuilder {
  void s_ct_metadatarecord({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? t,
    int? v,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, t, v);
        },
      );
    } else {
      _buildBody(children, t, v);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? t, int? v) {
    if (t != null) this.attribute('t', t.toString());
    if (v != null) this.attribute('v', v.toString());
    children?.call(this);
  }
}

extension S_CT_FutureMetadata_Builder on _i1.XmlBuilder {
  void s_ct_futuremetadata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, count);
        },
      );
    } else {
      _buildBody(children, name, count);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    int? count,
  ) {
    if (name != null) this.attribute('name', name);
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_FutureMetadataBlock_Builder on _i1.XmlBuilder {
  void s_ct_futuremetadatablock({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_MdxMetadata_Builder on _i1.XmlBuilder {
  void s_ct_mdxmetadata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Mdx_Builder on _i1.XmlBuilder {
  void s_ct_mdx({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? n,
    S_ST_MdxFunctionType? f,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, n, f);
        },
      );
    } else {
      _buildBody(children, n, f);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? n,
    S_ST_MdxFunctionType? f,
  ) {
    if (n != null) this.attribute('n', n.toString());
    if (f != null) this.attribute('f', f!.value);
    children?.call(this);
  }
}

extension S_CT_MdxTuple_Builder on _i1.XmlBuilder {
  void s_ct_mdxtuple({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? c,
    String? ct,
    int? si,
    int? fi,
    String? bc,
    String? fc,
    bool? i,
    bool? u,
    bool? st,
    bool? b,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, c, ct, si, fi, bc, fc, i, u, st, b);
        },
      );
    } else {
      _buildBody(children, c, ct, si, fi, bc, fc, i, u, st, b);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? c,
    String? ct,
    int? si,
    int? fi,
    String? bc,
    String? fc,
    bool? i,
    bool? u,
    bool? st,
    bool? b,
  ) {
    if (c != null) this.attribute('c', c.toString());
    if (ct != null) this.attribute('ct', ct);
    if (si != null) this.attribute('si', si.toString());
    if (fi != null) this.attribute('fi', fi.toString());
    if (bc != null) this.attribute('bc', bc);
    if (fc != null) this.attribute('fc', fc);
    if (i != null) this.attribute('i', i == true ? 'true' : 'false');
    if (u != null) this.attribute('u', u == true ? 'true' : 'false');
    if (st != null) this.attribute('st', st == true ? 'true' : 'false');
    if (b != null) this.attribute('b', b == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_MdxSet_Builder on _i1.XmlBuilder {
  void s_ct_mdxset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? ns,
    int? c,
    S_ST_MdxSetOrder? o,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ns, c, o);
        },
      );
    } else {
      _buildBody(children, ns, c, o);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? ns,
    int? c,
    S_ST_MdxSetOrder? o,
  ) {
    if (ns != null) this.attribute('ns', ns.toString());
    if (c != null) this.attribute('c', c.toString());
    if (o != null) this.attribute('o', o!.value);
    children?.call(this);
  }
}

extension S_CT_MdxMemeberProp_Builder on _i1.XmlBuilder {
  void s_ct_mdxmemeberprop({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? n,
    int? np,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, n, np);
        },
      );
    } else {
      _buildBody(children, n, np);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? n, int? np) {
    if (n != null) this.attribute('n', n.toString());
    if (np != null) this.attribute('np', np.toString());
    children?.call(this);
  }
}

extension S_CT_MdxKPI_Builder on _i1.XmlBuilder {
  void s_ct_mdxkpi({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? n,
    int? np,
    S_ST_MdxKPIProperty? p,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, n, np, p);
        },
      );
    } else {
      _buildBody(children, n, np, p);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? n,
    int? np,
    S_ST_MdxKPIProperty? p,
  ) {
    if (n != null) this.attribute('n', n.toString());
    if (np != null) this.attribute('np', np.toString());
    if (p != null) this.attribute('p', p!.value);
    children?.call(this);
  }
}

extension S_CT_MetadataStringIndex_Builder on _i1.XmlBuilder {
  void s_ct_metadatastringindex({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? x,
    bool? s,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, x, s);
        },
      );
    } else {
      _buildBody(children, x, s);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? x, bool? s) {
    if (x != null) this.attribute('x', x.toString());
    if (s != null) this.attribute('s', s == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_MetadataStrings_Builder on _i1.XmlBuilder {
  void s_ct_metadatastrings({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_SingleXmlCells_Builder on _i1.XmlBuilder {
  void s_ct_singlexmlcells({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_SingleXmlCell_Builder on _i1.XmlBuilder {
  void s_ct_singlexmlcell({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    String? r,
    int? connectionId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, r, connectionId);
        },
      );
    } else {
      _buildBody(children, id, r, connectionId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? r,
    int? connectionId,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (r != null) this.attribute('r', r);
    if (connectionId != null)
      this.attribute('connectionId', connectionId.toString());
    children?.call(this);
  }
}

extension S_CT_XmlCellPr_Builder on _i1.XmlBuilder {
  void s_ct_xmlcellpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    String? uniqueName,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, uniqueName);
        },
      );
    } else {
      _buildBody(children, id, uniqueName);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? uniqueName,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (uniqueName != null) this.attribute('uniqueName', uniqueName);
    children?.call(this);
  }
}

extension S_CT_XmlPr_Builder on _i1.XmlBuilder {
  void s_ct_xmlpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? mapId,
    String? xpath,
    String? xmlDataType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, mapId, xpath, xmlDataType);
        },
      );
    } else {
      _buildBody(children, mapId, xpath, xmlDataType);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? mapId,
    String? xpath,
    String? xmlDataType,
  ) {
    if (mapId != null) this.attribute('mapId', mapId.toString());
    if (xpath != null) this.attribute('xpath', xpath);
    if (xmlDataType != null) this.attribute('xmlDataType', xmlDataType);
    children?.call(this);
  }
}

extension S_CT_Stylesheet_Builder on _i1.XmlBuilder {
  void s_ct_stylesheet({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CellAlignment_Builder on _i1.XmlBuilder {
  void s_ct_cellalignment({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_HorizontalAlignment? horizontal,
    S_ST_VerticalAlignment? vertical,
    String? textRotation,
    bool? wrapText,
    int? indent,
    int? relativeIndent,
    bool? justifyLastLine,
    bool? shrinkToFit,
    int? readingOrder,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            horizontal,
            vertical,
            textRotation,
            wrapText,
            indent,
            relativeIndent,
            justifyLastLine,
            shrinkToFit,
            readingOrder,
          );
        },
      );
    } else {
      _buildBody(
        children,
        horizontal,
        vertical,
        textRotation,
        wrapText,
        indent,
        relativeIndent,
        justifyLastLine,
        shrinkToFit,
        readingOrder,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_HorizontalAlignment? horizontal,
    S_ST_VerticalAlignment? vertical,
    String? textRotation,
    bool? wrapText,
    int? indent,
    int? relativeIndent,
    bool? justifyLastLine,
    bool? shrinkToFit,
    int? readingOrder,
  ) {
    if (horizontal != null) this.attribute('horizontal', horizontal!.value);
    if (vertical != null) this.attribute('vertical', vertical!.value);
    if (textRotation != null) this.attribute('textRotation', textRotation);
    if (wrapText != null)
      this.attribute('wrapText', wrapText == true ? 'true' : 'false');
    if (indent != null) this.attribute('indent', indent.toString());
    if (relativeIndent != null)
      this.attribute('relativeIndent', relativeIndent.toString());
    if (justifyLastLine != null)
      this.attribute(
        'justifyLastLine',
        justifyLastLine == true ? 'true' : 'false',
      );
    if (shrinkToFit != null)
      this.attribute('shrinkToFit', shrinkToFit == true ? 'true' : 'false');
    if (readingOrder != null)
      this.attribute('readingOrder', readingOrder.toString());
    children?.call(this);
  }
}

extension S_CT_Borders_Builder on _i1.XmlBuilder {
  void s_ct_borders({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Border_Builder on _i1.XmlBuilder {
  void s_ct_border({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? diagonalUp,
    bool? diagonalDown,
    bool? outline,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, diagonalUp, diagonalDown, outline);
        },
      );
    } else {
      _buildBody(children, diagonalUp, diagonalDown, outline);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? diagonalUp,
    bool? diagonalDown,
    bool? outline,
  ) {
    if (diagonalUp != null)
      this.attribute('diagonalUp', diagonalUp == true ? 'true' : 'false');
    if (diagonalDown != null)
      this.attribute('diagonalDown', diagonalDown == true ? 'true' : 'false');
    if (outline != null)
      this.attribute('outline', outline == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_BorderPr_Builder on _i1.XmlBuilder {
  void s_ct_borderpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_BorderStyle? style,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, style);
        },
      );
    } else {
      _buildBody(children, style);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_BorderStyle? style,
  ) {
    if (style != null) this.attribute('style', style!.value);
    children?.call(this);
  }
}

extension S_CT_CellProtection_Builder on _i1.XmlBuilder {
  void s_ct_cellprotection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? locked,
    bool? hidden,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, locked, hidden);
        },
      );
    } else {
      _buildBody(children, locked, hidden);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? locked,
    bool? hidden,
  ) {
    if (locked != null)
      this.attribute('locked', locked == true ? 'true' : 'false');
    if (hidden != null)
      this.attribute('hidden', hidden == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Fonts_Builder on _i1.XmlBuilder {
  void s_ct_fonts({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Fills_Builder on _i1.XmlBuilder {
  void s_ct_fills({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Fill_Builder on _i1.XmlBuilder {
  void s_ct_fill({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_PatternFill_Builder on _i1.XmlBuilder {
  void s_ct_patternfill({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_PatternType? patternType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, patternType);
        },
      );
    } else {
      _buildBody(children, patternType);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_PatternType? patternType,
  ) {
    if (patternType != null) this.attribute('patternType', patternType!.value);
    children?.call(this);
  }
}

extension S_CT_Color_Builder on _i1.XmlBuilder {
  void s_ct_color({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? auto,
    int? indexed,
    String? rgb,
    int? theme,
    double? tint,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, auto, indexed, rgb, theme, tint);
        },
      );
    } else {
      _buildBody(children, auto, indexed, rgb, theme, tint);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? auto,
    int? indexed,
    String? rgb,
    int? theme,
    double? tint,
  ) {
    if (auto != null) this.attribute('auto', auto == true ? 'true' : 'false');
    if (indexed != null) this.attribute('indexed', indexed.toString());
    if (rgb != null) this.attribute('rgb', rgb);
    if (theme != null) this.attribute('theme', theme.toString());
    if (tint != null) this.attribute('tint', tint.toString());
    children?.call(this);
  }
}

extension S_CT_GradientFill_Builder on _i1.XmlBuilder {
  void s_ct_gradientfill({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_GradientType? type,
    double? degree,
    double? left,
    double? right,
    double? top,
    double? bottom,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, degree, left, right, top, bottom);
        },
      );
    } else {
      _buildBody(children, type, degree, left, right, top, bottom);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_GradientType? type,
    double? degree,
    double? left,
    double? right,
    double? top,
    double? bottom,
  ) {
    if (type != null) this.attribute('type', type!.value);
    if (degree != null) this.attribute('degree', degree.toString());
    if (left != null) this.attribute('left', left.toString());
    if (right != null) this.attribute('right', right.toString());
    if (top != null) this.attribute('top', top.toString());
    if (bottom != null) this.attribute('bottom', bottom.toString());
    children?.call(this);
  }
}

extension S_CT_GradientStop_Builder on _i1.XmlBuilder {
  void s_ct_gradientstop({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    double? position,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, position);
        },
      );
    } else {
      _buildBody(children, position);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, double? position) {
    if (position != null) this.attribute('position', position.toString());
    children?.call(this);
  }
}

extension S_CT_NumFmts_Builder on _i1.XmlBuilder {
  void s_ct_numfmts({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_NumFmt_Builder on _i1.XmlBuilder {
  void s_ct_numfmt({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? numFmtId,
    String? formatCode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, numFmtId, formatCode);
        },
      );
    } else {
      _buildBody(children, numFmtId, formatCode);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? numFmtId,
    String? formatCode,
  ) {
    if (numFmtId != null) this.attribute('numFmtId', numFmtId);
    if (formatCode != null) this.attribute('formatCode', formatCode);
    children?.call(this);
  }
}

extension S_CT_CellStyleXfs_Builder on _i1.XmlBuilder {
  void s_ct_cellstylexfs({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_CellXfs_Builder on _i1.XmlBuilder {
  void s_ct_cellxfs({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Xf_Builder on _i1.XmlBuilder {
  void s_ct_xf({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? numFmtId,
    String? fontId,
    String? fillId,
    String? borderId,
    String? xfId,
    bool? quotePrefix,
    bool? pivotButton,
    bool? applyNumberFormat,
    bool? applyFont,
    bool? applyFill,
    bool? applyBorder,
    bool? applyAlignment,
    bool? applyProtection,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            numFmtId,
            fontId,
            fillId,
            borderId,
            xfId,
            quotePrefix,
            pivotButton,
            applyNumberFormat,
            applyFont,
            applyFill,
            applyBorder,
            applyAlignment,
            applyProtection,
          );
        },
      );
    } else {
      _buildBody(
        children,
        numFmtId,
        fontId,
        fillId,
        borderId,
        xfId,
        quotePrefix,
        pivotButton,
        applyNumberFormat,
        applyFont,
        applyFill,
        applyBorder,
        applyAlignment,
        applyProtection,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? numFmtId,
    String? fontId,
    String? fillId,
    String? borderId,
    String? xfId,
    bool? quotePrefix,
    bool? pivotButton,
    bool? applyNumberFormat,
    bool? applyFont,
    bool? applyFill,
    bool? applyBorder,
    bool? applyAlignment,
    bool? applyProtection,
  ) {
    if (numFmtId != null) this.attribute('numFmtId', numFmtId);
    if (fontId != null) this.attribute('fontId', fontId);
    if (fillId != null) this.attribute('fillId', fillId);
    if (borderId != null) this.attribute('borderId', borderId);
    if (xfId != null) this.attribute('xfId', xfId);
    if (quotePrefix != null)
      this.attribute('quotePrefix', quotePrefix == true ? 'true' : 'false');
    if (pivotButton != null)
      this.attribute('pivotButton', pivotButton == true ? 'true' : 'false');
    if (applyNumberFormat != null)
      this.attribute(
        'applyNumberFormat',
        applyNumberFormat == true ? 'true' : 'false',
      );
    if (applyFont != null)
      this.attribute('applyFont', applyFont == true ? 'true' : 'false');
    if (applyFill != null)
      this.attribute('applyFill', applyFill == true ? 'true' : 'false');
    if (applyBorder != null)
      this.attribute('applyBorder', applyBorder == true ? 'true' : 'false');
    if (applyAlignment != null)
      this.attribute(
        'applyAlignment',
        applyAlignment == true ? 'true' : 'false',
      );
    if (applyProtection != null)
      this.attribute(
        'applyProtection',
        applyProtection == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_CellStyles_Builder on _i1.XmlBuilder {
  void s_ct_cellstyles({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_CellStyle_Builder on _i1.XmlBuilder {
  void s_ct_cellstyle({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    String? xfId,
    int? builtinId,
    int? iLevel,
    bool? hidden,
    bool? customBuiltin,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            xfId,
            builtinId,
            iLevel,
            hidden,
            customBuiltin,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        xfId,
        builtinId,
        iLevel,
        hidden,
        customBuiltin,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? xfId,
    int? builtinId,
    int? iLevel,
    bool? hidden,
    bool? customBuiltin,
  ) {
    if (name != null) this.attribute('name', name);
    if (xfId != null) this.attribute('xfId', xfId);
    if (builtinId != null) this.attribute('builtinId', builtinId.toString());
    if (iLevel != null) this.attribute('iLevel', iLevel.toString());
    if (hidden != null)
      this.attribute('hidden', hidden == true ? 'true' : 'false');
    if (customBuiltin != null)
      this.attribute('customBuiltin', customBuiltin == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Dxfs_Builder on _i1.XmlBuilder {
  void s_ct_dxfs({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_Dxf_Builder on _i1.XmlBuilder {
  void s_ct_dxf({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Colors_Builder on _i1.XmlBuilder {
  void s_ct_colors({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_IndexedColors_Builder on _i1.XmlBuilder {
  void s_ct_indexedcolors({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_MRUColors_Builder on _i1.XmlBuilder {
  void s_ct_mrucolors({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_RgbColor_Builder on _i1.XmlBuilder {
  void s_ct_rgbcolor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? rgb,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rgb);
        },
      );
    } else {
      _buildBody(children, rgb);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? rgb) {
    if (rgb != null) this.attribute('rgb', rgb);
    children?.call(this);
  }
}

extension S_CT_TableStyles_Builder on _i1.XmlBuilder {
  void s_ct_tablestyles({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    String? defaultTableStyle,
    String? defaultPivotStyle,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count, defaultTableStyle, defaultPivotStyle);
        },
      );
    } else {
      _buildBody(children, count, defaultTableStyle, defaultPivotStyle);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? count,
    String? defaultTableStyle,
    String? defaultPivotStyle,
  ) {
    if (count != null) this.attribute('count', count.toString());
    if (defaultTableStyle != null)
      this.attribute('defaultTableStyle', defaultTableStyle);
    if (defaultPivotStyle != null)
      this.attribute('defaultPivotStyle', defaultPivotStyle);
    children?.call(this);
  }
}

extension S_CT_TableStyle_Builder on _i1.XmlBuilder {
  void s_ct_tablestyle({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    bool? pivot,
    bool? table,
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, pivot, table, count);
        },
      );
    } else {
      _buildBody(children, name, pivot, table, count);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    bool? pivot,
    bool? table,
    int? count,
  ) {
    if (name != null) this.attribute('name', name);
    if (pivot != null)
      this.attribute('pivot', pivot == true ? 'true' : 'false');
    if (table != null)
      this.attribute('table', table == true ? 'true' : 'false');
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_TableStyleElement_Builder on _i1.XmlBuilder {
  void s_ct_tablestyleelement({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_TableStyleType? type,
    int? size,
    String? dxfId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, size, dxfId);
        },
      );
    } else {
      _buildBody(children, type, size, dxfId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_TableStyleType? type,
    int? size,
    String? dxfId,
  ) {
    if (type != null) this.attribute('type', type!.value);
    if (size != null) this.attribute('size', size.toString());
    if (dxfId != null) this.attribute('dxfId', dxfId);
    children?.call(this);
  }
}

extension S_CT_BooleanProperty_Builder on _i1.XmlBuilder {
  void s_ct_booleanproperty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_FontSize_Builder on _i1.XmlBuilder {
  void s_ct_fontsize({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val.toString());
    children?.call(this);
  }
}

extension S_CT_IntProperty_Builder on _i1.XmlBuilder {
  void s_ct_intproperty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val.toString());
    children?.call(this);
  }
}

extension S_CT_FontName_Builder on _i1.XmlBuilder {
  void s_ct_fontname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val);
    children?.call(this);
  }
}

extension S_CT_VerticalAlignFontProperty_Builder on _i1.XmlBuilder {
  void s_ct_verticalalignfontproperty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val!.value);
    children?.call(this);
  }
}

extension S_CT_FontScheme_Builder on _i1.XmlBuilder {
  void s_ct_fontscheme({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_FontScheme? val,
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

  void _buildBody(void Function(XmlBuilder)? children, S_ST_FontScheme? val) {
    if (val != null) this.attribute('val', val!.value);
    children?.call(this);
  }
}

extension S_CT_UnderlineProperty_Builder on _i1.XmlBuilder {
  void s_ct_underlineproperty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_UnderlineValues? val,
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
    S_ST_UnderlineValues? val,
  ) {
    if (val != null) this.attribute('val', val!.value);
    children?.call(this);
  }
}

extension S_CT_Font_Builder on _i1.XmlBuilder {
  void s_ct_font({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_FontFamily_Builder on _i1.XmlBuilder {
  void s_ct_fontfamily({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val);
    children?.call(this);
  }
}

extension S_CT_ExternalLink_Builder on _i1.XmlBuilder {
  void s_ct_externallink({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ExternalBook_Builder on _i1.XmlBuilder {
  void s_ct_externalbook({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r_id);
        },
      );
    } else {
      _buildBody(children, r_id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r_id) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_ExternalSheetNames_Builder on _i1.XmlBuilder {
  void s_ct_externalsheetnames({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ExternalSheetName_Builder on _i1.XmlBuilder {
  void s_ct_externalsheetname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (val != null) this.attribute('val', val);
    children?.call(this);
  }
}

extension S_CT_ExternalDefinedNames_Builder on _i1.XmlBuilder {
  void s_ct_externaldefinednames({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ExternalDefinedName_Builder on _i1.XmlBuilder {
  void s_ct_externaldefinedname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    String? refersTo,
    int? sheetId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, refersTo, sheetId);
        },
      );
    } else {
      _buildBody(children, name, refersTo, sheetId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? refersTo,
    int? sheetId,
  ) {
    if (name != null) this.attribute('name', name);
    if (refersTo != null) this.attribute('refersTo', refersTo);
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    children?.call(this);
  }
}

extension S_CT_ExternalSheetDataSet_Builder on _i1.XmlBuilder {
  void s_ct_externalsheetdataset({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ExternalSheetData_Builder on _i1.XmlBuilder {
  void s_ct_externalsheetdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? sheetId,
    bool? refreshError,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sheetId, refreshError);
        },
      );
    } else {
      _buildBody(children, sheetId, refreshError);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? sheetId,
    bool? refreshError,
  ) {
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (refreshError != null)
      this.attribute('refreshError', refreshError == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_ExternalRow_Builder on _i1.XmlBuilder {
  void s_ct_externalrow({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? r,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r);
        },
      );
    } else {
      _buildBody(children, r);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? r) {
    if (r != null) this.attribute('r', r.toString());
    children?.call(this);
  }
}

extension S_CT_ExternalCell_Builder on _i1.XmlBuilder {
  void s_ct_externalcell({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r,
    S_ST_CellType? t,
    int? vm,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r, t, vm);
        },
      );
    } else {
      _buildBody(children, r, t, vm);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? r,
    S_ST_CellType? t,
    int? vm,
  ) {
    if (r != null) this.attribute('r', r);
    if (t != null) this.attribute('t', t!.value);
    if (vm != null) this.attribute('vm', vm.toString());
    children?.call(this);
  }
}

extension S_CT_DdeLink_Builder on _i1.XmlBuilder {
  void s_ct_ddelink({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? ddeService,
    String? ddeTopic,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, ddeService, ddeTopic);
        },
      );
    } else {
      _buildBody(children, ddeService, ddeTopic);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? ddeService,
    String? ddeTopic,
  ) {
    if (ddeService != null) this.attribute('ddeService', ddeService);
    if (ddeTopic != null) this.attribute('ddeTopic', ddeTopic);
    children?.call(this);
  }
}

extension S_CT_DdeItems_Builder on _i1.XmlBuilder {
  void s_ct_ddeitems({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_DdeItem_Builder on _i1.XmlBuilder {
  void s_ct_ddeitem({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    bool? ole,
    bool? advise,
    bool? preferPic,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, ole, advise, preferPic);
        },
      );
    } else {
      _buildBody(children, name, ole, advise, preferPic);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    bool? ole,
    bool? advise,
    bool? preferPic,
  ) {
    if (name != null) this.attribute('name', name);
    if (ole != null) this.attribute('ole', ole == true ? 'true' : 'false');
    if (advise != null)
      this.attribute('advise', advise == true ? 'true' : 'false');
    if (preferPic != null)
      this.attribute('preferPic', preferPic == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_DdeValues_Builder on _i1.XmlBuilder {
  void s_ct_ddevalues({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? rows,
    int? cols,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, rows, cols);
        },
      );
    } else {
      _buildBody(children, rows, cols);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? rows, int? cols) {
    if (rows != null) this.attribute('rows', rows.toString());
    if (cols != null) this.attribute('cols', cols.toString());
    children?.call(this);
  }
}

extension S_CT_DdeValue_Builder on _i1.XmlBuilder {
  void s_ct_ddevalue({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_DdeValueType? t,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, t);
        },
      );
    } else {
      _buildBody(children, t);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, S_ST_DdeValueType? t) {
    if (t != null) this.attribute('t', t!.value);
    children?.call(this);
  }
}

extension S_CT_OleLink_Builder on _i1.XmlBuilder {
  void s_ct_olelink({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    String? progId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r_id, progId);
        },
      );
    } else {
      _buildBody(children, r_id, progId);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? r_id,
    String? progId,
  ) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    if (progId != null) this.attribute('progId', progId);
    children?.call(this);
  }
}

extension S_CT_OleItems_Builder on _i1.XmlBuilder {
  void s_ct_oleitems({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_OleItem_Builder on _i1.XmlBuilder {
  void s_ct_oleitem({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    bool? icon,
    bool? advise,
    bool? preferPic,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, icon, advise, preferPic);
        },
      );
    } else {
      _buildBody(children, name, icon, advise, preferPic);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    bool? icon,
    bool? advise,
    bool? preferPic,
  ) {
    if (name != null) this.attribute('name', name);
    if (icon != null) this.attribute('icon', icon == true ? 'true' : 'false');
    if (advise != null)
      this.attribute('advise', advise == true ? 'true' : 'false');
    if (preferPic != null)
      this.attribute('preferPic', preferPic == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_Table_Builder on _i1.XmlBuilder {
  void s_ct_table({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    String? name,
    String? displayName,
    String? comment,
    String? ref,
    S_ST_TableType? tableType,
    int? headerRowCount,
    bool? insertRow,
    bool? insertRowShift,
    int? totalsRowCount,
    bool? totalsRowShown,
    bool? published,
    String? headerRowDxfId,
    String? dataDxfId,
    String? totalsRowDxfId,
    String? headerRowBorderDxfId,
    String? tableBorderDxfId,
    String? totalsRowBorderDxfId,
    String? headerRowCellStyle,
    String? dataCellStyle,
    String? totalsRowCellStyle,
    int? connectionId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            id,
            name,
            displayName,
            comment,
            ref,
            tableType,
            headerRowCount,
            insertRow,
            insertRowShift,
            totalsRowCount,
            totalsRowShown,
            published,
            headerRowDxfId,
            dataDxfId,
            totalsRowDxfId,
            headerRowBorderDxfId,
            tableBorderDxfId,
            totalsRowBorderDxfId,
            headerRowCellStyle,
            dataCellStyle,
            totalsRowCellStyle,
            connectionId,
          );
        },
      );
    } else {
      _buildBody(
        children,
        id,
        name,
        displayName,
        comment,
        ref,
        tableType,
        headerRowCount,
        insertRow,
        insertRowShift,
        totalsRowCount,
        totalsRowShown,
        published,
        headerRowDxfId,
        dataDxfId,
        totalsRowDxfId,
        headerRowBorderDxfId,
        tableBorderDxfId,
        totalsRowBorderDxfId,
        headerRowCellStyle,
        dataCellStyle,
        totalsRowCellStyle,
        connectionId,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? name,
    String? displayName,
    String? comment,
    String? ref,
    S_ST_TableType? tableType,
    int? headerRowCount,
    bool? insertRow,
    bool? insertRowShift,
    int? totalsRowCount,
    bool? totalsRowShown,
    bool? published,
    String? headerRowDxfId,
    String? dataDxfId,
    String? totalsRowDxfId,
    String? headerRowBorderDxfId,
    String? tableBorderDxfId,
    String? totalsRowBorderDxfId,
    String? headerRowCellStyle,
    String? dataCellStyle,
    String? totalsRowCellStyle,
    int? connectionId,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (name != null) this.attribute('name', name);
    if (displayName != null) this.attribute('displayName', displayName);
    if (comment != null) this.attribute('comment', comment);
    if (ref != null) this.attribute('ref', ref);
    if (tableType != null) this.attribute('tableType', tableType!.value);
    if (headerRowCount != null)
      this.attribute('headerRowCount', headerRowCount.toString());
    if (insertRow != null)
      this.attribute('insertRow', insertRow == true ? 'true' : 'false');
    if (insertRowShift != null)
      this.attribute(
        'insertRowShift',
        insertRowShift == true ? 'true' : 'false',
      );
    if (totalsRowCount != null)
      this.attribute('totalsRowCount', totalsRowCount.toString());
    if (totalsRowShown != null)
      this.attribute(
        'totalsRowShown',
        totalsRowShown == true ? 'true' : 'false',
      );
    if (published != null)
      this.attribute('published', published == true ? 'true' : 'false');
    if (headerRowDxfId != null)
      this.attribute('headerRowDxfId', headerRowDxfId);
    if (dataDxfId != null) this.attribute('dataDxfId', dataDxfId);
    if (totalsRowDxfId != null)
      this.attribute('totalsRowDxfId', totalsRowDxfId);
    if (headerRowBorderDxfId != null)
      this.attribute('headerRowBorderDxfId', headerRowBorderDxfId);
    if (tableBorderDxfId != null)
      this.attribute('tableBorderDxfId', tableBorderDxfId);
    if (totalsRowBorderDxfId != null)
      this.attribute('totalsRowBorderDxfId', totalsRowBorderDxfId);
    if (headerRowCellStyle != null)
      this.attribute('headerRowCellStyle', headerRowCellStyle);
    if (dataCellStyle != null) this.attribute('dataCellStyle', dataCellStyle);
    if (totalsRowCellStyle != null)
      this.attribute('totalsRowCellStyle', totalsRowCellStyle);
    if (connectionId != null)
      this.attribute('connectionId', connectionId.toString());
    children?.call(this);
  }
}

extension S_CT_TableStyleInfo_Builder on _i1.XmlBuilder {
  void s_ct_tablestyleinfo({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    bool? showFirstColumn,
    bool? showLastColumn,
    bool? showRowStripes,
    bool? showColumnStripes,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            showFirstColumn,
            showLastColumn,
            showRowStripes,
            showColumnStripes,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        showFirstColumn,
        showLastColumn,
        showRowStripes,
        showColumnStripes,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    bool? showFirstColumn,
    bool? showLastColumn,
    bool? showRowStripes,
    bool? showColumnStripes,
  ) {
    if (name != null) this.attribute('name', name);
    if (showFirstColumn != null)
      this.attribute(
        'showFirstColumn',
        showFirstColumn == true ? 'true' : 'false',
      );
    if (showLastColumn != null)
      this.attribute(
        'showLastColumn',
        showLastColumn == true ? 'true' : 'false',
      );
    if (showRowStripes != null)
      this.attribute(
        'showRowStripes',
        showRowStripes == true ? 'true' : 'false',
      );
    if (showColumnStripes != null)
      this.attribute(
        'showColumnStripes',
        showColumnStripes == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_TableColumns_Builder on _i1.XmlBuilder {
  void s_ct_tablecolumns({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_TableColumn_Builder on _i1.XmlBuilder {
  void s_ct_tablecolumn({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    String? uniqueName,
    String? name,
    S_ST_TotalsRowFunction? totalsRowFunction,
    String? totalsRowLabel,
    int? queryTableFieldId,
    String? headerRowDxfId,
    String? dataDxfId,
    String? totalsRowDxfId,
    String? headerRowCellStyle,
    String? dataCellStyle,
    String? totalsRowCellStyle,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            id,
            uniqueName,
            name,
            totalsRowFunction,
            totalsRowLabel,
            queryTableFieldId,
            headerRowDxfId,
            dataDxfId,
            totalsRowDxfId,
            headerRowCellStyle,
            dataCellStyle,
            totalsRowCellStyle,
          );
        },
      );
    } else {
      _buildBody(
        children,
        id,
        uniqueName,
        name,
        totalsRowFunction,
        totalsRowLabel,
        queryTableFieldId,
        headerRowDxfId,
        dataDxfId,
        totalsRowDxfId,
        headerRowCellStyle,
        dataCellStyle,
        totalsRowCellStyle,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? uniqueName,
    String? name,
    S_ST_TotalsRowFunction? totalsRowFunction,
    String? totalsRowLabel,
    int? queryTableFieldId,
    String? headerRowDxfId,
    String? dataDxfId,
    String? totalsRowDxfId,
    String? headerRowCellStyle,
    String? dataCellStyle,
    String? totalsRowCellStyle,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (uniqueName != null) this.attribute('uniqueName', uniqueName);
    if (name != null) this.attribute('name', name);
    if (totalsRowFunction != null)
      this.attribute('totalsRowFunction', totalsRowFunction!.value);
    if (totalsRowLabel != null)
      this.attribute('totalsRowLabel', totalsRowLabel);
    if (queryTableFieldId != null)
      this.attribute('queryTableFieldId', queryTableFieldId.toString());
    if (headerRowDxfId != null)
      this.attribute('headerRowDxfId', headerRowDxfId);
    if (dataDxfId != null) this.attribute('dataDxfId', dataDxfId);
    if (totalsRowDxfId != null)
      this.attribute('totalsRowDxfId', totalsRowDxfId);
    if (headerRowCellStyle != null)
      this.attribute('headerRowCellStyle', headerRowCellStyle);
    if (dataCellStyle != null) this.attribute('dataCellStyle', dataCellStyle);
    if (totalsRowCellStyle != null)
      this.attribute('totalsRowCellStyle', totalsRowCellStyle);
    children?.call(this);
  }
}

extension S_CT_TableFormula_Builder on _i1.XmlBuilder {
  void s_ct_tableformula({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? array,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, array);
        },
      );
    } else {
      _buildBody(children, array);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? array) {
    if (array != null)
      this.attribute('array', array == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_XmlColumnPr_Builder on _i1.XmlBuilder {
  void s_ct_xmlcolumnpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? mapId,
    String? xpath,
    bool? denormalized,
    String? xmlDataType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, mapId, xpath, denormalized, xmlDataType);
        },
      );
    } else {
      _buildBody(children, mapId, xpath, denormalized, xmlDataType);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? mapId,
    String? xpath,
    bool? denormalized,
    String? xmlDataType,
  ) {
    if (mapId != null) this.attribute('mapId', mapId.toString());
    if (xpath != null) this.attribute('xpath', xpath);
    if (denormalized != null)
      this.attribute('denormalized', denormalized == true ? 'true' : 'false');
    if (xmlDataType != null) this.attribute('xmlDataType', xmlDataType);
    children?.call(this);
  }
}

extension S_CT_VolTypes_Builder on _i1.XmlBuilder {
  void s_ct_voltypes({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_VolType_Builder on _i1.XmlBuilder {
  void s_ct_voltype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_VolDepType? type,
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

  void _buildBody(void Function(XmlBuilder)? children, S_ST_VolDepType? type) {
    if (type != null) this.attribute('type', type!.value);
    children?.call(this);
  }
}

extension S_CT_VolMain_Builder on _i1.XmlBuilder {
  void s_ct_volmain({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? first,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, first);
        },
      );
    } else {
      _buildBody(children, first);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? first) {
    if (first != null) this.attribute('first', first);
    children?.call(this);
  }
}

extension S_CT_VolTopic_Builder on _i1.XmlBuilder {
  void s_ct_voltopic({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_VolValueType? t,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, t);
        },
      );
    } else {
      _buildBody(children, t);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, S_ST_VolValueType? t) {
    if (t != null) this.attribute('t', t!.value);
    children?.call(this);
  }
}

extension S_CT_VolTopicRef_Builder on _i1.XmlBuilder {
  void s_ct_voltopicref({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r,
    int? s,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r, s);
        },
      );
    } else {
      _buildBody(children, r, s);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r, int? s) {
    if (r != null) this.attribute('r', r);
    if (s != null) this.attribute('s', s.toString());
    children?.call(this);
  }
}

extension S_CT_Workbook_Builder on _i1.XmlBuilder {
  void s_ct_workbook({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (conformance != null) this.attribute('conformance', conformance!.value);
    children?.call(this);
  }
}

extension S_CT_FileVersion_Builder on _i1.XmlBuilder {
  void s_ct_fileversion({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? appName,
    String? lastEdited,
    String? lowestEdited,
    String? rupBuild,
    String? codeName,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            appName,
            lastEdited,
            lowestEdited,
            rupBuild,
            codeName,
          );
        },
      );
    } else {
      _buildBody(
        children,
        appName,
        lastEdited,
        lowestEdited,
        rupBuild,
        codeName,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? appName,
    String? lastEdited,
    String? lowestEdited,
    String? rupBuild,
    String? codeName,
  ) {
    if (appName != null) this.attribute('appName', appName);
    if (lastEdited != null) this.attribute('lastEdited', lastEdited);
    if (lowestEdited != null) this.attribute('lowestEdited', lowestEdited);
    if (rupBuild != null) this.attribute('rupBuild', rupBuild);
    if (codeName != null) this.attribute('codeName', codeName);
    children?.call(this);
  }
}

extension S_CT_BookViews_Builder on _i1.XmlBuilder {
  void s_ct_bookviews({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_BookView_Builder on _i1.XmlBuilder {
  void s_ct_bookview({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    S_ST_Visibility? visibility,
    bool? minimized,
    bool? showHorizontalScroll,
    bool? showVerticalScroll,
    bool? showSheetTabs,
    int? xWindow,
    int? yWindow,
    int? windowWidth,
    int? windowHeight,
    int? tabRatio,
    int? firstSheet,
    int? activeTab,
    bool? autoFilterDateGrouping,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            visibility,
            minimized,
            showHorizontalScroll,
            showVerticalScroll,
            showSheetTabs,
            xWindow,
            yWindow,
            windowWidth,
            windowHeight,
            tabRatio,
            firstSheet,
            activeTab,
            autoFilterDateGrouping,
          );
        },
      );
    } else {
      _buildBody(
        children,
        visibility,
        minimized,
        showHorizontalScroll,
        showVerticalScroll,
        showSheetTabs,
        xWindow,
        yWindow,
        windowWidth,
        windowHeight,
        tabRatio,
        firstSheet,
        activeTab,
        autoFilterDateGrouping,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    S_ST_Visibility? visibility,
    bool? minimized,
    bool? showHorizontalScroll,
    bool? showVerticalScroll,
    bool? showSheetTabs,
    int? xWindow,
    int? yWindow,
    int? windowWidth,
    int? windowHeight,
    int? tabRatio,
    int? firstSheet,
    int? activeTab,
    bool? autoFilterDateGrouping,
  ) {
    if (visibility != null) this.attribute('visibility', visibility!.value);
    if (minimized != null)
      this.attribute('minimized', minimized == true ? 'true' : 'false');
    if (showHorizontalScroll != null)
      this.attribute(
        'showHorizontalScroll',
        showHorizontalScroll == true ? 'true' : 'false',
      );
    if (showVerticalScroll != null)
      this.attribute(
        'showVerticalScroll',
        showVerticalScroll == true ? 'true' : 'false',
      );
    if (showSheetTabs != null)
      this.attribute('showSheetTabs', showSheetTabs == true ? 'true' : 'false');
    if (xWindow != null) this.attribute('xWindow', xWindow.toString());
    if (yWindow != null) this.attribute('yWindow', yWindow.toString());
    if (windowWidth != null)
      this.attribute('windowWidth', windowWidth.toString());
    if (windowHeight != null)
      this.attribute('windowHeight', windowHeight.toString());
    if (tabRatio != null) this.attribute('tabRatio', tabRatio.toString());
    if (firstSheet != null) this.attribute('firstSheet', firstSheet.toString());
    if (activeTab != null) this.attribute('activeTab', activeTab.toString());
    if (autoFilterDateGrouping != null)
      this.attribute(
        'autoFilterDateGrouping',
        autoFilterDateGrouping == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_CustomWorkbookViews_Builder on _i1.XmlBuilder {
  void s_ct_customworkbookviews({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_CustomWorkbookView_Builder on _i1.XmlBuilder {
  void s_ct_customworkbookview({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    String? guid,
    bool? autoUpdate,
    int? mergeInterval,
    bool? changesSavedWin,
    bool? onlySync,
    bool? personalView,
    bool? includePrintSettings,
    bool? includeHiddenRowCol,
    bool? maximized,
    bool? minimized,
    bool? showHorizontalScroll,
    bool? showVerticalScroll,
    bool? showSheetTabs,
    int? xWindow,
    int? yWindow,
    int? windowWidth,
    int? windowHeight,
    int? tabRatio,
    int? activeSheetId,
    bool? showFormulaBar,
    bool? showStatusbar,
    S_ST_Comments? showComments,
    S_ST_Objects? showObjects,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            guid,
            autoUpdate,
            mergeInterval,
            changesSavedWin,
            onlySync,
            personalView,
            includePrintSettings,
            includeHiddenRowCol,
            maximized,
            minimized,
            showHorizontalScroll,
            showVerticalScroll,
            showSheetTabs,
            xWindow,
            yWindow,
            windowWidth,
            windowHeight,
            tabRatio,
            activeSheetId,
            showFormulaBar,
            showStatusbar,
            showComments,
            showObjects,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        guid,
        autoUpdate,
        mergeInterval,
        changesSavedWin,
        onlySync,
        personalView,
        includePrintSettings,
        includeHiddenRowCol,
        maximized,
        minimized,
        showHorizontalScroll,
        showVerticalScroll,
        showSheetTabs,
        xWindow,
        yWindow,
        windowWidth,
        windowHeight,
        tabRatio,
        activeSheetId,
        showFormulaBar,
        showStatusbar,
        showComments,
        showObjects,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? guid,
    bool? autoUpdate,
    int? mergeInterval,
    bool? changesSavedWin,
    bool? onlySync,
    bool? personalView,
    bool? includePrintSettings,
    bool? includeHiddenRowCol,
    bool? maximized,
    bool? minimized,
    bool? showHorizontalScroll,
    bool? showVerticalScroll,
    bool? showSheetTabs,
    int? xWindow,
    int? yWindow,
    int? windowWidth,
    int? windowHeight,
    int? tabRatio,
    int? activeSheetId,
    bool? showFormulaBar,
    bool? showStatusbar,
    S_ST_Comments? showComments,
    S_ST_Objects? showObjects,
  ) {
    if (name != null) this.attribute('name', name);
    if (guid != null) this.attribute('guid', guid);
    if (autoUpdate != null)
      this.attribute('autoUpdate', autoUpdate == true ? 'true' : 'false');
    if (mergeInterval != null)
      this.attribute('mergeInterval', mergeInterval.toString());
    if (changesSavedWin != null)
      this.attribute(
        'changesSavedWin',
        changesSavedWin == true ? 'true' : 'false',
      );
    if (onlySync != null)
      this.attribute('onlySync', onlySync == true ? 'true' : 'false');
    if (personalView != null)
      this.attribute('personalView', personalView == true ? 'true' : 'false');
    if (includePrintSettings != null)
      this.attribute(
        'includePrintSettings',
        includePrintSettings == true ? 'true' : 'false',
      );
    if (includeHiddenRowCol != null)
      this.attribute(
        'includeHiddenRowCol',
        includeHiddenRowCol == true ? 'true' : 'false',
      );
    if (maximized != null)
      this.attribute('maximized', maximized == true ? 'true' : 'false');
    if (minimized != null)
      this.attribute('minimized', minimized == true ? 'true' : 'false');
    if (showHorizontalScroll != null)
      this.attribute(
        'showHorizontalScroll',
        showHorizontalScroll == true ? 'true' : 'false',
      );
    if (showVerticalScroll != null)
      this.attribute(
        'showVerticalScroll',
        showVerticalScroll == true ? 'true' : 'false',
      );
    if (showSheetTabs != null)
      this.attribute('showSheetTabs', showSheetTabs == true ? 'true' : 'false');
    if (xWindow != null) this.attribute('xWindow', xWindow.toString());
    if (yWindow != null) this.attribute('yWindow', yWindow.toString());
    if (windowWidth != null)
      this.attribute('windowWidth', windowWidth.toString());
    if (windowHeight != null)
      this.attribute('windowHeight', windowHeight.toString());
    if (tabRatio != null) this.attribute('tabRatio', tabRatio.toString());
    if (activeSheetId != null)
      this.attribute('activeSheetId', activeSheetId.toString());
    if (showFormulaBar != null)
      this.attribute(
        'showFormulaBar',
        showFormulaBar == true ? 'true' : 'false',
      );
    if (showStatusbar != null)
      this.attribute('showStatusbar', showStatusbar == true ? 'true' : 'false');
    if (showComments != null)
      this.attribute('showComments', showComments!.value);
    if (showObjects != null) this.attribute('showObjects', showObjects!.value);
    children?.call(this);
  }
}

extension S_CT_Sheets_Builder on _i1.XmlBuilder {
  void s_ct_sheets({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_Sheet_Builder on _i1.XmlBuilder {
  void s_ct_sheet({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    int? sheetId,
    S_ST_SheetState? state,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, sheetId, state, r_id);
        },
      );
    } else {
      _buildBody(children, name, sheetId, state, r_id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    int? sheetId,
    S_ST_SheetState? state,
    String? r_id,
  ) {
    if (name != null) this.attribute('name', name);
    if (sheetId != null) this.attribute('sheetId', sheetId.toString());
    if (state != null) this.attribute('state', state!.value);
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_WorkbookPr_Builder on _i1.XmlBuilder {
  void s_ct_workbookpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? date1904,
    S_ST_Objects? showObjects,
    bool? showBorderUnselectedTables,
    bool? filterPrivacy,
    bool? promptedSolutions,
    bool? showInkAnnotation,
    bool? backupFile,
    bool? saveExternalLinkValues,
    S_ST_UpdateLinks? updateLinks,
    String? codeName,
    bool? hidePivotFieldList,
    bool? showPivotChartFilter,
    bool? allowRefreshQuery,
    bool? publishItems,
    bool? checkCompatibility,
    bool? autoCompressPictures,
    bool? refreshAllConnections,
    int? defaultThemeVersion,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            date1904,
            showObjects,
            showBorderUnselectedTables,
            filterPrivacy,
            promptedSolutions,
            showInkAnnotation,
            backupFile,
            saveExternalLinkValues,
            updateLinks,
            codeName,
            hidePivotFieldList,
            showPivotChartFilter,
            allowRefreshQuery,
            publishItems,
            checkCompatibility,
            autoCompressPictures,
            refreshAllConnections,
            defaultThemeVersion,
          );
        },
      );
    } else {
      _buildBody(
        children,
        date1904,
        showObjects,
        showBorderUnselectedTables,
        filterPrivacy,
        promptedSolutions,
        showInkAnnotation,
        backupFile,
        saveExternalLinkValues,
        updateLinks,
        codeName,
        hidePivotFieldList,
        showPivotChartFilter,
        allowRefreshQuery,
        publishItems,
        checkCompatibility,
        autoCompressPictures,
        refreshAllConnections,
        defaultThemeVersion,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? date1904,
    S_ST_Objects? showObjects,
    bool? showBorderUnselectedTables,
    bool? filterPrivacy,
    bool? promptedSolutions,
    bool? showInkAnnotation,
    bool? backupFile,
    bool? saveExternalLinkValues,
    S_ST_UpdateLinks? updateLinks,
    String? codeName,
    bool? hidePivotFieldList,
    bool? showPivotChartFilter,
    bool? allowRefreshQuery,
    bool? publishItems,
    bool? checkCompatibility,
    bool? autoCompressPictures,
    bool? refreshAllConnections,
    int? defaultThemeVersion,
  ) {
    if (date1904 != null)
      this.attribute('date1904', date1904 == true ? 'true' : 'false');
    if (showObjects != null) this.attribute('showObjects', showObjects!.value);
    if (showBorderUnselectedTables != null)
      this.attribute(
        'showBorderUnselectedTables',
        showBorderUnselectedTables == true ? 'true' : 'false',
      );
    if (filterPrivacy != null)
      this.attribute('filterPrivacy', filterPrivacy == true ? 'true' : 'false');
    if (promptedSolutions != null)
      this.attribute(
        'promptedSolutions',
        promptedSolutions == true ? 'true' : 'false',
      );
    if (showInkAnnotation != null)
      this.attribute(
        'showInkAnnotation',
        showInkAnnotation == true ? 'true' : 'false',
      );
    if (backupFile != null)
      this.attribute('backupFile', backupFile == true ? 'true' : 'false');
    if (saveExternalLinkValues != null)
      this.attribute(
        'saveExternalLinkValues',
        saveExternalLinkValues == true ? 'true' : 'false',
      );
    if (updateLinks != null) this.attribute('updateLinks', updateLinks!.value);
    if (codeName != null) this.attribute('codeName', codeName);
    if (hidePivotFieldList != null)
      this.attribute(
        'hidePivotFieldList',
        hidePivotFieldList == true ? 'true' : 'false',
      );
    if (showPivotChartFilter != null)
      this.attribute(
        'showPivotChartFilter',
        showPivotChartFilter == true ? 'true' : 'false',
      );
    if (allowRefreshQuery != null)
      this.attribute(
        'allowRefreshQuery',
        allowRefreshQuery == true ? 'true' : 'false',
      );
    if (publishItems != null)
      this.attribute('publishItems', publishItems == true ? 'true' : 'false');
    if (checkCompatibility != null)
      this.attribute(
        'checkCompatibility',
        checkCompatibility == true ? 'true' : 'false',
      );
    if (autoCompressPictures != null)
      this.attribute(
        'autoCompressPictures',
        autoCompressPictures == true ? 'true' : 'false',
      );
    if (refreshAllConnections != null)
      this.attribute(
        'refreshAllConnections',
        refreshAllConnections == true ? 'true' : 'false',
      );
    if (defaultThemeVersion != null)
      this.attribute('defaultThemeVersion', defaultThemeVersion.toString());
    children?.call(this);
  }
}

extension S_CT_SmartTagPr_Builder on _i1.XmlBuilder {
  void s_ct_smarttagpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? embed,
    S_ST_SmartTagShow? show_,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, embed, show_);
        },
      );
    } else {
      _buildBody(children, embed, show_);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? embed,
    S_ST_SmartTagShow? show_,
  ) {
    if (embed != null)
      this.attribute('embed', embed == true ? 'true' : 'false');
    if (show_ != null) this.attribute('show', show_!.value);
    children?.call(this);
  }
}

extension S_CT_SmartTagTypes_Builder on _i1.XmlBuilder {
  void s_ct_smarttagtypes({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_SmartTagType_Builder on _i1.XmlBuilder {
  void s_ct_smarttagtype({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? namespaceUri,
    String? name,
    String? url,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, namespaceUri, name, url);
        },
      );
    } else {
      _buildBody(children, namespaceUri, name, url);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? namespaceUri,
    String? name,
    String? url,
  ) {
    if (namespaceUri != null) this.attribute('namespaceUri', namespaceUri);
    if (name != null) this.attribute('name', name);
    if (url != null) this.attribute('url', url);
    children?.call(this);
  }
}

extension S_CT_FileRecoveryPr_Builder on _i1.XmlBuilder {
  void s_ct_filerecoverypr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? autoRecover,
    bool? crashSave,
    bool? dataExtractLoad,
    bool? repairLoad,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            autoRecover,
            crashSave,
            dataExtractLoad,
            repairLoad,
          );
        },
      );
    } else {
      _buildBody(children, autoRecover, crashSave, dataExtractLoad, repairLoad);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? autoRecover,
    bool? crashSave,
    bool? dataExtractLoad,
    bool? repairLoad,
  ) {
    if (autoRecover != null)
      this.attribute('autoRecover', autoRecover == true ? 'true' : 'false');
    if (crashSave != null)
      this.attribute('crashSave', crashSave == true ? 'true' : 'false');
    if (dataExtractLoad != null)
      this.attribute(
        'dataExtractLoad',
        dataExtractLoad == true ? 'true' : 'false',
      );
    if (repairLoad != null)
      this.attribute('repairLoad', repairLoad == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_CalcPr_Builder on _i1.XmlBuilder {
  void s_ct_calcpr({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? calcId,
    S_ST_CalcMode? calcMode,
    bool? fullCalcOnLoad,
    S_ST_RefMode? refMode,
    bool? iterate,
    int? iterateCount,
    double? iterateDelta,
    bool? fullPrecision,
    bool? calcCompleted,
    bool? calcOnSave,
    bool? concurrentCalc,
    int? concurrentManualCount,
    bool? forceFullCalc,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            calcId,
            calcMode,
            fullCalcOnLoad,
            refMode,
            iterate,
            iterateCount,
            iterateDelta,
            fullPrecision,
            calcCompleted,
            calcOnSave,
            concurrentCalc,
            concurrentManualCount,
            forceFullCalc,
          );
        },
      );
    } else {
      _buildBody(
        children,
        calcId,
        calcMode,
        fullCalcOnLoad,
        refMode,
        iterate,
        iterateCount,
        iterateDelta,
        fullPrecision,
        calcCompleted,
        calcOnSave,
        concurrentCalc,
        concurrentManualCount,
        forceFullCalc,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? calcId,
    S_ST_CalcMode? calcMode,
    bool? fullCalcOnLoad,
    S_ST_RefMode? refMode,
    bool? iterate,
    int? iterateCount,
    double? iterateDelta,
    bool? fullPrecision,
    bool? calcCompleted,
    bool? calcOnSave,
    bool? concurrentCalc,
    int? concurrentManualCount,
    bool? forceFullCalc,
  ) {
    if (calcId != null) this.attribute('calcId', calcId.toString());
    if (calcMode != null) this.attribute('calcMode', calcMode!.value);
    if (fullCalcOnLoad != null)
      this.attribute(
        'fullCalcOnLoad',
        fullCalcOnLoad == true ? 'true' : 'false',
      );
    if (refMode != null) this.attribute('refMode', refMode!.value);
    if (iterate != null)
      this.attribute('iterate', iterate == true ? 'true' : 'false');
    if (iterateCount != null)
      this.attribute('iterateCount', iterateCount.toString());
    if (iterateDelta != null)
      this.attribute('iterateDelta', iterateDelta.toString());
    if (fullPrecision != null)
      this.attribute('fullPrecision', fullPrecision == true ? 'true' : 'false');
    if (calcCompleted != null)
      this.attribute('calcCompleted', calcCompleted == true ? 'true' : 'false');
    if (calcOnSave != null)
      this.attribute('calcOnSave', calcOnSave == true ? 'true' : 'false');
    if (concurrentCalc != null)
      this.attribute(
        'concurrentCalc',
        concurrentCalc == true ? 'true' : 'false',
      );
    if (concurrentManualCount != null)
      this.attribute('concurrentManualCount', concurrentManualCount.toString());
    if (forceFullCalc != null)
      this.attribute('forceFullCalc', forceFullCalc == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension S_CT_DefinedNames_Builder on _i1.XmlBuilder {
  void s_ct_definednames({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_DefinedName_Builder on _i1.XmlBuilder {
  void s_ct_definedname({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? name,
    String? comment,
    String? customMenu,
    String? description,
    String? help,
    String? statusBar,
    int? localSheetId,
    bool? hidden,
    bool? function_,
    bool? vbProcedure,
    bool? xlm,
    int? functionGroupId,
    String? shortcutKey,
    bool? publishToServer,
    bool? workbookParameter,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            name,
            comment,
            customMenu,
            description,
            help,
            statusBar,
            localSheetId,
            hidden,
            function_,
            vbProcedure,
            xlm,
            functionGroupId,
            shortcutKey,
            publishToServer,
            workbookParameter,
          );
        },
      );
    } else {
      _buildBody(
        children,
        name,
        comment,
        customMenu,
        description,
        help,
        statusBar,
        localSheetId,
        hidden,
        function_,
        vbProcedure,
        xlm,
        functionGroupId,
        shortcutKey,
        publishToServer,
        workbookParameter,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? comment,
    String? customMenu,
    String? description,
    String? help,
    String? statusBar,
    int? localSheetId,
    bool? hidden,
    bool? function_,
    bool? vbProcedure,
    bool? xlm,
    int? functionGroupId,
    String? shortcutKey,
    bool? publishToServer,
    bool? workbookParameter,
  ) {
    if (name != null) this.attribute('name', name);
    if (comment != null) this.attribute('comment', comment);
    if (customMenu != null) this.attribute('customMenu', customMenu);
    if (description != null) this.attribute('description', description);
    if (help != null) this.attribute('help', help);
    if (statusBar != null) this.attribute('statusBar', statusBar);
    if (localSheetId != null)
      this.attribute('localSheetId', localSheetId.toString());
    if (hidden != null)
      this.attribute('hidden', hidden == true ? 'true' : 'false');
    if (function_ != null)
      this.attribute('function', function_ == true ? 'true' : 'false');
    if (vbProcedure != null)
      this.attribute('vbProcedure', vbProcedure == true ? 'true' : 'false');
    if (xlm != null) this.attribute('xlm', xlm == true ? 'true' : 'false');
    if (functionGroupId != null)
      this.attribute('functionGroupId', functionGroupId.toString());
    if (shortcutKey != null) this.attribute('shortcutKey', shortcutKey);
    if (publishToServer != null)
      this.attribute(
        'publishToServer',
        publishToServer == true ? 'true' : 'false',
      );
    if (workbookParameter != null)
      this.attribute(
        'workbookParameter',
        workbookParameter == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension S_CT_ExternalReferences_Builder on _i1.XmlBuilder {
  void s_ct_externalreferences({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_ExternalReference_Builder on _i1.XmlBuilder {
  void s_ct_externalreference({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r_id);
        },
      );
    } else {
      _buildBody(children, r_id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r_id) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_SheetBackgroundPicture_Builder on _i1.XmlBuilder {
  void s_ct_sheetbackgroundpicture({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, r_id);
        },
      );
    } else {
      _buildBody(children, r_id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? r_id) {
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_PivotCaches_Builder on _i1.XmlBuilder {
  void s_ct_pivotcaches({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension S_CT_PivotCache_Builder on _i1.XmlBuilder {
  void s_ct_pivotcache({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? cacheId,
    String? r_id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, cacheId, r_id);
        },
      );
    } else {
      _buildBody(children, cacheId, r_id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? cacheId,
    String? r_id,
  ) {
    if (cacheId != null) this.attribute('cacheId', cacheId.toString());
    if (r_id != null)
      this.attribute(
        'id',
        r_id,
        namespace:
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
      );
    children?.call(this);
  }
}

extension S_CT_FileSharing_Builder on _i1.XmlBuilder {
  void s_ct_filesharing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? readOnlyRecommended,
    String? userName,
    String? reservationPassword,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinCount,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            readOnlyRecommended,
            userName,
            reservationPassword,
            algorithmName,
            hashValue,
            saltValue,
            spinCount,
          );
        },
      );
    } else {
      _buildBody(
        children,
        readOnlyRecommended,
        userName,
        reservationPassword,
        algorithmName,
        hashValue,
        saltValue,
        spinCount,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? readOnlyRecommended,
    String? userName,
    String? reservationPassword,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinCount,
  ) {
    if (readOnlyRecommended != null)
      this.attribute(
        'readOnlyRecommended',
        readOnlyRecommended == true ? 'true' : 'false',
      );
    if (userName != null) this.attribute('userName', userName);
    if (reservationPassword != null)
      this.attribute('reservationPassword', reservationPassword);
    if (algorithmName != null) this.attribute('algorithmName', algorithmName);
    if (hashValue != null) this.attribute('hashValue', hashValue);
    if (saltValue != null) this.attribute('saltValue', saltValue);
    if (spinCount != null) this.attribute('spinCount', spinCount.toString());
    children?.call(this);
  }
}

extension S_CT_OleSize_Builder on _i1.XmlBuilder {
  void s_ct_olesize({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (ref != null) this.attribute('ref', ref);
    children?.call(this);
  }
}

extension S_CT_WorkbookProtection_Builder on _i1.XmlBuilder {
  void s_ct_workbookprotection({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    String? workbookPassword,
    String? workbookPasswordCharacterSet,
    String? revisionsPassword,
    String? revisionsPasswordCharacterSet,
    bool? lockStructure,
    bool? lockWindows,
    bool? lockRevision,
    String? revisionsAlgorithmName,
    String? revisionsHashValue,
    String? revisionsSaltValue,
    int? revisionsSpinCount,
    String? workbookAlgorithmName,
    String? workbookHashValue,
    String? workbookSaltValue,
    int? workbookSpinCount,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            workbookPassword,
            workbookPasswordCharacterSet,
            revisionsPassword,
            revisionsPasswordCharacterSet,
            lockStructure,
            lockWindows,
            lockRevision,
            revisionsAlgorithmName,
            revisionsHashValue,
            revisionsSaltValue,
            revisionsSpinCount,
            workbookAlgorithmName,
            workbookHashValue,
            workbookSaltValue,
            workbookSpinCount,
          );
        },
      );
    } else {
      _buildBody(
        children,
        workbookPassword,
        workbookPasswordCharacterSet,
        revisionsPassword,
        revisionsPasswordCharacterSet,
        lockStructure,
        lockWindows,
        lockRevision,
        revisionsAlgorithmName,
        revisionsHashValue,
        revisionsSaltValue,
        revisionsSpinCount,
        workbookAlgorithmName,
        workbookHashValue,
        workbookSaltValue,
        workbookSpinCount,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? workbookPassword,
    String? workbookPasswordCharacterSet,
    String? revisionsPassword,
    String? revisionsPasswordCharacterSet,
    bool? lockStructure,
    bool? lockWindows,
    bool? lockRevision,
    String? revisionsAlgorithmName,
    String? revisionsHashValue,
    String? revisionsSaltValue,
    int? revisionsSpinCount,
    String? workbookAlgorithmName,
    String? workbookHashValue,
    String? workbookSaltValue,
    int? workbookSpinCount,
  ) {
    if (workbookPassword != null)
      this.attribute('workbookPassword', workbookPassword);
    if (workbookPasswordCharacterSet != null)
      this.attribute(
        'workbookPasswordCharacterSet',
        workbookPasswordCharacterSet,
      );
    if (revisionsPassword != null)
      this.attribute('revisionsPassword', revisionsPassword);
    if (revisionsPasswordCharacterSet != null)
      this.attribute(
        'revisionsPasswordCharacterSet',
        revisionsPasswordCharacterSet,
      );
    if (lockStructure != null)
      this.attribute('lockStructure', lockStructure == true ? 'true' : 'false');
    if (lockWindows != null)
      this.attribute('lockWindows', lockWindows == true ? 'true' : 'false');
    if (lockRevision != null)
      this.attribute('lockRevision', lockRevision == true ? 'true' : 'false');
    if (revisionsAlgorithmName != null)
      this.attribute('revisionsAlgorithmName', revisionsAlgorithmName);
    if (revisionsHashValue != null)
      this.attribute('revisionsHashValue', revisionsHashValue);
    if (revisionsSaltValue != null)
      this.attribute('revisionsSaltValue', revisionsSaltValue);
    if (revisionsSpinCount != null)
      this.attribute('revisionsSpinCount', revisionsSpinCount.toString());
    if (workbookAlgorithmName != null)
      this.attribute('workbookAlgorithmName', workbookAlgorithmName);
    if (workbookHashValue != null)
      this.attribute('workbookHashValue', workbookHashValue);
    if (workbookSaltValue != null)
      this.attribute('workbookSaltValue', workbookSaltValue);
    if (workbookSpinCount != null)
      this.attribute('workbookSpinCount', workbookSpinCount.toString());
    children?.call(this);
  }
}

extension S_CT_WebPublishing_Builder on _i1.XmlBuilder {
  void s_ct_webpublishing({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    bool? css,
    bool? thicket,
    bool? longFileNames,
    bool? vml,
    bool? allowPng,
    S_ST_TargetScreenSize? targetScreenSize,
    int? dpi,
    int? codePage,
    String? characterSet,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            css,
            thicket,
            longFileNames,
            vml,
            allowPng,
            targetScreenSize,
            dpi,
            codePage,
            characterSet,
          );
        },
      );
    } else {
      _buildBody(
        children,
        css,
        thicket,
        longFileNames,
        vml,
        allowPng,
        targetScreenSize,
        dpi,
        codePage,
        characterSet,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? css,
    bool? thicket,
    bool? longFileNames,
    bool? vml,
    bool? allowPng,
    S_ST_TargetScreenSize? targetScreenSize,
    int? dpi,
    int? codePage,
    String? characterSet,
  ) {
    if (css != null) this.attribute('css', css == true ? 'true' : 'false');
    if (thicket != null)
      this.attribute('thicket', thicket == true ? 'true' : 'false');
    if (longFileNames != null)
      this.attribute('longFileNames', longFileNames == true ? 'true' : 'false');
    if (vml != null) this.attribute('vml', vml == true ? 'true' : 'false');
    if (allowPng != null)
      this.attribute('allowPng', allowPng == true ? 'true' : 'false');
    if (targetScreenSize != null)
      this.attribute('targetScreenSize', targetScreenSize!.value);
    if (dpi != null) this.attribute('dpi', dpi.toString());
    if (codePage != null) this.attribute('codePage', codePage.toString());
    if (characterSet != null) this.attribute('characterSet', characterSet);
    children?.call(this);
  }
}

extension S_CT_FunctionGroups_Builder on _i1.XmlBuilder {
  void s_ct_functiongroups({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? builtInGroupCount,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, builtInGroupCount);
        },
      );
    } else {
      _buildBody(children, builtInGroupCount);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? builtInGroupCount) {
    if (builtInGroupCount != null)
      this.attribute('builtInGroupCount', builtInGroupCount.toString());
    children?.call(this);
  }
}

extension S_CT_FunctionGroup_Builder on _i1.XmlBuilder {
  void s_ct_functiongroup({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
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
    if (name != null) this.attribute('name', name);
    children?.call(this);
  }
}

extension S_CT_WebPublishObjects_Builder on _i1.XmlBuilder {
  void s_ct_webpublishobjects({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? count,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, count);
        },
      );
    } else {
      _buildBody(children, count);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? count) {
    if (count != null) this.attribute('count', count.toString());
    children?.call(this);
  }
}

extension S_CT_WebPublishObject_Builder on _i1.XmlBuilder {
  void s_ct_webpublishobject({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    int? id,
    String? divId,
    String? sourceObject,
    String? destinationFile,
    String? title,
    bool? autoRepublish,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            id,
            divId,
            sourceObject,
            destinationFile,
            title,
            autoRepublish,
          );
        },
      );
    } else {
      _buildBody(
        children,
        id,
        divId,
        sourceObject,
        destinationFile,
        title,
        autoRepublish,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? divId,
    String? sourceObject,
    String? destinationFile,
    String? title,
    bool? autoRepublish,
  ) {
    if (id != null) this.attribute('id', id.toString());
    if (divId != null) this.attribute('divId', divId);
    if (sourceObject != null) this.attribute('sourceObject', sourceObject);
    if (destinationFile != null)
      this.attribute('destinationFile', destinationFile);
    if (title != null) this.attribute('title', title);
    if (autoRepublish != null)
      this.attribute('autoRepublish', autoRepublish == true ? 'true' : 'false');
    children?.call(this);
  }
}
