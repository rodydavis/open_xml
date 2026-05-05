// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides, unused_local_variable
import 'package:test/test.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/sml/sml_builder.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';

void main() {
  group('sml generated tests', () {
    test('Test S_CT_AutoFilter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_AutoFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final c_filterColumn = instance.filterColumn;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_AutoFilter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_autofilter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_AutoFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final c_filterColumn = instance.filterColumn;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_FilterColumn with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FilterColumn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_colId = instance.colId;
      } catch (e) {}
      try {
        final v_hiddenButton = instance.hiddenButton;
      } catch (e) {}
      try {
        final v_showButton = instance.showButton;
      } catch (e) {}
      try {
        final c_filters = instance.filters;
      } catch (e) {}
      try {
        final c_top10 = instance.top10;
      } catch (e) {}
      try {
        final c_customFilters = instance.customFilters;
      } catch (e) {}
      try {
        final c_dynamicFilter = instance.dynamicFilter;
      } catch (e) {}
      try {
        final c_colorFilter = instance.colorFilter;
      } catch (e) {}
      try {
        final c_iconFilter = instance.iconFilter;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_FilterColumn with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_filtercolumn(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            colId: 1,
            hiddenButton: true,
            showButton: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FilterColumn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_colId = instance.colId;
      } catch (e) {}
      try {
        final v_hiddenButton = instance.hiddenButton;
      } catch (e) {}
      try {
        final v_showButton = instance.showButton;
      } catch (e) {}
      try {
        final c_filters = instance.filters;
      } catch (e) {}
      try {
        final c_top10 = instance.top10;
      } catch (e) {}
      try {
        final c_customFilters = instance.customFilters;
      } catch (e) {}
      try {
        final c_dynamicFilter = instance.dynamicFilter;
      } catch (e) {}
      try {
        final c_colorFilter = instance.colorFilter;
      } catch (e) {}
      try {
        final c_iconFilter = instance.iconFilter;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Filters with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Filters(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blank = instance.blank;
      } catch (e) {}
      try {
        final v_calendarType = instance.calendarType;
      } catch (e) {}
      try {
        final c_filter = instance.filter;
      } catch (e) {}
      try {
        final c_dateGroupItem = instance.dateGroupItem;
      } catch (e) {}
    });
    test('Test S_CT_Filters with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_filters(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            blank: true,
            calendarType: ST_CalendarType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Filters(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_blank = instance.blank;
      } catch (e) {}
      try {
        final v_calendarType = instance.calendarType;
      } catch (e) {}
      try {
        final c_filter = instance.filter;
      } catch (e) {}
      try {
        final c_dateGroupItem = instance.dateGroupItem;
      } catch (e) {}
    });
    test('Test S_CT_Filter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Filter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_Filter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_filter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Filter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_CustomFilters with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomFilters(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_and = instance.and;
      } catch (e) {}
      try {
        final c_customFilter = instance.customFilter;
      } catch (e) {}
    });
    test('Test S_CT_CustomFilters with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customfilters(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            and: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomFilters(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_and = instance.and;
      } catch (e) {}
      try {
        final c_customFilter = instance.customFilter;
      } catch (e) {}
    });
    test('Test S_CT_CustomFilter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_operator_ = instance.operator_;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_CustomFilter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customfilter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            operator_: S_ST_FilterOperator.values.first,
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_operator_ = instance.operator_;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_Top10 with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Top10(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_top = instance.top;
      } catch (e) {}
      try {
        final v_percent = instance.percent;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_filterVal = instance.filterVal;
      } catch (e) {}
    });
    test('Test S_CT_Top10 with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_top10(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            top: true,
            percent: true,
            val: 1.0,
            filterVal: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Top10(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_top = instance.top;
      } catch (e) {}
      try {
        final v_percent = instance.percent;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_filterVal = instance.filterVal;
      } catch (e) {}
    });
    test('Test S_CT_ColorFilter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ColorFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
      try {
        final v_cellColor = instance.cellColor;
      } catch (e) {}
    });
    test('Test S_CT_ColorFilter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_colorfilter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            dxfId: 'test',
            cellColor: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ColorFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
      try {
        final v_cellColor = instance.cellColor;
      } catch (e) {}
    });
    test('Test S_CT_IconFilter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IconFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final v_iconId = instance.iconId;
      } catch (e) {}
    });
    test('Test S_CT_IconFilter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_iconfilter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            iconSet: S_ST_IconSetType.values.first,
            iconId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IconFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final v_iconId = instance.iconId;
      } catch (e) {}
    });
    test('Test S_CT_DynamicFilter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DynamicFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_valIso = instance.valIso;
      } catch (e) {}
      try {
        final v_maxVal = instance.maxVal;
      } catch (e) {}
      try {
        final v_maxValIso = instance.maxValIso;
      } catch (e) {}
    });
    test('Test S_CT_DynamicFilter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_dynamicfilter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_DynamicFilterType.values.first,
            val: 1.0,
            valIso: 'test',
            maxVal: 1.0,
            maxValIso: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DynamicFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_valIso = instance.valIso;
      } catch (e) {}
      try {
        final v_maxVal = instance.maxVal;
      } catch (e) {}
      try {
        final v_maxValIso = instance.maxValIso;
      } catch (e) {}
    });
    test('Test S_CT_SortState with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SortState(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_columnSort = instance.columnSort;
      } catch (e) {}
      try {
        final v_caseSensitive = instance.caseSensitive;
      } catch (e) {}
      try {
        final v_sortMethod = instance.sortMethod;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final c_sortCondition = instance.sortCondition;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SortState with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sortstate(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            columnSort: true,
            caseSensitive: true,
            sortMethod: S_ST_SortMethod.values.first,
            ref: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SortState(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_columnSort = instance.columnSort;
      } catch (e) {}
      try {
        final v_caseSensitive = instance.caseSensitive;
      } catch (e) {}
      try {
        final v_sortMethod = instance.sortMethod;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final c_sortCondition = instance.sortCondition;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SortCondition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SortCondition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_descending = instance.descending;
      } catch (e) {}
      try {
        final v_sortBy = instance.sortBy;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_customList = instance.customList;
      } catch (e) {}
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
      try {
        final v_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final v_iconId = instance.iconId;
      } catch (e) {}
    });
    test('Test S_CT_SortCondition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sortcondition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            descending: true,
            sortBy: S_ST_SortBy.values.first,
            ref: 'test',
            customList: 'test',
            dxfId: 'test',
            iconSet: S_ST_IconSetType.values.first,
            iconId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SortCondition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_descending = instance.descending;
      } catch (e) {}
      try {
        final v_sortBy = instance.sortBy;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_customList = instance.customList;
      } catch (e) {}
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
      try {
        final v_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final v_iconId = instance.iconId;
      } catch (e) {}
    });
    test('Test S_CT_DateGroupItem with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DateGroupItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_year = instance.year;
      } catch (e) {}
      try {
        final v_month = instance.month;
      } catch (e) {}
      try {
        final v_day = instance.day;
      } catch (e) {}
      try {
        final v_hour = instance.hour;
      } catch (e) {}
      try {
        final v_minute = instance.minute;
      } catch (e) {}
      try {
        final v_second = instance.second;
      } catch (e) {}
      try {
        final v_dateTimeGrouping = instance.dateTimeGrouping;
      } catch (e) {}
    });
    test('Test S_CT_DateGroupItem with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_dategroupitem(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            year: 1,
            month: 1,
            day: 1,
            hour: 1,
            minute: 1,
            second: 1,
            dateTimeGrouping: S_ST_DateTimeGrouping.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DateGroupItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_year = instance.year;
      } catch (e) {}
      try {
        final v_month = instance.month;
      } catch (e) {}
      try {
        final v_day = instance.day;
      } catch (e) {}
      try {
        final v_hour = instance.hour;
      } catch (e) {}
      try {
        final v_minute = instance.minute;
      } catch (e) {}
      try {
        final v_second = instance.second;
      } catch (e) {}
      try {
        final v_dateTimeGrouping = instance.dateTimeGrouping;
      } catch (e) {}
    });
    test('Test S_CT_XStringElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_XStringElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_XStringElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_xstringelement(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            v: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_XStringElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_Extension with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Extension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test S_CT_Extension with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_extension(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            uri: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Extension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test S_CT_ObjectAnchor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ObjectAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_moveWithCells = instance.moveWithCells;
      } catch (e) {}
      try {
        final v_sizeWithCells = instance.sizeWithCells;
      } catch (e) {}
    });
    test('Test S_CT_ObjectAnchor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_objectanchor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            moveWithCells: true,
            sizeWithCells: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ObjectAnchor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_moveWithCells = instance.moveWithCells;
      } catch (e) {}
      try {
        final v_sizeWithCells = instance.sizeWithCells;
      } catch (e) {}
    });
    test('Test S_CT_ExtensionList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExtensionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test S_CT_ExtensionList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_extensionlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExtensionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test S_CT_CalcChain with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalcChain(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_c = instance.c;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CalcChain with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_calcchain(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalcChain(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_c = instance.c;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CalcCell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalcCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_l = instance.l;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_a = instance.a;
      } catch (e) {}
    });
    test('Test S_CT_CalcCell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_calccell(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 'test',
            ref: 'test',
            i: 1,
            s: true,
            l: true,
            t: true,
            a: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalcCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_l = instance.l;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_a = instance.a;
      } catch (e) {}
    });
    test('Test S_CT_Comments with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Comments(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_authors = instance.authors;
      } catch (e) {}
      try {
        final c_commentList = instance.commentList;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Comments with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_comments(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Comments(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_authors = instance.authors;
      } catch (e) {}
      try {
        final c_commentList = instance.commentList;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Authors with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Authors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_author = instance.author;
      } catch (e) {}
    });
    test('Test S_CT_Authors with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_authors(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Authors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_author = instance.author;
      } catch (e) {}
    });
    test('Test S_CT_CommentList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CommentList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_comment = instance.comment;
      } catch (e) {}
    });
    test('Test S_CT_CommentList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_commentlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CommentList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_comment = instance.comment;
      } catch (e) {}
    });
    test('Test S_CT_Comment with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Comment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_authorId = instance.authorId;
      } catch (e) {}
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_shapeId = instance.shapeId;
      } catch (e) {}
      try {
        final c_text = instance.text;
      } catch (e) {}
      try {
        final c_commentPr = instance.commentPr;
      } catch (e) {}
    });
    test('Test S_CT_Comment with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_comment(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
            authorId: 1,
            guid: 'test',
            shapeId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Comment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_authorId = instance.authorId;
      } catch (e) {}
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_shapeId = instance.shapeId;
      } catch (e) {}
      try {
        final c_text = instance.text;
      } catch (e) {}
      try {
        final c_commentPr = instance.commentPr;
      } catch (e) {}
    });
    test('Test S_CT_CommentPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CommentPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_defaultSize = instance.defaultSize;
      } catch (e) {}
      try {
        final v_print = instance.print;
      } catch (e) {}
      try {
        final v_disabled = instance.disabled;
      } catch (e) {}
      try {
        final v_autoFill = instance.autoFill;
      } catch (e) {}
      try {
        final v_autoLine = instance.autoLine;
      } catch (e) {}
      try {
        final v_altText = instance.altText;
      } catch (e) {}
      try {
        final v_textHAlign = instance.textHAlign;
      } catch (e) {}
      try {
        final v_textVAlign = instance.textVAlign;
      } catch (e) {}
      try {
        final v_lockText = instance.lockText;
      } catch (e) {}
      try {
        final v_justLastX = instance.justLastX;
      } catch (e) {}
      try {
        final v_autoScale = instance.autoScale;
      } catch (e) {}
      try {
        final c_anchor = instance.anchor;
      } catch (e) {}
    });
    test('Test S_CT_CommentPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_commentpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            locked: true,
            defaultSize: true,
            print: true,
            disabled: true,
            autoFill: true,
            autoLine: true,
            altText: 'test',
            textHAlign: S_ST_TextHAlign.values.first,
            textVAlign: S_ST_TextVAlign.values.first,
            lockText: true,
            justLastX: true,
            autoScale: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CommentPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_defaultSize = instance.defaultSize;
      } catch (e) {}
      try {
        final v_print = instance.print;
      } catch (e) {}
      try {
        final v_disabled = instance.disabled;
      } catch (e) {}
      try {
        final v_autoFill = instance.autoFill;
      } catch (e) {}
      try {
        final v_autoLine = instance.autoLine;
      } catch (e) {}
      try {
        final v_altText = instance.altText;
      } catch (e) {}
      try {
        final v_textHAlign = instance.textHAlign;
      } catch (e) {}
      try {
        final v_textVAlign = instance.textVAlign;
      } catch (e) {}
      try {
        final v_lockText = instance.lockText;
      } catch (e) {}
      try {
        final v_justLastX = instance.justLastX;
      } catch (e) {}
      try {
        final v_autoScale = instance.autoScale;
      } catch (e) {}
      try {
        final c_anchor = instance.anchor;
      } catch (e) {}
    });
    test('Test S_CT_MapInfo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MapInfo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_SelectionNamespaces = instance.SelectionNamespaces;
      } catch (e) {}
      try {
        final c_Schema = instance.Schema;
      } catch (e) {}
      try {
        final c_Map = instance.Map;
      } catch (e) {}
    });
    test('Test S_CT_MapInfo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mapinfo(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            SelectionNamespaces: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MapInfo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_SelectionNamespaces = instance.SelectionNamespaces;
      } catch (e) {}
      try {
        final c_Schema = instance.Schema;
      } catch (e) {}
      try {
        final c_Map = instance.Map;
      } catch (e) {}
    });
    test('Test S_CT_Schema with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Schema(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ID = instance.ID;
      } catch (e) {}
      try {
        final v_SchemaRef = instance.SchemaRef;
      } catch (e) {}
      try {
        final v_Namespace = instance.Namespace;
      } catch (e) {}
      try {
        final v_SchemaLanguage = instance.SchemaLanguage;
      } catch (e) {}
    });
    test('Test S_CT_Schema with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_schema(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ID: 'test',
            SchemaRef: 'test',
            Namespace: 'test',
            SchemaLanguage: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Schema(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ID = instance.ID;
      } catch (e) {}
      try {
        final v_SchemaRef = instance.SchemaRef;
      } catch (e) {}
      try {
        final v_Namespace = instance.Namespace;
      } catch (e) {}
      try {
        final v_SchemaLanguage = instance.SchemaLanguage;
      } catch (e) {}
    });
    test('Test S_CT_Map with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Map(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ID = instance.ID;
      } catch (e) {}
      try {
        final v_Name = instance.Name;
      } catch (e) {}
      try {
        final v_RootElement = instance.RootElement;
      } catch (e) {}
      try {
        final v_SchemaID = instance.SchemaID;
      } catch (e) {}
      try {
        final v_ShowImportExportValidationErrors =
            instance.ShowImportExportValidationErrors;
      } catch (e) {}
      try {
        final v_AutoFit = instance.AutoFit;
      } catch (e) {}
      try {
        final v_Append = instance.Append;
      } catch (e) {}
      try {
        final v_PreserveSortAFLayout = instance.PreserveSortAFLayout;
      } catch (e) {}
      try {
        final v_PreserveFormat = instance.PreserveFormat;
      } catch (e) {}
      try {
        final c_DataBinding = instance.DataBinding;
      } catch (e) {}
    });
    test('Test S_CT_Map with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_map(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ID: 1,
            Name: 'test',
            RootElement: 'test',
            SchemaID: 'test',
            ShowImportExportValidationErrors: true,
            AutoFit: true,
            Append: true,
            PreserveSortAFLayout: true,
            PreserveFormat: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Map(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ID = instance.ID;
      } catch (e) {}
      try {
        final v_Name = instance.Name;
      } catch (e) {}
      try {
        final v_RootElement = instance.RootElement;
      } catch (e) {}
      try {
        final v_SchemaID = instance.SchemaID;
      } catch (e) {}
      try {
        final v_ShowImportExportValidationErrors =
            instance.ShowImportExportValidationErrors;
      } catch (e) {}
      try {
        final v_AutoFit = instance.AutoFit;
      } catch (e) {}
      try {
        final v_Append = instance.Append;
      } catch (e) {}
      try {
        final v_PreserveSortAFLayout = instance.PreserveSortAFLayout;
      } catch (e) {}
      try {
        final v_PreserveFormat = instance.PreserveFormat;
      } catch (e) {}
      try {
        final c_DataBinding = instance.DataBinding;
      } catch (e) {}
    });
    test('Test S_CT_DataBinding with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataBinding(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_DataBindingName = instance.DataBindingName;
      } catch (e) {}
      try {
        final v_FileBinding = instance.FileBinding;
      } catch (e) {}
      try {
        final v_ConnectionID = instance.ConnectionID;
      } catch (e) {}
      try {
        final v_FileBindingName = instance.FileBindingName;
      } catch (e) {}
      try {
        final v_DataBindingLoadMode = instance.DataBindingLoadMode;
      } catch (e) {}
    });
    test('Test S_CT_DataBinding with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_databinding(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            DataBindingName: 'test',
            FileBinding: true,
            ConnectionID: 1,
            FileBindingName: 'test',
            DataBindingLoadMode: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataBinding(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_DataBindingName = instance.DataBindingName;
      } catch (e) {}
      try {
        final v_FileBinding = instance.FileBinding;
      } catch (e) {}
      try {
        final v_ConnectionID = instance.ConnectionID;
      } catch (e) {}
      try {
        final v_FileBindingName = instance.FileBindingName;
      } catch (e) {}
      try {
        final v_DataBindingLoadMode = instance.DataBindingLoadMode;
      } catch (e) {}
    });
    test('Test S_CT_Connections with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Connections(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_connection = instance.connection;
      } catch (e) {}
    });
    test('Test S_CT_Connections with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_connections(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Connections(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_connection = instance.connection;
      } catch (e) {}
    });
    test('Test S_CT_Connection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Connection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_sourceFile = instance.sourceFile;
      } catch (e) {}
      try {
        final v_odcFile = instance.odcFile;
      } catch (e) {}
      try {
        final v_keepAlive = instance.keepAlive;
      } catch (e) {}
      try {
        final v_interval = instance.interval;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_description = instance.description;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_reconnectionMethod = instance.reconnectionMethod;
      } catch (e) {}
      try {
        final v_refreshedVersion = instance.refreshedVersion;
      } catch (e) {}
      try {
        final v_minRefreshableVersion = instance.minRefreshableVersion;
      } catch (e) {}
      try {
        final v_savePassword = instance.savePassword;
      } catch (e) {}
      try {
        final v_new_ = instance.new_;
      } catch (e) {}
      try {
        final v_deleted = instance.deleted;
      } catch (e) {}
      try {
        final v_onlyUseConnectionFile = instance.onlyUseConnectionFile;
      } catch (e) {}
      try {
        final v_background = instance.background;
      } catch (e) {}
      try {
        final v_refreshOnLoad = instance.refreshOnLoad;
      } catch (e) {}
      try {
        final v_saveData = instance.saveData;
      } catch (e) {}
      try {
        final v_credentials = instance.credentials;
      } catch (e) {}
      try {
        final v_singleSignOnId = instance.singleSignOnId;
      } catch (e) {}
      try {
        final c_dbPr = instance.dbPr;
      } catch (e) {}
      try {
        final c_olapPr = instance.olapPr;
      } catch (e) {}
      try {
        final c_webPr = instance.webPr;
      } catch (e) {}
      try {
        final c_textPr = instance.textPr;
      } catch (e) {}
      try {
        final c_parameters = instance.parameters;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Connection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_connection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            sourceFile: 'test',
            odcFile: 'test',
            keepAlive: true,
            interval: 1,
            name: 'test',
            description: 'test',
            type: 1,
            reconnectionMethod: 1,
            refreshedVersion: 1,
            minRefreshableVersion: 1,
            savePassword: true,
            new_: true,
            deleted: true,
            onlyUseConnectionFile: true,
            background: true,
            refreshOnLoad: true,
            saveData: true,
            credentials: S_ST_CredMethod.values.first,
            singleSignOnId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Connection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_sourceFile = instance.sourceFile;
      } catch (e) {}
      try {
        final v_odcFile = instance.odcFile;
      } catch (e) {}
      try {
        final v_keepAlive = instance.keepAlive;
      } catch (e) {}
      try {
        final v_interval = instance.interval;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_description = instance.description;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_reconnectionMethod = instance.reconnectionMethod;
      } catch (e) {}
      try {
        final v_refreshedVersion = instance.refreshedVersion;
      } catch (e) {}
      try {
        final v_minRefreshableVersion = instance.minRefreshableVersion;
      } catch (e) {}
      try {
        final v_savePassword = instance.savePassword;
      } catch (e) {}
      try {
        final v_new_ = instance.new_;
      } catch (e) {}
      try {
        final v_deleted = instance.deleted;
      } catch (e) {}
      try {
        final v_onlyUseConnectionFile = instance.onlyUseConnectionFile;
      } catch (e) {}
      try {
        final v_background = instance.background;
      } catch (e) {}
      try {
        final v_refreshOnLoad = instance.refreshOnLoad;
      } catch (e) {}
      try {
        final v_saveData = instance.saveData;
      } catch (e) {}
      try {
        final v_credentials = instance.credentials;
      } catch (e) {}
      try {
        final v_singleSignOnId = instance.singleSignOnId;
      } catch (e) {}
      try {
        final c_dbPr = instance.dbPr;
      } catch (e) {}
      try {
        final c_olapPr = instance.olapPr;
      } catch (e) {}
      try {
        final c_webPr = instance.webPr;
      } catch (e) {}
      try {
        final c_textPr = instance.textPr;
      } catch (e) {}
      try {
        final c_parameters = instance.parameters;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_DbPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DbPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_connection = instance.connection;
      } catch (e) {}
      try {
        final v_command = instance.command;
      } catch (e) {}
      try {
        final v_serverCommand = instance.serverCommand;
      } catch (e) {}
      try {
        final v_commandType = instance.commandType;
      } catch (e) {}
    });
    test('Test S_CT_DbPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_dbpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            connection: 'test',
            command: 'test',
            serverCommand: 'test',
            commandType: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DbPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_connection = instance.connection;
      } catch (e) {}
      try {
        final v_command = instance.command;
      } catch (e) {}
      try {
        final v_serverCommand = instance.serverCommand;
      } catch (e) {}
      try {
        final v_commandType = instance.commandType;
      } catch (e) {}
    });
    test('Test S_CT_OlapPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OlapPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_local = instance.local;
      } catch (e) {}
      try {
        final v_localConnection = instance.localConnection;
      } catch (e) {}
      try {
        final v_localRefresh = instance.localRefresh;
      } catch (e) {}
      try {
        final v_sendLocale = instance.sendLocale;
      } catch (e) {}
      try {
        final v_rowDrillCount = instance.rowDrillCount;
      } catch (e) {}
      try {
        final v_serverFill = instance.serverFill;
      } catch (e) {}
      try {
        final v_serverNumberFormat = instance.serverNumberFormat;
      } catch (e) {}
      try {
        final v_serverFont = instance.serverFont;
      } catch (e) {}
      try {
        final v_serverFontColor = instance.serverFontColor;
      } catch (e) {}
    });
    test('Test S_CT_OlapPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_olappr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            local: true,
            localConnection: 'test',
            localRefresh: true,
            sendLocale: true,
            rowDrillCount: 1,
            serverFill: true,
            serverNumberFormat: true,
            serverFont: true,
            serverFontColor: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OlapPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_local = instance.local;
      } catch (e) {}
      try {
        final v_localConnection = instance.localConnection;
      } catch (e) {}
      try {
        final v_localRefresh = instance.localRefresh;
      } catch (e) {}
      try {
        final v_sendLocale = instance.sendLocale;
      } catch (e) {}
      try {
        final v_rowDrillCount = instance.rowDrillCount;
      } catch (e) {}
      try {
        final v_serverFill = instance.serverFill;
      } catch (e) {}
      try {
        final v_serverNumberFormat = instance.serverNumberFormat;
      } catch (e) {}
      try {
        final v_serverFont = instance.serverFont;
      } catch (e) {}
      try {
        final v_serverFontColor = instance.serverFontColor;
      } catch (e) {}
    });
    test('Test S_CT_WebPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_xml = instance.xml;
      } catch (e) {}
      try {
        final v_sourceData = instance.sourceData;
      } catch (e) {}
      try {
        final v_parsePre = instance.parsePre;
      } catch (e) {}
      try {
        final v_consecutive = instance.consecutive;
      } catch (e) {}
      try {
        final v_firstRow = instance.firstRow;
      } catch (e) {}
      try {
        final v_xl97 = instance.xl97;
      } catch (e) {}
      try {
        final v_textDates = instance.textDates;
      } catch (e) {}
      try {
        final v_xl2000 = instance.xl2000;
      } catch (e) {}
      try {
        final v_url = instance.url;
      } catch (e) {}
      try {
        final v_post = instance.post;
      } catch (e) {}
      try {
        final v_htmlTables = instance.htmlTables;
      } catch (e) {}
      try {
        final v_htmlFormat = instance.htmlFormat;
      } catch (e) {}
      try {
        final v_editPage = instance.editPage;
      } catch (e) {}
      try {
        final c_tables = instance.tables;
      } catch (e) {}
    });
    test('Test S_CT_WebPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_webpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            xml: true,
            sourceData: true,
            parsePre: true,
            consecutive: true,
            firstRow: true,
            xl97: true,
            textDates: true,
            xl2000: true,
            url: 'test',
            post: 'test',
            htmlTables: true,
            htmlFormat: S_ST_HtmlFmt.values.first,
            editPage: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_xml = instance.xml;
      } catch (e) {}
      try {
        final v_sourceData = instance.sourceData;
      } catch (e) {}
      try {
        final v_parsePre = instance.parsePre;
      } catch (e) {}
      try {
        final v_consecutive = instance.consecutive;
      } catch (e) {}
      try {
        final v_firstRow = instance.firstRow;
      } catch (e) {}
      try {
        final v_xl97 = instance.xl97;
      } catch (e) {}
      try {
        final v_textDates = instance.textDates;
      } catch (e) {}
      try {
        final v_xl2000 = instance.xl2000;
      } catch (e) {}
      try {
        final v_url = instance.url;
      } catch (e) {}
      try {
        final v_post = instance.post;
      } catch (e) {}
      try {
        final v_htmlTables = instance.htmlTables;
      } catch (e) {}
      try {
        final v_htmlFormat = instance.htmlFormat;
      } catch (e) {}
      try {
        final v_editPage = instance.editPage;
      } catch (e) {}
      try {
        final c_tables = instance.tables;
      } catch (e) {}
    });
    test('Test S_CT_Parameters with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Parameters(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_parameter = instance.parameter;
      } catch (e) {}
    });
    test('Test S_CT_Parameters with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_parameters(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Parameters(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_parameter = instance.parameter;
      } catch (e) {}
    });
    test('Test S_CT_Parameter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Parameter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sqlType = instance.sqlType;
      } catch (e) {}
      try {
        final v_parameterType = instance.parameterType;
      } catch (e) {}
      try {
        final v_refreshOnChange = instance.refreshOnChange;
      } catch (e) {}
      try {
        final v_prompt = instance.prompt;
      } catch (e) {}
      try {
        final v_boolean = instance.boolean;
      } catch (e) {}
      try {
        final v_double_ = instance.double_;
      } catch (e) {}
      try {
        final v_integer = instance.integer;
      } catch (e) {}
      try {
        final v_string = instance.string;
      } catch (e) {}
      try {
        final v_cell = instance.cell;
      } catch (e) {}
    });
    test('Test S_CT_Parameter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_parameter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            sqlType: 1,
            parameterType: S_ST_ParameterType.values.first,
            refreshOnChange: true,
            prompt: 'test',
            boolean: true,
            double_: 1.0,
            integer: 1,
            string: 'test',
            cell: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Parameter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sqlType = instance.sqlType;
      } catch (e) {}
      try {
        final v_parameterType = instance.parameterType;
      } catch (e) {}
      try {
        final v_refreshOnChange = instance.refreshOnChange;
      } catch (e) {}
      try {
        final v_prompt = instance.prompt;
      } catch (e) {}
      try {
        final v_boolean = instance.boolean;
      } catch (e) {}
      try {
        final v_double_ = instance.double_;
      } catch (e) {}
      try {
        final v_integer = instance.integer;
      } catch (e) {}
      try {
        final v_string = instance.string;
      } catch (e) {}
      try {
        final v_cell = instance.cell;
      } catch (e) {}
    });
    test('Test S_CT_Tables with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Tables(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Tables with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tables(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Tables(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_TableMissing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableMissing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test S_CT_TableMissing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tablemissing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableMissing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test S_CT_TextPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TextPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prompt = instance.prompt;
      } catch (e) {}
      try {
        final v_fileType = instance.fileType;
      } catch (e) {}
      try {
        final v_codePage = instance.codePage;
      } catch (e) {}
      try {
        final v_characterSet = instance.characterSet;
      } catch (e) {}
      try {
        final v_firstRow = instance.firstRow;
      } catch (e) {}
      try {
        final v_sourceFile = instance.sourceFile;
      } catch (e) {}
      try {
        final v_delimited = instance.delimited;
      } catch (e) {}
      try {
        final v_decimal = instance.decimal;
      } catch (e) {}
      try {
        final v_thousands = instance.thousands;
      } catch (e) {}
      try {
        final v_tab = instance.tab;
      } catch (e) {}
      try {
        final v_space = instance.space;
      } catch (e) {}
      try {
        final v_comma = instance.comma;
      } catch (e) {}
      try {
        final v_semicolon = instance.semicolon;
      } catch (e) {}
      try {
        final v_consecutive = instance.consecutive;
      } catch (e) {}
      try {
        final v_qualifier = instance.qualifier;
      } catch (e) {}
      try {
        final v_delimiter = instance.delimiter;
      } catch (e) {}
      try {
        final c_textFields = instance.textFields;
      } catch (e) {}
    });
    test('Test S_CT_TextPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_textpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            prompt: true,
            fileType: S_ST_FileType.values.first,
            codePage: 1,
            characterSet: 'test',
            firstRow: 1,
            sourceFile: 'test',
            delimited: true,
            decimal: 'test',
            thousands: 'test',
            tab: true,
            space: true,
            comma: true,
            semicolon: true,
            consecutive: true,
            qualifier: S_ST_Qualifier.values.first,
            delimiter: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TextPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prompt = instance.prompt;
      } catch (e) {}
      try {
        final v_fileType = instance.fileType;
      } catch (e) {}
      try {
        final v_codePage = instance.codePage;
      } catch (e) {}
      try {
        final v_characterSet = instance.characterSet;
      } catch (e) {}
      try {
        final v_firstRow = instance.firstRow;
      } catch (e) {}
      try {
        final v_sourceFile = instance.sourceFile;
      } catch (e) {}
      try {
        final v_delimited = instance.delimited;
      } catch (e) {}
      try {
        final v_decimal = instance.decimal;
      } catch (e) {}
      try {
        final v_thousands = instance.thousands;
      } catch (e) {}
      try {
        final v_tab = instance.tab;
      } catch (e) {}
      try {
        final v_space = instance.space;
      } catch (e) {}
      try {
        final v_comma = instance.comma;
      } catch (e) {}
      try {
        final v_semicolon = instance.semicolon;
      } catch (e) {}
      try {
        final v_consecutive = instance.consecutive;
      } catch (e) {}
      try {
        final v_qualifier = instance.qualifier;
      } catch (e) {}
      try {
        final v_delimiter = instance.delimiter;
      } catch (e) {}
      try {
        final c_textFields = instance.textFields;
      } catch (e) {}
    });
    test('Test S_CT_TextFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TextFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_textField = instance.textField;
      } catch (e) {}
    });
    test('Test S_CT_TextFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_textfields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TextFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_textField = instance.textField;
      } catch (e) {}
    });
    test('Test S_CT_TextField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TextField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_position = instance.position;
      } catch (e) {}
    });
    test('Test S_CT_TextField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_textfield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_ExternalConnectionType.values.first,
            position: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TextField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_position = instance.position;
      } catch (e) {}
    });
    test('Test S_CT_PivotCacheDefinition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotCacheDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_invalid = instance.invalid;
      } catch (e) {}
      try {
        final v_saveData = instance.saveData;
      } catch (e) {}
      try {
        final v_refreshOnLoad = instance.refreshOnLoad;
      } catch (e) {}
      try {
        final v_optimizeMemory = instance.optimizeMemory;
      } catch (e) {}
      try {
        final v_enableRefresh = instance.enableRefresh;
      } catch (e) {}
      try {
        final v_refreshedBy = instance.refreshedBy;
      } catch (e) {}
      try {
        final v_refreshedDate = instance.refreshedDate;
      } catch (e) {}
      try {
        final v_refreshedDateIso = instance.refreshedDateIso;
      } catch (e) {}
      try {
        final v_backgroundQuery = instance.backgroundQuery;
      } catch (e) {}
      try {
        final v_missingItemsLimit = instance.missingItemsLimit;
      } catch (e) {}
      try {
        final v_createdVersion = instance.createdVersion;
      } catch (e) {}
      try {
        final v_refreshedVersion = instance.refreshedVersion;
      } catch (e) {}
      try {
        final v_minRefreshableVersion = instance.minRefreshableVersion;
      } catch (e) {}
      try {
        final v_recordCount = instance.recordCount;
      } catch (e) {}
      try {
        final v_upgradeOnRefresh = instance.upgradeOnRefresh;
      } catch (e) {}
      try {
        final v_tupleCache = instance.tupleCache;
      } catch (e) {}
      try {
        final v_supportSubquery = instance.supportSubquery;
      } catch (e) {}
      try {
        final v_supportAdvancedDrill = instance.supportAdvancedDrill;
      } catch (e) {}
      try {
        final c_cacheSource = instance.cacheSource;
      } catch (e) {}
      try {
        final c_cacheFields = instance.cacheFields;
      } catch (e) {}
      try {
        final c_cacheHierarchies = instance.cacheHierarchies;
      } catch (e) {}
      try {
        final c_kpis = instance.kpis;
      } catch (e) {}
      try {
        final c_calculatedItems = instance.calculatedItems;
      } catch (e) {}
      try {
        final c_calculatedMembers = instance.calculatedMembers;
      } catch (e) {}
      try {
        final c_dimensions = instance.dimensions;
      } catch (e) {}
      try {
        final c_measureGroups = instance.measureGroups;
      } catch (e) {}
      try {
        final c_maps = instance.maps;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotCacheDefinition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_pivotcachedefinition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
            invalid: true,
            saveData: true,
            refreshOnLoad: true,
            optimizeMemory: true,
            enableRefresh: true,
            refreshedBy: 'test',
            refreshedDate: 1.0,
            refreshedDateIso: 'test',
            backgroundQuery: true,
            missingItemsLimit: 1,
            createdVersion: 1,
            refreshedVersion: 1,
            minRefreshableVersion: 1,
            recordCount: 1,
            upgradeOnRefresh: true,
            tupleCache: true,
            supportSubquery: true,
            supportAdvancedDrill: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotCacheDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_invalid = instance.invalid;
      } catch (e) {}
      try {
        final v_saveData = instance.saveData;
      } catch (e) {}
      try {
        final v_refreshOnLoad = instance.refreshOnLoad;
      } catch (e) {}
      try {
        final v_optimizeMemory = instance.optimizeMemory;
      } catch (e) {}
      try {
        final v_enableRefresh = instance.enableRefresh;
      } catch (e) {}
      try {
        final v_refreshedBy = instance.refreshedBy;
      } catch (e) {}
      try {
        final v_refreshedDate = instance.refreshedDate;
      } catch (e) {}
      try {
        final v_refreshedDateIso = instance.refreshedDateIso;
      } catch (e) {}
      try {
        final v_backgroundQuery = instance.backgroundQuery;
      } catch (e) {}
      try {
        final v_missingItemsLimit = instance.missingItemsLimit;
      } catch (e) {}
      try {
        final v_createdVersion = instance.createdVersion;
      } catch (e) {}
      try {
        final v_refreshedVersion = instance.refreshedVersion;
      } catch (e) {}
      try {
        final v_minRefreshableVersion = instance.minRefreshableVersion;
      } catch (e) {}
      try {
        final v_recordCount = instance.recordCount;
      } catch (e) {}
      try {
        final v_upgradeOnRefresh = instance.upgradeOnRefresh;
      } catch (e) {}
      try {
        final v_tupleCache = instance.tupleCache;
      } catch (e) {}
      try {
        final v_supportSubquery = instance.supportSubquery;
      } catch (e) {}
      try {
        final v_supportAdvancedDrill = instance.supportAdvancedDrill;
      } catch (e) {}
      try {
        final c_cacheSource = instance.cacheSource;
      } catch (e) {}
      try {
        final c_cacheFields = instance.cacheFields;
      } catch (e) {}
      try {
        final c_cacheHierarchies = instance.cacheHierarchies;
      } catch (e) {}
      try {
        final c_kpis = instance.kpis;
      } catch (e) {}
      try {
        final c_calculatedItems = instance.calculatedItems;
      } catch (e) {}
      try {
        final c_calculatedMembers = instance.calculatedMembers;
      } catch (e) {}
      try {
        final c_dimensions = instance.dimensions;
      } catch (e) {}
      try {
        final c_measureGroups = instance.measureGroups;
      } catch (e) {}
      try {
        final c_maps = instance.maps;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CacheFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_cacheField = instance.cacheField;
      } catch (e) {}
    });
    test('Test S_CT_CacheFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cachefields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_cacheField = instance.cacheField;
      } catch (e) {}
    });
    test('Test S_CT_CacheField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_propertyName = instance.propertyName;
      } catch (e) {}
      try {
        final v_serverField = instance.serverField;
      } catch (e) {}
      try {
        final v_uniqueList = instance.uniqueList;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_formula = instance.formula;
      } catch (e) {}
      try {
        final v_sqlType = instance.sqlType;
      } catch (e) {}
      try {
        final v_hierarchy = instance.hierarchy;
      } catch (e) {}
      try {
        final v_level = instance.level;
      } catch (e) {}
      try {
        final v_databaseField = instance.databaseField;
      } catch (e) {}
      try {
        final v_mappingCount = instance.mappingCount;
      } catch (e) {}
      try {
        final v_memberPropertyField = instance.memberPropertyField;
      } catch (e) {}
      try {
        final c_sharedItems = instance.sharedItems;
      } catch (e) {}
      try {
        final c_fieldGroup = instance.fieldGroup;
      } catch (e) {}
      try {
        final c_mpMap = instance.mpMap;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CacheField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cachefield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            caption: 'test',
            propertyName: 'test',
            serverField: true,
            uniqueList: true,
            numFmtId: 'test',
            formula: 'test',
            sqlType: 1,
            hierarchy: 1,
            level: 1,
            databaseField: true,
            mappingCount: 1,
            memberPropertyField: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_propertyName = instance.propertyName;
      } catch (e) {}
      try {
        final v_serverField = instance.serverField;
      } catch (e) {}
      try {
        final v_uniqueList = instance.uniqueList;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_formula = instance.formula;
      } catch (e) {}
      try {
        final v_sqlType = instance.sqlType;
      } catch (e) {}
      try {
        final v_hierarchy = instance.hierarchy;
      } catch (e) {}
      try {
        final v_level = instance.level;
      } catch (e) {}
      try {
        final v_databaseField = instance.databaseField;
      } catch (e) {}
      try {
        final v_mappingCount = instance.mappingCount;
      } catch (e) {}
      try {
        final v_memberPropertyField = instance.memberPropertyField;
      } catch (e) {}
      try {
        final c_sharedItems = instance.sharedItems;
      } catch (e) {}
      try {
        final c_fieldGroup = instance.fieldGroup;
      } catch (e) {}
      try {
        final c_mpMap = instance.mpMap;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CacheSource with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_connectionId = instance.connectionId;
      } catch (e) {}
      try {
        final c_worksheetSource = instance.worksheetSource;
      } catch (e) {}
      try {
        final c_consolidation = instance.consolidation;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CacheSource with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cachesource(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_SourceType.values.first,
            connectionId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_connectionId = instance.connectionId;
      } catch (e) {}
      try {
        final c_worksheetSource = instance.worksheetSource;
      } catch (e) {}
      try {
        final c_consolidation = instance.consolidation;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_WorksheetSource with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WorksheetSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheet = instance.sheet;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_WorksheetSource with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_worksheetsource(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
            name: 'test',
            sheet: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WorksheetSource(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheet = instance.sheet;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_Consolidation with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Consolidation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoPage = instance.autoPage;
      } catch (e) {}
      try {
        final c_pages = instance.pages;
      } catch (e) {}
      try {
        final c_rangeSets = instance.rangeSets;
      } catch (e) {}
    });
    test('Test S_CT_Consolidation with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_consolidation(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            autoPage: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Consolidation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoPage = instance.autoPage;
      } catch (e) {}
      try {
        final c_pages = instance.pages;
      } catch (e) {}
      try {
        final c_rangeSets = instance.rangeSets;
      } catch (e) {}
    });
    test('Test S_CT_Pages with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Pages(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_page = instance.page;
      } catch (e) {}
    });
    test('Test S_CT_Pages with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pages(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Pages(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_page = instance.page;
      } catch (e) {}
    });
    test('Test S_CT_PCDSCPage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PCDSCPage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pageItem = instance.pageItem;
      } catch (e) {}
    });
    test('Test S_CT_PCDSCPage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pcdscpage(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PCDSCPage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pageItem = instance.pageItem;
      } catch (e) {}
    });
    test('Test S_CT_PageItem with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test S_CT_PageItem with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pageitem(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test S_CT_RangeSets with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RangeSets(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_rangeSet = instance.rangeSet;
      } catch (e) {}
    });
    test('Test S_CT_RangeSets with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_rangesets(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RangeSets(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_rangeSet = instance.rangeSet;
      } catch (e) {}
    });
    test('Test S_CT_RangeSet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RangeSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_i1 = instance.i1;
      } catch (e) {}
      try {
        final v_i2 = instance.i2;
      } catch (e) {}
      try {
        final v_i3 = instance.i3;
      } catch (e) {}
      try {
        final v_i4 = instance.i4;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheet = instance.sheet;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_RangeSet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_rangeset(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            i1: 1,
            i2: 1,
            i3: 1,
            i4: 1,
            ref: 'test',
            name: 'test',
            sheet: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RangeSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_i1 = instance.i1;
      } catch (e) {}
      try {
        final v_i2 = instance.i2;
      } catch (e) {}
      try {
        final v_i3 = instance.i3;
      } catch (e) {}
      try {
        final v_i4 = instance.i4;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheet = instance.sheet;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_SharedItems with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SharedItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_containsSemiMixedTypes = instance.containsSemiMixedTypes;
      } catch (e) {}
      try {
        final v_containsNonDate = instance.containsNonDate;
      } catch (e) {}
      try {
        final v_containsDate = instance.containsDate;
      } catch (e) {}
      try {
        final v_containsString = instance.containsString;
      } catch (e) {}
      try {
        final v_containsBlank = instance.containsBlank;
      } catch (e) {}
      try {
        final v_containsMixedTypes = instance.containsMixedTypes;
      } catch (e) {}
      try {
        final v_containsNumber = instance.containsNumber;
      } catch (e) {}
      try {
        final v_containsInteger = instance.containsInteger;
      } catch (e) {}
      try {
        final v_minValue = instance.minValue;
      } catch (e) {}
      try {
        final v_maxValue = instance.maxValue;
      } catch (e) {}
      try {
        final v_minDate = instance.minDate;
      } catch (e) {}
      try {
        final v_maxDate = instance.maxDate;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_longText = instance.longText;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
    });
    test('Test S_CT_SharedItems with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_shareditems(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            containsSemiMixedTypes: true,
            containsNonDate: true,
            containsDate: true,
            containsString: true,
            containsBlank: true,
            containsMixedTypes: true,
            containsNumber: true,
            containsInteger: true,
            minValue: 1.0,
            maxValue: 1.0,
            minDate: 'test',
            maxDate: 'test',
            count: 1,
            longText: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SharedItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_containsSemiMixedTypes = instance.containsSemiMixedTypes;
      } catch (e) {}
      try {
        final v_containsNonDate = instance.containsNonDate;
      } catch (e) {}
      try {
        final v_containsDate = instance.containsDate;
      } catch (e) {}
      try {
        final v_containsString = instance.containsString;
      } catch (e) {}
      try {
        final v_containsBlank = instance.containsBlank;
      } catch (e) {}
      try {
        final v_containsMixedTypes = instance.containsMixedTypes;
      } catch (e) {}
      try {
        final v_containsNumber = instance.containsNumber;
      } catch (e) {}
      try {
        final v_containsInteger = instance.containsInteger;
      } catch (e) {}
      try {
        final v_minValue = instance.minValue;
      } catch (e) {}
      try {
        final v_maxValue = instance.maxValue;
      } catch (e) {}
      try {
        final v_minDate = instance.minDate;
      } catch (e) {}
      try {
        final v_maxDate = instance.maxDate;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_longText = instance.longText;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
    });
    test('Test S_CT_Missing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Missing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final v_in_ = instance.in_;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_un = instance.un;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Missing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_missing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            u: true,
            f: true,
            c: 'test',
            cp: 1,
            in_: 1,
            bc: 'test',
            fc: 'test',
            i: true,
            un: true,
            st: true,
            b: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Missing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final v_in_ = instance.in_;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_un = instance.un;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Number with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Number(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final v_in_ = instance.in_;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_un = instance.un;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Number with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_number(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            v: 1.0,
            u: true,
            f: true,
            c: 'test',
            cp: 1,
            in_: 1,
            bc: 'test',
            fc: 'test',
            i: true,
            un: true,
            st: true,
            b: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Number(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final v_in_ = instance.in_;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_un = instance.un;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Boolean with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Boolean(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Boolean with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_boolean(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            v: true,
            u: true,
            f: true,
            c: 'test',
            cp: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Boolean(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Error with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Error(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final v_in_ = instance.in_;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_un = instance.un;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Error with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_error(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            v: 'test',
            u: true,
            f: true,
            c: 'test',
            cp: 1,
            in_: 1,
            bc: 'test',
            fc: 'test',
            i: true,
            un: true,
            st: true,
            b: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Error(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final v_in_ = instance.in_;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_un = instance.un;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_String with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_String(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final v_in_ = instance.in_;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_un = instance.un;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_String with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_string(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            v: 'test',
            u: true,
            f: true,
            c: 'test',
            cp: 1,
            in_: 1,
            bc: 'test',
            fc: 'test',
            i: true,
            un: true,
            st: true,
            b: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_String(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final v_in_ = instance.in_;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_un = instance.un;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_DateTime with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DateTime(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_DateTime with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_datetime(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            v: 'test',
            u: true,
            f: true,
            c: 'test',
            cp: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DateTime(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_cp = instance.cp;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_FieldGroup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FieldGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_par = instance.par;
      } catch (e) {}
      try {
        final v_base = instance.base;
      } catch (e) {}
      try {
        final c_rangePr = instance.rangePr;
      } catch (e) {}
      try {
        final c_discretePr = instance.discretePr;
      } catch (e) {}
      try {
        final c_groupItems = instance.groupItems;
      } catch (e) {}
    });
    test('Test S_CT_FieldGroup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fieldgroup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            par: 1,
            base: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FieldGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_par = instance.par;
      } catch (e) {}
      try {
        final v_base = instance.base;
      } catch (e) {}
      try {
        final c_rangePr = instance.rangePr;
      } catch (e) {}
      try {
        final c_discretePr = instance.discretePr;
      } catch (e) {}
      try {
        final c_groupItems = instance.groupItems;
      } catch (e) {}
    });
    test('Test S_CT_RangePr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RangePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoStart = instance.autoStart;
      } catch (e) {}
      try {
        final v_autoEnd = instance.autoEnd;
      } catch (e) {}
      try {
        final v_groupBy = instance.groupBy;
      } catch (e) {}
      try {
        final v_startNum = instance.startNum;
      } catch (e) {}
      try {
        final v_endNum = instance.endNum;
      } catch (e) {}
      try {
        final v_startDate = instance.startDate;
      } catch (e) {}
      try {
        final v_endDate = instance.endDate;
      } catch (e) {}
      try {
        final v_groupInterval = instance.groupInterval;
      } catch (e) {}
    });
    test('Test S_CT_RangePr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_rangepr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            autoStart: true,
            autoEnd: true,
            groupBy: S_ST_GroupBy.values.first,
            startNum: 1.0,
            endNum: 1.0,
            startDate: 'test',
            endDate: 'test',
            groupInterval: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RangePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoStart = instance.autoStart;
      } catch (e) {}
      try {
        final v_autoEnd = instance.autoEnd;
      } catch (e) {}
      try {
        final v_groupBy = instance.groupBy;
      } catch (e) {}
      try {
        final v_startNum = instance.startNum;
      } catch (e) {}
      try {
        final v_endNum = instance.endNum;
      } catch (e) {}
      try {
        final v_startDate = instance.startDate;
      } catch (e) {}
      try {
        final v_endDate = instance.endDate;
      } catch (e) {}
      try {
        final v_groupInterval = instance.groupInterval;
      } catch (e) {}
    });
    test('Test S_CT_DiscretePr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DiscretePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_DiscretePr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_discretepr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DiscretePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_GroupItems with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
    });
    test('Test S_CT_GroupItems with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_groupitems(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
    });
    test('Test S_CT_PivotCacheRecords with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotCacheRecords(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotCacheRecords with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotcacherecords(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotCacheRecords(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Record with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Record(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Record with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_record(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Record(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
      try {
        final c_d = instance.d;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_PCDKPIs with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PCDKPIs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_kpi = instance.kpi;
      } catch (e) {}
    });
    test('Test S_CT_PCDKPIs with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pcdkpis(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PCDKPIs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_kpi = instance.kpi;
      } catch (e) {}
    });
    test('Test S_CT_PCDKPI with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PCDKPI(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_displayFolder = instance.displayFolder;
      } catch (e) {}
      try {
        final v_measureGroup = instance.measureGroup;
      } catch (e) {}
      try {
        final v_parent = instance.parent;
      } catch (e) {}
      try {
        final v_value_ = instance.value_;
      } catch (e) {}
      try {
        final v_goal = instance.goal;
      } catch (e) {}
      try {
        final v_status = instance.status;
      } catch (e) {}
      try {
        final v_trend = instance.trend;
      } catch (e) {}
      try {
        final v_weight = instance.weight;
      } catch (e) {}
      try {
        final v_time = instance.time;
      } catch (e) {}
    });
    test('Test S_CT_PCDKPI with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pcdkpi(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            uniqueName: 'test',
            caption: 'test',
            displayFolder: 'test',
            measureGroup: 'test',
            parent: 'test',
            value_: 'test',
            goal: 'test',
            status: 'test',
            trend: 'test',
            weight: 'test',
            time: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PCDKPI(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_displayFolder = instance.displayFolder;
      } catch (e) {}
      try {
        final v_measureGroup = instance.measureGroup;
      } catch (e) {}
      try {
        final v_parent = instance.parent;
      } catch (e) {}
      try {
        final v_value_ = instance.value_;
      } catch (e) {}
      try {
        final v_goal = instance.goal;
      } catch (e) {}
      try {
        final v_status = instance.status;
      } catch (e) {}
      try {
        final v_trend = instance.trend;
      } catch (e) {}
      try {
        final v_weight = instance.weight;
      } catch (e) {}
      try {
        final v_time = instance.time;
      } catch (e) {}
    });
    test('Test S_CT_CacheHierarchies with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheHierarchies(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_cacheHierarchy = instance.cacheHierarchy;
      } catch (e) {}
    });
    test('Test S_CT_CacheHierarchies with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cachehierarchies(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheHierarchies(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_cacheHierarchy = instance.cacheHierarchy;
      } catch (e) {}
    });
    test('Test S_CT_CacheHierarchy with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheHierarchy(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_measure = instance.measure;
      } catch (e) {}
      try {
        final v_set_ = instance.set_;
      } catch (e) {}
      try {
        final v_parentSet = instance.parentSet;
      } catch (e) {}
      try {
        final v_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final v_attribute = instance.attribute;
      } catch (e) {}
      try {
        final v_time = instance.time;
      } catch (e) {}
      try {
        final v_keyAttribute = instance.keyAttribute;
      } catch (e) {}
      try {
        final v_defaultMemberUniqueName = instance.defaultMemberUniqueName;
      } catch (e) {}
      try {
        final v_allUniqueName = instance.allUniqueName;
      } catch (e) {}
      try {
        final v_allCaption = instance.allCaption;
      } catch (e) {}
      try {
        final v_dimensionUniqueName = instance.dimensionUniqueName;
      } catch (e) {}
      try {
        final v_displayFolder = instance.displayFolder;
      } catch (e) {}
      try {
        final v_measureGroup = instance.measureGroup;
      } catch (e) {}
      try {
        final v_measures = instance.measures;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_oneField = instance.oneField;
      } catch (e) {}
      try {
        final v_memberValueDatatype = instance.memberValueDatatype;
      } catch (e) {}
      try {
        final v_unbalanced = instance.unbalanced;
      } catch (e) {}
      try {
        final v_unbalancedGroup = instance.unbalancedGroup;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final c_fieldsUsage = instance.fieldsUsage;
      } catch (e) {}
      try {
        final c_groupLevels = instance.groupLevels;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CacheHierarchy with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cachehierarchy(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            uniqueName: 'test',
            caption: 'test',
            measure: true,
            set_: true,
            parentSet: 1,
            iconSet: 1,
            attribute: true,
            time: true,
            keyAttribute: true,
            defaultMemberUniqueName: 'test',
            allUniqueName: 'test',
            allCaption: 'test',
            dimensionUniqueName: 'test',
            displayFolder: 'test',
            measureGroup: 'test',
            measures: true,
            count: 1,
            oneField: true,
            memberValueDatatype: 1,
            unbalanced: true,
            unbalancedGroup: true,
            hidden: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CacheHierarchy(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_measure = instance.measure;
      } catch (e) {}
      try {
        final v_set_ = instance.set_;
      } catch (e) {}
      try {
        final v_parentSet = instance.parentSet;
      } catch (e) {}
      try {
        final v_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final v_attribute = instance.attribute;
      } catch (e) {}
      try {
        final v_time = instance.time;
      } catch (e) {}
      try {
        final v_keyAttribute = instance.keyAttribute;
      } catch (e) {}
      try {
        final v_defaultMemberUniqueName = instance.defaultMemberUniqueName;
      } catch (e) {}
      try {
        final v_allUniqueName = instance.allUniqueName;
      } catch (e) {}
      try {
        final v_allCaption = instance.allCaption;
      } catch (e) {}
      try {
        final v_dimensionUniqueName = instance.dimensionUniqueName;
      } catch (e) {}
      try {
        final v_displayFolder = instance.displayFolder;
      } catch (e) {}
      try {
        final v_measureGroup = instance.measureGroup;
      } catch (e) {}
      try {
        final v_measures = instance.measures;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_oneField = instance.oneField;
      } catch (e) {}
      try {
        final v_memberValueDatatype = instance.memberValueDatatype;
      } catch (e) {}
      try {
        final v_unbalanced = instance.unbalanced;
      } catch (e) {}
      try {
        final v_unbalancedGroup = instance.unbalancedGroup;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final c_fieldsUsage = instance.fieldsUsage;
      } catch (e) {}
      try {
        final c_groupLevels = instance.groupLevels;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_FieldsUsage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FieldsUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_fieldUsage = instance.fieldUsage;
      } catch (e) {}
    });
    test('Test S_CT_FieldsUsage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fieldsusage(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FieldsUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_fieldUsage = instance.fieldUsage;
      } catch (e) {}
    });
    test('Test S_CT_FieldUsage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FieldUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_FieldUsage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fieldusage(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            x: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FieldUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_GroupLevels with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupLevels(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_groupLevel = instance.groupLevel;
      } catch (e) {}
    });
    test('Test S_CT_GroupLevels with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_grouplevels(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupLevels(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_groupLevel = instance.groupLevel;
      } catch (e) {}
    });
    test('Test S_CT_GroupLevel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupLevel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_user = instance.user;
      } catch (e) {}
      try {
        final v_customRollUp = instance.customRollUp;
      } catch (e) {}
      try {
        final c_groups = instance.groups;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_GroupLevel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_grouplevel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            uniqueName: 'test',
            caption: 'test',
            user: true,
            customRollUp: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupLevel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_user = instance.user;
      } catch (e) {}
      try {
        final v_customRollUp = instance.customRollUp;
      } catch (e) {}
      try {
        final c_groups = instance.groups;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Groups with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Groups(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_group = instance.group;
      } catch (e) {}
    });
    test('Test S_CT_Groups with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_groups(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Groups(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_group = instance.group;
      } catch (e) {}
    });
    test('Test S_CT_LevelGroup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_LevelGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_uniqueParent = instance.uniqueParent;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_groupMembers = instance.groupMembers;
      } catch (e) {}
    });
    test('Test S_CT_LevelGroup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_levelgroup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            uniqueName: 'test',
            caption: 'test',
            uniqueParent: 'test',
            id: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_LevelGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final v_uniqueParent = instance.uniqueParent;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_groupMembers = instance.groupMembers;
      } catch (e) {}
    });
    test('Test S_CT_GroupMembers with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupMembers(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_groupMember = instance.groupMember;
      } catch (e) {}
    });
    test('Test S_CT_GroupMembers with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_groupmembers(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupMembers(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_groupMember = instance.groupMember;
      } catch (e) {}
    });
    test('Test S_CT_GroupMember with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupMember(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_group = instance.group;
      } catch (e) {}
    });
    test('Test S_CT_GroupMember with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_groupmember(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            uniqueName: 'test',
            group: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GroupMember(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_group = instance.group;
      } catch (e) {}
    });
    test('Test S_CT_TupleCache with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TupleCache(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_entries = instance.entries;
      } catch (e) {}
      try {
        final c_sets = instance.sets;
      } catch (e) {}
      try {
        final c_queryCache = instance.queryCache;
      } catch (e) {}
      try {
        final c_serverFormats = instance.serverFormats;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_TupleCache with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tuplecache(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TupleCache(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_entries = instance.entries;
      } catch (e) {}
      try {
        final c_sets = instance.sets;
      } catch (e) {}
      try {
        final c_queryCache = instance.queryCache;
      } catch (e) {}
      try {
        final c_serverFormats = instance.serverFormats;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ServerFormat with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ServerFormat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_culture = instance.culture;
      } catch (e) {}
      try {
        final v_format = instance.format;
      } catch (e) {}
    });
    test('Test S_CT_ServerFormat with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_serverformat(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            culture: 'test',
            format: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ServerFormat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_culture = instance.culture;
      } catch (e) {}
      try {
        final v_format = instance.format;
      } catch (e) {}
    });
    test('Test S_CT_ServerFormats with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ServerFormats(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_serverFormat = instance.serverFormat;
      } catch (e) {}
    });
    test('Test S_CT_ServerFormats with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_serverformats(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ServerFormats(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_serverFormat = instance.serverFormat;
      } catch (e) {}
    });
    test('Test S_CT_PCDSDTCEntries with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PCDSDTCEntries(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
    });
    test('Test S_CT_PCDSDTCEntries with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pcdsdtcentries(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PCDSDTCEntries(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_m = instance.m;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
      try {
        final c_e = instance.e;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
    });
    test('Test S_CT_Tuples with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Tuples(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final c_tpl = instance.tpl;
      } catch (e) {}
    });
    test('Test S_CT_Tuples with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tuples(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            c: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Tuples(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final c_tpl = instance.tpl;
      } catch (e) {}
    });
    test('Test S_CT_Tuple with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Tuple(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fld = instance.fld;
      } catch (e) {}
      try {
        final v_hier = instance.hier;
      } catch (e) {}
      try {
        final v_item = instance.item;
      } catch (e) {}
    });
    test('Test S_CT_Tuple with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tuple(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            fld: 1,
            hier: 1,
            item: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Tuple(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fld = instance.fld;
      } catch (e) {}
      try {
        final v_hier = instance.hier;
      } catch (e) {}
      try {
        final v_item = instance.item;
      } catch (e) {}
    });
    test('Test S_CT_Sets with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Sets(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_set_ = instance.set_;
      } catch (e) {}
    });
    test('Test S_CT_Sets with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sets(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Sets(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_set_ = instance.set_;
      } catch (e) {}
    });
    test('Test S_CT_Set with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Set(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_maxRank = instance.maxRank;
      } catch (e) {}
      try {
        final v_setDefinition = instance.setDefinition;
      } catch (e) {}
      try {
        final v_sortType = instance.sortType;
      } catch (e) {}
      try {
        final v_queryFailed = instance.queryFailed;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_sortByTuple = instance.sortByTuple;
      } catch (e) {}
    });
    test('Test S_CT_Set with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_set(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
            maxRank: 1,
            setDefinition: 'test',
            sortType: S_ST_SortType.values.first,
            queryFailed: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Set(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_maxRank = instance.maxRank;
      } catch (e) {}
      try {
        final v_setDefinition = instance.setDefinition;
      } catch (e) {}
      try {
        final v_sortType = instance.sortType;
      } catch (e) {}
      try {
        final v_queryFailed = instance.queryFailed;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
      try {
        final c_sortByTuple = instance.sortByTuple;
      } catch (e) {}
    });
    test('Test S_CT_QueryCache with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryCache(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_query = instance.query;
      } catch (e) {}
    });
    test('Test S_CT_QueryCache with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_querycache(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryCache(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_query = instance.query;
      } catch (e) {}
    });
    test('Test S_CT_Query with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Query(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mdx = instance.mdx;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
    });
    test('Test S_CT_Query with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_query(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            mdx: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Query(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mdx = instance.mdx;
      } catch (e) {}
      try {
        final c_tpls = instance.tpls;
      } catch (e) {}
    });
    test('Test S_CT_CalculatedItems with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalculatedItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_calculatedItem = instance.calculatedItem;
      } catch (e) {}
    });
    test('Test S_CT_CalculatedItems with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_calculateditems(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalculatedItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_calculatedItem = instance.calculatedItem;
      } catch (e) {}
    });
    test('Test S_CT_CalculatedItem with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalculatedItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_field = instance.field;
      } catch (e) {}
      try {
        final v_formula = instance.formula;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CalculatedItem with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_calculateditem(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            field: 1,
            formula: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalculatedItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_field = instance.field;
      } catch (e) {}
      try {
        final v_formula = instance.formula;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CalculatedMembers with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalculatedMembers(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_calculatedMember = instance.calculatedMember;
      } catch (e) {}
    });
    test('Test S_CT_CalculatedMembers with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_calculatedmembers(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalculatedMembers(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_calculatedMember = instance.calculatedMember;
      } catch (e) {}
    });
    test('Test S_CT_CalculatedMember with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalculatedMember(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_mdx = instance.mdx;
      } catch (e) {}
      try {
        final v_memberName = instance.memberName;
      } catch (e) {}
      try {
        final v_hierarchy = instance.hierarchy;
      } catch (e) {}
      try {
        final v_parent = instance.parent;
      } catch (e) {}
      try {
        final v_solveOrder = instance.solveOrder;
      } catch (e) {}
      try {
        final v_set_ = instance.set_;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CalculatedMember with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_calculatedmember(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            mdx: 'test',
            memberName: 'test',
            hierarchy: 'test',
            parent: 'test',
            solveOrder: 1,
            set_: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalculatedMember(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_mdx = instance.mdx;
      } catch (e) {}
      try {
        final v_memberName = instance.memberName;
      } catch (e) {}
      try {
        final v_hierarchy = instance.hierarchy;
      } catch (e) {}
      try {
        final v_parent = instance.parent;
      } catch (e) {}
      try {
        final v_solveOrder = instance.solveOrder;
      } catch (e) {}
      try {
        final v_set_ = instance.set_;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_pivotTableDefinition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_pivotTableDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_cacheId = instance.cacheId;
      } catch (e) {}
      try {
        final v_dataOnRows = instance.dataOnRows;
      } catch (e) {}
      try {
        final v_dataPosition = instance.dataPosition;
      } catch (e) {}
      try {
        final v_dataCaption = instance.dataCaption;
      } catch (e) {}
      try {
        final v_grandTotalCaption = instance.grandTotalCaption;
      } catch (e) {}
      try {
        final v_errorCaption = instance.errorCaption;
      } catch (e) {}
      try {
        final v_showError = instance.showError;
      } catch (e) {}
      try {
        final v_missingCaption = instance.missingCaption;
      } catch (e) {}
      try {
        final v_showMissing = instance.showMissing;
      } catch (e) {}
      try {
        final v_pageStyle = instance.pageStyle;
      } catch (e) {}
      try {
        final v_pivotTableStyle = instance.pivotTableStyle;
      } catch (e) {}
      try {
        final v_vacatedStyle = instance.vacatedStyle;
      } catch (e) {}
      try {
        final v_tag = instance.tag;
      } catch (e) {}
      try {
        final v_updatedVersion = instance.updatedVersion;
      } catch (e) {}
      try {
        final v_minRefreshableVersion = instance.minRefreshableVersion;
      } catch (e) {}
      try {
        final v_asteriskTotals = instance.asteriskTotals;
      } catch (e) {}
      try {
        final v_showItems = instance.showItems;
      } catch (e) {}
      try {
        final v_editData = instance.editData;
      } catch (e) {}
      try {
        final v_disableFieldList = instance.disableFieldList;
      } catch (e) {}
      try {
        final v_showCalcMbrs = instance.showCalcMbrs;
      } catch (e) {}
      try {
        final v_visualTotals = instance.visualTotals;
      } catch (e) {}
      try {
        final v_showMultipleLabel = instance.showMultipleLabel;
      } catch (e) {}
      try {
        final v_showDataDropDown = instance.showDataDropDown;
      } catch (e) {}
      try {
        final v_showDrill = instance.showDrill;
      } catch (e) {}
      try {
        final v_printDrill = instance.printDrill;
      } catch (e) {}
      try {
        final v_showMemberPropertyTips = instance.showMemberPropertyTips;
      } catch (e) {}
      try {
        final v_showDataTips = instance.showDataTips;
      } catch (e) {}
      try {
        final v_enableWizard = instance.enableWizard;
      } catch (e) {}
      try {
        final v_enableDrill = instance.enableDrill;
      } catch (e) {}
      try {
        final v_enableFieldProperties = instance.enableFieldProperties;
      } catch (e) {}
      try {
        final v_preserveFormatting = instance.preserveFormatting;
      } catch (e) {}
      try {
        final v_useAutoFormatting = instance.useAutoFormatting;
      } catch (e) {}
      try {
        final v_pageWrap = instance.pageWrap;
      } catch (e) {}
      try {
        final v_pageOverThenDown = instance.pageOverThenDown;
      } catch (e) {}
      try {
        final v_subtotalHiddenItems = instance.subtotalHiddenItems;
      } catch (e) {}
      try {
        final v_rowGrandTotals = instance.rowGrandTotals;
      } catch (e) {}
      try {
        final v_colGrandTotals = instance.colGrandTotals;
      } catch (e) {}
      try {
        final v_fieldPrintTitles = instance.fieldPrintTitles;
      } catch (e) {}
      try {
        final v_itemPrintTitles = instance.itemPrintTitles;
      } catch (e) {}
      try {
        final v_mergeItem = instance.mergeItem;
      } catch (e) {}
      try {
        final v_showDropZones = instance.showDropZones;
      } catch (e) {}
      try {
        final v_createdVersion = instance.createdVersion;
      } catch (e) {}
      try {
        final v_indent = instance.indent;
      } catch (e) {}
      try {
        final v_showEmptyRow = instance.showEmptyRow;
      } catch (e) {}
      try {
        final v_showEmptyCol = instance.showEmptyCol;
      } catch (e) {}
      try {
        final v_showHeaders = instance.showHeaders;
      } catch (e) {}
      try {
        final v_compact = instance.compact;
      } catch (e) {}
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final v_outlineData = instance.outlineData;
      } catch (e) {}
      try {
        final v_compactData = instance.compactData;
      } catch (e) {}
      try {
        final v_published = instance.published;
      } catch (e) {}
      try {
        final v_gridDropZones = instance.gridDropZones;
      } catch (e) {}
      try {
        final v_immersive = instance.immersive;
      } catch (e) {}
      try {
        final v_multipleFieldFilters = instance.multipleFieldFilters;
      } catch (e) {}
      try {
        final v_chartFormat = instance.chartFormat;
      } catch (e) {}
      try {
        final v_rowHeaderCaption = instance.rowHeaderCaption;
      } catch (e) {}
      try {
        final v_colHeaderCaption = instance.colHeaderCaption;
      } catch (e) {}
      try {
        final v_fieldListSortAscending = instance.fieldListSortAscending;
      } catch (e) {}
      try {
        final v_mdxSubqueries = instance.mdxSubqueries;
      } catch (e) {}
      try {
        final v_customListSort = instance.customListSort;
      } catch (e) {}
      try {
        final c_location = instance.location;
      } catch (e) {}
      try {
        final c_pivotFields = instance.pivotFields;
      } catch (e) {}
      try {
        final c_rowFields = instance.rowFields;
      } catch (e) {}
      try {
        final c_rowItems = instance.rowItems;
      } catch (e) {}
      try {
        final c_colFields = instance.colFields;
      } catch (e) {}
      try {
        final c_colItems = instance.colItems;
      } catch (e) {}
      try {
        final c_pageFields = instance.pageFields;
      } catch (e) {}
      try {
        final c_dataFields = instance.dataFields;
      } catch (e) {}
      try {
        final c_formats = instance.formats;
      } catch (e) {}
      try {
        final c_conditionalFormats = instance.conditionalFormats;
      } catch (e) {}
      try {
        final c_chartFormats = instance.chartFormats;
      } catch (e) {}
      try {
        final c_pivotHierarchies = instance.pivotHierarchies;
      } catch (e) {}
      try {
        final c_pivotTableStyleInfo = instance.pivotTableStyleInfo;
      } catch (e) {}
      try {
        final c_filters = instance.filters;
      } catch (e) {}
      try {
        final c_rowHierarchiesUsage = instance.rowHierarchiesUsage;
      } catch (e) {}
      try {
        final c_colHierarchiesUsage = instance.colHierarchiesUsage;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_pivotTableDefinition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivottabledefinition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            cacheId: 1,
            dataOnRows: true,
            dataPosition: 1,
            dataCaption: 'test',
            grandTotalCaption: 'test',
            errorCaption: 'test',
            showError: true,
            missingCaption: 'test',
            showMissing: true,
            pageStyle: 'test',
            pivotTableStyle: 'test',
            vacatedStyle: 'test',
            tag: 'test',
            updatedVersion: 1,
            minRefreshableVersion: 1,
            asteriskTotals: true,
            showItems: true,
            editData: true,
            disableFieldList: true,
            showCalcMbrs: true,
            visualTotals: true,
            showMultipleLabel: true,
            showDataDropDown: true,
            showDrill: true,
            printDrill: true,
            showMemberPropertyTips: true,
            showDataTips: true,
            enableWizard: true,
            enableDrill: true,
            enableFieldProperties: true,
            preserveFormatting: true,
            useAutoFormatting: true,
            pageWrap: 1,
            pageOverThenDown: true,
            subtotalHiddenItems: true,
            rowGrandTotals: true,
            colGrandTotals: true,
            fieldPrintTitles: true,
            itemPrintTitles: true,
            mergeItem: true,
            showDropZones: true,
            createdVersion: 1,
            indent: 1,
            showEmptyRow: true,
            showEmptyCol: true,
            showHeaders: true,
            compact: true,
            outline: true,
            outlineData: true,
            compactData: true,
            published: true,
            gridDropZones: true,
            immersive: true,
            multipleFieldFilters: true,
            chartFormat: 1,
            rowHeaderCaption: 'test',
            colHeaderCaption: 'test',
            fieldListSortAscending: true,
            mdxSubqueries: true,
            customListSort: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_pivotTableDefinition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_cacheId = instance.cacheId;
      } catch (e) {}
      try {
        final v_dataOnRows = instance.dataOnRows;
      } catch (e) {}
      try {
        final v_dataPosition = instance.dataPosition;
      } catch (e) {}
      try {
        final v_dataCaption = instance.dataCaption;
      } catch (e) {}
      try {
        final v_grandTotalCaption = instance.grandTotalCaption;
      } catch (e) {}
      try {
        final v_errorCaption = instance.errorCaption;
      } catch (e) {}
      try {
        final v_showError = instance.showError;
      } catch (e) {}
      try {
        final v_missingCaption = instance.missingCaption;
      } catch (e) {}
      try {
        final v_showMissing = instance.showMissing;
      } catch (e) {}
      try {
        final v_pageStyle = instance.pageStyle;
      } catch (e) {}
      try {
        final v_pivotTableStyle = instance.pivotTableStyle;
      } catch (e) {}
      try {
        final v_vacatedStyle = instance.vacatedStyle;
      } catch (e) {}
      try {
        final v_tag = instance.tag;
      } catch (e) {}
      try {
        final v_updatedVersion = instance.updatedVersion;
      } catch (e) {}
      try {
        final v_minRefreshableVersion = instance.minRefreshableVersion;
      } catch (e) {}
      try {
        final v_asteriskTotals = instance.asteriskTotals;
      } catch (e) {}
      try {
        final v_showItems = instance.showItems;
      } catch (e) {}
      try {
        final v_editData = instance.editData;
      } catch (e) {}
      try {
        final v_disableFieldList = instance.disableFieldList;
      } catch (e) {}
      try {
        final v_showCalcMbrs = instance.showCalcMbrs;
      } catch (e) {}
      try {
        final v_visualTotals = instance.visualTotals;
      } catch (e) {}
      try {
        final v_showMultipleLabel = instance.showMultipleLabel;
      } catch (e) {}
      try {
        final v_showDataDropDown = instance.showDataDropDown;
      } catch (e) {}
      try {
        final v_showDrill = instance.showDrill;
      } catch (e) {}
      try {
        final v_printDrill = instance.printDrill;
      } catch (e) {}
      try {
        final v_showMemberPropertyTips = instance.showMemberPropertyTips;
      } catch (e) {}
      try {
        final v_showDataTips = instance.showDataTips;
      } catch (e) {}
      try {
        final v_enableWizard = instance.enableWizard;
      } catch (e) {}
      try {
        final v_enableDrill = instance.enableDrill;
      } catch (e) {}
      try {
        final v_enableFieldProperties = instance.enableFieldProperties;
      } catch (e) {}
      try {
        final v_preserveFormatting = instance.preserveFormatting;
      } catch (e) {}
      try {
        final v_useAutoFormatting = instance.useAutoFormatting;
      } catch (e) {}
      try {
        final v_pageWrap = instance.pageWrap;
      } catch (e) {}
      try {
        final v_pageOverThenDown = instance.pageOverThenDown;
      } catch (e) {}
      try {
        final v_subtotalHiddenItems = instance.subtotalHiddenItems;
      } catch (e) {}
      try {
        final v_rowGrandTotals = instance.rowGrandTotals;
      } catch (e) {}
      try {
        final v_colGrandTotals = instance.colGrandTotals;
      } catch (e) {}
      try {
        final v_fieldPrintTitles = instance.fieldPrintTitles;
      } catch (e) {}
      try {
        final v_itemPrintTitles = instance.itemPrintTitles;
      } catch (e) {}
      try {
        final v_mergeItem = instance.mergeItem;
      } catch (e) {}
      try {
        final v_showDropZones = instance.showDropZones;
      } catch (e) {}
      try {
        final v_createdVersion = instance.createdVersion;
      } catch (e) {}
      try {
        final v_indent = instance.indent;
      } catch (e) {}
      try {
        final v_showEmptyRow = instance.showEmptyRow;
      } catch (e) {}
      try {
        final v_showEmptyCol = instance.showEmptyCol;
      } catch (e) {}
      try {
        final v_showHeaders = instance.showHeaders;
      } catch (e) {}
      try {
        final v_compact = instance.compact;
      } catch (e) {}
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final v_outlineData = instance.outlineData;
      } catch (e) {}
      try {
        final v_compactData = instance.compactData;
      } catch (e) {}
      try {
        final v_published = instance.published;
      } catch (e) {}
      try {
        final v_gridDropZones = instance.gridDropZones;
      } catch (e) {}
      try {
        final v_immersive = instance.immersive;
      } catch (e) {}
      try {
        final v_multipleFieldFilters = instance.multipleFieldFilters;
      } catch (e) {}
      try {
        final v_chartFormat = instance.chartFormat;
      } catch (e) {}
      try {
        final v_rowHeaderCaption = instance.rowHeaderCaption;
      } catch (e) {}
      try {
        final v_colHeaderCaption = instance.colHeaderCaption;
      } catch (e) {}
      try {
        final v_fieldListSortAscending = instance.fieldListSortAscending;
      } catch (e) {}
      try {
        final v_mdxSubqueries = instance.mdxSubqueries;
      } catch (e) {}
      try {
        final v_customListSort = instance.customListSort;
      } catch (e) {}
      try {
        final c_location = instance.location;
      } catch (e) {}
      try {
        final c_pivotFields = instance.pivotFields;
      } catch (e) {}
      try {
        final c_rowFields = instance.rowFields;
      } catch (e) {}
      try {
        final c_rowItems = instance.rowItems;
      } catch (e) {}
      try {
        final c_colFields = instance.colFields;
      } catch (e) {}
      try {
        final c_colItems = instance.colItems;
      } catch (e) {}
      try {
        final c_pageFields = instance.pageFields;
      } catch (e) {}
      try {
        final c_dataFields = instance.dataFields;
      } catch (e) {}
      try {
        final c_formats = instance.formats;
      } catch (e) {}
      try {
        final c_conditionalFormats = instance.conditionalFormats;
      } catch (e) {}
      try {
        final c_chartFormats = instance.chartFormats;
      } catch (e) {}
      try {
        final c_pivotHierarchies = instance.pivotHierarchies;
      } catch (e) {}
      try {
        final c_pivotTableStyleInfo = instance.pivotTableStyleInfo;
      } catch (e) {}
      try {
        final c_filters = instance.filters;
      } catch (e) {}
      try {
        final c_rowHierarchiesUsage = instance.rowHierarchiesUsage;
      } catch (e) {}
      try {
        final c_colHierarchiesUsage = instance.colHierarchiesUsage;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Location with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Location(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_firstHeaderRow = instance.firstHeaderRow;
      } catch (e) {}
      try {
        final v_firstDataRow = instance.firstDataRow;
      } catch (e) {}
      try {
        final v_firstDataCol = instance.firstDataCol;
      } catch (e) {}
      try {
        final v_rowPageCount = instance.rowPageCount;
      } catch (e) {}
      try {
        final v_colPageCount = instance.colPageCount;
      } catch (e) {}
    });
    test('Test S_CT_Location with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_location(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
            firstHeaderRow: 1,
            firstDataRow: 1,
            firstDataCol: 1,
            rowPageCount: 1,
            colPageCount: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Location(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_firstHeaderRow = instance.firstHeaderRow;
      } catch (e) {}
      try {
        final v_firstDataRow = instance.firstDataRow;
      } catch (e) {}
      try {
        final v_firstDataCol = instance.firstDataCol;
      } catch (e) {}
      try {
        final v_rowPageCount = instance.rowPageCount;
      } catch (e) {}
      try {
        final v_colPageCount = instance.colPageCount;
      } catch (e) {}
    });
    test('Test S_CT_PivotFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pivotField = instance.pivotField;
      } catch (e) {}
    });
    test('Test S_CT_PivotFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotfields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pivotField = instance.pivotField;
      } catch (e) {}
    });
    test('Test S_CT_PivotField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_axis = instance.axis;
      } catch (e) {}
      try {
        final v_dataField = instance.dataField;
      } catch (e) {}
      try {
        final v_subtotalCaption = instance.subtotalCaption;
      } catch (e) {}
      try {
        final v_showDropDowns = instance.showDropDowns;
      } catch (e) {}
      try {
        final v_hiddenLevel = instance.hiddenLevel;
      } catch (e) {}
      try {
        final v_uniqueMemberProperty = instance.uniqueMemberProperty;
      } catch (e) {}
      try {
        final v_compact = instance.compact;
      } catch (e) {}
      try {
        final v_allDrilled = instance.allDrilled;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final v_subtotalTop = instance.subtotalTop;
      } catch (e) {}
      try {
        final v_dragToRow = instance.dragToRow;
      } catch (e) {}
      try {
        final v_dragToCol = instance.dragToCol;
      } catch (e) {}
      try {
        final v_multipleItemSelectionAllowed =
            instance.multipleItemSelectionAllowed;
      } catch (e) {}
      try {
        final v_dragToPage = instance.dragToPage;
      } catch (e) {}
      try {
        final v_dragToData = instance.dragToData;
      } catch (e) {}
      try {
        final v_dragOff = instance.dragOff;
      } catch (e) {}
      try {
        final v_showAll = instance.showAll;
      } catch (e) {}
      try {
        final v_insertBlankRow = instance.insertBlankRow;
      } catch (e) {}
      try {
        final v_serverField = instance.serverField;
      } catch (e) {}
      try {
        final v_insertPageBreak = instance.insertPageBreak;
      } catch (e) {}
      try {
        final v_autoShow = instance.autoShow;
      } catch (e) {}
      try {
        final v_topAutoShow = instance.topAutoShow;
      } catch (e) {}
      try {
        final v_hideNewItems = instance.hideNewItems;
      } catch (e) {}
      try {
        final v_measureFilter = instance.measureFilter;
      } catch (e) {}
      try {
        final v_includeNewItemsInFilter = instance.includeNewItemsInFilter;
      } catch (e) {}
      try {
        final v_itemPageCount = instance.itemPageCount;
      } catch (e) {}
      try {
        final v_sortType = instance.sortType;
      } catch (e) {}
      try {
        final v_dataSourceSort = instance.dataSourceSort;
      } catch (e) {}
      try {
        final v_nonAutoSortDefault = instance.nonAutoSortDefault;
      } catch (e) {}
      try {
        final v_rankBy = instance.rankBy;
      } catch (e) {}
      try {
        final v_defaultSubtotal = instance.defaultSubtotal;
      } catch (e) {}
      try {
        final v_sumSubtotal = instance.sumSubtotal;
      } catch (e) {}
      try {
        final v_countASubtotal = instance.countASubtotal;
      } catch (e) {}
      try {
        final v_avgSubtotal = instance.avgSubtotal;
      } catch (e) {}
      try {
        final v_maxSubtotal = instance.maxSubtotal;
      } catch (e) {}
      try {
        final v_minSubtotal = instance.minSubtotal;
      } catch (e) {}
      try {
        final v_productSubtotal = instance.productSubtotal;
      } catch (e) {}
      try {
        final v_countSubtotal = instance.countSubtotal;
      } catch (e) {}
      try {
        final v_stdDevSubtotal = instance.stdDevSubtotal;
      } catch (e) {}
      try {
        final v_stdDevPSubtotal = instance.stdDevPSubtotal;
      } catch (e) {}
      try {
        final v_varSubtotal = instance.varSubtotal;
      } catch (e) {}
      try {
        final v_varPSubtotal = instance.varPSubtotal;
      } catch (e) {}
      try {
        final v_showPropCell = instance.showPropCell;
      } catch (e) {}
      try {
        final v_showPropTip = instance.showPropTip;
      } catch (e) {}
      try {
        final v_showPropAsCaption = instance.showPropAsCaption;
      } catch (e) {}
      try {
        final v_defaultAttributeDrillState =
            instance.defaultAttributeDrillState;
      } catch (e) {}
      try {
        final c_items = instance.items;
      } catch (e) {}
      try {
        final c_autoSortScope = instance.autoSortScope;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotfield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            axis: S_ST_Axis.values.first,
            dataField: true,
            subtotalCaption: 'test',
            showDropDowns: true,
            hiddenLevel: true,
            uniqueMemberProperty: 'test',
            compact: true,
            allDrilled: true,
            numFmtId: 'test',
            outline: true,
            subtotalTop: true,
            dragToRow: true,
            dragToCol: true,
            multipleItemSelectionAllowed: true,
            dragToPage: true,
            dragToData: true,
            dragOff: true,
            showAll: true,
            insertBlankRow: true,
            serverField: true,
            insertPageBreak: true,
            autoShow: true,
            topAutoShow: true,
            hideNewItems: true,
            measureFilter: true,
            includeNewItemsInFilter: true,
            itemPageCount: 1,
            sortType: S_ST_FieldSortType.values.first,
            dataSourceSort: true,
            nonAutoSortDefault: true,
            rankBy: 1,
            defaultSubtotal: true,
            sumSubtotal: true,
            countASubtotal: true,
            avgSubtotal: true,
            maxSubtotal: true,
            minSubtotal: true,
            productSubtotal: true,
            countSubtotal: true,
            stdDevSubtotal: true,
            stdDevPSubtotal: true,
            varSubtotal: true,
            varPSubtotal: true,
            showPropCell: true,
            showPropTip: true,
            showPropAsCaption: true,
            defaultAttributeDrillState: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_axis = instance.axis;
      } catch (e) {}
      try {
        final v_dataField = instance.dataField;
      } catch (e) {}
      try {
        final v_subtotalCaption = instance.subtotalCaption;
      } catch (e) {}
      try {
        final v_showDropDowns = instance.showDropDowns;
      } catch (e) {}
      try {
        final v_hiddenLevel = instance.hiddenLevel;
      } catch (e) {}
      try {
        final v_uniqueMemberProperty = instance.uniqueMemberProperty;
      } catch (e) {}
      try {
        final v_compact = instance.compact;
      } catch (e) {}
      try {
        final v_allDrilled = instance.allDrilled;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final v_subtotalTop = instance.subtotalTop;
      } catch (e) {}
      try {
        final v_dragToRow = instance.dragToRow;
      } catch (e) {}
      try {
        final v_dragToCol = instance.dragToCol;
      } catch (e) {}
      try {
        final v_multipleItemSelectionAllowed =
            instance.multipleItemSelectionAllowed;
      } catch (e) {}
      try {
        final v_dragToPage = instance.dragToPage;
      } catch (e) {}
      try {
        final v_dragToData = instance.dragToData;
      } catch (e) {}
      try {
        final v_dragOff = instance.dragOff;
      } catch (e) {}
      try {
        final v_showAll = instance.showAll;
      } catch (e) {}
      try {
        final v_insertBlankRow = instance.insertBlankRow;
      } catch (e) {}
      try {
        final v_serverField = instance.serverField;
      } catch (e) {}
      try {
        final v_insertPageBreak = instance.insertPageBreak;
      } catch (e) {}
      try {
        final v_autoShow = instance.autoShow;
      } catch (e) {}
      try {
        final v_topAutoShow = instance.topAutoShow;
      } catch (e) {}
      try {
        final v_hideNewItems = instance.hideNewItems;
      } catch (e) {}
      try {
        final v_measureFilter = instance.measureFilter;
      } catch (e) {}
      try {
        final v_includeNewItemsInFilter = instance.includeNewItemsInFilter;
      } catch (e) {}
      try {
        final v_itemPageCount = instance.itemPageCount;
      } catch (e) {}
      try {
        final v_sortType = instance.sortType;
      } catch (e) {}
      try {
        final v_dataSourceSort = instance.dataSourceSort;
      } catch (e) {}
      try {
        final v_nonAutoSortDefault = instance.nonAutoSortDefault;
      } catch (e) {}
      try {
        final v_rankBy = instance.rankBy;
      } catch (e) {}
      try {
        final v_defaultSubtotal = instance.defaultSubtotal;
      } catch (e) {}
      try {
        final v_sumSubtotal = instance.sumSubtotal;
      } catch (e) {}
      try {
        final v_countASubtotal = instance.countASubtotal;
      } catch (e) {}
      try {
        final v_avgSubtotal = instance.avgSubtotal;
      } catch (e) {}
      try {
        final v_maxSubtotal = instance.maxSubtotal;
      } catch (e) {}
      try {
        final v_minSubtotal = instance.minSubtotal;
      } catch (e) {}
      try {
        final v_productSubtotal = instance.productSubtotal;
      } catch (e) {}
      try {
        final v_countSubtotal = instance.countSubtotal;
      } catch (e) {}
      try {
        final v_stdDevSubtotal = instance.stdDevSubtotal;
      } catch (e) {}
      try {
        final v_stdDevPSubtotal = instance.stdDevPSubtotal;
      } catch (e) {}
      try {
        final v_varSubtotal = instance.varSubtotal;
      } catch (e) {}
      try {
        final v_varPSubtotal = instance.varPSubtotal;
      } catch (e) {}
      try {
        final v_showPropCell = instance.showPropCell;
      } catch (e) {}
      try {
        final v_showPropTip = instance.showPropTip;
      } catch (e) {}
      try {
        final v_showPropAsCaption = instance.showPropAsCaption;
      } catch (e) {}
      try {
        final v_defaultAttributeDrillState =
            instance.defaultAttributeDrillState;
      } catch (e) {}
      try {
        final c_items = instance.items;
      } catch (e) {}
      try {
        final c_autoSortScope = instance.autoSortScope;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_AutoSortScope with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_AutoSortScope(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
    });
    test('Test S_CT_AutoSortScope with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_autosortscope(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_AutoSortScope(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
    });
    test('Test S_CT_Items with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Items(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_item = instance.item;
      } catch (e) {}
    });
    test('Test S_CT_Items with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_items(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Items(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_item = instance.item;
      } catch (e) {}
    });
    test('Test S_CT_Item with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Item(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_h = instance.h;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_sd = instance.sd;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_m = instance.m;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_x = instance.x;
      } catch (e) {}
      try {
        final v_d = instance.d;
      } catch (e) {}
      try {
        final v_e = instance.e;
      } catch (e) {}
    });
    test('Test S_CT_Item with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_item(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            n: 'test',
            t: S_ST_ItemType.values.first,
            h: true,
            s: true,
            sd: true,
            f: true,
            m: true,
            c: true,
            x: 1,
            d: true,
            e: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Item(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_h = instance.h;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_sd = instance.sd;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final v_m = instance.m;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_x = instance.x;
      } catch (e) {}
      try {
        final v_d = instance.d;
      } catch (e) {}
      try {
        final v_e = instance.e;
      } catch (e) {}
    });
    test('Test S_CT_PageFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pageField = instance.pageField;
      } catch (e) {}
    });
    test('Test S_CT_PageFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pagefields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pageField = instance.pageField;
      } catch (e) {}
    });
    test('Test S_CT_PageField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fld = instance.fld;
      } catch (e) {}
      try {
        final v_item = instance.item;
      } catch (e) {}
      try {
        final v_hier = instance.hier;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_cap = instance.cap;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PageField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pagefield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            fld: 1,
            item: 1,
            hier: 1,
            name: 'test',
            cap: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fld = instance.fld;
      } catch (e) {}
      try {
        final v_item = instance.item;
      } catch (e) {}
      try {
        final v_hier = instance.hier;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_cap = instance.cap;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_DataFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dataField = instance.dataField;
      } catch (e) {}
    });
    test('Test S_CT_DataFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_datafields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dataField = instance.dataField;
      } catch (e) {}
    });
    test('Test S_CT_DataField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_fld = instance.fld;
      } catch (e) {}
      try {
        final v_subtotal = instance.subtotal;
      } catch (e) {}
      try {
        final v_showDataAs = instance.showDataAs;
      } catch (e) {}
      try {
        final v_baseField = instance.baseField;
      } catch (e) {}
      try {
        final v_baseItem = instance.baseItem;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_DataField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_datafield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            fld: 1,
            subtotal: S_ST_DataConsolidateFunction.values.first,
            showDataAs: S_ST_ShowDataAs.values.first,
            baseField: 1,
            baseItem: 1,
            numFmtId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_fld = instance.fld;
      } catch (e) {}
      try {
        final v_subtotal = instance.subtotal;
      } catch (e) {}
      try {
        final v_showDataAs = instance.showDataAs;
      } catch (e) {}
      try {
        final v_baseField = instance.baseField;
      } catch (e) {}
      try {
        final v_baseItem = instance.baseItem;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_rowItems with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_rowItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
    });
    test('Test S_CT_rowItems with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_rowitems(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_rowItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
    });
    test('Test S_CT_colItems with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_colItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
    });
    test('Test S_CT_colItems with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_colitems(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_colItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
    });
    test('Test S_CT_I with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_I(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_I with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_i(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            t: S_ST_ItemType.values.first,
            r: 1,
            i: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_I(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_X with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_X(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_X with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_x(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            v: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_X(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_RowFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RowFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_field = instance.field;
      } catch (e) {}
    });
    test('Test S_CT_RowFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_rowfields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RowFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_field = instance.field;
      } catch (e) {}
    });
    test('Test S_CT_ColFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ColFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_field = instance.field;
      } catch (e) {}
    });
    test('Test S_CT_ColFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_colfields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ColFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_field = instance.field;
      } catch (e) {}
    });
    test('Test S_CT_Field with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Field(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Field with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_field(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            x: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Field(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_x = instance.x;
      } catch (e) {}
    });
    test('Test S_CT_Formats with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Formats(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_format = instance.format;
      } catch (e) {}
    });
    test('Test S_CT_Formats with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_formats(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Formats(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_format = instance.format;
      } catch (e) {}
    });
    test('Test S_CT_Format with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Format(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_action = instance.action;
      } catch (e) {}
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Format with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_format(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            action: S_ST_FormatAction.values.first,
            dxfId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Format(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_action = instance.action;
      } catch (e) {}
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ConditionalFormats with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ConditionalFormats(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_conditionalFormat = instance.conditionalFormat;
      } catch (e) {}
    });
    test('Test S_CT_ConditionalFormats with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_conditionalformats(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ConditionalFormats(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_conditionalFormat = instance.conditionalFormat;
      } catch (e) {}
    });
    test('Test S_CT_ConditionalFormat with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ConditionalFormat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_scope = instance.scope;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_priority = instance.priority;
      } catch (e) {}
      try {
        final c_pivotAreas = instance.pivotAreas;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ConditionalFormat with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_conditionalformat(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            scope: S_ST_Scope.values.first,
            type: S_ST_Type.values.first,
            priority: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ConditionalFormat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_scope = instance.scope;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_priority = instance.priority;
      } catch (e) {}
      try {
        final c_pivotAreas = instance.pivotAreas;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotAreas with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotAreas(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
    });
    test('Test S_CT_PivotAreas with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotareas(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotAreas(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
    });
    test('Test S_CT_ChartFormats with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartFormats(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_chartFormat = instance.chartFormat;
      } catch (e) {}
    });
    test('Test S_CT_ChartFormats with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_chartformats(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartFormats(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_chartFormat = instance.chartFormat;
      } catch (e) {}
    });
    test('Test S_CT_ChartFormat with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartFormat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_chart = instance.chart;
      } catch (e) {}
      try {
        final v_format = instance.format;
      } catch (e) {}
      try {
        final v_series = instance.series;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
    });
    test('Test S_CT_ChartFormat with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_chartformat(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            chart: 1,
            format: 1,
            series: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartFormat(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_chart = instance.chart;
      } catch (e) {}
      try {
        final v_format = instance.format;
      } catch (e) {}
      try {
        final v_series = instance.series;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
    });
    test('Test S_CT_PivotHierarchies with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotHierarchies(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pivotHierarchy = instance.pivotHierarchy;
      } catch (e) {}
    });
    test('Test S_CT_PivotHierarchies with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivothierarchies(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotHierarchies(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_pivotHierarchy = instance.pivotHierarchy;
      } catch (e) {}
    });
    test('Test S_CT_PivotHierarchy with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotHierarchy(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final v_multipleItemSelectionAllowed =
            instance.multipleItemSelectionAllowed;
      } catch (e) {}
      try {
        final v_subtotalTop = instance.subtotalTop;
      } catch (e) {}
      try {
        final v_showInFieldList = instance.showInFieldList;
      } catch (e) {}
      try {
        final v_dragToRow = instance.dragToRow;
      } catch (e) {}
      try {
        final v_dragToCol = instance.dragToCol;
      } catch (e) {}
      try {
        final v_dragToPage = instance.dragToPage;
      } catch (e) {}
      try {
        final v_dragToData = instance.dragToData;
      } catch (e) {}
      try {
        final v_dragOff = instance.dragOff;
      } catch (e) {}
      try {
        final v_includeNewItemsInFilter = instance.includeNewItemsInFilter;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final c_mps = instance.mps;
      } catch (e) {}
      try {
        final c_members = instance.members;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotHierarchy with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivothierarchy(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            outline: true,
            multipleItemSelectionAllowed: true,
            subtotalTop: true,
            showInFieldList: true,
            dragToRow: true,
            dragToCol: true,
            dragToPage: true,
            dragToData: true,
            dragOff: true,
            includeNewItemsInFilter: true,
            caption: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotHierarchy(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final v_multipleItemSelectionAllowed =
            instance.multipleItemSelectionAllowed;
      } catch (e) {}
      try {
        final v_subtotalTop = instance.subtotalTop;
      } catch (e) {}
      try {
        final v_showInFieldList = instance.showInFieldList;
      } catch (e) {}
      try {
        final v_dragToRow = instance.dragToRow;
      } catch (e) {}
      try {
        final v_dragToCol = instance.dragToCol;
      } catch (e) {}
      try {
        final v_dragToPage = instance.dragToPage;
      } catch (e) {}
      try {
        final v_dragToData = instance.dragToData;
      } catch (e) {}
      try {
        final v_dragOff = instance.dragOff;
      } catch (e) {}
      try {
        final v_includeNewItemsInFilter = instance.includeNewItemsInFilter;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
      try {
        final c_mps = instance.mps;
      } catch (e) {}
      try {
        final c_members = instance.members;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RowHierarchiesUsage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RowHierarchiesUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_rowHierarchyUsage = instance.rowHierarchyUsage;
      } catch (e) {}
    });
    test('Test S_CT_RowHierarchiesUsage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_rowhierarchiesusage(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RowHierarchiesUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_rowHierarchyUsage = instance.rowHierarchyUsage;
      } catch (e) {}
    });
    test('Test S_CT_ColHierarchiesUsage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ColHierarchiesUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_colHierarchyUsage = instance.colHierarchyUsage;
      } catch (e) {}
    });
    test('Test S_CT_ColHierarchiesUsage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_colhierarchiesusage(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ColHierarchiesUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_colHierarchyUsage = instance.colHierarchyUsage;
      } catch (e) {}
    });
    test('Test S_CT_HierarchyUsage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_HierarchyUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hierarchyUsage = instance.hierarchyUsage;
      } catch (e) {}
    });
    test('Test S_CT_HierarchyUsage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_hierarchyusage(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            hierarchyUsage: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_HierarchyUsage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_hierarchyUsage = instance.hierarchyUsage;
      } catch (e) {}
    });
    test('Test S_CT_MemberProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MemberProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_mp = instance.mp;
      } catch (e) {}
    });
    test('Test S_CT_MemberProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_memberproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MemberProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_mp = instance.mp;
      } catch (e) {}
    });
    test('Test S_CT_MemberProperty with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MemberProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_showCell = instance.showCell;
      } catch (e) {}
      try {
        final v_showTip = instance.showTip;
      } catch (e) {}
      try {
        final v_showAsCaption = instance.showAsCaption;
      } catch (e) {}
      try {
        final v_nameLen = instance.nameLen;
      } catch (e) {}
      try {
        final v_pPos = instance.pPos;
      } catch (e) {}
      try {
        final v_pLen = instance.pLen;
      } catch (e) {}
      try {
        final v_level = instance.level;
      } catch (e) {}
      try {
        final v_field = instance.field;
      } catch (e) {}
    });
    test('Test S_CT_MemberProperty with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_memberproperty(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            showCell: true,
            showTip: true,
            showAsCaption: true,
            nameLen: 1,
            pPos: 1,
            pLen: 1,
            level: 1,
            field: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MemberProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_showCell = instance.showCell;
      } catch (e) {}
      try {
        final v_showTip = instance.showTip;
      } catch (e) {}
      try {
        final v_showAsCaption = instance.showAsCaption;
      } catch (e) {}
      try {
        final v_nameLen = instance.nameLen;
      } catch (e) {}
      try {
        final v_pPos = instance.pPos;
      } catch (e) {}
      try {
        final v_pLen = instance.pLen;
      } catch (e) {}
      try {
        final v_level = instance.level;
      } catch (e) {}
      try {
        final v_field = instance.field;
      } catch (e) {}
    });
    test('Test S_CT_Members with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Members(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_level = instance.level;
      } catch (e) {}
      try {
        final c_member = instance.member;
      } catch (e) {}
    });
    test('Test S_CT_Members with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_members(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
            level: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Members(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_level = instance.level;
      } catch (e) {}
      try {
        final c_member = instance.member;
      } catch (e) {}
    });
    test('Test S_CT_Member with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Member(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test S_CT_Member with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_member(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Member(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test S_CT_Dimensions with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Dimensions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dimension = instance.dimension;
      } catch (e) {}
    });
    test('Test S_CT_Dimensions with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_dimensions(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Dimensions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dimension = instance.dimension;
      } catch (e) {}
    });
    test('Test S_CT_PivotDimension with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotDimension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_measure = instance.measure;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
    });
    test('Test S_CT_PivotDimension with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotdimension(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            measure: true,
            name: 'test',
            uniqueName: 'test',
            caption: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotDimension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_measure = instance.measure;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
    });
    test('Test S_CT_MeasureGroups with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MeasureGroups(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_measureGroup = instance.measureGroup;
      } catch (e) {}
    });
    test('Test S_CT_MeasureGroups with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_measuregroups(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MeasureGroups(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_measureGroup = instance.measureGroup;
      } catch (e) {}
    });
    test('Test S_CT_MeasureDimensionMaps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MeasureDimensionMaps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_map = instance.map;
      } catch (e) {}
    });
    test('Test S_CT_MeasureDimensionMaps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_measuredimensionmaps(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MeasureDimensionMaps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_map = instance.map;
      } catch (e) {}
    });
    test('Test S_CT_MeasureGroup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MeasureGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
    });
    test('Test S_CT_MeasureGroup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_measuregroup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            caption: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MeasureGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_caption = instance.caption;
      } catch (e) {}
    });
    test('Test S_CT_MeasureDimensionMap with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MeasureDimensionMap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_measureGroup = instance.measureGroup;
      } catch (e) {}
      try {
        final v_dimension = instance.dimension;
      } catch (e) {}
    });
    test('Test S_CT_MeasureDimensionMap with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_measuredimensionmap(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            measureGroup: 1,
            dimension: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MeasureDimensionMap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_measureGroup = instance.measureGroup;
      } catch (e) {}
      try {
        final v_dimension = instance.dimension;
      } catch (e) {}
    });
    test('Test S_CT_PivotTableStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotTableStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_showRowHeaders = instance.showRowHeaders;
      } catch (e) {}
      try {
        final v_showColHeaders = instance.showColHeaders;
      } catch (e) {}
      try {
        final v_showRowStripes = instance.showRowStripes;
      } catch (e) {}
      try {
        final v_showColStripes = instance.showColStripes;
      } catch (e) {}
      try {
        final v_showLastColumn = instance.showLastColumn;
      } catch (e) {}
    });
    test('Test S_CT_PivotTableStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivottablestyle(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            showRowHeaders: true,
            showColHeaders: true,
            showRowStripes: true,
            showColStripes: true,
            showLastColumn: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotTableStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_showRowHeaders = instance.showRowHeaders;
      } catch (e) {}
      try {
        final v_showColHeaders = instance.showColHeaders;
      } catch (e) {}
      try {
        final v_showRowStripes = instance.showRowStripes;
      } catch (e) {}
      try {
        final v_showColStripes = instance.showColStripes;
      } catch (e) {}
      try {
        final v_showLastColumn = instance.showLastColumn;
      } catch (e) {}
    });
    test('Test S_CT_PivotFilters with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotFilters(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_filter = instance.filter;
      } catch (e) {}
    });
    test('Test S_CT_PivotFilters with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotfilters(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotFilters(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_filter = instance.filter;
      } catch (e) {}
    });
    test('Test S_CT_PivotFilter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fld = instance.fld;
      } catch (e) {}
      try {
        final v_mpFld = instance.mpFld;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_evalOrder = instance.evalOrder;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_iMeasureHier = instance.iMeasureHier;
      } catch (e) {}
      try {
        final v_iMeasureFld = instance.iMeasureFld;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_description = instance.description;
      } catch (e) {}
      try {
        final v_stringValue1 = instance.stringValue1;
      } catch (e) {}
      try {
        final v_stringValue2 = instance.stringValue2;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotFilter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotfilter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            fld: 1,
            mpFld: 1,
            type: S_ST_PivotFilterType.values.first,
            evalOrder: 1,
            id: 1,
            iMeasureHier: 1,
            iMeasureFld: 1,
            name: 'test',
            description: 'test',
            stringValue1: 'test',
            stringValue2: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotFilter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fld = instance.fld;
      } catch (e) {}
      try {
        final v_mpFld = instance.mpFld;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_evalOrder = instance.evalOrder;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_iMeasureHier = instance.iMeasureHier;
      } catch (e) {}
      try {
        final v_iMeasureFld = instance.iMeasureFld;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_description = instance.description;
      } catch (e) {}
      try {
        final v_stringValue1 = instance.stringValue1;
      } catch (e) {}
      try {
        final v_stringValue2 = instance.stringValue2;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotArea with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotArea(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_field = instance.field;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_dataOnly = instance.dataOnly;
      } catch (e) {}
      try {
        final v_labelOnly = instance.labelOnly;
      } catch (e) {}
      try {
        final v_grandRow = instance.grandRow;
      } catch (e) {}
      try {
        final v_grandCol = instance.grandCol;
      } catch (e) {}
      try {
        final v_cacheIndex = instance.cacheIndex;
      } catch (e) {}
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final v_offset = instance.offset;
      } catch (e) {}
      try {
        final v_collapsedLevelsAreSubtotals =
            instance.collapsedLevelsAreSubtotals;
      } catch (e) {}
      try {
        final v_axis = instance.axis;
      } catch (e) {}
      try {
        final v_fieldPosition = instance.fieldPosition;
      } catch (e) {}
      try {
        final c_references = instance.references;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotArea with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotarea(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            field: 1,
            type: S_ST_PivotAreaType.values.first,
            dataOnly: true,
            labelOnly: true,
            grandRow: true,
            grandCol: true,
            cacheIndex: true,
            outline: true,
            offset: 'test',
            collapsedLevelsAreSubtotals: true,
            axis: S_ST_Axis.values.first,
            fieldPosition: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotArea(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_field = instance.field;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_dataOnly = instance.dataOnly;
      } catch (e) {}
      try {
        final v_labelOnly = instance.labelOnly;
      } catch (e) {}
      try {
        final v_grandRow = instance.grandRow;
      } catch (e) {}
      try {
        final v_grandCol = instance.grandCol;
      } catch (e) {}
      try {
        final v_cacheIndex = instance.cacheIndex;
      } catch (e) {}
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final v_offset = instance.offset;
      } catch (e) {}
      try {
        final v_collapsedLevelsAreSubtotals =
            instance.collapsedLevelsAreSubtotals;
      } catch (e) {}
      try {
        final v_axis = instance.axis;
      } catch (e) {}
      try {
        final v_fieldPosition = instance.fieldPosition;
      } catch (e) {}
      try {
        final c_references = instance.references;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotAreaReferences with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotAreaReferences(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_reference = instance.reference;
      } catch (e) {}
    });
    test('Test S_CT_PivotAreaReferences with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotareareferences(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotAreaReferences(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_reference = instance.reference;
      } catch (e) {}
    });
    test('Test S_CT_PivotAreaReference with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotAreaReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_field = instance.field;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_selected = instance.selected;
      } catch (e) {}
      try {
        final v_byPosition = instance.byPosition;
      } catch (e) {}
      try {
        final v_relative = instance.relative;
      } catch (e) {}
      try {
        final v_defaultSubtotal = instance.defaultSubtotal;
      } catch (e) {}
      try {
        final v_sumSubtotal = instance.sumSubtotal;
      } catch (e) {}
      try {
        final v_countASubtotal = instance.countASubtotal;
      } catch (e) {}
      try {
        final v_avgSubtotal = instance.avgSubtotal;
      } catch (e) {}
      try {
        final v_maxSubtotal = instance.maxSubtotal;
      } catch (e) {}
      try {
        final v_minSubtotal = instance.minSubtotal;
      } catch (e) {}
      try {
        final v_productSubtotal = instance.productSubtotal;
      } catch (e) {}
      try {
        final v_countSubtotal = instance.countSubtotal;
      } catch (e) {}
      try {
        final v_stdDevSubtotal = instance.stdDevSubtotal;
      } catch (e) {}
      try {
        final v_stdDevPSubtotal = instance.stdDevPSubtotal;
      } catch (e) {}
      try {
        final v_varSubtotal = instance.varSubtotal;
      } catch (e) {}
      try {
        final v_varPSubtotal = instance.varPSubtotal;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PivotAreaReference with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotareareference(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            field: 1,
            count: 1,
            selected: true,
            byPosition: true,
            relative: true,
            defaultSubtotal: true,
            sumSubtotal: true,
            countASubtotal: true,
            avgSubtotal: true,
            maxSubtotal: true,
            minSubtotal: true,
            productSubtotal: true,
            countSubtotal: true,
            stdDevSubtotal: true,
            stdDevPSubtotal: true,
            varSubtotal: true,
            varPSubtotal: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotAreaReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_field = instance.field;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_selected = instance.selected;
      } catch (e) {}
      try {
        final v_byPosition = instance.byPosition;
      } catch (e) {}
      try {
        final v_relative = instance.relative;
      } catch (e) {}
      try {
        final v_defaultSubtotal = instance.defaultSubtotal;
      } catch (e) {}
      try {
        final v_sumSubtotal = instance.sumSubtotal;
      } catch (e) {}
      try {
        final v_countASubtotal = instance.countASubtotal;
      } catch (e) {}
      try {
        final v_avgSubtotal = instance.avgSubtotal;
      } catch (e) {}
      try {
        final v_maxSubtotal = instance.maxSubtotal;
      } catch (e) {}
      try {
        final v_minSubtotal = instance.minSubtotal;
      } catch (e) {}
      try {
        final v_productSubtotal = instance.productSubtotal;
      } catch (e) {}
      try {
        final v_countSubtotal = instance.countSubtotal;
      } catch (e) {}
      try {
        final v_stdDevSubtotal = instance.stdDevSubtotal;
      } catch (e) {}
      try {
        final v_stdDevPSubtotal = instance.stdDevPSubtotal;
      } catch (e) {}
      try {
        final v_varSubtotal = instance.varSubtotal;
      } catch (e) {}
      try {
        final v_varPSubtotal = instance.varPSubtotal;
      } catch (e) {}
      try {
        final c_x = instance.x;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Index with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Index(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_Index with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_index(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            v: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Index(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_QueryTable with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTable(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_headers = instance.headers;
      } catch (e) {}
      try {
        final v_rowNumbers = instance.rowNumbers;
      } catch (e) {}
      try {
        final v_disableRefresh = instance.disableRefresh;
      } catch (e) {}
      try {
        final v_backgroundRefresh = instance.backgroundRefresh;
      } catch (e) {}
      try {
        final v_firstBackgroundRefresh = instance.firstBackgroundRefresh;
      } catch (e) {}
      try {
        final v_refreshOnLoad = instance.refreshOnLoad;
      } catch (e) {}
      try {
        final v_growShrinkType = instance.growShrinkType;
      } catch (e) {}
      try {
        final v_fillFormulas = instance.fillFormulas;
      } catch (e) {}
      try {
        final v_removeDataOnSave = instance.removeDataOnSave;
      } catch (e) {}
      try {
        final v_disableEdit = instance.disableEdit;
      } catch (e) {}
      try {
        final v_preserveFormatting = instance.preserveFormatting;
      } catch (e) {}
      try {
        final v_adjustColumnWidth = instance.adjustColumnWidth;
      } catch (e) {}
      try {
        final v_intermediate = instance.intermediate;
      } catch (e) {}
      try {
        final v_connectionId = instance.connectionId;
      } catch (e) {}
      try {
        final c_queryTableRefresh = instance.queryTableRefresh;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_QueryTable with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_querytable(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            headers: true,
            rowNumbers: true,
            disableRefresh: true,
            backgroundRefresh: true,
            firstBackgroundRefresh: true,
            refreshOnLoad: true,
            growShrinkType: S_ST_GrowShrinkType.values.first,
            fillFormulas: true,
            removeDataOnSave: true,
            disableEdit: true,
            preserveFormatting: true,
            adjustColumnWidth: true,
            intermediate: true,
            connectionId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTable(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_headers = instance.headers;
      } catch (e) {}
      try {
        final v_rowNumbers = instance.rowNumbers;
      } catch (e) {}
      try {
        final v_disableRefresh = instance.disableRefresh;
      } catch (e) {}
      try {
        final v_backgroundRefresh = instance.backgroundRefresh;
      } catch (e) {}
      try {
        final v_firstBackgroundRefresh = instance.firstBackgroundRefresh;
      } catch (e) {}
      try {
        final v_refreshOnLoad = instance.refreshOnLoad;
      } catch (e) {}
      try {
        final v_growShrinkType = instance.growShrinkType;
      } catch (e) {}
      try {
        final v_fillFormulas = instance.fillFormulas;
      } catch (e) {}
      try {
        final v_removeDataOnSave = instance.removeDataOnSave;
      } catch (e) {}
      try {
        final v_disableEdit = instance.disableEdit;
      } catch (e) {}
      try {
        final v_preserveFormatting = instance.preserveFormatting;
      } catch (e) {}
      try {
        final v_adjustColumnWidth = instance.adjustColumnWidth;
      } catch (e) {}
      try {
        final v_intermediate = instance.intermediate;
      } catch (e) {}
      try {
        final v_connectionId = instance.connectionId;
      } catch (e) {}
      try {
        final c_queryTableRefresh = instance.queryTableRefresh;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_QueryTableRefresh with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTableRefresh(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_preserveSortFilterLayout = instance.preserveSortFilterLayout;
      } catch (e) {}
      try {
        final v_fieldIdWrapped = instance.fieldIdWrapped;
      } catch (e) {}
      try {
        final v_headersInLastRefresh = instance.headersInLastRefresh;
      } catch (e) {}
      try {
        final v_minimumVersion = instance.minimumVersion;
      } catch (e) {}
      try {
        final v_nextId = instance.nextId;
      } catch (e) {}
      try {
        final v_unboundColumnsLeft = instance.unboundColumnsLeft;
      } catch (e) {}
      try {
        final v_unboundColumnsRight = instance.unboundColumnsRight;
      } catch (e) {}
      try {
        final c_queryTableFields = instance.queryTableFields;
      } catch (e) {}
      try {
        final c_queryTableDeletedFields = instance.queryTableDeletedFields;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_QueryTableRefresh with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_querytablerefresh(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            preserveSortFilterLayout: true,
            fieldIdWrapped: true,
            headersInLastRefresh: true,
            minimumVersion: 1,
            nextId: 1,
            unboundColumnsLeft: 1,
            unboundColumnsRight: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTableRefresh(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_preserveSortFilterLayout = instance.preserveSortFilterLayout;
      } catch (e) {}
      try {
        final v_fieldIdWrapped = instance.fieldIdWrapped;
      } catch (e) {}
      try {
        final v_headersInLastRefresh = instance.headersInLastRefresh;
      } catch (e) {}
      try {
        final v_minimumVersion = instance.minimumVersion;
      } catch (e) {}
      try {
        final v_nextId = instance.nextId;
      } catch (e) {}
      try {
        final v_unboundColumnsLeft = instance.unboundColumnsLeft;
      } catch (e) {}
      try {
        final v_unboundColumnsRight = instance.unboundColumnsRight;
      } catch (e) {}
      try {
        final c_queryTableFields = instance.queryTableFields;
      } catch (e) {}
      try {
        final c_queryTableDeletedFields = instance.queryTableDeletedFields;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_QueryTableDeletedFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTableDeletedFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_deletedField = instance.deletedField;
      } catch (e) {}
    });
    test('Test S_CT_QueryTableDeletedFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_querytabledeletedfields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTableDeletedFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_deletedField = instance.deletedField;
      } catch (e) {}
    });
    test('Test S_CT_DeletedField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DeletedField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test S_CT_DeletedField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_deletedfield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DeletedField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test S_CT_QueryTableFields with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTableFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_queryTableField = instance.queryTableField;
      } catch (e) {}
    });
    test('Test S_CT_QueryTableFields with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_querytablefields(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTableFields(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_queryTableField = instance.queryTableField;
      } catch (e) {}
    });
    test('Test S_CT_QueryTableField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTableField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_dataBound = instance.dataBound;
      } catch (e) {}
      try {
        final v_rowNumbers = instance.rowNumbers;
      } catch (e) {}
      try {
        final v_fillFormulas = instance.fillFormulas;
      } catch (e) {}
      try {
        final v_clipped = instance.clipped;
      } catch (e) {}
      try {
        final v_tableColumnId = instance.tableColumnId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_QueryTableField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_querytablefield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            name: 'test',
            dataBound: true,
            rowNumbers: true,
            fillFormulas: true,
            clipped: true,
            tableColumnId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_QueryTableField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_dataBound = instance.dataBound;
      } catch (e) {}
      try {
        final v_rowNumbers = instance.rowNumbers;
      } catch (e) {}
      try {
        final v_fillFormulas = instance.fillFormulas;
      } catch (e) {}
      try {
        final v_clipped = instance.clipped;
      } catch (e) {}
      try {
        final v_tableColumnId = instance.tableColumnId;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Sst with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Sst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_uniqueCount = instance.uniqueCount;
      } catch (e) {}
      try {
        final c_si = instance.si;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Sst with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sst(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
            uniqueCount: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Sst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_uniqueCount = instance.uniqueCount;
      } catch (e) {}
      try {
        final c_si = instance.si;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PhoneticRun with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PhoneticRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sb = instance.sb;
      } catch (e) {}
      try {
        final v_eb = instance.eb;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
    });
    test('Test S_CT_PhoneticRun with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_phoneticrun(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sb: 1,
            eb: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PhoneticRun(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sb = instance.sb;
      } catch (e) {}
      try {
        final v_eb = instance.eb;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
    });
    test('Test S_CT_RElt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RElt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
    });
    test('Test S_CT_RElt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_relt(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RElt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rPr = instance.rPr;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
    });
    test('Test S_CT_RPrElt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RPrElt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rFont = instance.rFont;
      } catch (e) {}
      try {
        final c_charset = instance.charset;
      } catch (e) {}
      try {
        final c_family = instance.family;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_condense = instance.condense;
      } catch (e) {}
      try {
        final c_extend = instance.extend;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_scheme = instance.scheme;
      } catch (e) {}
    });
    test('Test S_CT_RPrElt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_rprelt(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RPrElt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rFont = instance.rFont;
      } catch (e) {}
      try {
        final c_charset = instance.charset;
      } catch (e) {}
      try {
        final c_family = instance.family;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_condense = instance.condense;
      } catch (e) {}
      try {
        final c_extend = instance.extend;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_scheme = instance.scheme;
      } catch (e) {}
    });
    test('Test S_CT_Rst with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Rst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_t = instance.t;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_rPh = instance.rPh;
      } catch (e) {}
      try {
        final c_phoneticPr = instance.phoneticPr;
      } catch (e) {}
    });
    test('Test S_CT_Rst with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_rst(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Rst(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_t = instance.t;
      } catch (e) {}
      try {
        final c_r = instance.r;
      } catch (e) {}
      try {
        final c_rPh = instance.rPh;
      } catch (e) {}
      try {
        final c_phoneticPr = instance.phoneticPr;
      } catch (e) {}
    });
    test('Test S_CT_PhoneticPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PhoneticPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fontId = instance.fontId;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_alignment = instance.alignment;
      } catch (e) {}
    });
    test('Test S_CT_PhoneticPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_phoneticpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            fontId: 'test',
            type: S_ST_PhoneticType.values.first,
            alignment: S_ST_PhoneticAlignment.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PhoneticPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fontId = instance.fontId;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_alignment = instance.alignment;
      } catch (e) {}
    });
    test('Test S_CT_RevisionHeaders with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionHeaders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_lastGuid = instance.lastGuid;
      } catch (e) {}
      try {
        final v_shared = instance.shared;
      } catch (e) {}
      try {
        final v_diskRevisions = instance.diskRevisions;
      } catch (e) {}
      try {
        final v_history = instance.history;
      } catch (e) {}
      try {
        final v_trackRevisions = instance.trackRevisions;
      } catch (e) {}
      try {
        final v_exclusive = instance.exclusive;
      } catch (e) {}
      try {
        final v_revisionId = instance.revisionId;
      } catch (e) {}
      try {
        final v_version = instance.version;
      } catch (e) {}
      try {
        final v_keepChangeHistory = instance.keepChangeHistory;
      } catch (e) {}
      try {
        final v_protected = instance.protected;
      } catch (e) {}
      try {
        final v_preserveHistory = instance.preserveHistory;
      } catch (e) {}
      try {
        final c_header = instance.header;
      } catch (e) {}
    });
    test('Test S_CT_RevisionHeaders with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisionheaders(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            guid: 'test',
            lastGuid: 'test',
            shared: true,
            diskRevisions: true,
            history: true,
            trackRevisions: true,
            exclusive: true,
            revisionId: 1,
            version: 1,
            keepChangeHistory: true,
            protected: true,
            preserveHistory: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionHeaders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_lastGuid = instance.lastGuid;
      } catch (e) {}
      try {
        final v_shared = instance.shared;
      } catch (e) {}
      try {
        final v_diskRevisions = instance.diskRevisions;
      } catch (e) {}
      try {
        final v_history = instance.history;
      } catch (e) {}
      try {
        final v_trackRevisions = instance.trackRevisions;
      } catch (e) {}
      try {
        final v_exclusive = instance.exclusive;
      } catch (e) {}
      try {
        final v_revisionId = instance.revisionId;
      } catch (e) {}
      try {
        final v_version = instance.version;
      } catch (e) {}
      try {
        final v_keepChangeHistory = instance.keepChangeHistory;
      } catch (e) {}
      try {
        final v_protected = instance.protected;
      } catch (e) {}
      try {
        final v_preserveHistory = instance.preserveHistory;
      } catch (e) {}
      try {
        final c_header = instance.header;
      } catch (e) {}
    });
    test('Test S_CT_Revisions with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Revisions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rrc = instance.rrc;
      } catch (e) {}
      try {
        final c_rm = instance.rm;
      } catch (e) {}
      try {
        final c_rcv = instance.rcv;
      } catch (e) {}
      try {
        final c_rsnm = instance.rsnm;
      } catch (e) {}
      try {
        final c_ris = instance.ris;
      } catch (e) {}
      try {
        final c_rcc = instance.rcc;
      } catch (e) {}
      try {
        final c_rfmt = instance.rfmt;
      } catch (e) {}
      try {
        final c_raf = instance.raf;
      } catch (e) {}
      try {
        final c_rdn = instance.rdn;
      } catch (e) {}
      try {
        final c_rcmt = instance.rcmt;
      } catch (e) {}
      try {
        final c_rqt = instance.rqt;
      } catch (e) {}
      try {
        final c_rcft = instance.rcft;
      } catch (e) {}
    });
    test('Test S_CT_Revisions with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisions(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Revisions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rrc = instance.rrc;
      } catch (e) {}
      try {
        final c_rm = instance.rm;
      } catch (e) {}
      try {
        final c_rcv = instance.rcv;
      } catch (e) {}
      try {
        final c_rsnm = instance.rsnm;
      } catch (e) {}
      try {
        final c_ris = instance.ris;
      } catch (e) {}
      try {
        final c_rcc = instance.rcc;
      } catch (e) {}
      try {
        final c_rfmt = instance.rfmt;
      } catch (e) {}
      try {
        final c_raf = instance.raf;
      } catch (e) {}
      try {
        final c_rdn = instance.rdn;
      } catch (e) {}
      try {
        final c_rcmt = instance.rcmt;
      } catch (e) {}
      try {
        final c_rqt = instance.rqt;
      } catch (e) {}
      try {
        final c_rcft = instance.rcft;
      } catch (e) {}
    });
    test('Test S_CT_RevisionHeader with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionHeader(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_dateTime = instance.dateTime;
      } catch (e) {}
      try {
        final v_maxSheetId = instance.maxSheetId;
      } catch (e) {}
      try {
        final v_userName = instance.userName;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_minRId = instance.minRId;
      } catch (e) {}
      try {
        final v_maxRId = instance.maxRId;
      } catch (e) {}
      try {
        final c_sheetIdMap = instance.sheetIdMap;
      } catch (e) {}
      try {
        final c_reviewedList = instance.reviewedList;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionHeader with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_revisionheader(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            guid: 'test',
            dateTime: 'test',
            maxSheetId: 1,
            userName: 'test',
            r_id: 'test',
            minRId: 1,
            maxRId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionHeader(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_dateTime = instance.dateTime;
      } catch (e) {}
      try {
        final v_maxSheetId = instance.maxSheetId;
      } catch (e) {}
      try {
        final v_userName = instance.userName;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_minRId = instance.minRId;
      } catch (e) {}
      try {
        final v_maxRId = instance.maxRId;
      } catch (e) {}
      try {
        final c_sheetIdMap = instance.sheetIdMap;
      } catch (e) {}
      try {
        final c_reviewedList = instance.reviewedList;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SheetIdMap with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetIdMap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_sheetId = instance.sheetId;
      } catch (e) {}
    });
    test('Test S_CT_SheetIdMap with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetidmap(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetIdMap(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_sheetId = instance.sheetId;
      } catch (e) {}
    });
    test('Test S_CT_SheetId with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_SheetId with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetid(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_ReviewedRevisions with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ReviewedRevisions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_reviewed = instance.reviewed;
      } catch (e) {}
    });
    test('Test S_CT_ReviewedRevisions with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_reviewedrevisions(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ReviewedRevisions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_reviewed = instance.reviewed;
      } catch (e) {}
    });
    test('Test S_CT_Reviewed with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Reviewed(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rId = instance.rId;
      } catch (e) {}
    });
    test('Test S_CT_Reviewed with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_reviewed(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            rId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Reviewed(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rId = instance.rId;
      } catch (e) {}
    });
    test('Test S_CT_UndoInfo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_UndoInfo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_index_ = instance.index_;
      } catch (e) {}
      try {
        final v_exp = instance.exp;
      } catch (e) {}
      try {
        final v_ref3D = instance.ref3D;
      } catch (e) {}
      try {
        final v_array = instance.array;
      } catch (e) {}
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_nf = instance.nf;
      } catch (e) {}
      try {
        final v_cs = instance.cs;
      } catch (e) {}
      try {
        final v_dr = instance.dr;
      } catch (e) {}
      try {
        final v_dn = instance.dn;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_sId = instance.sId;
      } catch (e) {}
    });
    test('Test S_CT_UndoInfo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_undoinfo(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            index_: 1,
            exp: S_ST_FormulaExpression.values.first,
            ref3D: true,
            array: true,
            v: true,
            nf: true,
            cs: true,
            dr: 'test',
            dn: 'test',
            r: 'test',
            sId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_UndoInfo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_index_ = instance.index_;
      } catch (e) {}
      try {
        final v_exp = instance.exp;
      } catch (e) {}
      try {
        final v_ref3D = instance.ref3D;
      } catch (e) {}
      try {
        final v_array = instance.array;
      } catch (e) {}
      try {
        final v_v = instance.v;
      } catch (e) {}
      try {
        final v_nf = instance.nf;
      } catch (e) {}
      try {
        final v_cs = instance.cs;
      } catch (e) {}
      try {
        final v_dr = instance.dr;
      } catch (e) {}
      try {
        final v_dn = instance.dn;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_sId = instance.sId;
      } catch (e) {}
    });
    test('Test S_CT_RevisionRowColumn with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionRowColumn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sId = instance.sId;
      } catch (e) {}
      try {
        final v_eol = instance.eol;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_action = instance.action;
      } catch (e) {}
      try {
        final v_edge = instance.edge;
      } catch (e) {}
      try {
        final c_undo = instance.undo;
      } catch (e) {}
      try {
        final c_rcc = instance.rcc;
      } catch (e) {}
      try {
        final c_rfmt = instance.rfmt;
      } catch (e) {}
    });
    test('Test S_CT_RevisionRowColumn with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisionrowcolumn(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sId: 1,
            eol: true,
            ref: 'test',
            action: S_ST_rwColActionType.values.first,
            edge: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionRowColumn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sId = instance.sId;
      } catch (e) {}
      try {
        final v_eol = instance.eol;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_action = instance.action;
      } catch (e) {}
      try {
        final v_edge = instance.edge;
      } catch (e) {}
      try {
        final c_undo = instance.undo;
      } catch (e) {}
      try {
        final c_rcc = instance.rcc;
      } catch (e) {}
      try {
        final c_rfmt = instance.rfmt;
      } catch (e) {}
    });
    test('Test S_CT_RevisionMove with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionMove(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_source = instance.source;
      } catch (e) {}
      try {
        final v_destination = instance.destination;
      } catch (e) {}
      try {
        final v_sourceSheetId = instance.sourceSheetId;
      } catch (e) {}
      try {
        final c_undo = instance.undo;
      } catch (e) {}
      try {
        final c_rcc = instance.rcc;
      } catch (e) {}
      try {
        final c_rfmt = instance.rfmt;
      } catch (e) {}
    });
    test('Test S_CT_RevisionMove with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisionmove(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
            source: 'test',
            destination: 'test',
            sourceSheetId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionMove(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_source = instance.source;
      } catch (e) {}
      try {
        final v_destination = instance.destination;
      } catch (e) {}
      try {
        final v_sourceSheetId = instance.sourceSheetId;
      } catch (e) {}
      try {
        final c_undo = instance.undo;
      } catch (e) {}
      try {
        final c_rcc = instance.rcc;
      } catch (e) {}
      try {
        final c_rfmt = instance.rfmt;
      } catch (e) {}
    });
    test('Test S_CT_RevisionCustomView with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionCustomView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_action = instance.action;
      } catch (e) {}
    });
    test('Test S_CT_RevisionCustomView with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisioncustomview(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            guid: 'test',
            action: S_ST_RevisionAction.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionCustomView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_action = instance.action;
      } catch (e) {}
    });
    test('Test S_CT_RevisionSheetRename with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionSheetRename(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_oldName = instance.oldName;
      } catch (e) {}
      try {
        final v_newName = instance.newName;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionSheetRename with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisionsheetrename(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
            oldName: 'test',
            newName: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionSheetRename(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_oldName = instance.oldName;
      } catch (e) {}
      try {
        final v_newName = instance.newName;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionInsertSheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionInsertSheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheetPosition = instance.sheetPosition;
      } catch (e) {}
    });
    test('Test S_CT_RevisionInsertSheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisioninsertsheet(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
            name: 'test',
            sheetPosition: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionInsertSheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheetPosition = instance.sheetPosition;
      } catch (e) {}
    });
    test('Test S_CT_RevisionCellChange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionCellChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sId = instance.sId;
      } catch (e) {}
      try {
        final v_odxf = instance.odxf;
      } catch (e) {}
      try {
        final v_xfDxf = instance.xfDxf;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_dxf = instance.dxf;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_quotePrefix = instance.quotePrefix;
      } catch (e) {}
      try {
        final v_oldQuotePrefix = instance.oldQuotePrefix;
      } catch (e) {}
      try {
        final v_ph = instance.ph;
      } catch (e) {}
      try {
        final v_oldPh = instance.oldPh;
      } catch (e) {}
      try {
        final v_endOfListFormulaUpdate = instance.endOfListFormulaUpdate;
      } catch (e) {}
      try {
        final c_oc = instance.oc;
      } catch (e) {}
      try {
        final c_nc = instance.nc;
      } catch (e) {}
      try {
        final c_ndxf = instance.ndxf;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionCellChange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisioncellchange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sId: 1,
            odxf: true,
            xfDxf: true,
            s: true,
            dxf: true,
            numFmtId: 'test',
            quotePrefix: true,
            oldQuotePrefix: true,
            ph: true,
            oldPh: true,
            endOfListFormulaUpdate: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionCellChange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sId = instance.sId;
      } catch (e) {}
      try {
        final v_odxf = instance.odxf;
      } catch (e) {}
      try {
        final v_xfDxf = instance.xfDxf;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_dxf = instance.dxf;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_quotePrefix = instance.quotePrefix;
      } catch (e) {}
      try {
        final v_oldQuotePrefix = instance.oldQuotePrefix;
      } catch (e) {}
      try {
        final v_ph = instance.ph;
      } catch (e) {}
      try {
        final v_oldPh = instance.oldPh;
      } catch (e) {}
      try {
        final v_endOfListFormulaUpdate = instance.endOfListFormulaUpdate;
      } catch (e) {}
      try {
        final c_oc = instance.oc;
      } catch (e) {}
      try {
        final c_nc = instance.nc;
      } catch (e) {}
      try {
        final c_ndxf = instance.ndxf;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionFormatting with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_xfDxf = instance.xfDxf;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_start = instance.start;
      } catch (e) {}
      try {
        final v_length = instance.length;
      } catch (e) {}
      try {
        final c_dxf = instance.dxf;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionFormatting with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisionformatting(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
            xfDxf: true,
            s: true,
            start: 1,
            length: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_xfDxf = instance.xfDxf;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_start = instance.start;
      } catch (e) {}
      try {
        final v_length = instance.length;
      } catch (e) {}
      try {
        final c_dxf = instance.dxf;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionAutoFormatting with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionAutoFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test S_CT_RevisionAutoFormatting with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisionautoformatting(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
            ref: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionAutoFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test S_CT_RevisionComment with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionComment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_cell = instance.cell;
      } catch (e) {}
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_action = instance.action;
      } catch (e) {}
      try {
        final v_alwaysShow = instance.alwaysShow;
      } catch (e) {}
      try {
        final v_old = instance.old;
      } catch (e) {}
      try {
        final v_hiddenRow = instance.hiddenRow;
      } catch (e) {}
      try {
        final v_hiddenColumn = instance.hiddenColumn;
      } catch (e) {}
      try {
        final v_author = instance.author;
      } catch (e) {}
      try {
        final v_oldLength = instance.oldLength;
      } catch (e) {}
      try {
        final v_newLength = instance.newLength;
      } catch (e) {}
    });
    test('Test S_CT_RevisionComment with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisioncomment(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
            cell: 'test',
            guid: 'test',
            action: S_ST_RevisionAction.values.first,
            alwaysShow: true,
            old: true,
            hiddenRow: true,
            hiddenColumn: true,
            author: 'test',
            oldLength: 1,
            newLength: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionComment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_cell = instance.cell;
      } catch (e) {}
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_action = instance.action;
      } catch (e) {}
      try {
        final v_alwaysShow = instance.alwaysShow;
      } catch (e) {}
      try {
        final v_old = instance.old;
      } catch (e) {}
      try {
        final v_hiddenRow = instance.hiddenRow;
      } catch (e) {}
      try {
        final v_hiddenColumn = instance.hiddenColumn;
      } catch (e) {}
      try {
        final v_author = instance.author;
      } catch (e) {}
      try {
        final v_oldLength = instance.oldLength;
      } catch (e) {}
      try {
        final v_newLength = instance.newLength;
      } catch (e) {}
    });
    test('Test S_CT_RevisionDefinedName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionDefinedName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_localSheetId = instance.localSheetId;
      } catch (e) {}
      try {
        final v_customView = instance.customView;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_function_ = instance.function_;
      } catch (e) {}
      try {
        final v_oldFunction = instance.oldFunction;
      } catch (e) {}
      try {
        final v_functionGroupId = instance.functionGroupId;
      } catch (e) {}
      try {
        final v_oldFunctionGroupId = instance.oldFunctionGroupId;
      } catch (e) {}
      try {
        final v_shortcutKey = instance.shortcutKey;
      } catch (e) {}
      try {
        final v_oldShortcutKey = instance.oldShortcutKey;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_oldHidden = instance.oldHidden;
      } catch (e) {}
      try {
        final v_customMenu = instance.customMenu;
      } catch (e) {}
      try {
        final v_oldCustomMenu = instance.oldCustomMenu;
      } catch (e) {}
      try {
        final v_description = instance.description;
      } catch (e) {}
      try {
        final v_oldDescription = instance.oldDescription;
      } catch (e) {}
      try {
        final v_help = instance.help;
      } catch (e) {}
      try {
        final v_oldHelp = instance.oldHelp;
      } catch (e) {}
      try {
        final v_statusBar = instance.statusBar;
      } catch (e) {}
      try {
        final v_oldStatusBar = instance.oldStatusBar;
      } catch (e) {}
      try {
        final v_comment = instance.comment;
      } catch (e) {}
      try {
        final v_oldComment = instance.oldComment;
      } catch (e) {}
      try {
        final c_formula = instance.formula;
      } catch (e) {}
      try {
        final c_oldFormula = instance.oldFormula;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionDefinedName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisiondefinedname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            localSheetId: 1,
            customView: true,
            name: 'test',
            function_: true,
            oldFunction: true,
            functionGroupId: 1,
            oldFunctionGroupId: 1,
            shortcutKey: 1,
            oldShortcutKey: 1,
            hidden: true,
            oldHidden: true,
            customMenu: 'test',
            oldCustomMenu: 'test',
            description: 'test',
            oldDescription: 'test',
            help: 'test',
            oldHelp: 'test',
            statusBar: 'test',
            oldStatusBar: 'test',
            comment: 'test',
            oldComment: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionDefinedName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_localSheetId = instance.localSheetId;
      } catch (e) {}
      try {
        final v_customView = instance.customView;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_function_ = instance.function_;
      } catch (e) {}
      try {
        final v_oldFunction = instance.oldFunction;
      } catch (e) {}
      try {
        final v_functionGroupId = instance.functionGroupId;
      } catch (e) {}
      try {
        final v_oldFunctionGroupId = instance.oldFunctionGroupId;
      } catch (e) {}
      try {
        final v_shortcutKey = instance.shortcutKey;
      } catch (e) {}
      try {
        final v_oldShortcutKey = instance.oldShortcutKey;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_oldHidden = instance.oldHidden;
      } catch (e) {}
      try {
        final v_customMenu = instance.customMenu;
      } catch (e) {}
      try {
        final v_oldCustomMenu = instance.oldCustomMenu;
      } catch (e) {}
      try {
        final v_description = instance.description;
      } catch (e) {}
      try {
        final v_oldDescription = instance.oldDescription;
      } catch (e) {}
      try {
        final v_help = instance.help;
      } catch (e) {}
      try {
        final v_oldHelp = instance.oldHelp;
      } catch (e) {}
      try {
        final v_statusBar = instance.statusBar;
      } catch (e) {}
      try {
        final v_oldStatusBar = instance.oldStatusBar;
      } catch (e) {}
      try {
        final v_comment = instance.comment;
      } catch (e) {}
      try {
        final v_oldComment = instance.oldComment;
      } catch (e) {}
      try {
        final c_formula = instance.formula;
      } catch (e) {}
      try {
        final c_oldFormula = instance.oldFormula;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_RevisionConflict with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionConflict(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
    });
    test('Test S_CT_RevisionConflict with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisionconflict(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionConflict(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
    });
    test('Test S_CT_RevisionQueryTableField with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionQueryTableField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_fieldId = instance.fieldId;
      } catch (e) {}
    });
    test('Test S_CT_RevisionQueryTableField with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_revisionquerytablefield(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
            ref: 'test',
            fieldId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RevisionQueryTableField(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_fieldId = instance.fieldId;
      } catch (e) {}
    });
    test('Test S_CT_Users with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Users(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_userInfo = instance.userInfo;
      } catch (e) {}
    });
    test('Test S_CT_Users with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_users(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Users(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_userInfo = instance.userInfo;
      } catch (e) {}
    });
    test('Test S_CT_SharedUser with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SharedUser(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_dateTime = instance.dateTime;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SharedUser with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_shareduser(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            guid: 'test',
            name: 'test',
            id: 1,
            dateTime: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SharedUser(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_dateTime = instance.dateTime;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Macrosheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Macrosheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetPr = instance.sheetPr;
      } catch (e) {}
      try {
        final c_dimension = instance.dimension;
      } catch (e) {}
      try {
        final c_sheetViews = instance.sheetViews;
      } catch (e) {}
      try {
        final c_sheetFormatPr = instance.sheetFormatPr;
      } catch (e) {}
      try {
        final c_cols = instance.cols;
      } catch (e) {}
      try {
        final c_sheetData = instance.sheetData;
      } catch (e) {}
      try {
        final c_sheetProtection = instance.sheetProtection;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_dataConsolidate = instance.dataConsolidate;
      } catch (e) {}
      try {
        final c_customSheetViews = instance.customSheetViews;
      } catch (e) {}
      try {
        final c_phoneticPr = instance.phoneticPr;
      } catch (e) {}
      try {
        final c_conditionalFormatting = instance.conditionalFormatting;
      } catch (e) {}
      try {
        final c_printOptions = instance.printOptions;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_rowBreaks = instance.rowBreaks;
      } catch (e) {}
      try {
        final c_colBreaks = instance.colBreaks;
      } catch (e) {}
      try {
        final c_customProperties = instance.customProperties;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_legacyDrawing = instance.legacyDrawing;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
      try {
        final c_drawingHF = instance.drawingHF;
      } catch (e) {}
      try {
        final c_picture = instance.picture;
      } catch (e) {}
      try {
        final c_oleObjects = instance.oleObjects;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Macrosheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_macrosheet(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Macrosheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetPr = instance.sheetPr;
      } catch (e) {}
      try {
        final c_dimension = instance.dimension;
      } catch (e) {}
      try {
        final c_sheetViews = instance.sheetViews;
      } catch (e) {}
      try {
        final c_sheetFormatPr = instance.sheetFormatPr;
      } catch (e) {}
      try {
        final c_cols = instance.cols;
      } catch (e) {}
      try {
        final c_sheetData = instance.sheetData;
      } catch (e) {}
      try {
        final c_sheetProtection = instance.sheetProtection;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_dataConsolidate = instance.dataConsolidate;
      } catch (e) {}
      try {
        final c_customSheetViews = instance.customSheetViews;
      } catch (e) {}
      try {
        final c_phoneticPr = instance.phoneticPr;
      } catch (e) {}
      try {
        final c_conditionalFormatting = instance.conditionalFormatting;
      } catch (e) {}
      try {
        final c_printOptions = instance.printOptions;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_rowBreaks = instance.rowBreaks;
      } catch (e) {}
      try {
        final c_colBreaks = instance.colBreaks;
      } catch (e) {}
      try {
        final c_customProperties = instance.customProperties;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_legacyDrawing = instance.legacyDrawing;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
      try {
        final c_drawingHF = instance.drawingHF;
      } catch (e) {}
      try {
        final c_picture = instance.picture;
      } catch (e) {}
      try {
        final c_oleObjects = instance.oleObjects;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Dialogsheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Dialogsheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetPr = instance.sheetPr;
      } catch (e) {}
      try {
        final c_sheetViews = instance.sheetViews;
      } catch (e) {}
      try {
        final c_sheetFormatPr = instance.sheetFormatPr;
      } catch (e) {}
      try {
        final c_sheetProtection = instance.sheetProtection;
      } catch (e) {}
      try {
        final c_customSheetViews = instance.customSheetViews;
      } catch (e) {}
      try {
        final c_printOptions = instance.printOptions;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_legacyDrawing = instance.legacyDrawing;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
      try {
        final c_drawingHF = instance.drawingHF;
      } catch (e) {}
      try {
        final c_oleObjects = instance.oleObjects;
      } catch (e) {}
      try {
        final c_controls = instance.controls;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Dialogsheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_dialogsheet(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Dialogsheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetPr = instance.sheetPr;
      } catch (e) {}
      try {
        final c_sheetViews = instance.sheetViews;
      } catch (e) {}
      try {
        final c_sheetFormatPr = instance.sheetFormatPr;
      } catch (e) {}
      try {
        final c_sheetProtection = instance.sheetProtection;
      } catch (e) {}
      try {
        final c_customSheetViews = instance.customSheetViews;
      } catch (e) {}
      try {
        final c_printOptions = instance.printOptions;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_legacyDrawing = instance.legacyDrawing;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
      try {
        final c_drawingHF = instance.drawingHF;
      } catch (e) {}
      try {
        final c_oleObjects = instance.oleObjects;
      } catch (e) {}
      try {
        final c_controls = instance.controls;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Worksheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Worksheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetPr = instance.sheetPr;
      } catch (e) {}
      try {
        final c_dimension = instance.dimension;
      } catch (e) {}
      try {
        final c_sheetViews = instance.sheetViews;
      } catch (e) {}
      try {
        final c_sheetFormatPr = instance.sheetFormatPr;
      } catch (e) {}
      try {
        final c_cols = instance.cols;
      } catch (e) {}
      try {
        final c_sheetData = instance.sheetData;
      } catch (e) {}
      try {
        final c_sheetCalcPr = instance.sheetCalcPr;
      } catch (e) {}
      try {
        final c_sheetProtection = instance.sheetProtection;
      } catch (e) {}
      try {
        final c_protectedRanges = instance.protectedRanges;
      } catch (e) {}
      try {
        final c_scenarios = instance.scenarios;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_dataConsolidate = instance.dataConsolidate;
      } catch (e) {}
      try {
        final c_customSheetViews = instance.customSheetViews;
      } catch (e) {}
      try {
        final c_mergeCells = instance.mergeCells;
      } catch (e) {}
      try {
        final c_phoneticPr = instance.phoneticPr;
      } catch (e) {}
      try {
        final c_conditionalFormatting = instance.conditionalFormatting;
      } catch (e) {}
      try {
        final c_dataValidations = instance.dataValidations;
      } catch (e) {}
      try {
        final c_hyperlinks = instance.hyperlinks;
      } catch (e) {}
      try {
        final c_printOptions = instance.printOptions;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_rowBreaks = instance.rowBreaks;
      } catch (e) {}
      try {
        final c_colBreaks = instance.colBreaks;
      } catch (e) {}
      try {
        final c_customProperties = instance.customProperties;
      } catch (e) {}
      try {
        final c_cellWatches = instance.cellWatches;
      } catch (e) {}
      try {
        final c_ignoredErrors = instance.ignoredErrors;
      } catch (e) {}
      try {
        final c_smartTags = instance.smartTags;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_legacyDrawing = instance.legacyDrawing;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
      try {
        final c_drawingHF = instance.drawingHF;
      } catch (e) {}
      try {
        final c_picture = instance.picture;
      } catch (e) {}
      try {
        final c_oleObjects = instance.oleObjects;
      } catch (e) {}
      try {
        final c_controls = instance.controls;
      } catch (e) {}
      try {
        final c_webPublishItems = instance.webPublishItems;
      } catch (e) {}
      try {
        final c_tableParts = instance.tableParts;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Worksheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_worksheet(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Worksheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetPr = instance.sheetPr;
      } catch (e) {}
      try {
        final c_dimension = instance.dimension;
      } catch (e) {}
      try {
        final c_sheetViews = instance.sheetViews;
      } catch (e) {}
      try {
        final c_sheetFormatPr = instance.sheetFormatPr;
      } catch (e) {}
      try {
        final c_cols = instance.cols;
      } catch (e) {}
      try {
        final c_sheetData = instance.sheetData;
      } catch (e) {}
      try {
        final c_sheetCalcPr = instance.sheetCalcPr;
      } catch (e) {}
      try {
        final c_sheetProtection = instance.sheetProtection;
      } catch (e) {}
      try {
        final c_protectedRanges = instance.protectedRanges;
      } catch (e) {}
      try {
        final c_scenarios = instance.scenarios;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_dataConsolidate = instance.dataConsolidate;
      } catch (e) {}
      try {
        final c_customSheetViews = instance.customSheetViews;
      } catch (e) {}
      try {
        final c_mergeCells = instance.mergeCells;
      } catch (e) {}
      try {
        final c_phoneticPr = instance.phoneticPr;
      } catch (e) {}
      try {
        final c_conditionalFormatting = instance.conditionalFormatting;
      } catch (e) {}
      try {
        final c_dataValidations = instance.dataValidations;
      } catch (e) {}
      try {
        final c_hyperlinks = instance.hyperlinks;
      } catch (e) {}
      try {
        final c_printOptions = instance.printOptions;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_rowBreaks = instance.rowBreaks;
      } catch (e) {}
      try {
        final c_colBreaks = instance.colBreaks;
      } catch (e) {}
      try {
        final c_customProperties = instance.customProperties;
      } catch (e) {}
      try {
        final c_cellWatches = instance.cellWatches;
      } catch (e) {}
      try {
        final c_ignoredErrors = instance.ignoredErrors;
      } catch (e) {}
      try {
        final c_smartTags = instance.smartTags;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_legacyDrawing = instance.legacyDrawing;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
      try {
        final c_drawingHF = instance.drawingHF;
      } catch (e) {}
      try {
        final c_picture = instance.picture;
      } catch (e) {}
      try {
        final c_oleObjects = instance.oleObjects;
      } catch (e) {}
      try {
        final c_controls = instance.controls;
      } catch (e) {}
      try {
        final c_webPublishItems = instance.webPublishItems;
      } catch (e) {}
      try {
        final c_tableParts = instance.tableParts;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SheetData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_row = instance.row;
      } catch (e) {}
    });
    test('Test S_CT_SheetData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetdata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_row = instance.row;
      } catch (e) {}
    });
    test('Test S_CT_SheetCalcPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetCalcPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fullCalcOnLoad = instance.fullCalcOnLoad;
      } catch (e) {}
    });
    test('Test S_CT_SheetCalcPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetcalcpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            fullCalcOnLoad: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetCalcPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fullCalcOnLoad = instance.fullCalcOnLoad;
      } catch (e) {}
    });
    test('Test S_CT_SheetFormatPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetFormatPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_baseColWidth = instance.baseColWidth;
      } catch (e) {}
      try {
        final v_defaultColWidth = instance.defaultColWidth;
      } catch (e) {}
      try {
        final v_defaultRowHeight = instance.defaultRowHeight;
      } catch (e) {}
      try {
        final v_customHeight = instance.customHeight;
      } catch (e) {}
      try {
        final v_zeroHeight = instance.zeroHeight;
      } catch (e) {}
      try {
        final v_thickTop = instance.thickTop;
      } catch (e) {}
      try {
        final v_thickBottom = instance.thickBottom;
      } catch (e) {}
      try {
        final v_outlineLevelRow = instance.outlineLevelRow;
      } catch (e) {}
      try {
        final v_outlineLevelCol = instance.outlineLevelCol;
      } catch (e) {}
    });
    test('Test S_CT_SheetFormatPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetformatpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            baseColWidth: 1,
            defaultColWidth: 1.0,
            defaultRowHeight: 1.0,
            customHeight: true,
            zeroHeight: true,
            thickTop: true,
            thickBottom: true,
            outlineLevelRow: 1,
            outlineLevelCol: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetFormatPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_baseColWidth = instance.baseColWidth;
      } catch (e) {}
      try {
        final v_defaultColWidth = instance.defaultColWidth;
      } catch (e) {}
      try {
        final v_defaultRowHeight = instance.defaultRowHeight;
      } catch (e) {}
      try {
        final v_customHeight = instance.customHeight;
      } catch (e) {}
      try {
        final v_zeroHeight = instance.zeroHeight;
      } catch (e) {}
      try {
        final v_thickTop = instance.thickTop;
      } catch (e) {}
      try {
        final v_thickBottom = instance.thickBottom;
      } catch (e) {}
      try {
        final v_outlineLevelRow = instance.outlineLevelRow;
      } catch (e) {}
      try {
        final v_outlineLevelCol = instance.outlineLevelCol;
      } catch (e) {}
    });
    test('Test S_CT_Cols with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Cols(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_col = instance.col;
      } catch (e) {}
    });
    test('Test S_CT_Cols with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cols(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Cols(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_col = instance.col;
      } catch (e) {}
    });
    test('Test S_CT_Col with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Col(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_min = instance.min;
      } catch (e) {}
      try {
        final v_max = instance.max;
      } catch (e) {}
      try {
        final v_width = instance.width;
      } catch (e) {}
      try {
        final v_style = instance.style;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_bestFit = instance.bestFit;
      } catch (e) {}
      try {
        final v_customWidth = instance.customWidth;
      } catch (e) {}
      try {
        final v_phonetic = instance.phonetic;
      } catch (e) {}
      try {
        final v_outlineLevel = instance.outlineLevel;
      } catch (e) {}
      try {
        final v_collapsed = instance.collapsed;
      } catch (e) {}
    });
    test('Test S_CT_Col with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_col(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            min: 1,
            max: 1,
            width: 1.0,
            style: 1,
            hidden: true,
            bestFit: true,
            customWidth: true,
            phonetic: true,
            outlineLevel: 1,
            collapsed: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Col(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_min = instance.min;
      } catch (e) {}
      try {
        final v_max = instance.max;
      } catch (e) {}
      try {
        final v_width = instance.width;
      } catch (e) {}
      try {
        final v_style = instance.style;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_bestFit = instance.bestFit;
      } catch (e) {}
      try {
        final v_customWidth = instance.customWidth;
      } catch (e) {}
      try {
        final v_phonetic = instance.phonetic;
      } catch (e) {}
      try {
        final v_outlineLevel = instance.outlineLevel;
      } catch (e) {}
      try {
        final v_collapsed = instance.collapsed;
      } catch (e) {}
    });
    test('Test S_CT_Row with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Row(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_customFormat = instance.customFormat;
      } catch (e) {}
      try {
        final v_ht = instance.ht;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_customHeight = instance.customHeight;
      } catch (e) {}
      try {
        final v_outlineLevel = instance.outlineLevel;
      } catch (e) {}
      try {
        final v_collapsed = instance.collapsed;
      } catch (e) {}
      try {
        final v_thickTop = instance.thickTop;
      } catch (e) {}
      try {
        final v_thickBot = instance.thickBot;
      } catch (e) {}
      try {
        final v_ph = instance.ph;
      } catch (e) {}
      try {
        final c_c = instance.c;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Row with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_row(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 1,
            s: 1,
            customFormat: true,
            ht: 1.0,
            hidden: true,
            customHeight: true,
            outlineLevel: 1,
            collapsed: true,
            thickTop: true,
            thickBot: true,
            ph: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Row(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_customFormat = instance.customFormat;
      } catch (e) {}
      try {
        final v_ht = instance.ht;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_customHeight = instance.customHeight;
      } catch (e) {}
      try {
        final v_outlineLevel = instance.outlineLevel;
      } catch (e) {}
      try {
        final v_collapsed = instance.collapsed;
      } catch (e) {}
      try {
        final v_thickTop = instance.thickTop;
      } catch (e) {}
      try {
        final v_thickBot = instance.thickBot;
      } catch (e) {}
      try {
        final v_ph = instance.ph;
      } catch (e) {}
      try {
        final c_c = instance.c;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Cell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Cell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_cm = instance.cm;
      } catch (e) {}
      try {
        final v_vm = instance.vm;
      } catch (e) {}
      try {
        final v_ph = instance.ph;
      } catch (e) {}
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
      try {
        final c_is_ = instance.is_;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Cell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cell(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 'test',
            s: 1,
            t: S_ST_CellType.values.first,
            cm: 1,
            vm: 1,
            ph: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Cell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_cm = instance.cm;
      } catch (e) {}
      try {
        final v_vm = instance.vm;
      } catch (e) {}
      try {
        final v_ph = instance.ph;
      } catch (e) {}
      try {
        final c_f = instance.f;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
      try {
        final c_is_ = instance.is_;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SheetPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_syncHorizontal = instance.syncHorizontal;
      } catch (e) {}
      try {
        final v_syncVertical = instance.syncVertical;
      } catch (e) {}
      try {
        final v_syncRef = instance.syncRef;
      } catch (e) {}
      try {
        final v_transitionEvaluation = instance.transitionEvaluation;
      } catch (e) {}
      try {
        final v_transitionEntry = instance.transitionEntry;
      } catch (e) {}
      try {
        final v_published = instance.published;
      } catch (e) {}
      try {
        final v_codeName = instance.codeName;
      } catch (e) {}
      try {
        final v_filterMode = instance.filterMode;
      } catch (e) {}
      try {
        final v_enableFormatConditionsCalculation =
            instance.enableFormatConditionsCalculation;
      } catch (e) {}
      try {
        final c_tabColor = instance.tabColor;
      } catch (e) {}
      try {
        final c_outlinePr = instance.outlinePr;
      } catch (e) {}
      try {
        final c_pageSetUpPr = instance.pageSetUpPr;
      } catch (e) {}
    });
    test('Test S_CT_SheetPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            syncHorizontal: true,
            syncVertical: true,
            syncRef: 'test',
            transitionEvaluation: true,
            transitionEntry: true,
            published: true,
            codeName: 'test',
            filterMode: true,
            enableFormatConditionsCalculation: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_syncHorizontal = instance.syncHorizontal;
      } catch (e) {}
      try {
        final v_syncVertical = instance.syncVertical;
      } catch (e) {}
      try {
        final v_syncRef = instance.syncRef;
      } catch (e) {}
      try {
        final v_transitionEvaluation = instance.transitionEvaluation;
      } catch (e) {}
      try {
        final v_transitionEntry = instance.transitionEntry;
      } catch (e) {}
      try {
        final v_published = instance.published;
      } catch (e) {}
      try {
        final v_codeName = instance.codeName;
      } catch (e) {}
      try {
        final v_filterMode = instance.filterMode;
      } catch (e) {}
      try {
        final v_enableFormatConditionsCalculation =
            instance.enableFormatConditionsCalculation;
      } catch (e) {}
      try {
        final c_tabColor = instance.tabColor;
      } catch (e) {}
      try {
        final c_outlinePr = instance.outlinePr;
      } catch (e) {}
      try {
        final c_pageSetUpPr = instance.pageSetUpPr;
      } catch (e) {}
    });
    test('Test S_CT_SheetDimension with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetDimension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test S_CT_SheetDimension with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetdimension(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetDimension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test S_CT_SheetViews with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetView = instance.sheetView;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SheetViews with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetviews(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetView = instance.sheetView;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SheetView with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_windowProtection = instance.windowProtection;
      } catch (e) {}
      try {
        final v_showFormulas = instance.showFormulas;
      } catch (e) {}
      try {
        final v_showGridLines = instance.showGridLines;
      } catch (e) {}
      try {
        final v_showRowColHeaders = instance.showRowColHeaders;
      } catch (e) {}
      try {
        final v_showZeros = instance.showZeros;
      } catch (e) {}
      try {
        final v_rightToLeft = instance.rightToLeft;
      } catch (e) {}
      try {
        final v_tabSelected = instance.tabSelected;
      } catch (e) {}
      try {
        final v_showRuler = instance.showRuler;
      } catch (e) {}
      try {
        final v_showOutlineSymbols = instance.showOutlineSymbols;
      } catch (e) {}
      try {
        final v_defaultGridColor = instance.defaultGridColor;
      } catch (e) {}
      try {
        final v_showWhiteSpace = instance.showWhiteSpace;
      } catch (e) {}
      try {
        final v_view = instance.view;
      } catch (e) {}
      try {
        final v_topLeftCell = instance.topLeftCell;
      } catch (e) {}
      try {
        final v_colorId = instance.colorId;
      } catch (e) {}
      try {
        final v_zoomScale = instance.zoomScale;
      } catch (e) {}
      try {
        final v_zoomScaleNormal = instance.zoomScaleNormal;
      } catch (e) {}
      try {
        final v_zoomScaleSheetLayoutView = instance.zoomScaleSheetLayoutView;
      } catch (e) {}
      try {
        final v_zoomScalePageLayoutView = instance.zoomScalePageLayoutView;
      } catch (e) {}
      try {
        final v_workbookViewId = instance.workbookViewId;
      } catch (e) {}
      try {
        final c_pane = instance.pane;
      } catch (e) {}
      try {
        final c_selection = instance.selection;
      } catch (e) {}
      try {
        final c_pivotSelection = instance.pivotSelection;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SheetView with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetview(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            windowProtection: true,
            showFormulas: true,
            showGridLines: true,
            showRowColHeaders: true,
            showZeros: true,
            rightToLeft: true,
            tabSelected: true,
            showRuler: true,
            showOutlineSymbols: true,
            defaultGridColor: true,
            showWhiteSpace: true,
            view: S_ST_SheetViewType.values.first,
            topLeftCell: 'test',
            colorId: 1,
            zoomScale: 1,
            zoomScaleNormal: 1,
            zoomScaleSheetLayoutView: 1,
            zoomScalePageLayoutView: 1,
            workbookViewId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_windowProtection = instance.windowProtection;
      } catch (e) {}
      try {
        final v_showFormulas = instance.showFormulas;
      } catch (e) {}
      try {
        final v_showGridLines = instance.showGridLines;
      } catch (e) {}
      try {
        final v_showRowColHeaders = instance.showRowColHeaders;
      } catch (e) {}
      try {
        final v_showZeros = instance.showZeros;
      } catch (e) {}
      try {
        final v_rightToLeft = instance.rightToLeft;
      } catch (e) {}
      try {
        final v_tabSelected = instance.tabSelected;
      } catch (e) {}
      try {
        final v_showRuler = instance.showRuler;
      } catch (e) {}
      try {
        final v_showOutlineSymbols = instance.showOutlineSymbols;
      } catch (e) {}
      try {
        final v_defaultGridColor = instance.defaultGridColor;
      } catch (e) {}
      try {
        final v_showWhiteSpace = instance.showWhiteSpace;
      } catch (e) {}
      try {
        final v_view = instance.view;
      } catch (e) {}
      try {
        final v_topLeftCell = instance.topLeftCell;
      } catch (e) {}
      try {
        final v_colorId = instance.colorId;
      } catch (e) {}
      try {
        final v_zoomScale = instance.zoomScale;
      } catch (e) {}
      try {
        final v_zoomScaleNormal = instance.zoomScaleNormal;
      } catch (e) {}
      try {
        final v_zoomScaleSheetLayoutView = instance.zoomScaleSheetLayoutView;
      } catch (e) {}
      try {
        final v_zoomScalePageLayoutView = instance.zoomScalePageLayoutView;
      } catch (e) {}
      try {
        final v_workbookViewId = instance.workbookViewId;
      } catch (e) {}
      try {
        final c_pane = instance.pane;
      } catch (e) {}
      try {
        final c_selection = instance.selection;
      } catch (e) {}
      try {
        final c_pivotSelection = instance.pivotSelection;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Pane with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Pane(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_xSplit = instance.xSplit;
      } catch (e) {}
      try {
        final v_ySplit = instance.ySplit;
      } catch (e) {}
      try {
        final v_topLeftCell = instance.topLeftCell;
      } catch (e) {}
      try {
        final v_activePane = instance.activePane;
      } catch (e) {}
      try {
        final v_state = instance.state;
      } catch (e) {}
    });
    test('Test S_CT_Pane with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pane(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            xSplit: 1.0,
            ySplit: 1.0,
            topLeftCell: 'test',
            activePane: S_ST_Pane.values.first,
            state: S_ST_PaneState.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Pane(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_xSplit = instance.xSplit;
      } catch (e) {}
      try {
        final v_ySplit = instance.ySplit;
      } catch (e) {}
      try {
        final v_topLeftCell = instance.topLeftCell;
      } catch (e) {}
      try {
        final v_activePane = instance.activePane;
      } catch (e) {}
      try {
        final v_state = instance.state;
      } catch (e) {}
    });
    test('Test S_CT_PivotSelection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotSelection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_pane = instance.pane;
      } catch (e) {}
      try {
        final v_showHeader = instance.showHeader;
      } catch (e) {}
      try {
        final v_label = instance.label;
      } catch (e) {}
      try {
        final v_data = instance.data;
      } catch (e) {}
      try {
        final v_extendable = instance.extendable;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_axis = instance.axis;
      } catch (e) {}
      try {
        final v_dimension = instance.dimension;
      } catch (e) {}
      try {
        final v_start = instance.start;
      } catch (e) {}
      try {
        final v_min = instance.min;
      } catch (e) {}
      try {
        final v_max = instance.max;
      } catch (e) {}
      try {
        final v_activeRow = instance.activeRow;
      } catch (e) {}
      try {
        final v_activeCol = instance.activeCol;
      } catch (e) {}
      try {
        final v_previousRow = instance.previousRow;
      } catch (e) {}
      try {
        final v_previousCol = instance.previousCol;
      } catch (e) {}
      try {
        final v_click = instance.click;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
    });
    test('Test S_CT_PivotSelection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_pivotselection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            pane: S_ST_Pane.values.first,
            showHeader: true,
            label: true,
            data: true,
            extendable: true,
            count: 1,
            axis: S_ST_Axis.values.first,
            dimension: 1,
            start: 1,
            min: 1,
            max: 1,
            activeRow: 1,
            activeCol: 1,
            previousRow: 1,
            previousCol: 1,
            click: 1,
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotSelection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_pane = instance.pane;
      } catch (e) {}
      try {
        final v_showHeader = instance.showHeader;
      } catch (e) {}
      try {
        final v_label = instance.label;
      } catch (e) {}
      try {
        final v_data = instance.data;
      } catch (e) {}
      try {
        final v_extendable = instance.extendable;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_axis = instance.axis;
      } catch (e) {}
      try {
        final v_dimension = instance.dimension;
      } catch (e) {}
      try {
        final v_start = instance.start;
      } catch (e) {}
      try {
        final v_min = instance.min;
      } catch (e) {}
      try {
        final v_max = instance.max;
      } catch (e) {}
      try {
        final v_activeRow = instance.activeRow;
      } catch (e) {}
      try {
        final v_activeCol = instance.activeCol;
      } catch (e) {}
      try {
        final v_previousRow = instance.previousRow;
      } catch (e) {}
      try {
        final v_previousCol = instance.previousCol;
      } catch (e) {}
      try {
        final v_click = instance.click;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_pivotArea = instance.pivotArea;
      } catch (e) {}
    });
    test('Test S_CT_Selection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Selection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_pane = instance.pane;
      } catch (e) {}
      try {
        final v_activeCell = instance.activeCell;
      } catch (e) {}
      try {
        final v_activeCellId = instance.activeCellId;
      } catch (e) {}
    });
    test('Test S_CT_Selection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_selection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            pane: S_ST_Pane.values.first,
            activeCell: 'test',
            activeCellId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Selection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_pane = instance.pane;
      } catch (e) {}
      try {
        final v_activeCell = instance.activeCell;
      } catch (e) {}
      try {
        final v_activeCellId = instance.activeCellId;
      } catch (e) {}
    });
    test('Test S_CT_PageBreak with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageBreak(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_manualBreakCount = instance.manualBreakCount;
      } catch (e) {}
      try {
        final c_brk = instance.brk;
      } catch (e) {}
    });
    test('Test S_CT_PageBreak with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pagebreak(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
            manualBreakCount: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageBreak(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_manualBreakCount = instance.manualBreakCount;
      } catch (e) {}
      try {
        final c_brk = instance.brk;
      } catch (e) {}
    });
    test('Test S_CT_Break with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Break(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_min = instance.min;
      } catch (e) {}
      try {
        final v_max = instance.max;
      } catch (e) {}
      try {
        final v_man = instance.man;
      } catch (e) {}
      try {
        final v_pt = instance.pt;
      } catch (e) {}
    });
    test('Test S_CT_Break with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_break(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            min: 1,
            max: 1,
            man: true,
            pt: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Break(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_min = instance.min;
      } catch (e) {}
      try {
        final v_max = instance.max;
      } catch (e) {}
      try {
        final v_man = instance.man;
      } catch (e) {}
      try {
        final v_pt = instance.pt;
      } catch (e) {}
    });
    test('Test S_CT_OutlinePr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OutlinePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_applyStyles = instance.applyStyles;
      } catch (e) {}
      try {
        final v_summaryBelow = instance.summaryBelow;
      } catch (e) {}
      try {
        final v_summaryRight = instance.summaryRight;
      } catch (e) {}
      try {
        final v_showOutlineSymbols = instance.showOutlineSymbols;
      } catch (e) {}
    });
    test('Test S_CT_OutlinePr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_outlinepr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            applyStyles: true,
            summaryBelow: true,
            summaryRight: true,
            showOutlineSymbols: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OutlinePr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_applyStyles = instance.applyStyles;
      } catch (e) {}
      try {
        final v_summaryBelow = instance.summaryBelow;
      } catch (e) {}
      try {
        final v_summaryRight = instance.summaryRight;
      } catch (e) {}
      try {
        final v_showOutlineSymbols = instance.showOutlineSymbols;
      } catch (e) {}
    });
    test('Test S_CT_PageSetUpPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageSetUpPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoPageBreaks = instance.autoPageBreaks;
      } catch (e) {}
      try {
        final v_fitToPage = instance.fitToPage;
      } catch (e) {}
    });
    test('Test S_CT_PageSetUpPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pagesetuppr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            autoPageBreaks: true,
            fitToPage: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageSetUpPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoPageBreaks = instance.autoPageBreaks;
      } catch (e) {}
      try {
        final v_fitToPage = instance.fitToPage;
      } catch (e) {}
    });
    test('Test S_CT_DataConsolidate with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataConsolidate(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_function_ = instance.function_;
      } catch (e) {}
      try {
        final v_startLabels = instance.startLabels;
      } catch (e) {}
      try {
        final v_leftLabels = instance.leftLabels;
      } catch (e) {}
      try {
        final v_topLabels = instance.topLabels;
      } catch (e) {}
      try {
        final v_link = instance.link;
      } catch (e) {}
      try {
        final c_dataRefs = instance.dataRefs;
      } catch (e) {}
    });
    test('Test S_CT_DataConsolidate with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_dataconsolidate(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            function_: S_ST_DataConsolidateFunction.values.first,
            startLabels: true,
            leftLabels: true,
            topLabels: true,
            link: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataConsolidate(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_function_ = instance.function_;
      } catch (e) {}
      try {
        final v_startLabels = instance.startLabels;
      } catch (e) {}
      try {
        final v_leftLabels = instance.leftLabels;
      } catch (e) {}
      try {
        final v_topLabels = instance.topLabels;
      } catch (e) {}
      try {
        final v_link = instance.link;
      } catch (e) {}
      try {
        final c_dataRefs = instance.dataRefs;
      } catch (e) {}
    });
    test('Test S_CT_DataRefs with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataRefs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dataRef = instance.dataRef;
      } catch (e) {}
    });
    test('Test S_CT_DataRefs with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_datarefs(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataRefs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dataRef = instance.dataRef;
      } catch (e) {}
    });
    test('Test S_CT_DataRef with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheet = instance.sheet;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_DataRef with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_dataref(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
            name: 'test',
            sheet: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheet = instance.sheet;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_MergeCells with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MergeCells(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_mergeCell = instance.mergeCell;
      } catch (e) {}
    });
    test('Test S_CT_MergeCells with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mergecells(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MergeCells(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_mergeCell = instance.mergeCell;
      } catch (e) {}
    });
    test('Test S_CT_MergeCell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MergeCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test S_CT_MergeCell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mergecell(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MergeCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test S_CT_SmartTags with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SmartTags(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cellSmartTags = instance.cellSmartTags;
      } catch (e) {}
    });
    test('Test S_CT_SmartTags with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_smarttags(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SmartTags(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cellSmartTags = instance.cellSmartTags;
      } catch (e) {}
    });
    test('Test S_CT_CellSmartTags with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellSmartTags(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final c_cellSmartTag = instance.cellSmartTag;
      } catch (e) {}
    });
    test('Test S_CT_CellSmartTags with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellsmarttags(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellSmartTags(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final c_cellSmartTag = instance.cellSmartTag;
      } catch (e) {}
    });
    test('Test S_CT_CellSmartTag with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellSmartTag(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_deleted = instance.deleted;
      } catch (e) {}
      try {
        final v_xmlBased = instance.xmlBased;
      } catch (e) {}
      try {
        final c_cellSmartTagPr = instance.cellSmartTagPr;
      } catch (e) {}
    });
    test('Test S_CT_CellSmartTag with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellsmarttag(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: 1,
            deleted: true,
            xmlBased: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellSmartTag(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_deleted = instance.deleted;
      } catch (e) {}
      try {
        final v_xmlBased = instance.xmlBased;
      } catch (e) {}
      try {
        final c_cellSmartTagPr = instance.cellSmartTagPr;
      } catch (e) {}
    });
    test('Test S_CT_CellSmartTagPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellSmartTagPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_key = instance.key;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_CellSmartTagPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellsmarttagpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            key: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellSmartTagPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_key = instance.key;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_Drawing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Drawing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_Drawing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_drawing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Drawing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_LegacyDrawing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_LegacyDrawing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_LegacyDrawing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_legacydrawing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_LegacyDrawing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_DrawingHF with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DrawingHF(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_lho = instance.lho;
      } catch (e) {}
      try {
        final v_lhe = instance.lhe;
      } catch (e) {}
      try {
        final v_lhf = instance.lhf;
      } catch (e) {}
      try {
        final v_cho = instance.cho;
      } catch (e) {}
      try {
        final v_che = instance.che;
      } catch (e) {}
      try {
        final v_chf = instance.chf;
      } catch (e) {}
      try {
        final v_rho = instance.rho;
      } catch (e) {}
      try {
        final v_rhe = instance.rhe;
      } catch (e) {}
      try {
        final v_rhf = instance.rhf;
      } catch (e) {}
      try {
        final v_lfo = instance.lfo;
      } catch (e) {}
      try {
        final v_lfe = instance.lfe;
      } catch (e) {}
      try {
        final v_lff = instance.lff;
      } catch (e) {}
      try {
        final v_cfo = instance.cfo;
      } catch (e) {}
      try {
        final v_cfe = instance.cfe;
      } catch (e) {}
      try {
        final v_cff = instance.cff;
      } catch (e) {}
      try {
        final v_rfo = instance.rfo;
      } catch (e) {}
      try {
        final v_rfe = instance.rfe;
      } catch (e) {}
      try {
        final v_rff = instance.rff;
      } catch (e) {}
    });
    test('Test S_CT_DrawingHF with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_drawinghf(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
            lho: 1,
            lhe: 1,
            lhf: 1,
            cho: 1,
            che: 1,
            chf: 1,
            rho: 1,
            rhe: 1,
            rhf: 1,
            lfo: 1,
            lfe: 1,
            lff: 1,
            cfo: 1,
            cfe: 1,
            cff: 1,
            rfo: 1,
            rfe: 1,
            rff: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DrawingHF(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_lho = instance.lho;
      } catch (e) {}
      try {
        final v_lhe = instance.lhe;
      } catch (e) {}
      try {
        final v_lhf = instance.lhf;
      } catch (e) {}
      try {
        final v_cho = instance.cho;
      } catch (e) {}
      try {
        final v_che = instance.che;
      } catch (e) {}
      try {
        final v_chf = instance.chf;
      } catch (e) {}
      try {
        final v_rho = instance.rho;
      } catch (e) {}
      try {
        final v_rhe = instance.rhe;
      } catch (e) {}
      try {
        final v_rhf = instance.rhf;
      } catch (e) {}
      try {
        final v_lfo = instance.lfo;
      } catch (e) {}
      try {
        final v_lfe = instance.lfe;
      } catch (e) {}
      try {
        final v_lff = instance.lff;
      } catch (e) {}
      try {
        final v_cfo = instance.cfo;
      } catch (e) {}
      try {
        final v_cfe = instance.cfe;
      } catch (e) {}
      try {
        final v_cff = instance.cff;
      } catch (e) {}
      try {
        final v_rfo = instance.rfo;
      } catch (e) {}
      try {
        final v_rfe = instance.rfe;
      } catch (e) {}
      try {
        final v_rff = instance.rff;
      } catch (e) {}
    });
    test('Test S_CT_CustomSheetViews with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomSheetViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customSheetView = instance.customSheetView;
      } catch (e) {}
    });
    test('Test S_CT_CustomSheetViews with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customsheetviews(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomSheetViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customSheetView = instance.customSheetView;
      } catch (e) {}
    });
    test('Test S_CT_CustomSheetView with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomSheetView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_scale = instance.scale;
      } catch (e) {}
      try {
        final v_colorId = instance.colorId;
      } catch (e) {}
      try {
        final v_showPageBreaks = instance.showPageBreaks;
      } catch (e) {}
      try {
        final v_showFormulas = instance.showFormulas;
      } catch (e) {}
      try {
        final v_showGridLines = instance.showGridLines;
      } catch (e) {}
      try {
        final v_showRowCol = instance.showRowCol;
      } catch (e) {}
      try {
        final v_outlineSymbols = instance.outlineSymbols;
      } catch (e) {}
      try {
        final v_zeroValues = instance.zeroValues;
      } catch (e) {}
      try {
        final v_fitToPage = instance.fitToPage;
      } catch (e) {}
      try {
        final v_printArea = instance.printArea;
      } catch (e) {}
      try {
        final v_filter = instance.filter;
      } catch (e) {}
      try {
        final v_showAutoFilter = instance.showAutoFilter;
      } catch (e) {}
      try {
        final v_hiddenRows = instance.hiddenRows;
      } catch (e) {}
      try {
        final v_hiddenColumns = instance.hiddenColumns;
      } catch (e) {}
      try {
        final v_state = instance.state;
      } catch (e) {}
      try {
        final v_filterUnique = instance.filterUnique;
      } catch (e) {}
      try {
        final v_view = instance.view;
      } catch (e) {}
      try {
        final v_showRuler = instance.showRuler;
      } catch (e) {}
      try {
        final v_topLeftCell = instance.topLeftCell;
      } catch (e) {}
      try {
        final c_pane = instance.pane;
      } catch (e) {}
      try {
        final c_selection = instance.selection;
      } catch (e) {}
      try {
        final c_rowBreaks = instance.rowBreaks;
      } catch (e) {}
      try {
        final c_colBreaks = instance.colBreaks;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_printOptions = instance.printOptions;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CustomSheetView with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customsheetview(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            guid: 'test',
            scale: 1,
            colorId: 1,
            showPageBreaks: true,
            showFormulas: true,
            showGridLines: true,
            showRowCol: true,
            outlineSymbols: true,
            zeroValues: true,
            fitToPage: true,
            printArea: true,
            filter: true,
            showAutoFilter: true,
            hiddenRows: true,
            hiddenColumns: true,
            state: S_ST_SheetState.values.first,
            filterUnique: true,
            view: S_ST_SheetViewType.values.first,
            showRuler: true,
            topLeftCell: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomSheetView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_scale = instance.scale;
      } catch (e) {}
      try {
        final v_colorId = instance.colorId;
      } catch (e) {}
      try {
        final v_showPageBreaks = instance.showPageBreaks;
      } catch (e) {}
      try {
        final v_showFormulas = instance.showFormulas;
      } catch (e) {}
      try {
        final v_showGridLines = instance.showGridLines;
      } catch (e) {}
      try {
        final v_showRowCol = instance.showRowCol;
      } catch (e) {}
      try {
        final v_outlineSymbols = instance.outlineSymbols;
      } catch (e) {}
      try {
        final v_zeroValues = instance.zeroValues;
      } catch (e) {}
      try {
        final v_fitToPage = instance.fitToPage;
      } catch (e) {}
      try {
        final v_printArea = instance.printArea;
      } catch (e) {}
      try {
        final v_filter = instance.filter;
      } catch (e) {}
      try {
        final v_showAutoFilter = instance.showAutoFilter;
      } catch (e) {}
      try {
        final v_hiddenRows = instance.hiddenRows;
      } catch (e) {}
      try {
        final v_hiddenColumns = instance.hiddenColumns;
      } catch (e) {}
      try {
        final v_state = instance.state;
      } catch (e) {}
      try {
        final v_filterUnique = instance.filterUnique;
      } catch (e) {}
      try {
        final v_view = instance.view;
      } catch (e) {}
      try {
        final v_showRuler = instance.showRuler;
      } catch (e) {}
      try {
        final v_topLeftCell = instance.topLeftCell;
      } catch (e) {}
      try {
        final c_pane = instance.pane;
      } catch (e) {}
      try {
        final c_selection = instance.selection;
      } catch (e) {}
      try {
        final c_rowBreaks = instance.rowBreaks;
      } catch (e) {}
      try {
        final c_colBreaks = instance.colBreaks;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_printOptions = instance.printOptions;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_DataValidations with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataValidations(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_disablePrompts = instance.disablePrompts;
      } catch (e) {}
      try {
        final v_xWindow = instance.xWindow;
      } catch (e) {}
      try {
        final v_yWindow = instance.yWindow;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dataValidation = instance.dataValidation;
      } catch (e) {}
    });
    test('Test S_CT_DataValidations with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_datavalidations(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            disablePrompts: true,
            xWindow: 1,
            yWindow: 1,
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataValidations(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_disablePrompts = instance.disablePrompts;
      } catch (e) {}
      try {
        final v_xWindow = instance.xWindow;
      } catch (e) {}
      try {
        final v_yWindow = instance.yWindow;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dataValidation = instance.dataValidation;
      } catch (e) {}
    });
    test('Test S_CT_DataValidation with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataValidation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_errorStyle = instance.errorStyle;
      } catch (e) {}
      try {
        final v_imeMode = instance.imeMode;
      } catch (e) {}
      try {
        final v_operator_ = instance.operator_;
      } catch (e) {}
      try {
        final v_allowBlank = instance.allowBlank;
      } catch (e) {}
      try {
        final v_showDropDown = instance.showDropDown;
      } catch (e) {}
      try {
        final v_showInputMessage = instance.showInputMessage;
      } catch (e) {}
      try {
        final v_showErrorMessage = instance.showErrorMessage;
      } catch (e) {}
      try {
        final v_errorTitle = instance.errorTitle;
      } catch (e) {}
      try {
        final v_error = instance.error;
      } catch (e) {}
      try {
        final v_promptTitle = instance.promptTitle;
      } catch (e) {}
      try {
        final v_prompt = instance.prompt;
      } catch (e) {}
      try {
        final c_formula1 = instance.formula1;
      } catch (e) {}
      try {
        final c_formula2 = instance.formula2;
      } catch (e) {}
    });
    test('Test S_CT_DataValidation with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_datavalidation(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_DataValidationType.values.first,
            errorStyle: S_ST_DataValidationErrorStyle.values.first,
            imeMode: S_ST_DataValidationImeMode.values.first,
            operator_: S_ST_DataValidationOperator.values.first,
            allowBlank: true,
            showDropDown: true,
            showInputMessage: true,
            showErrorMessage: true,
            errorTitle: 'test',
            error: 'test',
            promptTitle: 'test',
            prompt: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataValidation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_errorStyle = instance.errorStyle;
      } catch (e) {}
      try {
        final v_imeMode = instance.imeMode;
      } catch (e) {}
      try {
        final v_operator_ = instance.operator_;
      } catch (e) {}
      try {
        final v_allowBlank = instance.allowBlank;
      } catch (e) {}
      try {
        final v_showDropDown = instance.showDropDown;
      } catch (e) {}
      try {
        final v_showInputMessage = instance.showInputMessage;
      } catch (e) {}
      try {
        final v_showErrorMessage = instance.showErrorMessage;
      } catch (e) {}
      try {
        final v_errorTitle = instance.errorTitle;
      } catch (e) {}
      try {
        final v_error = instance.error;
      } catch (e) {}
      try {
        final v_promptTitle = instance.promptTitle;
      } catch (e) {}
      try {
        final v_prompt = instance.prompt;
      } catch (e) {}
      try {
        final c_formula1 = instance.formula1;
      } catch (e) {}
      try {
        final c_formula2 = instance.formula2;
      } catch (e) {}
    });
    test('Test S_CT_ConditionalFormatting with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ConditionalFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_pivot = instance.pivot;
      } catch (e) {}
      try {
        final c_cfRule = instance.cfRule;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ConditionalFormatting with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_conditionalformatting(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            pivot: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ConditionalFormatting(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_pivot = instance.pivot;
      } catch (e) {}
      try {
        final c_cfRule = instance.cfRule;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CfRule with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CfRule(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
      try {
        final v_priority = instance.priority;
      } catch (e) {}
      try {
        final v_stopIfTrue = instance.stopIfTrue;
      } catch (e) {}
      try {
        final v_aboveAverage = instance.aboveAverage;
      } catch (e) {}
      try {
        final v_percent = instance.percent;
      } catch (e) {}
      try {
        final v_bottom = instance.bottom;
      } catch (e) {}
      try {
        final v_operator_ = instance.operator_;
      } catch (e) {}
      try {
        final v_text = instance.text;
      } catch (e) {}
      try {
        final v_timePeriod = instance.timePeriod;
      } catch (e) {}
      try {
        final v_rank = instance.rank;
      } catch (e) {}
      try {
        final v_stdDev = instance.stdDev;
      } catch (e) {}
      try {
        final v_equalAverage = instance.equalAverage;
      } catch (e) {}
      try {
        final c_formula = instance.formula;
      } catch (e) {}
      try {
        final c_colorScale = instance.colorScale;
      } catch (e) {}
      try {
        final c_dataBar = instance.dataBar;
      } catch (e) {}
      try {
        final c_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CfRule with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cfrule(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_CfType.values.first,
            dxfId: 'test',
            priority: 1,
            stopIfTrue: true,
            aboveAverage: true,
            percent: true,
            bottom: true,
            operator_: S_ST_ConditionalFormattingOperator.values.first,
            text: 'test',
            timePeriod: S_ST_TimePeriod.values.first,
            rank: 1,
            stdDev: 1,
            equalAverage: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CfRule(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
      try {
        final v_priority = instance.priority;
      } catch (e) {}
      try {
        final v_stopIfTrue = instance.stopIfTrue;
      } catch (e) {}
      try {
        final v_aboveAverage = instance.aboveAverage;
      } catch (e) {}
      try {
        final v_percent = instance.percent;
      } catch (e) {}
      try {
        final v_bottom = instance.bottom;
      } catch (e) {}
      try {
        final v_operator_ = instance.operator_;
      } catch (e) {}
      try {
        final v_text = instance.text;
      } catch (e) {}
      try {
        final v_timePeriod = instance.timePeriod;
      } catch (e) {}
      try {
        final v_rank = instance.rank;
      } catch (e) {}
      try {
        final v_stdDev = instance.stdDev;
      } catch (e) {}
      try {
        final v_equalAverage = instance.equalAverage;
      } catch (e) {}
      try {
        final c_formula = instance.formula;
      } catch (e) {}
      try {
        final c_colorScale = instance.colorScale;
      } catch (e) {}
      try {
        final c_dataBar = instance.dataBar;
      } catch (e) {}
      try {
        final c_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Hyperlinks with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Hyperlinks(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
    });
    test('Test S_CT_Hyperlinks with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_hyperlinks(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Hyperlinks(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_hyperlink = instance.hyperlink;
      } catch (e) {}
    });
    test('Test S_CT_Hyperlink with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Hyperlink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_location = instance.location;
      } catch (e) {}
      try {
        final v_tooltip = instance.tooltip;
      } catch (e) {}
      try {
        final v_display = instance.display;
      } catch (e) {}
    });
    test('Test S_CT_Hyperlink with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_hyperlink(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
            r_id: 'test',
            location: 'test',
            tooltip: 'test',
            display: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Hyperlink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_location = instance.location;
      } catch (e) {}
      try {
        final v_tooltip = instance.tooltip;
      } catch (e) {}
      try {
        final v_display = instance.display;
      } catch (e) {}
    });
    test('Test S_CT_CellFormula with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellFormula(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_aca = instance.aca;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_dt2D = instance.dt2D;
      } catch (e) {}
      try {
        final v_dtr = instance.dtr;
      } catch (e) {}
      try {
        final v_del1 = instance.del1;
      } catch (e) {}
      try {
        final v_del2 = instance.del2;
      } catch (e) {}
      try {
        final v_r1 = instance.r1;
      } catch (e) {}
      try {
        final v_r2 = instance.r2;
      } catch (e) {}
      try {
        final v_ca = instance.ca;
      } catch (e) {}
      try {
        final v_si = instance.si;
      } catch (e) {}
      try {
        final v_bx = instance.bx;
      } catch (e) {}
    });
    test('Test S_CT_CellFormula with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellformula(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            t: S_ST_CellFormulaType.values.first,
            aca: true,
            ref: 'test',
            dt2D: true,
            dtr: true,
            del1: true,
            del2: true,
            r1: 'test',
            r2: 'test',
            ca: true,
            si: 1,
            bx: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellFormula(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_aca = instance.aca;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_dt2D = instance.dt2D;
      } catch (e) {}
      try {
        final v_dtr = instance.dtr;
      } catch (e) {}
      try {
        final v_del1 = instance.del1;
      } catch (e) {}
      try {
        final v_del2 = instance.del2;
      } catch (e) {}
      try {
        final v_r1 = instance.r1;
      } catch (e) {}
      try {
        final v_r2 = instance.r2;
      } catch (e) {}
      try {
        final v_ca = instance.ca;
      } catch (e) {}
      try {
        final v_si = instance.si;
      } catch (e) {}
      try {
        final v_bx = instance.bx;
      } catch (e) {}
    });
    test('Test S_CT_ColorScale with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ColorScale(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cfvo = instance.cfvo;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_ColorScale with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_colorscale(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ColorScale(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cfvo = instance.cfvo;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_DataBar with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataBar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_minLength = instance.minLength;
      } catch (e) {}
      try {
        final v_maxLength = instance.maxLength;
      } catch (e) {}
      try {
        final v_showValue = instance.showValue;
      } catch (e) {}
      try {
        final c_cfvo = instance.cfvo;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_DataBar with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_databar(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            minLength: 1,
            maxLength: 1,
            showValue: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DataBar(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_minLength = instance.minLength;
      } catch (e) {}
      try {
        final v_maxLength = instance.maxLength;
      } catch (e) {}
      try {
        final v_showValue = instance.showValue;
      } catch (e) {}
      try {
        final c_cfvo = instance.cfvo;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_IconSet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IconSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final v_showValue = instance.showValue;
      } catch (e) {}
      try {
        final v_percent = instance.percent;
      } catch (e) {}
      try {
        final v_reverse = instance.reverse;
      } catch (e) {}
      try {
        final c_cfvo = instance.cfvo;
      } catch (e) {}
    });
    test('Test S_CT_IconSet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_iconset(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            iconSet: S_ST_IconSetType.values.first,
            showValue: true,
            percent: true,
            reverse: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IconSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_iconSet = instance.iconSet;
      } catch (e) {}
      try {
        final v_showValue = instance.showValue;
      } catch (e) {}
      try {
        final v_percent = instance.percent;
      } catch (e) {}
      try {
        final v_reverse = instance.reverse;
      } catch (e) {}
      try {
        final c_cfvo = instance.cfvo;
      } catch (e) {}
    });
    test('Test S_CT_Cfvo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Cfvo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_gte = instance.gte;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Cfvo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cfvo(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_CfvoType.values.first,
            val: 'test',
            gte: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Cfvo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_gte = instance.gte;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_PageMargins with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageMargins(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_left = instance.left;
      } catch (e) {}
      try {
        final v_right = instance.right;
      } catch (e) {}
      try {
        final v_top = instance.top;
      } catch (e) {}
      try {
        final v_bottom = instance.bottom;
      } catch (e) {}
      try {
        final v_header = instance.header;
      } catch (e) {}
      try {
        final v_footer = instance.footer;
      } catch (e) {}
    });
    test('Test S_CT_PageMargins with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pagemargins(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            left: 1.0,
            right: 1.0,
            top: 1.0,
            bottom: 1.0,
            header: 1.0,
            footer: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageMargins(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_left = instance.left;
      } catch (e) {}
      try {
        final v_right = instance.right;
      } catch (e) {}
      try {
        final v_top = instance.top;
      } catch (e) {}
      try {
        final v_bottom = instance.bottom;
      } catch (e) {}
      try {
        final v_header = instance.header;
      } catch (e) {}
      try {
        final v_footer = instance.footer;
      } catch (e) {}
    });
    test('Test S_CT_PrintOptions with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PrintOptions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_horizontalCentered = instance.horizontalCentered;
      } catch (e) {}
      try {
        final v_verticalCentered = instance.verticalCentered;
      } catch (e) {}
      try {
        final v_headings = instance.headings;
      } catch (e) {}
      try {
        final v_gridLines = instance.gridLines;
      } catch (e) {}
      try {
        final v_gridLinesSet = instance.gridLinesSet;
      } catch (e) {}
    });
    test('Test S_CT_PrintOptions with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_printoptions(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            horizontalCentered: true,
            verticalCentered: true,
            headings: true,
            gridLines: true,
            gridLinesSet: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PrintOptions(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_horizontalCentered = instance.horizontalCentered;
      } catch (e) {}
      try {
        final v_verticalCentered = instance.verticalCentered;
      } catch (e) {}
      try {
        final v_headings = instance.headings;
      } catch (e) {}
      try {
        final v_gridLines = instance.gridLines;
      } catch (e) {}
      try {
        final v_gridLinesSet = instance.gridLinesSet;
      } catch (e) {}
    });
    test('Test S_CT_PageSetup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageSetup(node);
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
        final v_scale = instance.scale;
      } catch (e) {}
      try {
        final v_firstPageNumber = instance.firstPageNumber;
      } catch (e) {}
      try {
        final v_fitToWidth = instance.fitToWidth;
      } catch (e) {}
      try {
        final v_fitToHeight = instance.fitToHeight;
      } catch (e) {}
      try {
        final v_pageOrder = instance.pageOrder;
      } catch (e) {}
      try {
        final v_orientation = instance.orientation;
      } catch (e) {}
      try {
        final v_usePrinterDefaults = instance.usePrinterDefaults;
      } catch (e) {}
      try {
        final v_blackAndWhite = instance.blackAndWhite;
      } catch (e) {}
      try {
        final v_draft = instance.draft;
      } catch (e) {}
      try {
        final v_cellComments = instance.cellComments;
      } catch (e) {}
      try {
        final v_useFirstPageNumber = instance.useFirstPageNumber;
      } catch (e) {}
      try {
        final v_errors = instance.errors;
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
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_PageSetup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_pagesetup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            paperSize: 1,
            paperHeight: 'test',
            paperWidth: 'test',
            scale: 1,
            firstPageNumber: 1,
            fitToWidth: 1,
            fitToHeight: 1,
            pageOrder: S_ST_PageOrder.values.first,
            orientation: S_ST_Orientation.values.first,
            usePrinterDefaults: true,
            blackAndWhite: true,
            draft: true,
            cellComments: S_ST_CellComments.values.first,
            useFirstPageNumber: true,
            errors: S_ST_PrintError.values.first,
            horizontalDpi: 1,
            verticalDpi: 1,
            copies: 1,
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PageSetup(node);
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
        final v_scale = instance.scale;
      } catch (e) {}
      try {
        final v_firstPageNumber = instance.firstPageNumber;
      } catch (e) {}
      try {
        final v_fitToWidth = instance.fitToWidth;
      } catch (e) {}
      try {
        final v_fitToHeight = instance.fitToHeight;
      } catch (e) {}
      try {
        final v_pageOrder = instance.pageOrder;
      } catch (e) {}
      try {
        final v_orientation = instance.orientation;
      } catch (e) {}
      try {
        final v_usePrinterDefaults = instance.usePrinterDefaults;
      } catch (e) {}
      try {
        final v_blackAndWhite = instance.blackAndWhite;
      } catch (e) {}
      try {
        final v_draft = instance.draft;
      } catch (e) {}
      try {
        final v_cellComments = instance.cellComments;
      } catch (e) {}
      try {
        final v_useFirstPageNumber = instance.useFirstPageNumber;
      } catch (e) {}
      try {
        final v_errors = instance.errors;
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
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_HeaderFooter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_HeaderFooter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_differentOddEven = instance.differentOddEven;
      } catch (e) {}
      try {
        final v_differentFirst = instance.differentFirst;
      } catch (e) {}
      try {
        final v_scaleWithDoc = instance.scaleWithDoc;
      } catch (e) {}
      try {
        final v_alignWithMargins = instance.alignWithMargins;
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
    test('Test S_CT_HeaderFooter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_headerfooter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            differentOddEven: true,
            differentFirst: true,
            scaleWithDoc: true,
            alignWithMargins: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_HeaderFooter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_differentOddEven = instance.differentOddEven;
      } catch (e) {}
      try {
        final v_differentFirst = instance.differentFirst;
      } catch (e) {}
      try {
        final v_scaleWithDoc = instance.scaleWithDoc;
      } catch (e) {}
      try {
        final v_alignWithMargins = instance.alignWithMargins;
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
    test('Test S_CT_Scenarios with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Scenarios(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_current = instance.current;
      } catch (e) {}
      try {
        final v_show_ = instance.show_;
      } catch (e) {}
      try {
        final c_scenario = instance.scenario;
      } catch (e) {}
    });
    test('Test S_CT_Scenarios with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_scenarios(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            current: 1,
            show_: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Scenarios(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_current = instance.current;
      } catch (e) {}
      try {
        final v_show_ = instance.show_;
      } catch (e) {}
      try {
        final c_scenario = instance.scenario;
      } catch (e) {}
    });
    test('Test S_CT_SheetProtection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_password = instance.password;
      } catch (e) {}
      try {
        final v_algorithmName = instance.algorithmName;
      } catch (e) {}
      try {
        final v_hashValue = instance.hashValue;
      } catch (e) {}
      try {
        final v_saltValue = instance.saltValue;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
      try {
        final v_sheet = instance.sheet;
      } catch (e) {}
      try {
        final v_objects = instance.objects;
      } catch (e) {}
      try {
        final v_scenarios = instance.scenarios;
      } catch (e) {}
      try {
        final v_formatCells = instance.formatCells;
      } catch (e) {}
      try {
        final v_formatColumns = instance.formatColumns;
      } catch (e) {}
      try {
        final v_formatRows = instance.formatRows;
      } catch (e) {}
      try {
        final v_insertColumns = instance.insertColumns;
      } catch (e) {}
      try {
        final v_insertRows = instance.insertRows;
      } catch (e) {}
      try {
        final v_insertHyperlinks = instance.insertHyperlinks;
      } catch (e) {}
      try {
        final v_deleteColumns = instance.deleteColumns;
      } catch (e) {}
      try {
        final v_deleteRows = instance.deleteRows;
      } catch (e) {}
      try {
        final v_selectLockedCells = instance.selectLockedCells;
      } catch (e) {}
      try {
        final v_sort = instance.sort;
      } catch (e) {}
      try {
        final v_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final v_pivotTables = instance.pivotTables;
      } catch (e) {}
      try {
        final v_selectUnlockedCells = instance.selectUnlockedCells;
      } catch (e) {}
    });
    test('Test S_CT_SheetProtection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheetprotection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            password: 'test',
            algorithmName: 'test',
            hashValue: 'test',
            saltValue: 'test',
            spinCount: 1,
            sheet: true,
            objects: true,
            scenarios: true,
            formatCells: true,
            formatColumns: true,
            formatRows: true,
            insertColumns: true,
            insertRows: true,
            insertHyperlinks: true,
            deleteColumns: true,
            deleteRows: true,
            selectLockedCells: true,
            sort: true,
            autoFilter: true,
            pivotTables: true,
            selectUnlockedCells: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_password = instance.password;
      } catch (e) {}
      try {
        final v_algorithmName = instance.algorithmName;
      } catch (e) {}
      try {
        final v_hashValue = instance.hashValue;
      } catch (e) {}
      try {
        final v_saltValue = instance.saltValue;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
      try {
        final v_sheet = instance.sheet;
      } catch (e) {}
      try {
        final v_objects = instance.objects;
      } catch (e) {}
      try {
        final v_scenarios = instance.scenarios;
      } catch (e) {}
      try {
        final v_formatCells = instance.formatCells;
      } catch (e) {}
      try {
        final v_formatColumns = instance.formatColumns;
      } catch (e) {}
      try {
        final v_formatRows = instance.formatRows;
      } catch (e) {}
      try {
        final v_insertColumns = instance.insertColumns;
      } catch (e) {}
      try {
        final v_insertRows = instance.insertRows;
      } catch (e) {}
      try {
        final v_insertHyperlinks = instance.insertHyperlinks;
      } catch (e) {}
      try {
        final v_deleteColumns = instance.deleteColumns;
      } catch (e) {}
      try {
        final v_deleteRows = instance.deleteRows;
      } catch (e) {}
      try {
        final v_selectLockedCells = instance.selectLockedCells;
      } catch (e) {}
      try {
        final v_sort = instance.sort;
      } catch (e) {}
      try {
        final v_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final v_pivotTables = instance.pivotTables;
      } catch (e) {}
      try {
        final v_selectUnlockedCells = instance.selectUnlockedCells;
      } catch (e) {}
    });
    test('Test S_CT_ProtectedRanges with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ProtectedRanges(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_protectedRange = instance.protectedRange;
      } catch (e) {}
    });
    test('Test S_CT_ProtectedRanges with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_protectedranges(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ProtectedRanges(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_protectedRange = instance.protectedRange;
      } catch (e) {}
    });
    test('Test S_CT_ProtectedRange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ProtectedRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_password = instance.password;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_securityDescriptor = instance.securityDescriptor;
      } catch (e) {}
      try {
        final v_algorithmName = instance.algorithmName;
      } catch (e) {}
      try {
        final v_hashValue = instance.hashValue;
      } catch (e) {}
      try {
        final v_saltValue = instance.saltValue;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
    });
    test('Test S_CT_ProtectedRange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_protectedrange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            password: 'test',
            name: 'test',
            securityDescriptor: 'test',
            algorithmName: 'test',
            hashValue: 'test',
            saltValue: 'test',
            spinCount: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ProtectedRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_password = instance.password;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_securityDescriptor = instance.securityDescriptor;
      } catch (e) {}
      try {
        final v_algorithmName = instance.algorithmName;
      } catch (e) {}
      try {
        final v_hashValue = instance.hashValue;
      } catch (e) {}
      try {
        final v_saltValue = instance.saltValue;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
    });
    test('Test S_CT_Scenario with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Scenario(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_user = instance.user;
      } catch (e) {}
      try {
        final v_comment = instance.comment;
      } catch (e) {}
      try {
        final c_inputCells = instance.inputCells;
      } catch (e) {}
    });
    test('Test S_CT_Scenario with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_scenario(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            locked: true,
            hidden: true,
            count: 1,
            user: 'test',
            comment: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Scenario(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_user = instance.user;
      } catch (e) {}
      try {
        final v_comment = instance.comment;
      } catch (e) {}
      try {
        final c_inputCells = instance.inputCells;
      } catch (e) {}
    });
    test('Test S_CT_InputCells with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_InputCells(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_deleted = instance.deleted;
      } catch (e) {}
      try {
        final v_undone = instance.undone;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
    });
    test('Test S_CT_InputCells with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_inputcells(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 'test',
            deleted: true,
            undone: true,
            val: 'test',
            numFmtId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_InputCells(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_deleted = instance.deleted;
      } catch (e) {}
      try {
        final v_undone = instance.undone;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
    });
    test('Test S_CT_CellWatches with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellWatches(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cellWatch = instance.cellWatch;
      } catch (e) {}
    });
    test('Test S_CT_CellWatches with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellwatches(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellWatches(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cellWatch = instance.cellWatch;
      } catch (e) {}
    });
    test('Test S_CT_CellWatch with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellWatch(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
    });
    test('Test S_CT_CellWatch with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellwatch(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellWatch(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
    });
    test('Test S_CT_Chartsheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Chartsheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetPr = instance.sheetPr;
      } catch (e) {}
      try {
        final c_sheetViews = instance.sheetViews;
      } catch (e) {}
      try {
        final c_sheetProtection = instance.sheetProtection;
      } catch (e) {}
      try {
        final c_customSheetViews = instance.customSheetViews;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_legacyDrawing = instance.legacyDrawing;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
      try {
        final c_drawingHF = instance.drawingHF;
      } catch (e) {}
      try {
        final c_picture = instance.picture;
      } catch (e) {}
      try {
        final c_webPublishItems = instance.webPublishItems;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Chartsheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_chartsheet(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Chartsheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetPr = instance.sheetPr;
      } catch (e) {}
      try {
        final c_sheetViews = instance.sheetViews;
      } catch (e) {}
      try {
        final c_sheetProtection = instance.sheetProtection;
      } catch (e) {}
      try {
        final c_customSheetViews = instance.customSheetViews;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
      try {
        final c_drawing = instance.drawing;
      } catch (e) {}
      try {
        final c_legacyDrawing = instance.legacyDrawing;
      } catch (e) {}
      try {
        final c_legacyDrawingHF = instance.legacyDrawingHF;
      } catch (e) {}
      try {
        final c_drawingHF = instance.drawingHF;
      } catch (e) {}
      try {
        final c_picture = instance.picture;
      } catch (e) {}
      try {
        final c_webPublishItems = instance.webPublishItems;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ChartsheetPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartsheetPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_published = instance.published;
      } catch (e) {}
      try {
        final v_codeName = instance.codeName;
      } catch (e) {}
      try {
        final c_tabColor = instance.tabColor;
      } catch (e) {}
    });
    test('Test S_CT_ChartsheetPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_chartsheetpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            published: true,
            codeName: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartsheetPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_published = instance.published;
      } catch (e) {}
      try {
        final v_codeName = instance.codeName;
      } catch (e) {}
      try {
        final c_tabColor = instance.tabColor;
      } catch (e) {}
    });
    test('Test S_CT_ChartsheetViews with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartsheetViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetView = instance.sheetView;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ChartsheetViews with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_chartsheetviews(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartsheetViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetView = instance.sheetView;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ChartsheetView with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartsheetView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_tabSelected = instance.tabSelected;
      } catch (e) {}
      try {
        final v_zoomScale = instance.zoomScale;
      } catch (e) {}
      try {
        final v_workbookViewId = instance.workbookViewId;
      } catch (e) {}
      try {
        final v_zoomToFit = instance.zoomToFit;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ChartsheetView with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_chartsheetview(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            tabSelected: true,
            zoomScale: 1,
            workbookViewId: 1,
            zoomToFit: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartsheetView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_tabSelected = instance.tabSelected;
      } catch (e) {}
      try {
        final v_zoomScale = instance.zoomScale;
      } catch (e) {}
      try {
        final v_workbookViewId = instance.workbookViewId;
      } catch (e) {}
      try {
        final v_zoomToFit = instance.zoomToFit;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ChartsheetProtection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartsheetProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_password = instance.password;
      } catch (e) {}
      try {
        final v_algorithmName = instance.algorithmName;
      } catch (e) {}
      try {
        final v_hashValue = instance.hashValue;
      } catch (e) {}
      try {
        final v_saltValue = instance.saltValue;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
      try {
        final v_content = instance.content;
      } catch (e) {}
      try {
        final v_objects = instance.objects;
      } catch (e) {}
    });
    test('Test S_CT_ChartsheetProtection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_chartsheetprotection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            password: 'test',
            algorithmName: 'test',
            hashValue: 'test',
            saltValue: 'test',
            spinCount: 1,
            content: true,
            objects: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ChartsheetProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_password = instance.password;
      } catch (e) {}
      try {
        final v_algorithmName = instance.algorithmName;
      } catch (e) {}
      try {
        final v_hashValue = instance.hashValue;
      } catch (e) {}
      try {
        final v_saltValue = instance.saltValue;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
      try {
        final v_content = instance.content;
      } catch (e) {}
      try {
        final v_objects = instance.objects;
      } catch (e) {}
    });
    test('Test S_CT_CsPageSetup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CsPageSetup(node);
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
        final v_usePrinterDefaults = instance.usePrinterDefaults;
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
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_CsPageSetup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_cspagesetup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            paperSize: 1,
            paperHeight: 'test',
            paperWidth: 'test',
            firstPageNumber: 1,
            orientation: S_ST_Orientation.values.first,
            usePrinterDefaults: true,
            blackAndWhite: true,
            draft: true,
            useFirstPageNumber: true,
            horizontalDpi: 1,
            verticalDpi: 1,
            copies: 1,
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CsPageSetup(node);
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
        final v_usePrinterDefaults = instance.usePrinterDefaults;
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
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_CustomChartsheetViews with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomChartsheetViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customSheetView = instance.customSheetView;
      } catch (e) {}
    });
    test('Test S_CT_CustomChartsheetViews with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customchartsheetviews(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomChartsheetViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customSheetView = instance.customSheetView;
      } catch (e) {}
    });
    test('Test S_CT_CustomChartsheetView with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomChartsheetView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_scale = instance.scale;
      } catch (e) {}
      try {
        final v_state = instance.state;
      } catch (e) {}
      try {
        final v_zoomToFit = instance.zoomToFit;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
    });
    test('Test S_CT_CustomChartsheetView with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customchartsheetview(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            guid: 'test',
            scale: 1,
            state: S_ST_SheetState.values.first,
            zoomToFit: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomChartsheetView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_scale = instance.scale;
      } catch (e) {}
      try {
        final v_state = instance.state;
      } catch (e) {}
      try {
        final v_zoomToFit = instance.zoomToFit;
      } catch (e) {}
      try {
        final c_pageMargins = instance.pageMargins;
      } catch (e) {}
      try {
        final c_pageSetup = instance.pageSetup;
      } catch (e) {}
      try {
        final c_headerFooter = instance.headerFooter;
      } catch (e) {}
    });
    test('Test S_CT_CustomProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customPr = instance.customPr;
      } catch (e) {}
    });
    test('Test S_CT_CustomProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customPr = instance.customPr;
      } catch (e) {}
    });
    test('Test S_CT_CustomProperty with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_CustomProperty with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_customproperty(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_OleObjects with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleObjects(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_oleObject = instance.oleObject;
      } catch (e) {}
    });
    test('Test S_CT_OleObjects with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_oleobjects(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleObjects(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_oleObject = instance.oleObject;
      } catch (e) {}
    });
    test('Test S_CT_OleObject with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleObject(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_progId = instance.progId;
      } catch (e) {}
      try {
        final v_dvAspect = instance.dvAspect;
      } catch (e) {}
      try {
        final v_link = instance.link;
      } catch (e) {}
      try {
        final v_oleUpdate = instance.oleUpdate;
      } catch (e) {}
      try {
        final v_autoLoad = instance.autoLoad;
      } catch (e) {}
      try {
        final v_shapeId = instance.shapeId;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_objectPr = instance.objectPr;
      } catch (e) {}
    });
    test('Test S_CT_OleObject with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_oleobject(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            progId: 'test',
            dvAspect: S_ST_DvAspect.values.first,
            link: 'test',
            oleUpdate: S_ST_OleUpdate.values.first,
            autoLoad: true,
            shapeId: 1,
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleObject(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_progId = instance.progId;
      } catch (e) {}
      try {
        final v_dvAspect = instance.dvAspect;
      } catch (e) {}
      try {
        final v_link = instance.link;
      } catch (e) {}
      try {
        final v_oleUpdate = instance.oleUpdate;
      } catch (e) {}
      try {
        final v_autoLoad = instance.autoLoad;
      } catch (e) {}
      try {
        final v_shapeId = instance.shapeId;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_objectPr = instance.objectPr;
      } catch (e) {}
    });
    test('Test S_CT_ObjectPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ObjectPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_defaultSize = instance.defaultSize;
      } catch (e) {}
      try {
        final v_print = instance.print;
      } catch (e) {}
      try {
        final v_disabled = instance.disabled;
      } catch (e) {}
      try {
        final v_uiObject = instance.uiObject;
      } catch (e) {}
      try {
        final v_autoFill = instance.autoFill;
      } catch (e) {}
      try {
        final v_autoLine = instance.autoLine;
      } catch (e) {}
      try {
        final v_autoPict = instance.autoPict;
      } catch (e) {}
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_altText = instance.altText;
      } catch (e) {}
      try {
        final v_dde = instance.dde;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_anchor = instance.anchor;
      } catch (e) {}
    });
    test('Test S_CT_ObjectPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_objectpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            locked: true,
            defaultSize: true,
            print: true,
            disabled: true,
            uiObject: true,
            autoFill: true,
            autoLine: true,
            autoPict: true,
            macro: 'test',
            altText: 'test',
            dde: true,
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ObjectPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_defaultSize = instance.defaultSize;
      } catch (e) {}
      try {
        final v_print = instance.print;
      } catch (e) {}
      try {
        final v_disabled = instance.disabled;
      } catch (e) {}
      try {
        final v_uiObject = instance.uiObject;
      } catch (e) {}
      try {
        final v_autoFill = instance.autoFill;
      } catch (e) {}
      try {
        final v_autoLine = instance.autoLine;
      } catch (e) {}
      try {
        final v_autoPict = instance.autoPict;
      } catch (e) {}
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_altText = instance.altText;
      } catch (e) {}
      try {
        final v_dde = instance.dde;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_anchor = instance.anchor;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishItems with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_webPublishItem = instance.webPublishItem;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishItems with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_webpublishitems(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_webPublishItem = instance.webPublishItem;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishItem with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_divId = instance.divId;
      } catch (e) {}
      try {
        final v_sourceType = instance.sourceType;
      } catch (e) {}
      try {
        final v_sourceRef = instance.sourceRef;
      } catch (e) {}
      try {
        final v_sourceObject = instance.sourceObject;
      } catch (e) {}
      try {
        final v_destinationFile = instance.destinationFile;
      } catch (e) {}
      try {
        final v_title = instance.title;
      } catch (e) {}
      try {
        final v_autoRepublish = instance.autoRepublish;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishItem with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_webpublishitem(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            divId: 'test',
            sourceType: S_ST_WebSourceType.values.first,
            sourceRef: 'test',
            sourceObject: 'test',
            destinationFile: 'test',
            title: 'test',
            autoRepublish: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_divId = instance.divId;
      } catch (e) {}
      try {
        final v_sourceType = instance.sourceType;
      } catch (e) {}
      try {
        final v_sourceRef = instance.sourceRef;
      } catch (e) {}
      try {
        final v_sourceObject = instance.sourceObject;
      } catch (e) {}
      try {
        final v_destinationFile = instance.destinationFile;
      } catch (e) {}
      try {
        final v_title = instance.title;
      } catch (e) {}
      try {
        final v_autoRepublish = instance.autoRepublish;
      } catch (e) {}
    });
    test('Test S_CT_Controls with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Controls(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_control = instance.control;
      } catch (e) {}
    });
    test('Test S_CT_Controls with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_controls(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Controls(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_control = instance.control;
      } catch (e) {}
    });
    test('Test S_CT_Control with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Control(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_shapeId = instance.shapeId;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_controlPr = instance.controlPr;
      } catch (e) {}
    });
    test('Test S_CT_Control with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_control(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            shapeId: 1,
            r_id: 'test',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Control(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_shapeId = instance.shapeId;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_controlPr = instance.controlPr;
      } catch (e) {}
    });
    test('Test S_CT_ControlPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ControlPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_defaultSize = instance.defaultSize;
      } catch (e) {}
      try {
        final v_print = instance.print;
      } catch (e) {}
      try {
        final v_disabled = instance.disabled;
      } catch (e) {}
      try {
        final v_recalcAlways = instance.recalcAlways;
      } catch (e) {}
      try {
        final v_uiObject = instance.uiObject;
      } catch (e) {}
      try {
        final v_autoFill = instance.autoFill;
      } catch (e) {}
      try {
        final v_autoLine = instance.autoLine;
      } catch (e) {}
      try {
        final v_autoPict = instance.autoPict;
      } catch (e) {}
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_altText = instance.altText;
      } catch (e) {}
      try {
        final v_linkedCell = instance.linkedCell;
      } catch (e) {}
      try {
        final v_listFillRange = instance.listFillRange;
      } catch (e) {}
      try {
        final v_cf = instance.cf;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_anchor = instance.anchor;
      } catch (e) {}
    });
    test('Test S_CT_ControlPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_controlpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            locked: true,
            defaultSize: true,
            print: true,
            disabled: true,
            recalcAlways: true,
            uiObject: true,
            autoFill: true,
            autoLine: true,
            autoPict: true,
            macro: 'test',
            altText: 'test',
            linkedCell: 'test',
            listFillRange: 'test',
            cf: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ControlPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_defaultSize = instance.defaultSize;
      } catch (e) {}
      try {
        final v_print = instance.print;
      } catch (e) {}
      try {
        final v_disabled = instance.disabled;
      } catch (e) {}
      try {
        final v_recalcAlways = instance.recalcAlways;
      } catch (e) {}
      try {
        final v_uiObject = instance.uiObject;
      } catch (e) {}
      try {
        final v_autoFill = instance.autoFill;
      } catch (e) {}
      try {
        final v_autoLine = instance.autoLine;
      } catch (e) {}
      try {
        final v_autoPict = instance.autoPict;
      } catch (e) {}
      try {
        final v_macro = instance.macro;
      } catch (e) {}
      try {
        final v_altText = instance.altText;
      } catch (e) {}
      try {
        final v_linkedCell = instance.linkedCell;
      } catch (e) {}
      try {
        final v_listFillRange = instance.listFillRange;
      } catch (e) {}
      try {
        final v_cf = instance.cf;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_anchor = instance.anchor;
      } catch (e) {}
    });
    test('Test S_CT_IgnoredErrors with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IgnoredErrors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ignoredError = instance.ignoredError;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_IgnoredErrors with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_ignorederrors(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IgnoredErrors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ignoredError = instance.ignoredError;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_IgnoredError with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IgnoredError(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_evalError = instance.evalError;
      } catch (e) {}
      try {
        final v_twoDigitTextYear = instance.twoDigitTextYear;
      } catch (e) {}
      try {
        final v_numberStoredAsText = instance.numberStoredAsText;
      } catch (e) {}
      try {
        final v_formula = instance.formula;
      } catch (e) {}
      try {
        final v_formulaRange = instance.formulaRange;
      } catch (e) {}
      try {
        final v_unlockedFormula = instance.unlockedFormula;
      } catch (e) {}
      try {
        final v_emptyCellReference = instance.emptyCellReference;
      } catch (e) {}
      try {
        final v_listDataValidation = instance.listDataValidation;
      } catch (e) {}
      try {
        final v_calculatedColumn = instance.calculatedColumn;
      } catch (e) {}
    });
    test('Test S_CT_IgnoredError with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_ignorederror(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            evalError: true,
            twoDigitTextYear: true,
            numberStoredAsText: true,
            formula: true,
            formulaRange: true,
            unlockedFormula: true,
            emptyCellReference: true,
            listDataValidation: true,
            calculatedColumn: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IgnoredError(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_evalError = instance.evalError;
      } catch (e) {}
      try {
        final v_twoDigitTextYear = instance.twoDigitTextYear;
      } catch (e) {}
      try {
        final v_numberStoredAsText = instance.numberStoredAsText;
      } catch (e) {}
      try {
        final v_formula = instance.formula;
      } catch (e) {}
      try {
        final v_formulaRange = instance.formulaRange;
      } catch (e) {}
      try {
        final v_unlockedFormula = instance.unlockedFormula;
      } catch (e) {}
      try {
        final v_emptyCellReference = instance.emptyCellReference;
      } catch (e) {}
      try {
        final v_listDataValidation = instance.listDataValidation;
      } catch (e) {}
      try {
        final v_calculatedColumn = instance.calculatedColumn;
      } catch (e) {}
    });
    test('Test S_CT_TableParts with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableParts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_tablePart = instance.tablePart;
      } catch (e) {}
    });
    test('Test S_CT_TableParts with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tableparts(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableParts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_tablePart = instance.tablePart;
      } catch (e) {}
    });
    test('Test S_CT_TablePart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TablePart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_TablePart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_tablepart(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TablePart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_Metadata with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Metadata(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_metadataTypes = instance.metadataTypes;
      } catch (e) {}
      try {
        final c_metadataStrings = instance.metadataStrings;
      } catch (e) {}
      try {
        final c_mdxMetadata = instance.mdxMetadata;
      } catch (e) {}
      try {
        final c_futureMetadata = instance.futureMetadata;
      } catch (e) {}
      try {
        final c_cellMetadata = instance.cellMetadata;
      } catch (e) {}
      try {
        final c_valueMetadata = instance.valueMetadata;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Metadata with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_metadata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Metadata(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_metadataTypes = instance.metadataTypes;
      } catch (e) {}
      try {
        final c_metadataStrings = instance.metadataStrings;
      } catch (e) {}
      try {
        final c_mdxMetadata = instance.mdxMetadata;
      } catch (e) {}
      try {
        final c_futureMetadata = instance.futureMetadata;
      } catch (e) {}
      try {
        final c_cellMetadata = instance.cellMetadata;
      } catch (e) {}
      try {
        final c_valueMetadata = instance.valueMetadata;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_MetadataTypes with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataTypes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_metadataType = instance.metadataType;
      } catch (e) {}
    });
    test('Test S_CT_MetadataTypes with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_metadatatypes(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataTypes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_metadataType = instance.metadataType;
      } catch (e) {}
    });
    test('Test S_CT_MetadataType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_minSupportedVersion = instance.minSupportedVersion;
      } catch (e) {}
      try {
        final v_ghostRow = instance.ghostRow;
      } catch (e) {}
      try {
        final v_ghostCol = instance.ghostCol;
      } catch (e) {}
      try {
        final v_edit = instance.edit;
      } catch (e) {}
      try {
        final v_delete = instance.delete;
      } catch (e) {}
      try {
        final v_copy = instance.copy;
      } catch (e) {}
      try {
        final v_pasteAll = instance.pasteAll;
      } catch (e) {}
      try {
        final v_pasteFormulas = instance.pasteFormulas;
      } catch (e) {}
      try {
        final v_pasteValues = instance.pasteValues;
      } catch (e) {}
      try {
        final v_pasteFormats = instance.pasteFormats;
      } catch (e) {}
      try {
        final v_pasteComments = instance.pasteComments;
      } catch (e) {}
      try {
        final v_pasteDataValidation = instance.pasteDataValidation;
      } catch (e) {}
      try {
        final v_pasteBorders = instance.pasteBorders;
      } catch (e) {}
      try {
        final v_pasteColWidths = instance.pasteColWidths;
      } catch (e) {}
      try {
        final v_pasteNumberFormats = instance.pasteNumberFormats;
      } catch (e) {}
      try {
        final v_merge = instance.merge;
      } catch (e) {}
      try {
        final v_splitFirst = instance.splitFirst;
      } catch (e) {}
      try {
        final v_splitAll = instance.splitAll;
      } catch (e) {}
      try {
        final v_rowColShift = instance.rowColShift;
      } catch (e) {}
      try {
        final v_clearAll = instance.clearAll;
      } catch (e) {}
      try {
        final v_clearFormats = instance.clearFormats;
      } catch (e) {}
      try {
        final v_clearContents = instance.clearContents;
      } catch (e) {}
      try {
        final v_clearComments = instance.clearComments;
      } catch (e) {}
      try {
        final v_assign = instance.assign;
      } catch (e) {}
      try {
        final v_coerce = instance.coerce;
      } catch (e) {}
      try {
        final v_adjust = instance.adjust;
      } catch (e) {}
      try {
        final v_cellMeta = instance.cellMeta;
      } catch (e) {}
    });
    test('Test S_CT_MetadataType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_metadatatype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            minSupportedVersion: 1,
            ghostRow: true,
            ghostCol: true,
            edit: true,
            delete: true,
            copy: true,
            pasteAll: true,
            pasteFormulas: true,
            pasteValues: true,
            pasteFormats: true,
            pasteComments: true,
            pasteDataValidation: true,
            pasteBorders: true,
            pasteColWidths: true,
            pasteNumberFormats: true,
            merge: true,
            splitFirst: true,
            splitAll: true,
            rowColShift: true,
            clearAll: true,
            clearFormats: true,
            clearContents: true,
            clearComments: true,
            assign: true,
            coerce: true,
            adjust: true,
            cellMeta: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_minSupportedVersion = instance.minSupportedVersion;
      } catch (e) {}
      try {
        final v_ghostRow = instance.ghostRow;
      } catch (e) {}
      try {
        final v_ghostCol = instance.ghostCol;
      } catch (e) {}
      try {
        final v_edit = instance.edit;
      } catch (e) {}
      try {
        final v_delete = instance.delete;
      } catch (e) {}
      try {
        final v_copy = instance.copy;
      } catch (e) {}
      try {
        final v_pasteAll = instance.pasteAll;
      } catch (e) {}
      try {
        final v_pasteFormulas = instance.pasteFormulas;
      } catch (e) {}
      try {
        final v_pasteValues = instance.pasteValues;
      } catch (e) {}
      try {
        final v_pasteFormats = instance.pasteFormats;
      } catch (e) {}
      try {
        final v_pasteComments = instance.pasteComments;
      } catch (e) {}
      try {
        final v_pasteDataValidation = instance.pasteDataValidation;
      } catch (e) {}
      try {
        final v_pasteBorders = instance.pasteBorders;
      } catch (e) {}
      try {
        final v_pasteColWidths = instance.pasteColWidths;
      } catch (e) {}
      try {
        final v_pasteNumberFormats = instance.pasteNumberFormats;
      } catch (e) {}
      try {
        final v_merge = instance.merge;
      } catch (e) {}
      try {
        final v_splitFirst = instance.splitFirst;
      } catch (e) {}
      try {
        final v_splitAll = instance.splitAll;
      } catch (e) {}
      try {
        final v_rowColShift = instance.rowColShift;
      } catch (e) {}
      try {
        final v_clearAll = instance.clearAll;
      } catch (e) {}
      try {
        final v_clearFormats = instance.clearFormats;
      } catch (e) {}
      try {
        final v_clearContents = instance.clearContents;
      } catch (e) {}
      try {
        final v_clearComments = instance.clearComments;
      } catch (e) {}
      try {
        final v_assign = instance.assign;
      } catch (e) {}
      try {
        final v_coerce = instance.coerce;
      } catch (e) {}
      try {
        final v_adjust = instance.adjust;
      } catch (e) {}
      try {
        final v_cellMeta = instance.cellMeta;
      } catch (e) {}
    });
    test('Test S_CT_MetadataBlocks with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataBlocks(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_bk = instance.bk;
      } catch (e) {}
    });
    test('Test S_CT_MetadataBlocks with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_metadatablocks(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataBlocks(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_bk = instance.bk;
      } catch (e) {}
    });
    test('Test S_CT_MetadataBlock with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataBlock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rc = instance.rc;
      } catch (e) {}
    });
    test('Test S_CT_MetadataBlock with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_metadatablock(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataBlock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rc = instance.rc;
      } catch (e) {}
    });
    test('Test S_CT_MetadataRecord with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataRecord(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_MetadataRecord with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_metadatarecord(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            t: 1,
            v: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataRecord(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_FutureMetadata with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FutureMetadata(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_bk = instance.bk;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_FutureMetadata with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_futuremetadata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FutureMetadata(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_bk = instance.bk;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_FutureMetadataBlock with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FutureMetadataBlock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_FutureMetadataBlock with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_futuremetadatablock(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FutureMetadataBlock(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_MdxMetadata with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxMetadata(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_mdx = instance.mdx;
      } catch (e) {}
    });
    test('Test S_CT_MdxMetadata with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mdxmetadata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxMetadata(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_mdx = instance.mdx;
      } catch (e) {}
    });
    test('Test S_CT_Mdx with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Mdx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
      try {
        final c_ms = instance.ms;
      } catch (e) {}
      try {
        final c_p = instance.p;
      } catch (e) {}
      try {
        final c_k = instance.k;
      } catch (e) {}
    });
    test('Test S_CT_Mdx with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mdx(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            n: 1,
            f: S_ST_MdxFunctionType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Mdx(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_f = instance.f;
      } catch (e) {}
      try {
        final c_t = instance.t;
      } catch (e) {}
      try {
        final c_ms = instance.ms;
      } catch (e) {}
      try {
        final c_p = instance.p;
      } catch (e) {}
      try {
        final c_k = instance.k;
      } catch (e) {}
    });
    test('Test S_CT_MdxTuple with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxTuple(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_ct = instance.ct;
      } catch (e) {}
      try {
        final v_si = instance.si;
      } catch (e) {}
      try {
        final v_fi = instance.fi;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
    });
    test('Test S_CT_MdxTuple with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mdxtuple(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            c: 1,
            ct: 'test',
            si: 1,
            fi: 1,
            bc: 'test',
            fc: 'test',
            i: true,
            u: true,
            st: true,
            b: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxTuple(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_ct = instance.ct;
      } catch (e) {}
      try {
        final v_si = instance.si;
      } catch (e) {}
      try {
        final v_fi = instance.fi;
      } catch (e) {}
      try {
        final v_bc = instance.bc;
      } catch (e) {}
      try {
        final v_fc = instance.fc;
      } catch (e) {}
      try {
        final v_i = instance.i;
      } catch (e) {}
      try {
        final v_u = instance.u;
      } catch (e) {}
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_b = instance.b;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
    });
    test('Test S_CT_MdxSet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ns = instance.ns;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_o = instance.o;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
    });
    test('Test S_CT_MdxSet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mdxset(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ns: 1,
            c: 1,
            o: S_ST_MdxSetOrder.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ns = instance.ns;
      } catch (e) {}
      try {
        final v_c = instance.c;
      } catch (e) {}
      try {
        final v_o = instance.o;
      } catch (e) {}
      try {
        final c_n = instance.n;
      } catch (e) {}
    });
    test('Test S_CT_MdxMemeberProp with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxMemeberProp(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_np = instance.np;
      } catch (e) {}
    });
    test('Test S_CT_MdxMemeberProp with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mdxmemeberprop(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            n: 1,
            np: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxMemeberProp(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_np = instance.np;
      } catch (e) {}
    });
    test('Test S_CT_MdxKPI with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxKPI(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_np = instance.np;
      } catch (e) {}
      try {
        final v_p = instance.p;
      } catch (e) {}
    });
    test('Test S_CT_MdxKPI with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mdxkpi(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            n: 1,
            np: 1,
            p: S_ST_MdxKPIProperty.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MdxKPI(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_n = instance.n;
      } catch (e) {}
      try {
        final v_np = instance.np;
      } catch (e) {}
      try {
        final v_p = instance.p;
      } catch (e) {}
    });
    test('Test S_CT_MetadataStringIndex with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataStringIndex(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_x = instance.x;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
    });
    test('Test S_CT_MetadataStringIndex with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_metadatastringindex(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            x: 1,
            s: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataStringIndex(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_x = instance.x;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
    });
    test('Test S_CT_MetadataStrings with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataStrings(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
    });
    test('Test S_CT_MetadataStrings with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_metadatastrings(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MetadataStrings(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_s = instance.s;
      } catch (e) {}
    });
    test('Test S_CT_SingleXmlCells with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SingleXmlCells(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_singleXmlCell = instance.singleXmlCell;
      } catch (e) {}
    });
    test('Test S_CT_SingleXmlCells with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_singlexmlcells(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SingleXmlCells(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_singleXmlCell = instance.singleXmlCell;
      } catch (e) {}
    });
    test('Test S_CT_SingleXmlCell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SingleXmlCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_connectionId = instance.connectionId;
      } catch (e) {}
      try {
        final c_xmlCellPr = instance.xmlCellPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_SingleXmlCell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_singlexmlcell(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            r: 'test',
            connectionId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SingleXmlCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_connectionId = instance.connectionId;
      } catch (e) {}
      try {
        final c_xmlCellPr = instance.xmlCellPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_XmlCellPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_XmlCellPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final c_xmlPr = instance.xmlPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_XmlCellPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_xmlcellpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            uniqueName: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_XmlCellPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final c_xmlPr = instance.xmlPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_XmlPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_XmlPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mapId = instance.mapId;
      } catch (e) {}
      try {
        final v_xpath = instance.xpath;
      } catch (e) {}
      try {
        final v_xmlDataType = instance.xmlDataType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_XmlPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_xmlpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            mapId: 1,
            xpath: 'test',
            xmlDataType: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_XmlPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mapId = instance.mapId;
      } catch (e) {}
      try {
        final v_xpath = instance.xpath;
      } catch (e) {}
      try {
        final v_xmlDataType = instance.xmlDataType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Stylesheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Stylesheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_numFmts = instance.numFmts;
      } catch (e) {}
      try {
        final c_fonts = instance.fonts;
      } catch (e) {}
      try {
        final c_fills = instance.fills;
      } catch (e) {}
      try {
        final c_borders = instance.borders;
      } catch (e) {}
      try {
        final c_cellStyleXfs = instance.cellStyleXfs;
      } catch (e) {}
      try {
        final c_cellXfs = instance.cellXfs;
      } catch (e) {}
      try {
        final c_cellStyles = instance.cellStyles;
      } catch (e) {}
      try {
        final c_dxfs = instance.dxfs;
      } catch (e) {}
      try {
        final c_tableStyles = instance.tableStyles;
      } catch (e) {}
      try {
        final c_colors = instance.colors;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Stylesheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_stylesheet(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Stylesheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_numFmts = instance.numFmts;
      } catch (e) {}
      try {
        final c_fonts = instance.fonts;
      } catch (e) {}
      try {
        final c_fills = instance.fills;
      } catch (e) {}
      try {
        final c_borders = instance.borders;
      } catch (e) {}
      try {
        final c_cellStyleXfs = instance.cellStyleXfs;
      } catch (e) {}
      try {
        final c_cellXfs = instance.cellXfs;
      } catch (e) {}
      try {
        final c_cellStyles = instance.cellStyles;
      } catch (e) {}
      try {
        final c_dxfs = instance.dxfs;
      } catch (e) {}
      try {
        final c_tableStyles = instance.tableStyles;
      } catch (e) {}
      try {
        final c_colors = instance.colors;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CellAlignment with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellAlignment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_horizontal = instance.horizontal;
      } catch (e) {}
      try {
        final v_vertical = instance.vertical;
      } catch (e) {}
      try {
        final v_textRotation = instance.textRotation;
      } catch (e) {}
      try {
        final v_wrapText = instance.wrapText;
      } catch (e) {}
      try {
        final v_indent = instance.indent;
      } catch (e) {}
      try {
        final v_relativeIndent = instance.relativeIndent;
      } catch (e) {}
      try {
        final v_justifyLastLine = instance.justifyLastLine;
      } catch (e) {}
      try {
        final v_shrinkToFit = instance.shrinkToFit;
      } catch (e) {}
      try {
        final v_readingOrder = instance.readingOrder;
      } catch (e) {}
    });
    test('Test S_CT_CellAlignment with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellalignment(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            horizontal: S_ST_HorizontalAlignment.values.first,
            vertical: S_ST_VerticalAlignment.values.first,
            textRotation: 'test',
            wrapText: true,
            indent: 1,
            relativeIndent: 1,
            justifyLastLine: true,
            shrinkToFit: true,
            readingOrder: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellAlignment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_horizontal = instance.horizontal;
      } catch (e) {}
      try {
        final v_vertical = instance.vertical;
      } catch (e) {}
      try {
        final v_textRotation = instance.textRotation;
      } catch (e) {}
      try {
        final v_wrapText = instance.wrapText;
      } catch (e) {}
      try {
        final v_indent = instance.indent;
      } catch (e) {}
      try {
        final v_relativeIndent = instance.relativeIndent;
      } catch (e) {}
      try {
        final v_justifyLastLine = instance.justifyLastLine;
      } catch (e) {}
      try {
        final v_shrinkToFit = instance.shrinkToFit;
      } catch (e) {}
      try {
        final v_readingOrder = instance.readingOrder;
      } catch (e) {}
    });
    test('Test S_CT_Borders with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Borders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_border = instance.border;
      } catch (e) {}
    });
    test('Test S_CT_Borders with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_borders(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Borders(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_border = instance.border;
      } catch (e) {}
    });
    test('Test S_CT_Border with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Border(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_diagonalUp = instance.diagonalUp;
      } catch (e) {}
      try {
        final v_diagonalDown = instance.diagonalDown;
      } catch (e) {}
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
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
        final c_diagonal = instance.diagonal;
      } catch (e) {}
      try {
        final c_vertical = instance.vertical;
      } catch (e) {}
      try {
        final c_horizontal = instance.horizontal;
      } catch (e) {}
    });
    test('Test S_CT_Border with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_border(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            diagonalUp: true,
            diagonalDown: true,
            outline: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Border(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_diagonalUp = instance.diagonalUp;
      } catch (e) {}
      try {
        final v_diagonalDown = instance.diagonalDown;
      } catch (e) {}
      try {
        final v_outline = instance.outline;
      } catch (e) {}
      try {
        final c_start = instance.start;
      } catch (e) {}
      try {
        final c_end = instance.end;
      } catch (e) {}
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
        final c_diagonal = instance.diagonal;
      } catch (e) {}
      try {
        final c_vertical = instance.vertical;
      } catch (e) {}
      try {
        final c_horizontal = instance.horizontal;
      } catch (e) {}
    });
    test('Test S_CT_BorderPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_BorderPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_style = instance.style;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_BorderPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_borderpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            style: S_ST_BorderStyle.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_BorderPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_style = instance.style;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_CellProtection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
    });
    test('Test S_CT_CellProtection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellprotection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            locked: true,
            hidden: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_locked = instance.locked;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
    });
    test('Test S_CT_Fonts with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Fonts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_font = instance.font;
      } catch (e) {}
    });
    test('Test S_CT_Fonts with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fonts(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Fonts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_font = instance.font;
      } catch (e) {}
    });
    test('Test S_CT_Fills with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Fills(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_fill = instance.fill;
      } catch (e) {}
    });
    test('Test S_CT_Fills with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fills(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Fills(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_fill = instance.fill;
      } catch (e) {}
    });
    test('Test S_CT_Fill with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Fill(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_patternFill = instance.patternFill;
      } catch (e) {}
      try {
        final c_gradientFill = instance.gradientFill;
      } catch (e) {}
    });
    test('Test S_CT_Fill with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fill(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Fill(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_patternFill = instance.patternFill;
      } catch (e) {}
      try {
        final c_gradientFill = instance.gradientFill;
      } catch (e) {}
    });
    test('Test S_CT_PatternFill with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PatternFill(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_patternType = instance.patternType;
      } catch (e) {}
      try {
        final c_fgColor = instance.fgColor;
      } catch (e) {}
      try {
        final c_bgColor = instance.bgColor;
      } catch (e) {}
    });
    test('Test S_CT_PatternFill with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_patternfill(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            patternType: S_ST_PatternType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PatternFill(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_patternType = instance.patternType;
      } catch (e) {}
      try {
        final c_fgColor = instance.fgColor;
      } catch (e) {}
      try {
        final c_bgColor = instance.bgColor;
      } catch (e) {}
    });
    test('Test S_CT_Color with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Color(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_auto = instance.auto;
      } catch (e) {}
      try {
        final v_indexed = instance.indexed;
      } catch (e) {}
      try {
        final v_rgb = instance.rgb;
      } catch (e) {}
      try {
        final v_theme = instance.theme;
      } catch (e) {}
      try {
        final v_tint = instance.tint;
      } catch (e) {}
    });
    test('Test S_CT_Color with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_color(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            auto: true,
            indexed: 1,
            rgb: 'test',
            theme: 1,
            tint: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Color(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_auto = instance.auto;
      } catch (e) {}
      try {
        final v_indexed = instance.indexed;
      } catch (e) {}
      try {
        final v_rgb = instance.rgb;
      } catch (e) {}
      try {
        final v_theme = instance.theme;
      } catch (e) {}
      try {
        final v_tint = instance.tint;
      } catch (e) {}
    });
    test('Test S_CT_GradientFill with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GradientFill(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_degree = instance.degree;
      } catch (e) {}
      try {
        final v_left = instance.left;
      } catch (e) {}
      try {
        final v_right = instance.right;
      } catch (e) {}
      try {
        final v_top = instance.top;
      } catch (e) {}
      try {
        final v_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_stop = instance.stop;
      } catch (e) {}
    });
    test('Test S_CT_GradientFill with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_gradientfill(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_GradientType.values.first,
            degree: 1.0,
            left: 1.0,
            right: 1.0,
            top: 1.0,
            bottom: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GradientFill(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_degree = instance.degree;
      } catch (e) {}
      try {
        final v_left = instance.left;
      } catch (e) {}
      try {
        final v_right = instance.right;
      } catch (e) {}
      try {
        final v_top = instance.top;
      } catch (e) {}
      try {
        final v_bottom = instance.bottom;
      } catch (e) {}
      try {
        final c_stop = instance.stop;
      } catch (e) {}
    });
    test('Test S_CT_GradientStop with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GradientStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_position = instance.position;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_GradientStop with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_gradientstop(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            position: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_GradientStop(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_position = instance.position;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_NumFmts with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_NumFmts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
    });
    test('Test S_CT_NumFmts with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_numfmts(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_NumFmts(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
    });
    test('Test S_CT_NumFmt with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_NumFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_formatCode = instance.formatCode;
      } catch (e) {}
    });
    test('Test S_CT_NumFmt with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_numfmt(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            numFmtId: 'test',
            formatCode: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_NumFmt(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_formatCode = instance.formatCode;
      } catch (e) {}
    });
    test('Test S_CT_CellStyleXfs with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellStyleXfs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_xf = instance.xf;
      } catch (e) {}
    });
    test('Test S_CT_CellStyleXfs with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellstylexfs(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellStyleXfs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_xf = instance.xf;
      } catch (e) {}
    });
    test('Test S_CT_CellXfs with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellXfs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_xf = instance.xf;
      } catch (e) {}
    });
    test('Test S_CT_CellXfs with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellxfs(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellXfs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_xf = instance.xf;
      } catch (e) {}
    });
    test('Test S_CT_Xf with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Xf(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_fontId = instance.fontId;
      } catch (e) {}
      try {
        final v_fillId = instance.fillId;
      } catch (e) {}
      try {
        final v_borderId = instance.borderId;
      } catch (e) {}
      try {
        final v_xfId = instance.xfId;
      } catch (e) {}
      try {
        final v_quotePrefix = instance.quotePrefix;
      } catch (e) {}
      try {
        final v_pivotButton = instance.pivotButton;
      } catch (e) {}
      try {
        final v_applyNumberFormat = instance.applyNumberFormat;
      } catch (e) {}
      try {
        final v_applyFont = instance.applyFont;
      } catch (e) {}
      try {
        final v_applyFill = instance.applyFill;
      } catch (e) {}
      try {
        final v_applyBorder = instance.applyBorder;
      } catch (e) {}
      try {
        final v_applyAlignment = instance.applyAlignment;
      } catch (e) {}
      try {
        final v_applyProtection = instance.applyProtection;
      } catch (e) {}
      try {
        final c_alignment = instance.alignment;
      } catch (e) {}
      try {
        final c_protection = instance.protection;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Xf with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_xf(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            numFmtId: 'test',
            fontId: 'test',
            fillId: 'test',
            borderId: 'test',
            xfId: 'test',
            quotePrefix: true,
            pivotButton: true,
            applyNumberFormat: true,
            applyFont: true,
            applyFill: true,
            applyBorder: true,
            applyAlignment: true,
            applyProtection: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Xf(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_numFmtId = instance.numFmtId;
      } catch (e) {}
      try {
        final v_fontId = instance.fontId;
      } catch (e) {}
      try {
        final v_fillId = instance.fillId;
      } catch (e) {}
      try {
        final v_borderId = instance.borderId;
      } catch (e) {}
      try {
        final v_xfId = instance.xfId;
      } catch (e) {}
      try {
        final v_quotePrefix = instance.quotePrefix;
      } catch (e) {}
      try {
        final v_pivotButton = instance.pivotButton;
      } catch (e) {}
      try {
        final v_applyNumberFormat = instance.applyNumberFormat;
      } catch (e) {}
      try {
        final v_applyFont = instance.applyFont;
      } catch (e) {}
      try {
        final v_applyFill = instance.applyFill;
      } catch (e) {}
      try {
        final v_applyBorder = instance.applyBorder;
      } catch (e) {}
      try {
        final v_applyAlignment = instance.applyAlignment;
      } catch (e) {}
      try {
        final v_applyProtection = instance.applyProtection;
      } catch (e) {}
      try {
        final c_alignment = instance.alignment;
      } catch (e) {}
      try {
        final c_protection = instance.protection;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CellStyles with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_cellStyle = instance.cellStyle;
      } catch (e) {}
    });
    test('Test S_CT_CellStyles with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellstyles(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_cellStyle = instance.cellStyle;
      } catch (e) {}
    });
    test('Test S_CT_CellStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_xfId = instance.xfId;
      } catch (e) {}
      try {
        final v_builtinId = instance.builtinId;
      } catch (e) {}
      try {
        final v_iLevel = instance.iLevel;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_customBuiltin = instance.customBuiltin;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CellStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_cellstyle(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            xfId: 'test',
            builtinId: 1,
            iLevel: 1,
            hidden: true,
            customBuiltin: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CellStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_xfId = instance.xfId;
      } catch (e) {}
      try {
        final v_builtinId = instance.builtinId;
      } catch (e) {}
      try {
        final v_iLevel = instance.iLevel;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_customBuiltin = instance.customBuiltin;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Dxfs with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Dxfs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dxf = instance.dxf;
      } catch (e) {}
    });
    test('Test S_CT_Dxfs with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_dxfs(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Dxfs(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_dxf = instance.dxf;
      } catch (e) {}
    });
    test('Test S_CT_Dxf with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Dxf(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_font = instance.font;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_fill = instance.fill;
      } catch (e) {}
      try {
        final c_alignment = instance.alignment;
      } catch (e) {}
      try {
        final c_border = instance.border;
      } catch (e) {}
      try {
        final c_protection = instance.protection;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Dxf with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_dxf(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Dxf(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_font = instance.font;
      } catch (e) {}
      try {
        final c_numFmt = instance.numFmt;
      } catch (e) {}
      try {
        final c_fill = instance.fill;
      } catch (e) {}
      try {
        final c_alignment = instance.alignment;
      } catch (e) {}
      try {
        final c_border = instance.border;
      } catch (e) {}
      try {
        final c_protection = instance.protection;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Colors with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Colors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_indexedColors = instance.indexedColors;
      } catch (e) {}
      try {
        final c_mruColors = instance.mruColors;
      } catch (e) {}
    });
    test('Test S_CT_Colors with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_colors(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Colors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_indexedColors = instance.indexedColors;
      } catch (e) {}
      try {
        final c_mruColors = instance.mruColors;
      } catch (e) {}
    });
    test('Test S_CT_IndexedColors with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IndexedColors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rgbColor = instance.rgbColor;
      } catch (e) {}
    });
    test('Test S_CT_IndexedColors with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_indexedcolors(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IndexedColors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rgbColor = instance.rgbColor;
      } catch (e) {}
    });
    test('Test S_CT_MRUColors with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MRUColors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_MRUColors with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_mrucolors(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_MRUColors(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_color = instance.color;
      } catch (e) {}
    });
    test('Test S_CT_RgbColor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RgbColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rgb = instance.rgb;
      } catch (e) {}
    });
    test('Test S_CT_RgbColor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_rgbcolor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            rgb: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_RgbColor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rgb = instance.rgb;
      } catch (e) {}
    });
    test('Test S_CT_TableStyles with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_defaultTableStyle = instance.defaultTableStyle;
      } catch (e) {}
      try {
        final v_defaultPivotStyle = instance.defaultPivotStyle;
      } catch (e) {}
      try {
        final c_tableStyle = instance.tableStyle;
      } catch (e) {}
    });
    test('Test S_CT_TableStyles with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tablestyles(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
            defaultTableStyle: 'test',
            defaultPivotStyle: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final v_defaultTableStyle = instance.defaultTableStyle;
      } catch (e) {}
      try {
        final v_defaultPivotStyle = instance.defaultPivotStyle;
      } catch (e) {}
      try {
        final c_tableStyle = instance.tableStyle;
      } catch (e) {}
    });
    test('Test S_CT_TableStyle with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_pivot = instance.pivot;
      } catch (e) {}
      try {
        final v_table = instance.table;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_tableStyleElement = instance.tableStyleElement;
      } catch (e) {}
    });
    test('Test S_CT_TableStyle with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tablestyle(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            pivot: true,
            table: true,
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableStyle(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_pivot = instance.pivot;
      } catch (e) {}
      try {
        final v_table = instance.table;
      } catch (e) {}
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_tableStyleElement = instance.tableStyleElement;
      } catch (e) {}
    });
    test('Test S_CT_TableStyleElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableStyleElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_size = instance.size;
      } catch (e) {}
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
    });
    test('Test S_CT_TableStyleElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tablestyleelement(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_TableStyleType.values.first,
            size: 1,
            dxfId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableStyleElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_size = instance.size;
      } catch (e) {}
      try {
        final v_dxfId = instance.dxfId;
      } catch (e) {}
    });
    test('Test S_CT_BooleanProperty with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_BooleanProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_BooleanProperty with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_booleanproperty(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_BooleanProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_FontSize with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FontSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_FontSize with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fontsize(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FontSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_IntProperty with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IntProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_IntProperty with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_intproperty(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_IntProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_FontName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FontName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_FontName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fontname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FontName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_VerticalAlignFontProperty with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VerticalAlignFontProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_VerticalAlignFontProperty with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_verticalalignfontproperty(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: ST_VerticalAlignRun.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VerticalAlignFontProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_FontScheme with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FontScheme(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_FontScheme with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fontscheme(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: S_ST_FontScheme.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FontScheme(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_UnderlineProperty with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_UnderlineProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_UnderlineProperty with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_underlineproperty(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: S_ST_UnderlineValues.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_UnderlineProperty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_Font with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Font(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_charset = instance.charset;
      } catch (e) {}
      try {
        final c_family = instance.family;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_condense = instance.condense;
      } catch (e) {}
      try {
        final c_extend = instance.extend;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_scheme = instance.scheme;
      } catch (e) {}
    });
    test('Test S_CT_Font with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_font(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Font(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_name = instance.name;
      } catch (e) {}
      try {
        final c_charset = instance.charset;
      } catch (e) {}
      try {
        final c_family = instance.family;
      } catch (e) {}
      try {
        final c_b = instance.b;
      } catch (e) {}
      try {
        final c_i = instance.i;
      } catch (e) {}
      try {
        final c_strike = instance.strike;
      } catch (e) {}
      try {
        final c_outline = instance.outline;
      } catch (e) {}
      try {
        final c_shadow = instance.shadow;
      } catch (e) {}
      try {
        final c_condense = instance.condense;
      } catch (e) {}
      try {
        final c_extend = instance.extend;
      } catch (e) {}
      try {
        final c_color = instance.color;
      } catch (e) {}
      try {
        final c_sz = instance.sz;
      } catch (e) {}
      try {
        final c_u = instance.u;
      } catch (e) {}
      try {
        final c_vertAlign = instance.vertAlign;
      } catch (e) {}
      try {
        final c_scheme = instance.scheme;
      } catch (e) {}
    });
    test('Test S_CT_FontFamily with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FontFamily(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_FontFamily with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fontfamily(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FontFamily(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_ExternalLink with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_externalBook = instance.externalBook;
      } catch (e) {}
      try {
        final c_ddeLink = instance.ddeLink;
      } catch (e) {}
      try {
        final c_oleLink = instance.oleLink;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ExternalLink with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externallink(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_externalBook = instance.externalBook;
      } catch (e) {}
      try {
        final c_ddeLink = instance.ddeLink;
      } catch (e) {}
      try {
        final c_oleLink = instance.oleLink;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_ExternalBook with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalBook(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_sheetNames = instance.sheetNames;
      } catch (e) {}
      try {
        final c_definedNames = instance.definedNames;
      } catch (e) {}
      try {
        final c_sheetDataSet = instance.sheetDataSet;
      } catch (e) {}
    });
    test('Test S_CT_ExternalBook with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_externalbook(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalBook(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_sheetNames = instance.sheetNames;
      } catch (e) {}
      try {
        final c_definedNames = instance.definedNames;
      } catch (e) {}
      try {
        final c_sheetDataSet = instance.sheetDataSet;
      } catch (e) {}
    });
    test('Test S_CT_ExternalSheetNames with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalSheetNames(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetName = instance.sheetName;
      } catch (e) {}
    });
    test('Test S_CT_ExternalSheetNames with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externalsheetnames(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalSheetNames(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetName = instance.sheetName;
      } catch (e) {}
    });
    test('Test S_CT_ExternalSheetName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalSheetName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_ExternalSheetName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externalsheetname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalSheetName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_ExternalDefinedNames with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalDefinedNames(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_definedName = instance.definedName;
      } catch (e) {}
    });
    test('Test S_CT_ExternalDefinedNames with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externaldefinednames(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalDefinedNames(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_definedName = instance.definedName;
      } catch (e) {}
    });
    test('Test S_CT_ExternalDefinedName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalDefinedName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_refersTo = instance.refersTo;
      } catch (e) {}
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
    });
    test('Test S_CT_ExternalDefinedName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externaldefinedname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            refersTo: 'test',
            sheetId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalDefinedName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_refersTo = instance.refersTo;
      } catch (e) {}
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
    });
    test('Test S_CT_ExternalSheetDataSet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalSheetDataSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetData = instance.sheetData;
      } catch (e) {}
    });
    test('Test S_CT_ExternalSheetDataSet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externalsheetdataset(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalSheetDataSet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheetData = instance.sheetData;
      } catch (e) {}
    });
    test('Test S_CT_ExternalSheetData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalSheetData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_refreshError = instance.refreshError;
      } catch (e) {}
      try {
        final c_row = instance.row;
      } catch (e) {}
    });
    test('Test S_CT_ExternalSheetData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externalsheetdata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            sheetId: 1,
            refreshError: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalSheetData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_refreshError = instance.refreshError;
      } catch (e) {}
      try {
        final c_row = instance.row;
      } catch (e) {}
    });
    test('Test S_CT_ExternalRow with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final c_cell = instance.cell;
      } catch (e) {}
    });
    test('Test S_CT_ExternalRow with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externalrow(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalRow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final c_cell = instance.cell;
      } catch (e) {}
    });
    test('Test S_CT_ExternalCell with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_vm = instance.vm;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_ExternalCell with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externalcell(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 'test',
            t: S_ST_CellType.values.first,
            vm: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalCell(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final v_vm = instance.vm;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
    });
    test('Test S_CT_DdeLink with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ddeService = instance.ddeService;
      } catch (e) {}
      try {
        final v_ddeTopic = instance.ddeTopic;
      } catch (e) {}
      try {
        final c_ddeItems = instance.ddeItems;
      } catch (e) {}
    });
    test('Test S_CT_DdeLink with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_ddelink(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ddeService: 'test',
            ddeTopic: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ddeService = instance.ddeService;
      } catch (e) {}
      try {
        final v_ddeTopic = instance.ddeTopic;
      } catch (e) {}
      try {
        final c_ddeItems = instance.ddeItems;
      } catch (e) {}
    });
    test('Test S_CT_DdeItems with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ddeItem = instance.ddeItem;
      } catch (e) {}
    });
    test('Test S_CT_DdeItems with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_ddeitems(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ddeItem = instance.ddeItem;
      } catch (e) {}
    });
    test('Test S_CT_DdeItem with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_ole = instance.ole;
      } catch (e) {}
      try {
        final v_advise = instance.advise;
      } catch (e) {}
      try {
        final v_preferPic = instance.preferPic;
      } catch (e) {}
      try {
        final c_values = instance.values;
      } catch (e) {}
    });
    test('Test S_CT_DdeItem with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_ddeitem(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            ole: true,
            advise: true,
            preferPic: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_ole = instance.ole;
      } catch (e) {}
      try {
        final v_advise = instance.advise;
      } catch (e) {}
      try {
        final v_preferPic = instance.preferPic;
      } catch (e) {}
      try {
        final c_values = instance.values;
      } catch (e) {}
    });
    test('Test S_CT_DdeValues with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeValues(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rows = instance.rows;
      } catch (e) {}
      try {
        final v_cols = instance.cols;
      } catch (e) {}
      try {
        final c_value_ = instance.value_;
      } catch (e) {}
    });
    test('Test S_CT_DdeValues with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_ddevalues(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            rows: 1,
            cols: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeValues(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_rows = instance.rows;
      } catch (e) {}
      try {
        final v_cols = instance.cols;
      } catch (e) {}
      try {
        final c_value_ = instance.value_;
      } catch (e) {}
    });
    test('Test S_CT_DdeValue with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeValue(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_DdeValue with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_ddevalue(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            t: S_ST_DdeValueType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DdeValue(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
    });
    test('Test S_CT_OleLink with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_progId = instance.progId;
      } catch (e) {}
      try {
        final c_oleItems = instance.oleItems;
      } catch (e) {}
    });
    test('Test S_CT_OleLink with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_olelink(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
            progId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_progId = instance.progId;
      } catch (e) {}
      try {
        final c_oleItems = instance.oleItems;
      } catch (e) {}
    });
    test('Test S_CT_OleItems with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_oleItem = instance.oleItem;
      } catch (e) {}
    });
    test('Test S_CT_OleItems with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_oleitems(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleItems(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_oleItem = instance.oleItem;
      } catch (e) {}
    });
    test('Test S_CT_OleItem with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_icon = instance.icon;
      } catch (e) {}
      try {
        final v_advise = instance.advise;
      } catch (e) {}
      try {
        final v_preferPic = instance.preferPic;
      } catch (e) {}
    });
    test('Test S_CT_OleItem with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_oleitem(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            icon: true,
            advise: true,
            preferPic: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleItem(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_icon = instance.icon;
      } catch (e) {}
      try {
        final v_advise = instance.advise;
      } catch (e) {}
      try {
        final v_preferPic = instance.preferPic;
      } catch (e) {}
    });
    test('Test S_CT_Table with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Table(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_displayName = instance.displayName;
      } catch (e) {}
      try {
        final v_comment = instance.comment;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_tableType = instance.tableType;
      } catch (e) {}
      try {
        final v_headerRowCount = instance.headerRowCount;
      } catch (e) {}
      try {
        final v_insertRow = instance.insertRow;
      } catch (e) {}
      try {
        final v_insertRowShift = instance.insertRowShift;
      } catch (e) {}
      try {
        final v_totalsRowCount = instance.totalsRowCount;
      } catch (e) {}
      try {
        final v_totalsRowShown = instance.totalsRowShown;
      } catch (e) {}
      try {
        final v_published = instance.published;
      } catch (e) {}
      try {
        final v_headerRowDxfId = instance.headerRowDxfId;
      } catch (e) {}
      try {
        final v_dataDxfId = instance.dataDxfId;
      } catch (e) {}
      try {
        final v_totalsRowDxfId = instance.totalsRowDxfId;
      } catch (e) {}
      try {
        final v_headerRowBorderDxfId = instance.headerRowBorderDxfId;
      } catch (e) {}
      try {
        final v_tableBorderDxfId = instance.tableBorderDxfId;
      } catch (e) {}
      try {
        final v_totalsRowBorderDxfId = instance.totalsRowBorderDxfId;
      } catch (e) {}
      try {
        final v_headerRowCellStyle = instance.headerRowCellStyle;
      } catch (e) {}
      try {
        final v_dataCellStyle = instance.dataCellStyle;
      } catch (e) {}
      try {
        final v_totalsRowCellStyle = instance.totalsRowCellStyle;
      } catch (e) {}
      try {
        final v_connectionId = instance.connectionId;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_tableColumns = instance.tableColumns;
      } catch (e) {}
      try {
        final c_tableStyleInfo = instance.tableStyleInfo;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Table with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_table(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            name: 'test',
            displayName: 'test',
            comment: 'test',
            ref: 'test',
            tableType: S_ST_TableType.values.first,
            headerRowCount: 1,
            insertRow: true,
            insertRowShift: true,
            totalsRowCount: 1,
            totalsRowShown: true,
            published: true,
            headerRowDxfId: 'test',
            dataDxfId: 'test',
            totalsRowDxfId: 'test',
            headerRowBorderDxfId: 'test',
            tableBorderDxfId: 'test',
            totalsRowBorderDxfId: 'test',
            headerRowCellStyle: 'test',
            dataCellStyle: 'test',
            totalsRowCellStyle: 'test',
            connectionId: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Table(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_displayName = instance.displayName;
      } catch (e) {}
      try {
        final v_comment = instance.comment;
      } catch (e) {}
      try {
        final v_ref = instance.ref;
      } catch (e) {}
      try {
        final v_tableType = instance.tableType;
      } catch (e) {}
      try {
        final v_headerRowCount = instance.headerRowCount;
      } catch (e) {}
      try {
        final v_insertRow = instance.insertRow;
      } catch (e) {}
      try {
        final v_insertRowShift = instance.insertRowShift;
      } catch (e) {}
      try {
        final v_totalsRowCount = instance.totalsRowCount;
      } catch (e) {}
      try {
        final v_totalsRowShown = instance.totalsRowShown;
      } catch (e) {}
      try {
        final v_published = instance.published;
      } catch (e) {}
      try {
        final v_headerRowDxfId = instance.headerRowDxfId;
      } catch (e) {}
      try {
        final v_dataDxfId = instance.dataDxfId;
      } catch (e) {}
      try {
        final v_totalsRowDxfId = instance.totalsRowDxfId;
      } catch (e) {}
      try {
        final v_headerRowBorderDxfId = instance.headerRowBorderDxfId;
      } catch (e) {}
      try {
        final v_tableBorderDxfId = instance.tableBorderDxfId;
      } catch (e) {}
      try {
        final v_totalsRowBorderDxfId = instance.totalsRowBorderDxfId;
      } catch (e) {}
      try {
        final v_headerRowCellStyle = instance.headerRowCellStyle;
      } catch (e) {}
      try {
        final v_dataCellStyle = instance.dataCellStyle;
      } catch (e) {}
      try {
        final v_totalsRowCellStyle = instance.totalsRowCellStyle;
      } catch (e) {}
      try {
        final v_connectionId = instance.connectionId;
      } catch (e) {}
      try {
        final c_autoFilter = instance.autoFilter;
      } catch (e) {}
      try {
        final c_sortState = instance.sortState;
      } catch (e) {}
      try {
        final c_tableColumns = instance.tableColumns;
      } catch (e) {}
      try {
        final c_tableStyleInfo = instance.tableStyleInfo;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_TableStyleInfo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableStyleInfo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_showFirstColumn = instance.showFirstColumn;
      } catch (e) {}
      try {
        final v_showLastColumn = instance.showLastColumn;
      } catch (e) {}
      try {
        final v_showRowStripes = instance.showRowStripes;
      } catch (e) {}
      try {
        final v_showColumnStripes = instance.showColumnStripes;
      } catch (e) {}
    });
    test('Test S_CT_TableStyleInfo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tablestyleinfo(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            showFirstColumn: true,
            showLastColumn: true,
            showRowStripes: true,
            showColumnStripes: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableStyleInfo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_showFirstColumn = instance.showFirstColumn;
      } catch (e) {}
      try {
        final v_showLastColumn = instance.showLastColumn;
      } catch (e) {}
      try {
        final v_showRowStripes = instance.showRowStripes;
      } catch (e) {}
      try {
        final v_showColumnStripes = instance.showColumnStripes;
      } catch (e) {}
    });
    test('Test S_CT_TableColumns with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableColumns(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_tableColumn = instance.tableColumn;
      } catch (e) {}
    });
    test('Test S_CT_TableColumns with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tablecolumns(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableColumns(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_tableColumn = instance.tableColumn;
      } catch (e) {}
    });
    test('Test S_CT_TableColumn with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableColumn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_totalsRowFunction = instance.totalsRowFunction;
      } catch (e) {}
      try {
        final v_totalsRowLabel = instance.totalsRowLabel;
      } catch (e) {}
      try {
        final v_queryTableFieldId = instance.queryTableFieldId;
      } catch (e) {}
      try {
        final v_headerRowDxfId = instance.headerRowDxfId;
      } catch (e) {}
      try {
        final v_dataDxfId = instance.dataDxfId;
      } catch (e) {}
      try {
        final v_totalsRowDxfId = instance.totalsRowDxfId;
      } catch (e) {}
      try {
        final v_headerRowCellStyle = instance.headerRowCellStyle;
      } catch (e) {}
      try {
        final v_dataCellStyle = instance.dataCellStyle;
      } catch (e) {}
      try {
        final v_totalsRowCellStyle = instance.totalsRowCellStyle;
      } catch (e) {}
      try {
        final c_calculatedColumnFormula = instance.calculatedColumnFormula;
      } catch (e) {}
      try {
        final c_totalsRowFormula = instance.totalsRowFormula;
      } catch (e) {}
      try {
        final c_xmlColumnPr = instance.xmlColumnPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_TableColumn with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tablecolumn(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            uniqueName: 'test',
            name: 'test',
            totalsRowFunction: S_ST_TotalsRowFunction.values.first,
            totalsRowLabel: 'test',
            queryTableFieldId: 1,
            headerRowDxfId: 'test',
            dataDxfId: 'test',
            totalsRowDxfId: 'test',
            headerRowCellStyle: 'test',
            dataCellStyle: 'test',
            totalsRowCellStyle: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableColumn(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_uniqueName = instance.uniqueName;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_totalsRowFunction = instance.totalsRowFunction;
      } catch (e) {}
      try {
        final v_totalsRowLabel = instance.totalsRowLabel;
      } catch (e) {}
      try {
        final v_queryTableFieldId = instance.queryTableFieldId;
      } catch (e) {}
      try {
        final v_headerRowDxfId = instance.headerRowDxfId;
      } catch (e) {}
      try {
        final v_dataDxfId = instance.dataDxfId;
      } catch (e) {}
      try {
        final v_totalsRowDxfId = instance.totalsRowDxfId;
      } catch (e) {}
      try {
        final v_headerRowCellStyle = instance.headerRowCellStyle;
      } catch (e) {}
      try {
        final v_dataCellStyle = instance.dataCellStyle;
      } catch (e) {}
      try {
        final v_totalsRowCellStyle = instance.totalsRowCellStyle;
      } catch (e) {}
      try {
        final c_calculatedColumnFormula = instance.calculatedColumnFormula;
      } catch (e) {}
      try {
        final c_totalsRowFormula = instance.totalsRowFormula;
      } catch (e) {}
      try {
        final c_xmlColumnPr = instance.xmlColumnPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_TableFormula with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableFormula(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_array = instance.array;
      } catch (e) {}
    });
    test('Test S_CT_TableFormula with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_tableformula(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            array: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_TableFormula(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_array = instance.array;
      } catch (e) {}
    });
    test('Test S_CT_XmlColumnPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_XmlColumnPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mapId = instance.mapId;
      } catch (e) {}
      try {
        final v_xpath = instance.xpath;
      } catch (e) {}
      try {
        final v_denormalized = instance.denormalized;
      } catch (e) {}
      try {
        final v_xmlDataType = instance.xmlDataType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_XmlColumnPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_xmlcolumnpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            mapId: 1,
            xpath: 'test',
            denormalized: true,
            xmlDataType: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_XmlColumnPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mapId = instance.mapId;
      } catch (e) {}
      try {
        final v_xpath = instance.xpath;
      } catch (e) {}
      try {
        final v_denormalized = instance.denormalized;
      } catch (e) {}
      try {
        final v_xmlDataType = instance.xmlDataType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_VolTypes with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolTypes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_volType = instance.volType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_VolTypes with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_voltypes(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolTypes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_volType = instance.volType;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_VolType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final c_main = instance.main;
      } catch (e) {}
    });
    test('Test S_CT_VolType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_voltype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            type: S_ST_VolDepType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final c_main = instance.main;
      } catch (e) {}
    });
    test('Test S_CT_VolMain with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolMain(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_first = instance.first;
      } catch (e) {}
      try {
        final c_tp = instance.tp;
      } catch (e) {}
    });
    test('Test S_CT_VolMain with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_volmain(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            first: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolMain(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_first = instance.first;
      } catch (e) {}
      try {
        final c_tp = instance.tp;
      } catch (e) {}
    });
    test('Test S_CT_VolTopic with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolTopic(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
      try {
        final c_stp = instance.stp;
      } catch (e) {}
      try {
        final c_tr = instance.tr;
      } catch (e) {}
    });
    test('Test S_CT_VolTopic with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_voltopic(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            t: S_ST_VolValueType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolTopic(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_t = instance.t;
      } catch (e) {}
      try {
        final c_v = instance.v;
      } catch (e) {}
      try {
        final c_stp = instance.stp;
      } catch (e) {}
      try {
        final c_tr = instance.tr;
      } catch (e) {}
    });
    test('Test S_CT_VolTopicRef with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolTopicRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
    });
    test('Test S_CT_VolTopicRef with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_voltopicref(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r: 'test',
            s: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_VolTopicRef(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r = instance.r;
      } catch (e) {}
      try {
        final v_s = instance.s;
      } catch (e) {}
    });
    test('Test S_CT_Workbook with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Workbook(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_conformance = instance.conformance;
      } catch (e) {}
      try {
        final c_fileVersion = instance.fileVersion;
      } catch (e) {}
      try {
        final c_fileSharing = instance.fileSharing;
      } catch (e) {}
      try {
        final c_workbookPr = instance.workbookPr;
      } catch (e) {}
      try {
        final c_workbookProtection = instance.workbookProtection;
      } catch (e) {}
      try {
        final c_bookViews = instance.bookViews;
      } catch (e) {}
      try {
        final c_sheets = instance.sheets;
      } catch (e) {}
      try {
        final c_functionGroups = instance.functionGroups;
      } catch (e) {}
      try {
        final c_externalReferences = instance.externalReferences;
      } catch (e) {}
      try {
        final c_definedNames = instance.definedNames;
      } catch (e) {}
      try {
        final c_calcPr = instance.calcPr;
      } catch (e) {}
      try {
        final c_oleSize = instance.oleSize;
      } catch (e) {}
      try {
        final c_customWorkbookViews = instance.customWorkbookViews;
      } catch (e) {}
      try {
        final c_pivotCaches = instance.pivotCaches;
      } catch (e) {}
      try {
        final c_smartTagPr = instance.smartTagPr;
      } catch (e) {}
      try {
        final c_smartTagTypes = instance.smartTagTypes;
      } catch (e) {}
      try {
        final c_webPublishing = instance.webPublishing;
      } catch (e) {}
      try {
        final c_fileRecoveryPr = instance.fileRecoveryPr;
      } catch (e) {}
      try {
        final c_webPublishObjects = instance.webPublishObjects;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Workbook with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_workbook(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            conformance: ST_ConformanceClass.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Workbook(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_conformance = instance.conformance;
      } catch (e) {}
      try {
        final c_fileVersion = instance.fileVersion;
      } catch (e) {}
      try {
        final c_fileSharing = instance.fileSharing;
      } catch (e) {}
      try {
        final c_workbookPr = instance.workbookPr;
      } catch (e) {}
      try {
        final c_workbookProtection = instance.workbookProtection;
      } catch (e) {}
      try {
        final c_bookViews = instance.bookViews;
      } catch (e) {}
      try {
        final c_sheets = instance.sheets;
      } catch (e) {}
      try {
        final c_functionGroups = instance.functionGroups;
      } catch (e) {}
      try {
        final c_externalReferences = instance.externalReferences;
      } catch (e) {}
      try {
        final c_definedNames = instance.definedNames;
      } catch (e) {}
      try {
        final c_calcPr = instance.calcPr;
      } catch (e) {}
      try {
        final c_oleSize = instance.oleSize;
      } catch (e) {}
      try {
        final c_customWorkbookViews = instance.customWorkbookViews;
      } catch (e) {}
      try {
        final c_pivotCaches = instance.pivotCaches;
      } catch (e) {}
      try {
        final c_smartTagPr = instance.smartTagPr;
      } catch (e) {}
      try {
        final c_smartTagTypes = instance.smartTagTypes;
      } catch (e) {}
      try {
        final c_webPublishing = instance.webPublishing;
      } catch (e) {}
      try {
        final c_fileRecoveryPr = instance.fileRecoveryPr;
      } catch (e) {}
      try {
        final c_webPublishObjects = instance.webPublishObjects;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_FileVersion with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FileVersion(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_appName = instance.appName;
      } catch (e) {}
      try {
        final v_lastEdited = instance.lastEdited;
      } catch (e) {}
      try {
        final v_lowestEdited = instance.lowestEdited;
      } catch (e) {}
      try {
        final v_rupBuild = instance.rupBuild;
      } catch (e) {}
      try {
        final v_codeName = instance.codeName;
      } catch (e) {}
    });
    test('Test S_CT_FileVersion with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_fileversion(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            appName: 'test',
            lastEdited: 'test',
            lowestEdited: 'test',
            rupBuild: 'test',
            codeName: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FileVersion(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_appName = instance.appName;
      } catch (e) {}
      try {
        final v_lastEdited = instance.lastEdited;
      } catch (e) {}
      try {
        final v_lowestEdited = instance.lowestEdited;
      } catch (e) {}
      try {
        final v_rupBuild = instance.rupBuild;
      } catch (e) {}
      try {
        final v_codeName = instance.codeName;
      } catch (e) {}
    });
    test('Test S_CT_BookViews with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_BookViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_workbookView = instance.workbookView;
      } catch (e) {}
    });
    test('Test S_CT_BookViews with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_bookviews(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_BookViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_workbookView = instance.workbookView;
      } catch (e) {}
    });
    test('Test S_CT_BookView with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_BookView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_visibility = instance.visibility;
      } catch (e) {}
      try {
        final v_minimized = instance.minimized;
      } catch (e) {}
      try {
        final v_showHorizontalScroll = instance.showHorizontalScroll;
      } catch (e) {}
      try {
        final v_showVerticalScroll = instance.showVerticalScroll;
      } catch (e) {}
      try {
        final v_showSheetTabs = instance.showSheetTabs;
      } catch (e) {}
      try {
        final v_xWindow = instance.xWindow;
      } catch (e) {}
      try {
        final v_yWindow = instance.yWindow;
      } catch (e) {}
      try {
        final v_windowWidth = instance.windowWidth;
      } catch (e) {}
      try {
        final v_windowHeight = instance.windowHeight;
      } catch (e) {}
      try {
        final v_tabRatio = instance.tabRatio;
      } catch (e) {}
      try {
        final v_firstSheet = instance.firstSheet;
      } catch (e) {}
      try {
        final v_activeTab = instance.activeTab;
      } catch (e) {}
      try {
        final v_autoFilterDateGrouping = instance.autoFilterDateGrouping;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_BookView with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_bookview(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            visibility: S_ST_Visibility.values.first,
            minimized: true,
            showHorizontalScroll: true,
            showVerticalScroll: true,
            showSheetTabs: true,
            xWindow: 1,
            yWindow: 1,
            windowWidth: 1,
            windowHeight: 1,
            tabRatio: 1,
            firstSheet: 1,
            activeTab: 1,
            autoFilterDateGrouping: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_BookView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_visibility = instance.visibility;
      } catch (e) {}
      try {
        final v_minimized = instance.minimized;
      } catch (e) {}
      try {
        final v_showHorizontalScroll = instance.showHorizontalScroll;
      } catch (e) {}
      try {
        final v_showVerticalScroll = instance.showVerticalScroll;
      } catch (e) {}
      try {
        final v_showSheetTabs = instance.showSheetTabs;
      } catch (e) {}
      try {
        final v_xWindow = instance.xWindow;
      } catch (e) {}
      try {
        final v_yWindow = instance.yWindow;
      } catch (e) {}
      try {
        final v_windowWidth = instance.windowWidth;
      } catch (e) {}
      try {
        final v_windowHeight = instance.windowHeight;
      } catch (e) {}
      try {
        final v_tabRatio = instance.tabRatio;
      } catch (e) {}
      try {
        final v_firstSheet = instance.firstSheet;
      } catch (e) {}
      try {
        final v_activeTab = instance.activeTab;
      } catch (e) {}
      try {
        final v_autoFilterDateGrouping = instance.autoFilterDateGrouping;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CustomWorkbookViews with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomWorkbookViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customWorkbookView = instance.customWorkbookView;
      } catch (e) {}
    });
    test('Test S_CT_CustomWorkbookViews with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customworkbookviews(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomWorkbookViews(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_customWorkbookView = instance.customWorkbookView;
      } catch (e) {}
    });
    test('Test S_CT_CustomWorkbookView with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomWorkbookView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_autoUpdate = instance.autoUpdate;
      } catch (e) {}
      try {
        final v_mergeInterval = instance.mergeInterval;
      } catch (e) {}
      try {
        final v_changesSavedWin = instance.changesSavedWin;
      } catch (e) {}
      try {
        final v_onlySync = instance.onlySync;
      } catch (e) {}
      try {
        final v_personalView = instance.personalView;
      } catch (e) {}
      try {
        final v_includePrintSettings = instance.includePrintSettings;
      } catch (e) {}
      try {
        final v_includeHiddenRowCol = instance.includeHiddenRowCol;
      } catch (e) {}
      try {
        final v_maximized = instance.maximized;
      } catch (e) {}
      try {
        final v_minimized = instance.minimized;
      } catch (e) {}
      try {
        final v_showHorizontalScroll = instance.showHorizontalScroll;
      } catch (e) {}
      try {
        final v_showVerticalScroll = instance.showVerticalScroll;
      } catch (e) {}
      try {
        final v_showSheetTabs = instance.showSheetTabs;
      } catch (e) {}
      try {
        final v_xWindow = instance.xWindow;
      } catch (e) {}
      try {
        final v_yWindow = instance.yWindow;
      } catch (e) {}
      try {
        final v_windowWidth = instance.windowWidth;
      } catch (e) {}
      try {
        final v_windowHeight = instance.windowHeight;
      } catch (e) {}
      try {
        final v_tabRatio = instance.tabRatio;
      } catch (e) {}
      try {
        final v_activeSheetId = instance.activeSheetId;
      } catch (e) {}
      try {
        final v_showFormulaBar = instance.showFormulaBar;
      } catch (e) {}
      try {
        final v_showStatusbar = instance.showStatusbar;
      } catch (e) {}
      try {
        final v_showComments = instance.showComments;
      } catch (e) {}
      try {
        final v_showObjects = instance.showObjects;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_CustomWorkbookView with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_customworkbookview(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            guid: 'test',
            autoUpdate: true,
            mergeInterval: 1,
            changesSavedWin: true,
            onlySync: true,
            personalView: true,
            includePrintSettings: true,
            includeHiddenRowCol: true,
            maximized: true,
            minimized: true,
            showHorizontalScroll: true,
            showVerticalScroll: true,
            showSheetTabs: true,
            xWindow: 1,
            yWindow: 1,
            windowWidth: 1,
            windowHeight: 1,
            tabRatio: 1,
            activeSheetId: 1,
            showFormulaBar: true,
            showStatusbar: true,
            showComments: S_ST_Comments.values.first,
            showObjects: S_ST_Objects.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CustomWorkbookView(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_guid = instance.guid;
      } catch (e) {}
      try {
        final v_autoUpdate = instance.autoUpdate;
      } catch (e) {}
      try {
        final v_mergeInterval = instance.mergeInterval;
      } catch (e) {}
      try {
        final v_changesSavedWin = instance.changesSavedWin;
      } catch (e) {}
      try {
        final v_onlySync = instance.onlySync;
      } catch (e) {}
      try {
        final v_personalView = instance.personalView;
      } catch (e) {}
      try {
        final v_includePrintSettings = instance.includePrintSettings;
      } catch (e) {}
      try {
        final v_includeHiddenRowCol = instance.includeHiddenRowCol;
      } catch (e) {}
      try {
        final v_maximized = instance.maximized;
      } catch (e) {}
      try {
        final v_minimized = instance.minimized;
      } catch (e) {}
      try {
        final v_showHorizontalScroll = instance.showHorizontalScroll;
      } catch (e) {}
      try {
        final v_showVerticalScroll = instance.showVerticalScroll;
      } catch (e) {}
      try {
        final v_showSheetTabs = instance.showSheetTabs;
      } catch (e) {}
      try {
        final v_xWindow = instance.xWindow;
      } catch (e) {}
      try {
        final v_yWindow = instance.yWindow;
      } catch (e) {}
      try {
        final v_windowWidth = instance.windowWidth;
      } catch (e) {}
      try {
        final v_windowHeight = instance.windowHeight;
      } catch (e) {}
      try {
        final v_tabRatio = instance.tabRatio;
      } catch (e) {}
      try {
        final v_activeSheetId = instance.activeSheetId;
      } catch (e) {}
      try {
        final v_showFormulaBar = instance.showFormulaBar;
      } catch (e) {}
      try {
        final v_showStatusbar = instance.showStatusbar;
      } catch (e) {}
      try {
        final v_showComments = instance.showComments;
      } catch (e) {}
      try {
        final v_showObjects = instance.showObjects;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test S_CT_Sheets with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Sheets(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheet = instance.sheet;
      } catch (e) {}
    });
    test('Test S_CT_Sheets with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_sheets(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Sheets(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sheet = instance.sheet;
      } catch (e) {}
    });
    test('Test S_CT_Sheet with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Sheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_state = instance.state;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_Sheet with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_sheet(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            sheetId: 1,
            state: S_ST_SheetState.values.first,
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_Sheet(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_sheetId = instance.sheetId;
      } catch (e) {}
      try {
        final v_state = instance.state;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_WorkbookPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WorkbookPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_date1904 = instance.date1904;
      } catch (e) {}
      try {
        final v_showObjects = instance.showObjects;
      } catch (e) {}
      try {
        final v_showBorderUnselectedTables =
            instance.showBorderUnselectedTables;
      } catch (e) {}
      try {
        final v_filterPrivacy = instance.filterPrivacy;
      } catch (e) {}
      try {
        final v_promptedSolutions = instance.promptedSolutions;
      } catch (e) {}
      try {
        final v_showInkAnnotation = instance.showInkAnnotation;
      } catch (e) {}
      try {
        final v_backupFile = instance.backupFile;
      } catch (e) {}
      try {
        final v_saveExternalLinkValues = instance.saveExternalLinkValues;
      } catch (e) {}
      try {
        final v_updateLinks = instance.updateLinks;
      } catch (e) {}
      try {
        final v_codeName = instance.codeName;
      } catch (e) {}
      try {
        final v_hidePivotFieldList = instance.hidePivotFieldList;
      } catch (e) {}
      try {
        final v_showPivotChartFilter = instance.showPivotChartFilter;
      } catch (e) {}
      try {
        final v_allowRefreshQuery = instance.allowRefreshQuery;
      } catch (e) {}
      try {
        final v_publishItems = instance.publishItems;
      } catch (e) {}
      try {
        final v_checkCompatibility = instance.checkCompatibility;
      } catch (e) {}
      try {
        final v_autoCompressPictures = instance.autoCompressPictures;
      } catch (e) {}
      try {
        final v_refreshAllConnections = instance.refreshAllConnections;
      } catch (e) {}
      try {
        final v_defaultThemeVersion = instance.defaultThemeVersion;
      } catch (e) {}
    });
    test('Test S_CT_WorkbookPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_workbookpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            date1904: true,
            showObjects: S_ST_Objects.values.first,
            showBorderUnselectedTables: true,
            filterPrivacy: true,
            promptedSolutions: true,
            showInkAnnotation: true,
            backupFile: true,
            saveExternalLinkValues: true,
            updateLinks: S_ST_UpdateLinks.values.first,
            codeName: 'test',
            hidePivotFieldList: true,
            showPivotChartFilter: true,
            allowRefreshQuery: true,
            publishItems: true,
            checkCompatibility: true,
            autoCompressPictures: true,
            refreshAllConnections: true,
            defaultThemeVersion: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WorkbookPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_date1904 = instance.date1904;
      } catch (e) {}
      try {
        final v_showObjects = instance.showObjects;
      } catch (e) {}
      try {
        final v_showBorderUnselectedTables =
            instance.showBorderUnselectedTables;
      } catch (e) {}
      try {
        final v_filterPrivacy = instance.filterPrivacy;
      } catch (e) {}
      try {
        final v_promptedSolutions = instance.promptedSolutions;
      } catch (e) {}
      try {
        final v_showInkAnnotation = instance.showInkAnnotation;
      } catch (e) {}
      try {
        final v_backupFile = instance.backupFile;
      } catch (e) {}
      try {
        final v_saveExternalLinkValues = instance.saveExternalLinkValues;
      } catch (e) {}
      try {
        final v_updateLinks = instance.updateLinks;
      } catch (e) {}
      try {
        final v_codeName = instance.codeName;
      } catch (e) {}
      try {
        final v_hidePivotFieldList = instance.hidePivotFieldList;
      } catch (e) {}
      try {
        final v_showPivotChartFilter = instance.showPivotChartFilter;
      } catch (e) {}
      try {
        final v_allowRefreshQuery = instance.allowRefreshQuery;
      } catch (e) {}
      try {
        final v_publishItems = instance.publishItems;
      } catch (e) {}
      try {
        final v_checkCompatibility = instance.checkCompatibility;
      } catch (e) {}
      try {
        final v_autoCompressPictures = instance.autoCompressPictures;
      } catch (e) {}
      try {
        final v_refreshAllConnections = instance.refreshAllConnections;
      } catch (e) {}
      try {
        final v_defaultThemeVersion = instance.defaultThemeVersion;
      } catch (e) {}
    });
    test('Test S_CT_SmartTagPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SmartTagPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_embed = instance.embed;
      } catch (e) {}
      try {
        final v_show_ = instance.show_;
      } catch (e) {}
    });
    test('Test S_CT_SmartTagPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_smarttagpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            embed: true,
            show_: S_ST_SmartTagShow.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SmartTagPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_embed = instance.embed;
      } catch (e) {}
      try {
        final v_show_ = instance.show_;
      } catch (e) {}
    });
    test('Test S_CT_SmartTagTypes with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SmartTagTypes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_smartTagType = instance.smartTagType;
      } catch (e) {}
    });
    test('Test S_CT_SmartTagTypes with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_smarttagtypes(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SmartTagTypes(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_smartTagType = instance.smartTagType;
      } catch (e) {}
    });
    test('Test S_CT_SmartTagType with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SmartTagType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_namespaceUri = instance.namespaceUri;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_url = instance.url;
      } catch (e) {}
    });
    test('Test S_CT_SmartTagType with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_smarttagtype(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            namespaceUri: 'test',
            name: 'test',
            url: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SmartTagType(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_namespaceUri = instance.namespaceUri;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_url = instance.url;
      } catch (e) {}
    });
    test('Test S_CT_FileRecoveryPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FileRecoveryPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoRecover = instance.autoRecover;
      } catch (e) {}
      try {
        final v_crashSave = instance.crashSave;
      } catch (e) {}
      try {
        final v_dataExtractLoad = instance.dataExtractLoad;
      } catch (e) {}
      try {
        final v_repairLoad = instance.repairLoad;
      } catch (e) {}
    });
    test('Test S_CT_FileRecoveryPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_filerecoverypr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            autoRecover: true,
            crashSave: true,
            dataExtractLoad: true,
            repairLoad: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FileRecoveryPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoRecover = instance.autoRecover;
      } catch (e) {}
      try {
        final v_crashSave = instance.crashSave;
      } catch (e) {}
      try {
        final v_dataExtractLoad = instance.dataExtractLoad;
      } catch (e) {}
      try {
        final v_repairLoad = instance.repairLoad;
      } catch (e) {}
    });
    test('Test S_CT_CalcPr with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalcPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_calcId = instance.calcId;
      } catch (e) {}
      try {
        final v_calcMode = instance.calcMode;
      } catch (e) {}
      try {
        final v_fullCalcOnLoad = instance.fullCalcOnLoad;
      } catch (e) {}
      try {
        final v_refMode = instance.refMode;
      } catch (e) {}
      try {
        final v_iterate = instance.iterate;
      } catch (e) {}
      try {
        final v_iterateCount = instance.iterateCount;
      } catch (e) {}
      try {
        final v_iterateDelta = instance.iterateDelta;
      } catch (e) {}
      try {
        final v_fullPrecision = instance.fullPrecision;
      } catch (e) {}
      try {
        final v_calcCompleted = instance.calcCompleted;
      } catch (e) {}
      try {
        final v_calcOnSave = instance.calcOnSave;
      } catch (e) {}
      try {
        final v_concurrentCalc = instance.concurrentCalc;
      } catch (e) {}
      try {
        final v_concurrentManualCount = instance.concurrentManualCount;
      } catch (e) {}
      try {
        final v_forceFullCalc = instance.forceFullCalc;
      } catch (e) {}
    });
    test('Test S_CT_CalcPr with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_calcpr(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            calcId: 1,
            calcMode: S_ST_CalcMode.values.first,
            fullCalcOnLoad: true,
            refMode: S_ST_RefMode.values.first,
            iterate: true,
            iterateCount: 1,
            iterateDelta: 1.0,
            fullPrecision: true,
            calcCompleted: true,
            calcOnSave: true,
            concurrentCalc: true,
            concurrentManualCount: 1,
            forceFullCalc: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_CalcPr(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_calcId = instance.calcId;
      } catch (e) {}
      try {
        final v_calcMode = instance.calcMode;
      } catch (e) {}
      try {
        final v_fullCalcOnLoad = instance.fullCalcOnLoad;
      } catch (e) {}
      try {
        final v_refMode = instance.refMode;
      } catch (e) {}
      try {
        final v_iterate = instance.iterate;
      } catch (e) {}
      try {
        final v_iterateCount = instance.iterateCount;
      } catch (e) {}
      try {
        final v_iterateDelta = instance.iterateDelta;
      } catch (e) {}
      try {
        final v_fullPrecision = instance.fullPrecision;
      } catch (e) {}
      try {
        final v_calcCompleted = instance.calcCompleted;
      } catch (e) {}
      try {
        final v_calcOnSave = instance.calcOnSave;
      } catch (e) {}
      try {
        final v_concurrentCalc = instance.concurrentCalc;
      } catch (e) {}
      try {
        final v_concurrentManualCount = instance.concurrentManualCount;
      } catch (e) {}
      try {
        final v_forceFullCalc = instance.forceFullCalc;
      } catch (e) {}
    });
    test('Test S_CT_DefinedNames with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DefinedNames(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_definedName = instance.definedName;
      } catch (e) {}
    });
    test('Test S_CT_DefinedNames with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_definednames(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DefinedNames(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_definedName = instance.definedName;
      } catch (e) {}
    });
    test('Test S_CT_DefinedName with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DefinedName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_comment = instance.comment;
      } catch (e) {}
      try {
        final v_customMenu = instance.customMenu;
      } catch (e) {}
      try {
        final v_description = instance.description;
      } catch (e) {}
      try {
        final v_help = instance.help;
      } catch (e) {}
      try {
        final v_statusBar = instance.statusBar;
      } catch (e) {}
      try {
        final v_localSheetId = instance.localSheetId;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_function_ = instance.function_;
      } catch (e) {}
      try {
        final v_vbProcedure = instance.vbProcedure;
      } catch (e) {}
      try {
        final v_xlm = instance.xlm;
      } catch (e) {}
      try {
        final v_functionGroupId = instance.functionGroupId;
      } catch (e) {}
      try {
        final v_shortcutKey = instance.shortcutKey;
      } catch (e) {}
      try {
        final v_publishToServer = instance.publishToServer;
      } catch (e) {}
      try {
        final v_workbookParameter = instance.workbookParameter;
      } catch (e) {}
    });
    test('Test S_CT_DefinedName with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_definedname(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
            comment: 'test',
            customMenu: 'test',
            description: 'test',
            help: 'test',
            statusBar: 'test',
            localSheetId: 1,
            hidden: true,
            function_: true,
            vbProcedure: true,
            xlm: true,
            functionGroupId: 1,
            shortcutKey: 'test',
            publishToServer: true,
            workbookParameter: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_DefinedName(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_comment = instance.comment;
      } catch (e) {}
      try {
        final v_customMenu = instance.customMenu;
      } catch (e) {}
      try {
        final v_description = instance.description;
      } catch (e) {}
      try {
        final v_help = instance.help;
      } catch (e) {}
      try {
        final v_statusBar = instance.statusBar;
      } catch (e) {}
      try {
        final v_localSheetId = instance.localSheetId;
      } catch (e) {}
      try {
        final v_hidden = instance.hidden;
      } catch (e) {}
      try {
        final v_function_ = instance.function_;
      } catch (e) {}
      try {
        final v_vbProcedure = instance.vbProcedure;
      } catch (e) {}
      try {
        final v_xlm = instance.xlm;
      } catch (e) {}
      try {
        final v_functionGroupId = instance.functionGroupId;
      } catch (e) {}
      try {
        final v_shortcutKey = instance.shortcutKey;
      } catch (e) {}
      try {
        final v_publishToServer = instance.publishToServer;
      } catch (e) {}
      try {
        final v_workbookParameter = instance.workbookParameter;
      } catch (e) {}
    });
    test('Test S_CT_ExternalReferences with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalReferences(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_externalReference = instance.externalReference;
      } catch (e) {}
    });
    test('Test S_CT_ExternalReferences with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_externalreferences(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalReferences(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_externalReference = instance.externalReference;
      } catch (e) {}
    });
    test('Test S_CT_ExternalReference with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_ExternalReference with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_externalreference(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_ExternalReference(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_SheetBackgroundPicture with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetBackgroundPicture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_SheetBackgroundPicture with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_sheetbackgroundpicture(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_SheetBackgroundPicture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_PivotCaches with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotCaches(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pivotCache = instance.pivotCache;
      } catch (e) {}
    });
    test('Test S_CT_PivotCaches with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_pivotcaches(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotCaches(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_pivotCache = instance.pivotCache;
      } catch (e) {}
    });
    test('Test S_CT_PivotCache with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotCache(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_cacheId = instance.cacheId;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_PivotCache with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.s_ct_pivotcache(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            cacheId: 1,
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_PivotCache(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_cacheId = instance.cacheId;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test S_CT_FileSharing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FileSharing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_readOnlyRecommended = instance.readOnlyRecommended;
      } catch (e) {}
      try {
        final v_userName = instance.userName;
      } catch (e) {}
      try {
        final v_reservationPassword = instance.reservationPassword;
      } catch (e) {}
      try {
        final v_algorithmName = instance.algorithmName;
      } catch (e) {}
      try {
        final v_hashValue = instance.hashValue;
      } catch (e) {}
      try {
        final v_saltValue = instance.saltValue;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
    });
    test('Test S_CT_FileSharing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_filesharing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            readOnlyRecommended: true,
            userName: 'test',
            reservationPassword: 'test',
            algorithmName: 'test',
            hashValue: 'test',
            saltValue: 'test',
            spinCount: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FileSharing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_readOnlyRecommended = instance.readOnlyRecommended;
      } catch (e) {}
      try {
        final v_userName = instance.userName;
      } catch (e) {}
      try {
        final v_reservationPassword = instance.reservationPassword;
      } catch (e) {}
      try {
        final v_algorithmName = instance.algorithmName;
      } catch (e) {}
      try {
        final v_hashValue = instance.hashValue;
      } catch (e) {}
      try {
        final v_saltValue = instance.saltValue;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
    });
    test('Test S_CT_OleSize with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test S_CT_OleSize with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_olesize(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ref: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_OleSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_ref = instance.ref;
      } catch (e) {}
    });
    test('Test S_CT_WorkbookProtection with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WorkbookProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_workbookPassword = instance.workbookPassword;
      } catch (e) {}
      try {
        final v_workbookPasswordCharacterSet =
            instance.workbookPasswordCharacterSet;
      } catch (e) {}
      try {
        final v_revisionsPassword = instance.revisionsPassword;
      } catch (e) {}
      try {
        final v_revisionsPasswordCharacterSet =
            instance.revisionsPasswordCharacterSet;
      } catch (e) {}
      try {
        final v_lockStructure = instance.lockStructure;
      } catch (e) {}
      try {
        final v_lockWindows = instance.lockWindows;
      } catch (e) {}
      try {
        final v_lockRevision = instance.lockRevision;
      } catch (e) {}
      try {
        final v_revisionsAlgorithmName = instance.revisionsAlgorithmName;
      } catch (e) {}
      try {
        final v_revisionsHashValue = instance.revisionsHashValue;
      } catch (e) {}
      try {
        final v_revisionsSaltValue = instance.revisionsSaltValue;
      } catch (e) {}
      try {
        final v_revisionsSpinCount = instance.revisionsSpinCount;
      } catch (e) {}
      try {
        final v_workbookAlgorithmName = instance.workbookAlgorithmName;
      } catch (e) {}
      try {
        final v_workbookHashValue = instance.workbookHashValue;
      } catch (e) {}
      try {
        final v_workbookSaltValue = instance.workbookSaltValue;
      } catch (e) {}
      try {
        final v_workbookSpinCount = instance.workbookSpinCount;
      } catch (e) {}
    });
    test('Test S_CT_WorkbookProtection with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_workbookprotection(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            workbookPassword: 'test',
            workbookPasswordCharacterSet: 'test',
            revisionsPassword: 'test',
            revisionsPasswordCharacterSet: 'test',
            lockStructure: true,
            lockWindows: true,
            lockRevision: true,
            revisionsAlgorithmName: 'test',
            revisionsHashValue: 'test',
            revisionsSaltValue: 'test',
            revisionsSpinCount: 1,
            workbookAlgorithmName: 'test',
            workbookHashValue: 'test',
            workbookSaltValue: 'test',
            workbookSpinCount: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WorkbookProtection(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_workbookPassword = instance.workbookPassword;
      } catch (e) {}
      try {
        final v_workbookPasswordCharacterSet =
            instance.workbookPasswordCharacterSet;
      } catch (e) {}
      try {
        final v_revisionsPassword = instance.revisionsPassword;
      } catch (e) {}
      try {
        final v_revisionsPasswordCharacterSet =
            instance.revisionsPasswordCharacterSet;
      } catch (e) {}
      try {
        final v_lockStructure = instance.lockStructure;
      } catch (e) {}
      try {
        final v_lockWindows = instance.lockWindows;
      } catch (e) {}
      try {
        final v_lockRevision = instance.lockRevision;
      } catch (e) {}
      try {
        final v_revisionsAlgorithmName = instance.revisionsAlgorithmName;
      } catch (e) {}
      try {
        final v_revisionsHashValue = instance.revisionsHashValue;
      } catch (e) {}
      try {
        final v_revisionsSaltValue = instance.revisionsSaltValue;
      } catch (e) {}
      try {
        final v_revisionsSpinCount = instance.revisionsSpinCount;
      } catch (e) {}
      try {
        final v_workbookAlgorithmName = instance.workbookAlgorithmName;
      } catch (e) {}
      try {
        final v_workbookHashValue = instance.workbookHashValue;
      } catch (e) {}
      try {
        final v_workbookSaltValue = instance.workbookSaltValue;
      } catch (e) {}
      try {
        final v_workbookSpinCount = instance.workbookSpinCount;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishing with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_css = instance.css;
      } catch (e) {}
      try {
        final v_thicket = instance.thicket;
      } catch (e) {}
      try {
        final v_longFileNames = instance.longFileNames;
      } catch (e) {}
      try {
        final v_vml = instance.vml;
      } catch (e) {}
      try {
        final v_allowPng = instance.allowPng;
      } catch (e) {}
      try {
        final v_targetScreenSize = instance.targetScreenSize;
      } catch (e) {}
      try {
        final v_dpi = instance.dpi;
      } catch (e) {}
      try {
        final v_codePage = instance.codePage;
      } catch (e) {}
      try {
        final v_characterSet = instance.characterSet;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishing with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_webpublishing(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            css: true,
            thicket: true,
            longFileNames: true,
            vml: true,
            allowPng: true,
            targetScreenSize: S_ST_TargetScreenSize.values.first,
            dpi: 1,
            codePage: 1,
            characterSet: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishing(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_css = instance.css;
      } catch (e) {}
      try {
        final v_thicket = instance.thicket;
      } catch (e) {}
      try {
        final v_longFileNames = instance.longFileNames;
      } catch (e) {}
      try {
        final v_vml = instance.vml;
      } catch (e) {}
      try {
        final v_allowPng = instance.allowPng;
      } catch (e) {}
      try {
        final v_targetScreenSize = instance.targetScreenSize;
      } catch (e) {}
      try {
        final v_dpi = instance.dpi;
      } catch (e) {}
      try {
        final v_codePage = instance.codePage;
      } catch (e) {}
      try {
        final v_characterSet = instance.characterSet;
      } catch (e) {}
    });
    test('Test S_CT_FunctionGroups with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FunctionGroups(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_builtInGroupCount = instance.builtInGroupCount;
      } catch (e) {}
      try {
        final c_functionGroup = instance.functionGroup;
      } catch (e) {}
    });
    test('Test S_CT_FunctionGroups with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_functiongroups(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            builtInGroupCount: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FunctionGroups(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_builtInGroupCount = instance.builtInGroupCount;
      } catch (e) {}
      try {
        final c_functionGroup = instance.functionGroup;
      } catch (e) {}
    });
    test('Test S_CT_FunctionGroup with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FunctionGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test S_CT_FunctionGroup with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_functiongroup(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_FunctionGroup(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishObjects with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishObjects(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_webPublishObject = instance.webPublishObject;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishObjects with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_webpublishobjects(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            count: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishObjects(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_count = instance.count;
      } catch (e) {}
      try {
        final c_webPublishObject = instance.webPublishObject;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishObject with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishObject(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_divId = instance.divId;
      } catch (e) {}
      try {
        final v_sourceObject = instance.sourceObject;
      } catch (e) {}
      try {
        final v_destinationFile = instance.destinationFile;
      } catch (e) {}
      try {
        final v_title = instance.title;
      } catch (e) {}
      try {
        final v_autoRepublish = instance.autoRepublish;
      } catch (e) {}
    });
    test('Test S_CT_WebPublishObject with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            'ns0',
          );
          builder.s_ct_webpublishobject(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            id: 1,
            divId: 'test',
            sourceObject: 'test',
            destinationFile: 'test',
            title: 'test',
            autoRepublish: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = S_CT_WebPublishObject(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_divId = instance.divId;
      } catch (e) {}
      try {
        final v_sourceObject = instance.sourceObject;
      } catch (e) {}
      try {
        final v_destinationFile = instance.destinationFile;
      } catch (e) {}
      try {
        final v_title = instance.title;
      } catch (e) {}
      try {
        final v_autoRepublish = instance.autoRepublish;
      } catch (e) {}
    });
  });
}
