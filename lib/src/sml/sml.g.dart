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

extension type S_CT_AutoFilter(_i1.XmlElement node) implements _i1.XmlElement {
  String? get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  Iterable<S_CT_FilterColumn> get filterColumn {
    return node
        .findElements(
          'filterColumn',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FilterColumn.new);
  }

  S_CT_SortState? get sortState {
    final e = node.getElement(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SortState(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_FilterColumn(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get colId {
    return int.parse(
      node.getAttribute(
        'colId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get hiddenButton {
    return node.getAttribute(
              'hiddenButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hiddenButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hiddenButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showButton {
    return node.getAttribute(
              'showButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_Filters? get filters {
    final e = node.getElement(
      'filters',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Filters(e) : null;
  }

  S_CT_Top10? get top10 {
    final e = node.getElement(
      'top10',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Top10(e) : null;
  }

  S_CT_CustomFilters? get customFilters {
    final e = node.getElement(
      'customFilters',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CustomFilters(e) : null;
  }

  S_CT_DynamicFilter? get dynamicFilter {
    final e = node.getElement(
      'dynamicFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DynamicFilter(e) : null;
  }

  S_CT_ColorFilter? get colorFilter {
    final e = node.getElement(
      'colorFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ColorFilter(e) : null;
  }

  S_CT_IconFilter? get iconFilter {
    final e = node.getElement(
      'iconFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_IconFilter(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Filters(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get blank {
    return node.getAttribute(
              'blank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'blank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'blank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  ST_CalendarType? get calendarType {
    return node.getAttribute(
              'calendarType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? ST_CalendarType.fromValue(
            node.getAttribute(
              'calendarType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Filter> get filter {
    return node
        .findElements(
          'filter',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Filter.new);
  }

  Iterable<S_CT_DateGroupItem> get dateGroupItem {
    return node
        .findElements(
          'dateGroupItem',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DateGroupItem.new);
  }
}
extension type S_CT_Filter(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_CustomFilters(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get and {
    return node.getAttribute(
              'and',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'and',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'and',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_CustomFilter> get customFilter {
    return node
        .findElements(
          'customFilter',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CustomFilter.new);
  }
}
extension type S_CT_CustomFilter(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_FilterOperator? get operator_ {
    return node.getAttribute(
              'operator',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_FilterOperator.fromValue(
            node.getAttribute(
              'operator',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_Top10(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get top {
    return node.getAttribute(
              'top',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'top',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'top',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get percent {
    return node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  double get val {
    return double.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  double? get filterVal {
    return node.getAttribute(
              'filterVal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'filterVal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_ColorFilter(_i1.XmlElement node) implements _i1.XmlElement {
  String? get dxfId {
    return node.getAttribute(
      'dxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get cellColor {
    return node.getAttribute(
              'cellColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'cellColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'cellColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_IconFilter(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_IconSetType get iconSet {
    return S_ST_IconSetType.fromValue(
      node.getAttribute(
        'iconSet',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  int? get iconId {
    return node.getAttribute(
              'iconId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'iconId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_DynamicFilter(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_DynamicFilterType get type {
    return S_ST_DynamicFilterType.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  double? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get valIso {
    return node.getAttribute(
      'valIso',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  double? get maxVal {
    return node.getAttribute(
              'maxVal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'maxVal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get maxValIso {
    return node.getAttribute(
      'maxValIso',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_SortState(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get columnSort {
    return node.getAttribute(
              'columnSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'columnSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'columnSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get caseSensitive {
    return node.getAttribute(
              'caseSensitive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'caseSensitive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'caseSensitive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_SortMethod? get sortMethod {
    return node.getAttribute(
              'sortMethod',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SortMethod.fromValue(
            node.getAttribute(
              'sortMethod',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  Iterable<S_CT_SortCondition> get sortCondition {
    return node
        .findElements(
          'sortCondition',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_SortCondition.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_SortCondition(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get descending {
    return node.getAttribute(
              'descending',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'descending',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'descending',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_SortBy? get sortBy {
    return node.getAttribute(
              'sortBy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SortBy.fromValue(
            node.getAttribute(
              'sortBy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get customList {
    return node.getAttribute(
      'customList',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get dxfId {
    return node.getAttribute(
      'dxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_IconSetType? get iconSet {
    return node.getAttribute(
              'iconSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_IconSetType.fromValue(
            node.getAttribute(
              'iconSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get iconId {
    return node.getAttribute(
              'iconId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'iconId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_DateGroupItem(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get year {
    return int.parse(
      node.getAttribute(
        'year',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int? get month {
    return node.getAttribute(
              'month',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'month',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get day {
    return node.getAttribute(
              'day',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'day',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get hour {
    return node.getAttribute(
              'hour',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'hour',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get minute {
    return node.getAttribute(
              'minute',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'minute',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get second {
    return node.getAttribute(
              'second',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'second',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_DateTimeGrouping get dateTimeGrouping {
    return S_ST_DateTimeGrouping.fromValue(
      node.getAttribute(
        'dateTimeGrouping',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }
}
extension type S_CT_XStringElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get v {
    return node.getAttribute(
      'v',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_Extension(_i1.XmlElement node) implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_ObjectAnchor(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get moveWithCells {
    return node.getAttribute(
              'moveWithCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'moveWithCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'moveWithCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get sizeWithCells {
    return node.getAttribute(
              'sizeWithCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sizeWithCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sizeWithCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_ExtensionList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_Extension> get ext {
    return node
        .findElements(
          'ext',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(P_CT_Extension.new);
  }
}
extension type S_CT_CalcChain(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_CalcCell> get c {
    return node
        .findElements(
          'c',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CalcCell.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_CalcCell(_i1.XmlElement node) implements _i1.XmlElement {
  String? get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get s {
    return node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get l {
    return node.getAttribute(
              'l',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'l',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'l',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get t {
    return node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get a {
    return node.getAttribute(
              'a',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'a',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'a',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_Comments(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_Authors? get authors {
    final e = node.getElement(
      'authors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Authors(e) : null;
  }

  S_CT_CommentList? get commentList {
    final e = node.getElement(
      'commentList',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CommentList(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Authors(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<String> get author {
    return node
        .findElements(
          'author',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map((e) => e.innerText);
  }
}
extension type S_CT_CommentList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Comment> get comment {
    return node
        .findElements(
          'comment',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Comment.new);
  }
}
extension type S_CT_Comment(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get authorId {
    return int.parse(
      node.getAttribute(
        'authorId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String? get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get shapeId {
    return node.getAttribute(
              'shapeId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'shapeId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_Rst? get text {
    final e = node.getElement(
      'text',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Rst(e) : null;
  }

  S_CT_CommentPr? get commentPr {
    final e = node.getElement(
      'commentPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CommentPr(e) : null;
  }
}
extension type S_CT_CommentPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get locked {
    return node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get defaultSize {
    return node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get print {
    return node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get disabled {
    return node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoFill {
    return node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoLine {
    return node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get altText {
    return node.getAttribute(
      'altText',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_TextHAlign? get textHAlign {
    return node.getAttribute(
              'textHAlign',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_TextHAlign.fromValue(
            node.getAttribute(
              'textHAlign',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_TextVAlign? get textVAlign {
    return node.getAttribute(
              'textVAlign',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_TextVAlign.fromValue(
            node.getAttribute(
              'textVAlign',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get lockText {
    return node.getAttribute(
              'lockText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'lockText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'lockText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get justLastX {
    return node.getAttribute(
              'justLastX',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'justLastX',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'justLastX',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoScale {
    return node.getAttribute(
              'autoScale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoScale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoScale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_ObjectAnchor? get anchor {
    final e = node.getElement(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ObjectAnchor(e) : null;
  }
}
extension type S_CT_MapInfo(_i1.XmlElement node) implements _i1.XmlElement {
  String get SelectionNamespaces {
    return node.getAttribute(
      'SelectionNamespaces',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  Iterable<CT_Schema> get Schema {
    return node
        .findElements(
          'Schema',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(CT_Schema.new);
  }

  Iterable<S_CT_Map> get Map {
    return node
        .findElements(
          'Map',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Map.new);
  }
}
extension type S_CT_Schema(_i1.XmlElement node) implements _i1.XmlElement {
  String get ID {
    return node.getAttribute(
      'ID',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get SchemaRef {
    return node.getAttribute(
      'SchemaRef',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get Namespace {
    return node.getAttribute(
      'Namespace',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get SchemaLanguage {
    return node.getAttribute(
      'SchemaLanguage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_Map(_i1.XmlElement node) implements _i1.XmlElement {
  int get ID {
    return int.parse(
      node.getAttribute(
        'ID',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get Name {
    return node.getAttribute(
      'Name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get RootElement {
    return node.getAttribute(
      'RootElement',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get SchemaID {
    return node.getAttribute(
      'SchemaID',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool get ShowImportExportValidationErrors {
    return node.getAttribute(
              'ShowImportExportValidationErrors',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ShowImportExportValidationErrors',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ShowImportExportValidationErrors',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool get AutoFit {
    return node.getAttribute(
              'AutoFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'AutoFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'AutoFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool get Append {
    return node.getAttribute(
              'Append',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'Append',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'Append',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool get PreserveSortAFLayout {
    return node.getAttribute(
              'PreserveSortAFLayout',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'PreserveSortAFLayout',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'PreserveSortAFLayout',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool get PreserveFormat {
    return node.getAttribute(
              'PreserveFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'PreserveFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'PreserveFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_DataBinding? get DataBinding {
    final e = node.getElement(
      'DataBinding',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataBinding(e) : null;
  }
}
extension type S_CT_DataBinding(_i1.XmlElement node) implements _i1.XmlElement {
  String? get DataBindingName {
    return node.getAttribute(
      'DataBindingName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get FileBinding {
    return node.getAttribute(
              'FileBinding',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'FileBinding',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'FileBinding',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get ConnectionID {
    return node.getAttribute(
              'ConnectionID',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'ConnectionID',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get FileBindingName {
    return node.getAttribute(
      'FileBindingName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int get DataBindingLoadMode {
    return int.parse(
      node.getAttribute(
        'DataBindingLoadMode',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_Connections(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Connection> get connection {
    return node
        .findElements(
          'connection',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Connection.new);
  }
}
extension type S_CT_Connection(_i1.XmlElement node) implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String? get sourceFile {
    return node.getAttribute(
      'sourceFile',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get odcFile {
    return node.getAttribute(
      'odcFile',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get keepAlive {
    return node.getAttribute(
              'keepAlive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'keepAlive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'keepAlive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get interval {
    return node.getAttribute(
              'interval',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'interval',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get description {
    return node.getAttribute(
      'description',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get reconnectionMethod {
    return node.getAttribute(
              'reconnectionMethod',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'reconnectionMethod',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get refreshedVersion {
    return int.parse(
      node.getAttribute(
        'refreshedVersion',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int? get minRefreshableVersion {
    return node.getAttribute(
              'minRefreshableVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'minRefreshableVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get savePassword {
    return node.getAttribute(
              'savePassword',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'savePassword',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'savePassword',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get new_ {
    return node.getAttribute(
              'new',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'new',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'new',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get deleted {
    return node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get onlyUseConnectionFile {
    return node.getAttribute(
              'onlyUseConnectionFile',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'onlyUseConnectionFile',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'onlyUseConnectionFile',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get background {
    return node.getAttribute(
              'background',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'background',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'background',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get refreshOnLoad {
    return node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get saveData {
    return node.getAttribute(
              'saveData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'saveData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'saveData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_CredMethod? get credentials {
    return node.getAttribute(
              'credentials',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_CredMethod.fromValue(
            node.getAttribute(
              'credentials',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get singleSignOnId {
    return node.getAttribute(
      'singleSignOnId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_DbPr? get dbPr {
    final e = node.getElement(
      'dbPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DbPr(e) : null;
  }

  S_CT_OlapPr? get olapPr {
    final e = node.getElement(
      'olapPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OlapPr(e) : null;
  }

  S_CT_WebPr? get webPr {
    final e = node.getElement(
      'webPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_WebPr(e) : null;
  }

  S_CT_TextPr? get textPr {
    final e = node.getElement(
      'textPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TextPr(e) : null;
  }

  S_CT_Parameters? get parameters {
    final e = node.getElement(
      'parameters',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Parameters(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_DbPr(_i1.XmlElement node) implements _i1.XmlElement {
  String get connection {
    return node.getAttribute(
      'connection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get command {
    return node.getAttribute(
      'command',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get serverCommand {
    return node.getAttribute(
      'serverCommand',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get commandType {
    return node.getAttribute(
              'commandType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'commandType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_OlapPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get local {
    return node.getAttribute(
              'local',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'local',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'local',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get localConnection {
    return node.getAttribute(
      'localConnection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get localRefresh {
    return node.getAttribute(
              'localRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'localRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'localRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get sendLocale {
    return node.getAttribute(
              'sendLocale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sendLocale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sendLocale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get rowDrillCount {
    return node.getAttribute(
              'rowDrillCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rowDrillCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get serverFill {
    return node.getAttribute(
              'serverFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'serverFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'serverFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get serverNumberFormat {
    return node.getAttribute(
              'serverNumberFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'serverNumberFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'serverNumberFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get serverFont {
    return node.getAttribute(
              'serverFont',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'serverFont',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'serverFont',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get serverFontColor {
    return node.getAttribute(
              'serverFontColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'serverFontColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'serverFontColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_WebPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get xml {
    return node.getAttribute(
              'xml',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'xml',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'xml',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get sourceData {
    return node.getAttribute(
              'sourceData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sourceData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sourceData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get parsePre {
    return node.getAttribute(
              'parsePre',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'parsePre',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'parsePre',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get consecutive {
    return node.getAttribute(
              'consecutive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'consecutive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'consecutive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get firstRow {
    return node.getAttribute(
              'firstRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'firstRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'firstRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get xl97 {
    return node.getAttribute(
              'xl97',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'xl97',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'xl97',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get textDates {
    return node.getAttribute(
              'textDates',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'textDates',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'textDates',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get xl2000 {
    return node.getAttribute(
              'xl2000',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'xl2000',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'xl2000',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get url {
    return node.getAttribute(
      'url',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get post {
    return node.getAttribute(
      'post',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get htmlTables {
    return node.getAttribute(
              'htmlTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'htmlTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'htmlTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_HtmlFmt? get htmlFormat {
    return node.getAttribute(
              'htmlFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_HtmlFmt.fromValue(
            node.getAttribute(
              'htmlFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get editPage {
    return node.getAttribute(
      'editPage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_Tables? get tables {
    final e = node.getElement(
      'tables',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Tables(e) : null;
  }
}
extension type S_CT_Parameters(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Parameter> get parameter {
    return node
        .findElements(
          'parameter',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Parameter.new);
  }
}
extension type S_CT_Parameter(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get sqlType {
    return node.getAttribute(
              'sqlType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'sqlType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_ParameterType? get parameterType {
    return node.getAttribute(
              'parameterType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_ParameterType.fromValue(
            node.getAttribute(
              'parameterType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get refreshOnChange {
    return node.getAttribute(
              'refreshOnChange',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'refreshOnChange',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'refreshOnChange',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get prompt {
    return node.getAttribute(
      'prompt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get boolean {
    return node.getAttribute(
              'boolean',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'boolean',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'boolean',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  double? get double_ {
    return node.getAttribute(
              'double',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'double',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get integer {
    return node.getAttribute(
              'integer',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'integer',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get string {
    return node.getAttribute(
      'string',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get cell {
    return node.getAttribute(
      'cell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_Tables(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_TableMissing> get m {
    return node
        .findElements(
          'm',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_TableMissing.new);
  }

  Iterable<S_CT_XStringElement> get s {
    return node
        .findElements(
          's',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_XStringElement.new);
  }

  Iterable<S_CT_Index> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Index.new);
  }
}
extension type S_CT_TableMissing(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type S_CT_TextPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get prompt {
    return node.getAttribute(
              'prompt',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'prompt',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'prompt',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_FileType? get fileType {
    return node.getAttribute(
              'fileType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_FileType.fromValue(
            node.getAttribute(
              'fileType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get codePage {
    return node.getAttribute(
              'codePage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'codePage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get characterSet {
    return node.getAttribute(
      'characterSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get firstRow {
    return node.getAttribute(
              'firstRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'firstRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get sourceFile {
    return node.getAttribute(
      'sourceFile',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get delimited {
    return node.getAttribute(
              'delimited',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'delimited',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'delimited',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get decimal {
    return node.getAttribute(
      'decimal',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get thousands {
    return node.getAttribute(
      'thousands',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get tab {
    return node.getAttribute(
              'tab',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'tab',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'tab',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get space {
    return node.getAttribute(
              'space',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'space',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'space',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get comma {
    return node.getAttribute(
              'comma',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'comma',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'comma',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get semicolon {
    return node.getAttribute(
              'semicolon',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'semicolon',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'semicolon',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get consecutive {
    return node.getAttribute(
              'consecutive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'consecutive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'consecutive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_Qualifier? get qualifier {
    return node.getAttribute(
              'qualifier',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Qualifier.fromValue(
            node.getAttribute(
              'qualifier',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get delimiter {
    return node.getAttribute(
      'delimiter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_TextFields? get textFields {
    final e = node.getElement(
      'textFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TextFields(e) : null;
  }
}
extension type S_CT_TextFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_TextField> get textField {
    return node
        .findElements(
          'textField',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_TextField.new);
  }
}
extension type S_CT_TextField(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_ExternalConnectionType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_ExternalConnectionType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get position {
    return node.getAttribute(
              'position',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'position',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_PivotCacheDefinition(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get invalid {
    return node.getAttribute(
              'invalid',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'invalid',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'invalid',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get saveData {
    return node.getAttribute(
              'saveData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'saveData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'saveData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get refreshOnLoad {
    return node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get optimizeMemory {
    return node.getAttribute(
              'optimizeMemory',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'optimizeMemory',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'optimizeMemory',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get enableRefresh {
    return node.getAttribute(
              'enableRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'enableRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'enableRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get refreshedBy {
    return node.getAttribute(
      'refreshedBy',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  double? get refreshedDate {
    return node.getAttribute(
              'refreshedDate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'refreshedDate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get refreshedDateIso {
    return node.getAttribute(
      'refreshedDateIso',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get backgroundQuery {
    return node.getAttribute(
              'backgroundQuery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'backgroundQuery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'backgroundQuery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get missingItemsLimit {
    return node.getAttribute(
              'missingItemsLimit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'missingItemsLimit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get createdVersion {
    return node.getAttribute(
              'createdVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'createdVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get refreshedVersion {
    return node.getAttribute(
              'refreshedVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'refreshedVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get minRefreshableVersion {
    return node.getAttribute(
              'minRefreshableVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'minRefreshableVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get recordCount {
    return node.getAttribute(
              'recordCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'recordCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get upgradeOnRefresh {
    return node.getAttribute(
              'upgradeOnRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'upgradeOnRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'upgradeOnRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get tupleCache {
    return node.getAttribute(
              'tupleCache',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'tupleCache',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'tupleCache',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get supportSubquery {
    return node.getAttribute(
              'supportSubquery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'supportSubquery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'supportSubquery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get supportAdvancedDrill {
    return node.getAttribute(
              'supportAdvancedDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'supportAdvancedDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'supportAdvancedDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_CacheSource? get cacheSource {
    final e = node.getElement(
      'cacheSource',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CacheSource(e) : null;
  }

  S_CT_CacheFields? get cacheFields {
    final e = node.getElement(
      'cacheFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CacheFields(e) : null;
  }

  S_CT_CacheHierarchies? get cacheHierarchies {
    final e = node.getElement(
      'cacheHierarchies',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CacheHierarchies(e) : null;
  }

  S_CT_PCDKPIs? get kpis {
    final e = node.getElement(
      'kpis',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PCDKPIs(e) : null;
  }

  S_CT_CalculatedItems? get calculatedItems {
    final e = node.getElement(
      'calculatedItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CalculatedItems(e) : null;
  }

  S_CT_CalculatedMembers? get calculatedMembers {
    final e = node.getElement(
      'calculatedMembers',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CalculatedMembers(e) : null;
  }

  S_CT_Dimensions? get dimensions {
    final e = node.getElement(
      'dimensions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Dimensions(e) : null;
  }

  S_CT_MeasureGroups? get measureGroups {
    final e = node.getElement(
      'measureGroups',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MeasureGroups(e) : null;
  }

  S_CT_MeasureDimensionMaps? get maps {
    final e = node.getElement(
      'maps',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MeasureDimensionMaps(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_CacheFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_CacheField> get cacheField {
    return node
        .findElements(
          'cacheField',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CacheField.new);
  }
}
extension type S_CT_CacheField(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get propertyName {
    return node.getAttribute(
      'propertyName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get serverField {
    return node.getAttribute(
              'serverField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'serverField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'serverField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get uniqueList {
    return node.getAttribute(
              'uniqueList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'uniqueList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'uniqueList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get numFmtId {
    return node.getAttribute(
      'numFmtId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get formula {
    return node.getAttribute(
      'formula',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get sqlType {
    return node.getAttribute(
              'sqlType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'sqlType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get hierarchy {
    return node.getAttribute(
              'hierarchy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'hierarchy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get level {
    return node.getAttribute(
              'level',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'level',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get databaseField {
    return node.getAttribute(
              'databaseField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'databaseField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'databaseField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get mappingCount {
    return node.getAttribute(
              'mappingCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'mappingCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get memberPropertyField {
    return node.getAttribute(
              'memberPropertyField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'memberPropertyField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'memberPropertyField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_SharedItems? get sharedItems {
    final e = node.getElement(
      'sharedItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SharedItems(e) : null;
  }

  S_CT_FieldGroup? get fieldGroup {
    final e = node.getElement(
      'fieldGroup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_FieldGroup(e) : null;
  }

  Iterable<S_CT_X> get mpMap {
    return node
        .findElements(
          'mpMap',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_X.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_CacheSource(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_SourceType get type {
    return S_ST_SourceType.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  int? get connectionId {
    return node.getAttribute(
              'connectionId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'connectionId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_WorksheetSource? get worksheetSource {
    final e = node.getElement(
      'worksheetSource',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_WorksheetSource(e) : null;
  }

  S_CT_Consolidation? get consolidation {
    final e = node.getElement(
      'consolidation',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Consolidation(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_WorksheetSource(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get sheet {
    return node.getAttribute(
      'sheet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_Consolidation(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get autoPage {
    return node.getAttribute(
              'autoPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_Pages? get pages {
    final e = node.getElement(
      'pages',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Pages(e) : null;
  }

  S_CT_RangeSets? get rangeSets {
    final e = node.getElement(
      'rangeSets',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_RangeSets(e) : null;
  }
}
extension type S_CT_Pages(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PCDSCPage> get page {
    return node
        .findElements(
          'page',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PCDSCPage.new);
  }
}
extension type S_CT_PCDSCPage(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PageItem> get pageItem {
    return node
        .findElements(
          'pageItem',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PageItem.new);
  }
}
extension type S_CT_PageItem(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_RangeSets(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_RangeSet> get rangeSet {
    return node
        .findElements(
          'rangeSet',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RangeSet.new);
  }
}
extension type S_CT_RangeSet(_i1.XmlElement node) implements _i1.XmlElement {
  int? get i1 {
    return node.getAttribute(
              'i1',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'i1',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get i2 {
    return node.getAttribute(
              'i2',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'i2',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get i3 {
    return node.getAttribute(
              'i3',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'i3',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get i4 {
    return node.getAttribute(
              'i4',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'i4',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get sheet {
    return node.getAttribute(
      'sheet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_SharedItems(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get containsSemiMixedTypes {
    return node.getAttribute(
              'containsSemiMixedTypes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'containsSemiMixedTypes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'containsSemiMixedTypes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get containsNonDate {
    return node.getAttribute(
              'containsNonDate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'containsNonDate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'containsNonDate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get containsDate {
    return node.getAttribute(
              'containsDate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'containsDate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'containsDate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get containsString {
    return node.getAttribute(
              'containsString',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'containsString',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'containsString',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get containsBlank {
    return node.getAttribute(
              'containsBlank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'containsBlank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'containsBlank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get containsMixedTypes {
    return node.getAttribute(
              'containsMixedTypes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'containsMixedTypes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'containsMixedTypes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get containsNumber {
    return node.getAttribute(
              'containsNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'containsNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'containsNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get containsInteger {
    return node.getAttribute(
              'containsInteger',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'containsInteger',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'containsInteger',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  double? get minValue {
    return node.getAttribute(
              'minValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'minValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get maxValue {
    return node.getAttribute(
              'maxValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'maxValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get minDate {
    return node.getAttribute(
      'minDate',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get maxDate {
    return node.getAttribute(
      'maxDate',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get longText {
    return node.getAttribute(
              'longText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'longText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'longText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Missing> get m {
    return node
        .findElements(
          'm',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Missing.new);
  }

  Iterable<S_CT_Number> get n {
    return node
        .findElements(
          'n',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Number.new);
  }

  Iterable<S_CT_Boolean> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Boolean.new);
  }

  Iterable<S_CT_Error> get e {
    return node
        .findElements(
          'e',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Error.new);
  }

  Iterable<S_CT_String> get s {
    return node
        .findElements(
          's',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_String.new);
  }

  Iterable<S_CT_DateTime> get d {
    return node
        .findElements(
          'd',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DateTime.new);
  }
}
extension type S_CT_Missing(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get u {
    return node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get f {
    return node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get c {
    return node.getAttribute(
      'c',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get cp {
    return node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get in_ {
    return node.getAttribute(
              'in',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'in',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get bc {
    return node.getAttribute(
      'bc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get fc {
    return node.getAttribute(
      'fc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get un {
    return node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get st {
    return node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get b {
    return node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Tuples> get tpls {
    return node
        .findElements(
          'tpls',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Tuples.new);
  }

  Iterable<S_CT_X> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_X.new);
  }
}
extension type S_CT_Number(_i1.XmlElement node) implements _i1.XmlElement {
  double get v {
    return double.parse(
      node.getAttribute(
        'v',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get u {
    return node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get f {
    return node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get c {
    return node.getAttribute(
      'c',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get cp {
    return node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get in_ {
    return node.getAttribute(
              'in',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'in',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get bc {
    return node.getAttribute(
      'bc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get fc {
    return node.getAttribute(
      'fc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get un {
    return node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get st {
    return node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get b {
    return node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Tuples> get tpls {
    return node
        .findElements(
          'tpls',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Tuples.new);
  }

  Iterable<S_CT_X> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_X.new);
  }
}
extension type S_CT_Boolean(_i1.XmlElement node) implements _i1.XmlElement {
  bool get v {
    return node.getAttribute(
              'v',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'v',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'v',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get u {
    return node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get f {
    return node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get c {
    return node.getAttribute(
      'c',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get cp {
    return node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_X> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_X.new);
  }
}
extension type S_CT_Error(_i1.XmlElement node) implements _i1.XmlElement {
  String get v {
    return node.getAttribute(
      'v',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get u {
    return node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get f {
    return node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get c {
    return node.getAttribute(
      'c',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get cp {
    return node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get in_ {
    return node.getAttribute(
              'in',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'in',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get bc {
    return node.getAttribute(
      'bc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get fc {
    return node.getAttribute(
      'fc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get un {
    return node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get st {
    return node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get b {
    return node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_Tuples? get tpls {
    final e = node.getElement(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Tuples(e) : null;
  }

  Iterable<S_CT_X> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_X.new);
  }
}
extension type S_CT_String(_i1.XmlElement node) implements _i1.XmlElement {
  String get v {
    return node.getAttribute(
      'v',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get u {
    return node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get f {
    return node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get c {
    return node.getAttribute(
      'c',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get cp {
    return node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get in_ {
    return node.getAttribute(
              'in',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'in',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get bc {
    return node.getAttribute(
      'bc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get fc {
    return node.getAttribute(
      'fc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get un {
    return node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'un',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get st {
    return node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get b {
    return node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Tuples> get tpls {
    return node
        .findElements(
          'tpls',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Tuples.new);
  }

  Iterable<S_CT_X> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_X.new);
  }
}
extension type S_CT_DateTime(_i1.XmlElement node) implements _i1.XmlElement {
  String get v {
    return node.getAttribute(
      'v',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get u {
    return node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get f {
    return node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get c {
    return node.getAttribute(
      'c',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get cp {
    return node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_X> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_X.new);
  }
}
extension type S_CT_FieldGroup(_i1.XmlElement node) implements _i1.XmlElement {
  int? get par {
    return node.getAttribute(
              'par',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'par',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get base {
    return node.getAttribute(
              'base',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'base',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_RangePr? get rangePr {
    final e = node.getElement(
      'rangePr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_RangePr(e) : null;
  }

  S_CT_DiscretePr? get discretePr {
    final e = node.getElement(
      'discretePr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DiscretePr(e) : null;
  }

  S_CT_GroupItems? get groupItems {
    final e = node.getElement(
      'groupItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_GroupItems(e) : null;
  }
}
extension type S_CT_RangePr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get autoStart {
    return node.getAttribute(
              'autoStart',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoStart',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoStart',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoEnd {
    return node.getAttribute(
              'autoEnd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoEnd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoEnd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_GroupBy? get groupBy {
    return node.getAttribute(
              'groupBy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_GroupBy.fromValue(
            node.getAttribute(
              'groupBy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get startNum {
    return node.getAttribute(
              'startNum',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'startNum',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get endNum {
    return node.getAttribute(
              'endNum',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'endNum',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get startDate {
    return node.getAttribute(
      'startDate',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get endDate {
    return node.getAttribute(
      'endDate',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  double? get groupInterval {
    return node.getAttribute(
              'groupInterval',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'groupInterval',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_DiscretePr(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Index> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Index.new);
  }
}
extension type S_CT_GroupItems(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Missing> get m {
    return node
        .findElements(
          'm',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Missing.new);
  }

  Iterable<S_CT_Number> get n {
    return node
        .findElements(
          'n',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Number.new);
  }

  Iterable<S_CT_Boolean> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Boolean.new);
  }

  Iterable<S_CT_Error> get e {
    return node
        .findElements(
          'e',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Error.new);
  }

  Iterable<S_CT_String> get s {
    return node
        .findElements(
          's',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_String.new);
  }

  Iterable<S_CT_DateTime> get d {
    return node
        .findElements(
          'd',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DateTime.new);
  }
}
extension type S_CT_PivotCacheRecords(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Record> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Record.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Record(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Missing> get m {
    return node
        .findElements(
          'm',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Missing.new);
  }

  Iterable<S_CT_Number> get n {
    return node
        .findElements(
          'n',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Number.new);
  }

  Iterable<S_CT_Boolean> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Boolean.new);
  }

  Iterable<S_CT_Error> get e {
    return node
        .findElements(
          'e',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Error.new);
  }

  Iterable<S_CT_String> get s {
    return node
        .findElements(
          's',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_String.new);
  }

  Iterable<S_CT_DateTime> get d {
    return node
        .findElements(
          'd',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DateTime.new);
  }

  Iterable<S_CT_Index> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Index.new);
  }
}
extension type S_CT_PCDKPIs(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PCDKPI> get kpi {
    return node
        .findElements(
          'kpi',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PCDKPI.new);
  }
}
extension type S_CT_PCDKPI(_i1.XmlElement node) implements _i1.XmlElement {
  String get uniqueName {
    return node.getAttribute(
      'uniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get displayFolder {
    return node.getAttribute(
      'displayFolder',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get measureGroup {
    return node.getAttribute(
      'measureGroup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get parent {
    return node.getAttribute(
      'parent',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String get value_ {
    return node.getAttribute(
      'value',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get goal {
    return node.getAttribute(
      'goal',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get status {
    return node.getAttribute(
      'status',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get trend {
    return node.getAttribute(
      'trend',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get weight {
    return node.getAttribute(
      'weight',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get time {
    return node.getAttribute(
      'time',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_CacheHierarchies(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_CacheHierarchy> get cacheHierarchy {
    return node
        .findElements(
          'cacheHierarchy',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CacheHierarchy.new);
  }
}
extension type S_CT_CacheHierarchy(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get uniqueName {
    return node.getAttribute(
      'uniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get measure {
    return node.getAttribute(
              'measure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'measure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'measure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get set_ {
    return node.getAttribute(
              'set',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'set',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'set',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get parentSet {
    return node.getAttribute(
              'parentSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'parentSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get iconSet {
    return node.getAttribute(
              'iconSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'iconSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get attribute {
    return node.getAttribute(
              'attribute',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'attribute',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'attribute',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get time {
    return node.getAttribute(
              'time',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'time',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'time',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get keyAttribute {
    return node.getAttribute(
              'keyAttribute',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'keyAttribute',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'keyAttribute',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get defaultMemberUniqueName {
    return node.getAttribute(
      'defaultMemberUniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get allUniqueName {
    return node.getAttribute(
      'allUniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get allCaption {
    return node.getAttribute(
      'allCaption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get dimensionUniqueName {
    return node.getAttribute(
      'dimensionUniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get displayFolder {
    return node.getAttribute(
      'displayFolder',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get measureGroup {
    return node.getAttribute(
      'measureGroup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get measures {
    return node.getAttribute(
              'measures',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'measures',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'measures',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int get count {
    return int.parse(
      node.getAttribute(
        'count',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get oneField {
    return node.getAttribute(
              'oneField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'oneField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'oneField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get memberValueDatatype {
    return node.getAttribute(
              'memberValueDatatype',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'memberValueDatatype',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get unbalanced {
    return node.getAttribute(
              'unbalanced',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'unbalanced',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'unbalanced',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get unbalancedGroup {
    return node.getAttribute(
              'unbalancedGroup',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'unbalancedGroup',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'unbalancedGroup',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_FieldsUsage? get fieldsUsage {
    final e = node.getElement(
      'fieldsUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_FieldsUsage(e) : null;
  }

  S_CT_GroupLevels? get groupLevels {
    final e = node.getElement(
      'groupLevels',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_GroupLevels(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_FieldsUsage(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_FieldUsage> get fieldUsage {
    return node
        .findElements(
          'fieldUsage',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FieldUsage.new);
  }
}
extension type S_CT_FieldUsage(_i1.XmlElement node) implements _i1.XmlElement {
  int get x {
    return int.parse(
      node.getAttribute(
        'x',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_GroupLevels(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_GroupLevel> get groupLevel {
    return node
        .findElements(
          'groupLevel',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_GroupLevel.new);
  }
}
extension type S_CT_GroupLevel(_i1.XmlElement node) implements _i1.XmlElement {
  String get uniqueName {
    return node.getAttribute(
      'uniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get user {
    return node.getAttribute(
              'user',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'user',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'user',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get customRollUp {
    return node.getAttribute(
              'customRollUp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'customRollUp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'customRollUp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_Groups? get groups {
    final e = node.getElement(
      'groups',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Groups(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Groups(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_LevelGroup> get group {
    return node
        .findElements(
          'group',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_LevelGroup.new);
  }
}
extension type S_CT_LevelGroup(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get uniqueName {
    return node.getAttribute(
      'uniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get uniqueParent {
    return node.getAttribute(
      'uniqueParent',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get id {
    return node.getAttribute(
              'id',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'id',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_GroupMembers? get groupMembers {
    final e = node.getElement(
      'groupMembers',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_GroupMembers(e) : null;
  }
}
extension type S_CT_GroupMembers(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_GroupMember> get groupMember {
    return node
        .findElements(
          'groupMember',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_GroupMember.new);
  }
}
extension type S_CT_GroupMember(_i1.XmlElement node) implements _i1.XmlElement {
  String get uniqueName {
    return node.getAttribute(
      'uniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get group {
    return node.getAttribute(
              'group',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'group',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'group',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_TupleCache(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_PCDSDTCEntries? get entries {
    final e = node.getElement(
      'entries',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PCDSDTCEntries(e) : null;
  }

  S_CT_Sets? get sets {
    final e = node.getElement(
      'sets',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Sets(e) : null;
  }

  S_CT_QueryCache? get queryCache {
    final e = node.getElement(
      'queryCache',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_QueryCache(e) : null;
  }

  S_CT_ServerFormats? get serverFormats {
    final e = node.getElement(
      'serverFormats',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ServerFormats(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_ServerFormat(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get culture {
    return node.getAttribute(
      'culture',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get format {
    return node.getAttribute(
      'format',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_ServerFormats(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_ServerFormat> get serverFormat {
    return node
        .findElements(
          'serverFormat',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ServerFormat.new);
  }
}
extension type S_CT_PCDSDTCEntries(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Missing> get m {
    return node
        .findElements(
          'm',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Missing.new);
  }

  Iterable<S_CT_Number> get n {
    return node
        .findElements(
          'n',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Number.new);
  }

  Iterable<S_CT_Error> get e {
    return node
        .findElements(
          'e',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Error.new);
  }

  Iterable<S_CT_String> get s {
    return node
        .findElements(
          's',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_String.new);
  }
}
extension type S_CT_Tuples(_i1.XmlElement node) implements _i1.XmlElement {
  int? get c {
    return node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Tuple> get tpl {
    return node
        .findElements(
          'tpl',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Tuple.new);
  }
}
extension type S_CT_Tuple(_i1.XmlElement node) implements _i1.XmlElement {
  int? get fld {
    return node.getAttribute(
              'fld',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'fld',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get hier {
    return node.getAttribute(
              'hier',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'hier',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get item {
    return int.parse(
      node.getAttribute(
        'item',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_Sets(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Set> get set_ {
    return node
        .findElements(
          'set',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Set.new);
  }
}
extension type S_CT_Set(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get maxRank {
    return int.parse(
      node.getAttribute(
        'maxRank',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get setDefinition {
    return node.getAttribute(
      'setDefinition',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_ST_SortType? get sortType {
    return node.getAttribute(
              'sortType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SortType.fromValue(
            node.getAttribute(
              'sortType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get queryFailed {
    return node.getAttribute(
              'queryFailed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'queryFailed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'queryFailed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Tuples> get tpls {
    return node
        .findElements(
          'tpls',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Tuples.new);
  }

  S_CT_Tuples? get sortByTuple {
    final e = node.getElement(
      'sortByTuple',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Tuples(e) : null;
  }
}
extension type S_CT_QueryCache(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Query> get query {
    return node
        .findElements(
          'query',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Query.new);
  }
}
extension type S_CT_Query(_i1.XmlElement node) implements _i1.XmlElement {
  String get mdx {
    return node.getAttribute(
      'mdx',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_CT_Tuples? get tpls {
    final e = node.getElement(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Tuples(e) : null;
  }
}
extension type S_CT_CalculatedItems(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_CalculatedItem> get calculatedItem {
    return node
        .findElements(
          'calculatedItem',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CalculatedItem.new);
  }
}
extension type S_CT_CalculatedItem(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get field {
    return node.getAttribute(
              'field',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'field',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get formula {
    return node.getAttribute(
      'formula',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_PivotArea? get pivotArea {
    final e = node.getElement(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotArea(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_CalculatedMembers(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_CalculatedMember> get calculatedMember {
    return node
        .findElements(
          'calculatedMember',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CalculatedMember.new);
  }
}
extension type S_CT_CalculatedMember(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get mdx {
    return node.getAttribute(
      'mdx',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get memberName {
    return node.getAttribute(
      'memberName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get hierarchy {
    return node.getAttribute(
      'hierarchy',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get parent {
    return node.getAttribute(
      'parent',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get solveOrder {
    return node.getAttribute(
              'solveOrder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'solveOrder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get set_ {
    return node.getAttribute(
              'set',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'set',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'set',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_pivotTableDefinition(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get cacheId {
    return int.parse(
      node.getAttribute(
        'cacheId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get dataOnRows {
    return node.getAttribute(
              'dataOnRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dataOnRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dataOnRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get dataPosition {
    return node.getAttribute(
              'dataPosition',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'dataPosition',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String get dataCaption {
    return node.getAttribute(
      'dataCaption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get grandTotalCaption {
    return node.getAttribute(
      'grandTotalCaption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get errorCaption {
    return node.getAttribute(
      'errorCaption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get showError {
    return node.getAttribute(
              'showError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get missingCaption {
    return node.getAttribute(
      'missingCaption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get showMissing {
    return node.getAttribute(
              'showMissing',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showMissing',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showMissing',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get pageStyle {
    return node.getAttribute(
      'pageStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get pivotTableStyle {
    return node.getAttribute(
      'pivotTableStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get vacatedStyle {
    return node.getAttribute(
      'vacatedStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get tag {
    return node.getAttribute(
      'tag',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get updatedVersion {
    return node.getAttribute(
              'updatedVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'updatedVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get minRefreshableVersion {
    return node.getAttribute(
              'minRefreshableVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'minRefreshableVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get asteriskTotals {
    return node.getAttribute(
              'asteriskTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'asteriskTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'asteriskTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showItems {
    return node.getAttribute(
              'showItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get editData {
    return node.getAttribute(
              'editData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'editData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'editData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get disableFieldList {
    return node.getAttribute(
              'disableFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'disableFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'disableFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showCalcMbrs {
    return node.getAttribute(
              'showCalcMbrs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showCalcMbrs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showCalcMbrs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get visualTotals {
    return node.getAttribute(
              'visualTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'visualTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'visualTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showMultipleLabel {
    return node.getAttribute(
              'showMultipleLabel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showMultipleLabel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showMultipleLabel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showDataDropDown {
    return node.getAttribute(
              'showDataDropDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showDataDropDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showDataDropDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showDrill {
    return node.getAttribute(
              'showDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get printDrill {
    return node.getAttribute(
              'printDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'printDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'printDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showMemberPropertyTips {
    return node.getAttribute(
              'showMemberPropertyTips',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showMemberPropertyTips',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showMemberPropertyTips',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showDataTips {
    return node.getAttribute(
              'showDataTips',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showDataTips',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showDataTips',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get enableWizard {
    return node.getAttribute(
              'enableWizard',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'enableWizard',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'enableWizard',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get enableDrill {
    return node.getAttribute(
              'enableDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'enableDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'enableDrill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get enableFieldProperties {
    return node.getAttribute(
              'enableFieldProperties',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'enableFieldProperties',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'enableFieldProperties',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get preserveFormatting {
    return node.getAttribute(
              'preserveFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preserveFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preserveFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get useAutoFormatting {
    return node.getAttribute(
              'useAutoFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'useAutoFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'useAutoFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get pageWrap {
    return node.getAttribute(
              'pageWrap',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'pageWrap',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get pageOverThenDown {
    return node.getAttribute(
              'pageOverThenDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pageOverThenDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pageOverThenDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get subtotalHiddenItems {
    return node.getAttribute(
              'subtotalHiddenItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'subtotalHiddenItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'subtotalHiddenItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get rowGrandTotals {
    return node.getAttribute(
              'rowGrandTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rowGrandTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rowGrandTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get colGrandTotals {
    return node.getAttribute(
              'colGrandTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'colGrandTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'colGrandTotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get fieldPrintTitles {
    return node.getAttribute(
              'fieldPrintTitles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fieldPrintTitles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fieldPrintTitles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get itemPrintTitles {
    return node.getAttribute(
              'itemPrintTitles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'itemPrintTitles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'itemPrintTitles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get mergeItem {
    return node.getAttribute(
              'mergeItem',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'mergeItem',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'mergeItem',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showDropZones {
    return node.getAttribute(
              'showDropZones',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showDropZones',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showDropZones',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get createdVersion {
    return node.getAttribute(
              'createdVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'createdVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get indent {
    return node.getAttribute(
              'indent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'indent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showEmptyRow {
    return node.getAttribute(
              'showEmptyRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showEmptyRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showEmptyRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showEmptyCol {
    return node.getAttribute(
              'showEmptyCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showEmptyCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showEmptyCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showHeaders {
    return node.getAttribute(
              'showHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get compact {
    return node.getAttribute(
              'compact',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'compact',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'compact',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get outline {
    return node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get outlineData {
    return node.getAttribute(
              'outlineData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'outlineData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'outlineData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get compactData {
    return node.getAttribute(
              'compactData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'compactData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'compactData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get published {
    return node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get gridDropZones {
    return node.getAttribute(
              'gridDropZones',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'gridDropZones',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'gridDropZones',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get immersive {
    return node.getAttribute(
              'immersive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'immersive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'immersive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get multipleFieldFilters {
    return node.getAttribute(
              'multipleFieldFilters',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'multipleFieldFilters',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'multipleFieldFilters',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get chartFormat {
    return node.getAttribute(
              'chartFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'chartFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get rowHeaderCaption {
    return node.getAttribute(
      'rowHeaderCaption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get colHeaderCaption {
    return node.getAttribute(
      'colHeaderCaption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get fieldListSortAscending {
    return node.getAttribute(
              'fieldListSortAscending',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fieldListSortAscending',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fieldListSortAscending',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get mdxSubqueries {
    return node.getAttribute(
              'mdxSubqueries',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'mdxSubqueries',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'mdxSubqueries',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get customListSort {
    return node.getAttribute(
              'customListSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'customListSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'customListSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_Location? get location {
    final e = node.getElement(
      'location',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Location(e) : null;
  }

  S_CT_PivotFields? get pivotFields {
    final e = node.getElement(
      'pivotFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotFields(e) : null;
  }

  S_CT_RowFields? get rowFields {
    final e = node.getElement(
      'rowFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_RowFields(e) : null;
  }

  S_CT_rowItems? get rowItems {
    final e = node.getElement(
      'rowItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_rowItems(e) : null;
  }

  S_CT_ColFields? get colFields {
    final e = node.getElement(
      'colFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ColFields(e) : null;
  }

  S_CT_colItems? get colItems {
    final e = node.getElement(
      'colItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_colItems(e) : null;
  }

  S_CT_PageFields? get pageFields {
    final e = node.getElement(
      'pageFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageFields(e) : null;
  }

  S_CT_DataFields? get dataFields {
    final e = node.getElement(
      'dataFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataFields(e) : null;
  }

  S_CT_Formats? get formats {
    final e = node.getElement(
      'formats',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Formats(e) : null;
  }

  S_CT_ConditionalFormats? get conditionalFormats {
    final e = node.getElement(
      'conditionalFormats',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ConditionalFormats(e) : null;
  }

  S_CT_ChartFormats? get chartFormats {
    final e = node.getElement(
      'chartFormats',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ChartFormats(e) : null;
  }

  S_CT_PivotHierarchies? get pivotHierarchies {
    final e = node.getElement(
      'pivotHierarchies',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotHierarchies(e) : null;
  }

  S_CT_PivotTableStyle? get pivotTableStyleInfo {
    final e = node.getElement(
      'pivotTableStyleInfo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotTableStyle(e) : null;
  }

  S_CT_PivotFilters? get filters {
    final e = node.getElement(
      'filters',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotFilters(e) : null;
  }

  S_CT_RowHierarchiesUsage? get rowHierarchiesUsage {
    final e = node.getElement(
      'rowHierarchiesUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_RowHierarchiesUsage(e) : null;
  }

  S_CT_ColHierarchiesUsage? get colHierarchiesUsage {
    final e = node.getElement(
      'colHierarchiesUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ColHierarchiesUsage(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Location(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get firstHeaderRow {
    return int.parse(
      node.getAttribute(
        'firstHeaderRow',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get firstDataRow {
    return int.parse(
      node.getAttribute(
        'firstDataRow',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get firstDataCol {
    return int.parse(
      node.getAttribute(
        'firstDataCol',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int? get rowPageCount {
    return node.getAttribute(
              'rowPageCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rowPageCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get colPageCount {
    return node.getAttribute(
              'colPageCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'colPageCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_PivotFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PivotField> get pivotField {
    return node
        .findElements(
          'pivotField',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PivotField.new);
  }
}
extension type S_CT_PivotField(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_Axis? get axis {
    return node.getAttribute(
              'axis',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Axis.fromValue(
            node.getAttribute(
              'axis',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get dataField {
    return node.getAttribute(
              'dataField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dataField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dataField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get subtotalCaption {
    return node.getAttribute(
      'subtotalCaption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get showDropDowns {
    return node.getAttribute(
              'showDropDowns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showDropDowns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showDropDowns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hiddenLevel {
    return node.getAttribute(
              'hiddenLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hiddenLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hiddenLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get uniqueMemberProperty {
    return node.getAttribute(
      'uniqueMemberProperty',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get compact {
    return node.getAttribute(
              'compact',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'compact',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'compact',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get allDrilled {
    return node.getAttribute(
              'allDrilled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'allDrilled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'allDrilled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get numFmtId {
    return node.getAttribute(
      'numFmtId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get outline {
    return node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get subtotalTop {
    return node.getAttribute(
              'subtotalTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'subtotalTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'subtotalTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragToRow {
    return node.getAttribute(
              'dragToRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragToRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragToRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragToCol {
    return node.getAttribute(
              'dragToCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragToCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragToCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get multipleItemSelectionAllowed {
    return node.getAttribute(
              'multipleItemSelectionAllowed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'multipleItemSelectionAllowed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'multipleItemSelectionAllowed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragToPage {
    return node.getAttribute(
              'dragToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragToData {
    return node.getAttribute(
              'dragToData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragToData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragToData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragOff {
    return node.getAttribute(
              'dragOff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragOff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragOff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showAll {
    return node.getAttribute(
              'showAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get insertBlankRow {
    return node.getAttribute(
              'insertBlankRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'insertBlankRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'insertBlankRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get serverField {
    return node.getAttribute(
              'serverField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'serverField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'serverField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get insertPageBreak {
    return node.getAttribute(
              'insertPageBreak',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'insertPageBreak',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'insertPageBreak',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoShow {
    return node.getAttribute(
              'autoShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get topAutoShow {
    return node.getAttribute(
              'topAutoShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'topAutoShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'topAutoShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hideNewItems {
    return node.getAttribute(
              'hideNewItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hideNewItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hideNewItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get measureFilter {
    return node.getAttribute(
              'measureFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'measureFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'measureFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get includeNewItemsInFilter {
    return node.getAttribute(
              'includeNewItemsInFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'includeNewItemsInFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'includeNewItemsInFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get itemPageCount {
    return node.getAttribute(
              'itemPageCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'itemPageCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_FieldSortType? get sortType {
    return node.getAttribute(
              'sortType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_FieldSortType.fromValue(
            node.getAttribute(
              'sortType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get dataSourceSort {
    return node.getAttribute(
              'dataSourceSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dataSourceSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dataSourceSort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get nonAutoSortDefault {
    return node.getAttribute(
              'nonAutoSortDefault',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'nonAutoSortDefault',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'nonAutoSortDefault',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get rankBy {
    return node.getAttribute(
              'rankBy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rankBy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get defaultSubtotal {
    return node.getAttribute(
              'defaultSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'defaultSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'defaultSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get sumSubtotal {
    return node.getAttribute(
              'sumSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sumSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sumSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get countASubtotal {
    return node.getAttribute(
              'countASubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'countASubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'countASubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get avgSubtotal {
    return node.getAttribute(
              'avgSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'avgSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'avgSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get maxSubtotal {
    return node.getAttribute(
              'maxSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'maxSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'maxSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get minSubtotal {
    return node.getAttribute(
              'minSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'minSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'minSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get productSubtotal {
    return node.getAttribute(
              'productSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'productSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'productSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get countSubtotal {
    return node.getAttribute(
              'countSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'countSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'countSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get stdDevSubtotal {
    return node.getAttribute(
              'stdDevSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'stdDevSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'stdDevSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get stdDevPSubtotal {
    return node.getAttribute(
              'stdDevPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'stdDevPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'stdDevPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get varSubtotal {
    return node.getAttribute(
              'varSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'varSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'varSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get varPSubtotal {
    return node.getAttribute(
              'varPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'varPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'varPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showPropCell {
    return node.getAttribute(
              'showPropCell',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showPropCell',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showPropCell',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showPropTip {
    return node.getAttribute(
              'showPropTip',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showPropTip',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showPropTip',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showPropAsCaption {
    return node.getAttribute(
              'showPropAsCaption',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showPropAsCaption',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showPropAsCaption',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get defaultAttributeDrillState {
    return node.getAttribute(
              'defaultAttributeDrillState',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'defaultAttributeDrillState',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'defaultAttributeDrillState',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_Items? get items {
    final e = node.getElement(
      'items',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Items(e) : null;
  }

  S_CT_AutoSortScope? get autoSortScope {
    final e = node.getElement(
      'autoSortScope',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_AutoSortScope(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_AutoSortScope(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_CT_PivotArea? get pivotArea {
    final e = node.getElement(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotArea(e) : null;
  }
}
extension type S_CT_Items(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Item> get item {
    return node
        .findElements(
          'item',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Item.new);
  }
}
extension type S_CT_Item(_i1.XmlElement node) implements _i1.XmlElement {
  String? get n {
    return node.getAttribute(
      'n',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_ItemType? get t {
    return node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_ItemType.fromValue(
            node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get h {
    return node.getAttribute(
              'h',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'h',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'h',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get s {
    return node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get sd {
    return node.getAttribute(
              'sd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get f {
    return node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'f',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get m {
    return node.getAttribute(
              'm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get c {
    return node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get x {
    return node.getAttribute(
              'x',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'x',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get d {
    return node.getAttribute(
              'd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'd',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get e {
    return node.getAttribute(
              'e',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'e',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'e',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_PageFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PageField> get pageField {
    return node
        .findElements(
          'pageField',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PageField.new);
  }
}
extension type S_CT_PageField(_i1.XmlElement node) implements _i1.XmlElement {
  int get fld {
    return int.parse(
      node.getAttribute(
        'fld',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int? get item {
    return node.getAttribute(
              'item',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'item',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get hier {
    return node.getAttribute(
              'hier',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'hier',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get cap {
    return node.getAttribute(
      'cap',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_DataFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_DataField> get dataField {
    return node
        .findElements(
          'dataField',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DataField.new);
  }
}
extension type S_CT_DataField(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int get fld {
    return int.parse(
      node.getAttribute(
        'fld',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_ST_DataConsolidateFunction? get subtotal {
    return node.getAttribute(
              'subtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_DataConsolidateFunction.fromValue(
            node.getAttribute(
              'subtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_ShowDataAs? get showDataAs {
    return node.getAttribute(
              'showDataAs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_ShowDataAs.fromValue(
            node.getAttribute(
              'showDataAs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get baseField {
    return node.getAttribute(
              'baseField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'baseField',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get baseItem {
    return node.getAttribute(
              'baseItem',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'baseItem',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get numFmtId {
    return node.getAttribute(
      'numFmtId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_rowItems(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_I> get i {
    return node
        .findElements(
          'i',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_I.new);
  }
}
extension type S_CT_colItems(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_I> get i {
    return node
        .findElements(
          'i',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_I.new);
  }
}
extension type S_CT_I(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_ItemType? get t {
    return node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_ItemType.fromValue(
            node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get r {
    return node.getAttribute(
              'r',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'r',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_X> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_X.new);
  }
}
extension type S_CT_X(_i1.XmlElement node) implements _i1.XmlElement {
  int? get v {
    return node.getAttribute(
              'v',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'v',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_RowFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Field> get field {
    return node
        .findElements(
          'field',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Field.new);
  }
}
extension type S_CT_ColFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Field> get field {
    return node
        .findElements(
          'field',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Field.new);
  }
}
extension type S_CT_Field(_i1.XmlElement node) implements _i1.XmlElement {
  int get x {
    return int.parse(
      node.getAttribute(
        'x',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_Formats(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Format> get format {
    return node
        .findElements(
          'format',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Format.new);
  }
}
extension type S_CT_Format(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_FormatAction? get action {
    return node.getAttribute(
              'action',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_FormatAction.fromValue(
            node.getAttribute(
              'action',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get dxfId {
    return node.getAttribute(
      'dxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_PivotArea? get pivotArea {
    final e = node.getElement(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotArea(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_ConditionalFormats(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_ConditionalFormat> get conditionalFormat {
    return node
        .findElements(
          'conditionalFormat',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ConditionalFormat.new);
  }
}
extension type S_CT_ConditionalFormat(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_Scope? get scope {
    return node.getAttribute(
              'scope',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Scope.fromValue(
            node.getAttribute(
              'scope',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_Type? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Type.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get priority {
    return int.parse(
      node.getAttribute(
        'priority',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_CT_PivotAreas? get pivotAreas {
    final e = node.getElement(
      'pivotAreas',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotAreas(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_PivotAreas(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PivotArea> get pivotArea {
    return node
        .findElements(
          'pivotArea',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PivotArea.new);
  }
}
extension type S_CT_ChartFormats(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_ChartFormat> get chartFormat {
    return node
        .findElements(
          'chartFormat',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ChartFormat.new);
  }
}
extension type S_CT_ChartFormat(_i1.XmlElement node) implements _i1.XmlElement {
  int get chart {
    return int.parse(
      node.getAttribute(
        'chart',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get format {
    return int.parse(
      node.getAttribute(
        'format',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get series {
    return node.getAttribute(
              'series',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'series',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'series',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_PivotArea? get pivotArea {
    final e = node.getElement(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotArea(e) : null;
  }
}
extension type S_CT_PivotHierarchies(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PivotHierarchy> get pivotHierarchy {
    return node
        .findElements(
          'pivotHierarchy',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PivotHierarchy.new);
  }
}
extension type S_CT_PivotHierarchy(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get outline {
    return node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get multipleItemSelectionAllowed {
    return node.getAttribute(
              'multipleItemSelectionAllowed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'multipleItemSelectionAllowed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'multipleItemSelectionAllowed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get subtotalTop {
    return node.getAttribute(
              'subtotalTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'subtotalTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'subtotalTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showInFieldList {
    return node.getAttribute(
              'showInFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showInFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showInFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragToRow {
    return node.getAttribute(
              'dragToRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragToRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragToRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragToCol {
    return node.getAttribute(
              'dragToCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragToCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragToCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragToPage {
    return node.getAttribute(
              'dragToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragToData {
    return node.getAttribute(
              'dragToData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragToData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragToData',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dragOff {
    return node.getAttribute(
              'dragOff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dragOff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dragOff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get includeNewItemsInFilter {
    return node.getAttribute(
              'includeNewItemsInFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'includeNewItemsInFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'includeNewItemsInFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_MemberProperties? get mps {
    final e = node.getElement(
      'mps',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MemberProperties(e) : null;
  }

  Iterable<S_CT_Members> get members {
    return node
        .findElements(
          'members',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Members.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_RowHierarchiesUsage(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_HierarchyUsage> get rowHierarchyUsage {
    return node
        .findElements(
          'rowHierarchyUsage',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_HierarchyUsage.new);
  }
}
extension type S_CT_ColHierarchiesUsage(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_HierarchyUsage> get colHierarchyUsage {
    return node
        .findElements(
          'colHierarchyUsage',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_HierarchyUsage.new);
  }
}
extension type S_CT_HierarchyUsage(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get hierarchyUsage {
    return int.parse(
      node.getAttribute(
        'hierarchyUsage',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_MemberProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_MemberProperty> get mp {
    return node
        .findElements(
          'mp',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MemberProperty.new);
  }
}
extension type S_CT_MemberProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get showCell {
    return node.getAttribute(
              'showCell',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showCell',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showCell',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showTip {
    return node.getAttribute(
              'showTip',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showTip',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showTip',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showAsCaption {
    return node.getAttribute(
              'showAsCaption',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showAsCaption',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showAsCaption',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get nameLen {
    return node.getAttribute(
              'nameLen',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'nameLen',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get pPos {
    return node.getAttribute(
              'pPos',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'pPos',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get pLen {
    return node.getAttribute(
              'pLen',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'pLen',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get level {
    return node.getAttribute(
              'level',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'level',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get field {
    return int.parse(
      node.getAttribute(
        'field',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_Members(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get level {
    return node.getAttribute(
              'level',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'level',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Member> get member {
    return node
        .findElements(
          'member',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Member.new);
  }
}
extension type S_CT_Member(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_Dimensions(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PivotDimension> get dimension {
    return node
        .findElements(
          'dimension',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PivotDimension.new);
  }
}
extension type S_CT_PivotDimension(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get measure {
    return node.getAttribute(
              'measure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'measure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'measure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get uniqueName {
    return node.getAttribute(
      'uniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_MeasureGroups(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_MeasureGroup> get measureGroup {
    return node
        .findElements(
          'measureGroup',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MeasureGroup.new);
  }
}
extension type S_CT_MeasureDimensionMaps(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_MeasureDimensionMap> get map {
    return node
        .findElements(
          'map',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MeasureDimensionMap.new);
  }
}
extension type S_CT_MeasureGroup(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get caption {
    return node.getAttribute(
      'caption',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_MeasureDimensionMap(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get measureGroup {
    return node.getAttribute(
              'measureGroup',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'measureGroup',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get dimension {
    return node.getAttribute(
              'dimension',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'dimension',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_PivotTableStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get showRowHeaders {
    return node.getAttribute(
              'showRowHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showRowHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showRowHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showColHeaders {
    return node.getAttribute(
              'showColHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showColHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showColHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showRowStripes {
    return node.getAttribute(
              'showRowStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showRowStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showRowStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showColStripes {
    return node.getAttribute(
              'showColStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showColStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showColStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showLastColumn {
    return node.getAttribute(
              'showLastColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showLastColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showLastColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_PivotFilters(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PivotFilter> get filter {
    return node
        .findElements(
          'filter',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PivotFilter.new);
  }
}
extension type S_CT_PivotFilter(_i1.XmlElement node) implements _i1.XmlElement {
  int get fld {
    return int.parse(
      node.getAttribute(
        'fld',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int? get mpFld {
    return node.getAttribute(
              'mpFld',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'mpFld',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_PivotFilterType get type {
    return S_ST_PivotFilterType.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  int? get evalOrder {
    return node.getAttribute(
              'evalOrder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'evalOrder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int? get iMeasureHier {
    return node.getAttribute(
              'iMeasureHier',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'iMeasureHier',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get iMeasureFld {
    return node.getAttribute(
              'iMeasureFld',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'iMeasureFld',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get description {
    return node.getAttribute(
      'description',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get stringValue1 {
    return node.getAttribute(
      'stringValue1',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get stringValue2 {
    return node.getAttribute(
      'stringValue2',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_AutoFilter? get autoFilter {
    final e = node.getElement(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_AutoFilter(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_PivotArea(_i1.XmlElement node) implements _i1.XmlElement {
  int? get field {
    return node.getAttribute(
              'field',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'field',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_PivotAreaType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_PivotAreaType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get dataOnly {
    return node.getAttribute(
              'dataOnly',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dataOnly',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dataOnly',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get labelOnly {
    return node.getAttribute(
              'labelOnly',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'labelOnly',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'labelOnly',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get grandRow {
    return node.getAttribute(
              'grandRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'grandRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'grandRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get grandCol {
    return node.getAttribute(
              'grandCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'grandCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'grandCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get cacheIndex {
    return node.getAttribute(
              'cacheIndex',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'cacheIndex',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'cacheIndex',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get outline {
    return node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get offset {
    return node.getAttribute(
      'offset',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get collapsedLevelsAreSubtotals {
    return node.getAttribute(
              'collapsedLevelsAreSubtotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'collapsedLevelsAreSubtotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'collapsedLevelsAreSubtotals',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_Axis? get axis {
    return node.getAttribute(
              'axis',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Axis.fromValue(
            node.getAttribute(
              'axis',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get fieldPosition {
    return node.getAttribute(
              'fieldPosition',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'fieldPosition',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_PivotAreaReferences? get references {
    final e = node.getElement(
      'references',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotAreaReferences(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_PivotAreaReferences(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_PivotAreaReference> get reference {
    return node
        .findElements(
          'reference',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PivotAreaReference.new);
  }
}
extension type S_CT_PivotAreaReference(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get field {
    return node.getAttribute(
              'field',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'field',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get selected {
    return node.getAttribute(
              'selected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'selected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'selected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get byPosition {
    return node.getAttribute(
              'byPosition',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'byPosition',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'byPosition',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get relative {
    return node.getAttribute(
              'relative',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'relative',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'relative',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get defaultSubtotal {
    return node.getAttribute(
              'defaultSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'defaultSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'defaultSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get sumSubtotal {
    return node.getAttribute(
              'sumSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sumSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sumSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get countASubtotal {
    return node.getAttribute(
              'countASubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'countASubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'countASubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get avgSubtotal {
    return node.getAttribute(
              'avgSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'avgSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'avgSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get maxSubtotal {
    return node.getAttribute(
              'maxSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'maxSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'maxSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get minSubtotal {
    return node.getAttribute(
              'minSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'minSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'minSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get productSubtotal {
    return node.getAttribute(
              'productSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'productSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'productSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get countSubtotal {
    return node.getAttribute(
              'countSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'countSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'countSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get stdDevSubtotal {
    return node.getAttribute(
              'stdDevSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'stdDevSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'stdDevSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get stdDevPSubtotal {
    return node.getAttribute(
              'stdDevPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'stdDevPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'stdDevPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get varSubtotal {
    return node.getAttribute(
              'varSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'varSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'varSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get varPSubtotal {
    return node.getAttribute(
              'varPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'varPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'varPSubtotal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Index> get x {
    return node
        .findElements(
          'x',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Index.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Index(_i1.XmlElement node) implements _i1.XmlElement {
  int get v {
    return int.parse(
      node.getAttribute(
        'v',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_QueryTable(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get headers {
    return node.getAttribute(
              'headers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'headers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'headers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get rowNumbers {
    return node.getAttribute(
              'rowNumbers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rowNumbers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rowNumbers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get disableRefresh {
    return node.getAttribute(
              'disableRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'disableRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'disableRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get backgroundRefresh {
    return node.getAttribute(
              'backgroundRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'backgroundRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'backgroundRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get firstBackgroundRefresh {
    return node.getAttribute(
              'firstBackgroundRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'firstBackgroundRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'firstBackgroundRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get refreshOnLoad {
    return node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'refreshOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_GrowShrinkType? get growShrinkType {
    return node.getAttribute(
              'growShrinkType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_GrowShrinkType.fromValue(
            node.getAttribute(
              'growShrinkType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get fillFormulas {
    return node.getAttribute(
              'fillFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fillFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fillFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get removeDataOnSave {
    return node.getAttribute(
              'removeDataOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'removeDataOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'removeDataOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get disableEdit {
    return node.getAttribute(
              'disableEdit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'disableEdit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'disableEdit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get preserveFormatting {
    return node.getAttribute(
              'preserveFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preserveFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preserveFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get adjustColumnWidth {
    return node.getAttribute(
              'adjustColumnWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'adjustColumnWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'adjustColumnWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get intermediate {
    return node.getAttribute(
              'intermediate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'intermediate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'intermediate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int get connectionId {
    return int.parse(
      node.getAttribute(
        'connectionId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_CT_QueryTableRefresh? get queryTableRefresh {
    final e = node.getElement(
      'queryTableRefresh',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_QueryTableRefresh(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_QueryTableRefresh(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get preserveSortFilterLayout {
    return node.getAttribute(
              'preserveSortFilterLayout',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preserveSortFilterLayout',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preserveSortFilterLayout',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get fieldIdWrapped {
    return node.getAttribute(
              'fieldIdWrapped',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fieldIdWrapped',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fieldIdWrapped',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get headersInLastRefresh {
    return node.getAttribute(
              'headersInLastRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'headersInLastRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'headersInLastRefresh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get minimumVersion {
    return node.getAttribute(
              'minimumVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'minimumVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get nextId {
    return node.getAttribute(
              'nextId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'nextId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get unboundColumnsLeft {
    return node.getAttribute(
              'unboundColumnsLeft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'unboundColumnsLeft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get unboundColumnsRight {
    return node.getAttribute(
              'unboundColumnsRight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'unboundColumnsRight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_QueryTableFields? get queryTableFields {
    final e = node.getElement(
      'queryTableFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_QueryTableFields(e) : null;
  }

  S_CT_QueryTableDeletedFields? get queryTableDeletedFields {
    final e = node.getElement(
      'queryTableDeletedFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_QueryTableDeletedFields(e) : null;
  }

  S_CT_SortState? get sortState {
    final e = node.getElement(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SortState(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_QueryTableDeletedFields(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_DeletedField> get deletedField {
    return node
        .findElements(
          'deletedField',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DeletedField.new);
  }
}
extension type S_CT_DeletedField(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_QueryTableFields(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_QueryTableField> get queryTableField {
    return node
        .findElements(
          'queryTableField',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_QueryTableField.new);
  }
}
extension type S_CT_QueryTableField(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get dataBound {
    return node.getAttribute(
              'dataBound',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dataBound',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dataBound',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get rowNumbers {
    return node.getAttribute(
              'rowNumbers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rowNumbers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rowNumbers',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get fillFormulas {
    return node.getAttribute(
              'fillFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fillFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fillFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get clipped {
    return node.getAttribute(
              'clipped',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'clipped',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'clipped',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get tableColumnId {
    return node.getAttribute(
              'tableColumnId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'tableColumnId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Sst(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get uniqueCount {
    return node.getAttribute(
              'uniqueCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'uniqueCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Rst> get si {
    return node
        .findElements(
          'si',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Rst.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_PhoneticRun(_i1.XmlElement node) implements _i1.XmlElement {
  int get sb {
    return int.parse(
      node.getAttribute(
        'sb',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get eb {
    return int.parse(
      node.getAttribute(
        'eb',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String? get t {
    final e = node.getElement(
      't',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }
}
extension type S_CT_RElt(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_RPrElt? get rPr {
    final e = node.getElement(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_RPrElt(e) : null;
  }

  String? get t {
    final e = node.getElement(
      't',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }
}
extension type S_CT_RPrElt(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_FontName> get rFont {
    return node
        .findElements(
          'rFont',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FontName.new);
  }

  Iterable<S_CT_IntProperty> get charset {
    return node
        .findElements(
          'charset',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_IntProperty.new);
  }

  Iterable<S_CT_IntProperty> get family {
    return node
        .findElements(
          'family',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_IntProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get i {
    return node
        .findElements(
          'i',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get strike {
    return node
        .findElements(
          'strike',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get outline {
    return node
        .findElements(
          'outline',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get shadow {
    return node
        .findElements(
          'shadow',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get condense {
    return node
        .findElements(
          'condense',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get extend {
    return node
        .findElements(
          'extend',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_Color> get color {
    return node
        .findElements(
          'color',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Color.new);
  }

  Iterable<S_CT_FontSize> get sz {
    return node
        .findElements(
          'sz',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FontSize.new);
  }

  Iterable<S_CT_UnderlineProperty> get u {
    return node
        .findElements(
          'u',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_UnderlineProperty.new);
  }

  Iterable<S_CT_VerticalAlignFontProperty> get vertAlign {
    return node
        .findElements(
          'vertAlign',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_VerticalAlignFontProperty.new);
  }

  Iterable<S_CT_FontScheme> get scheme {
    return node
        .findElements(
          'scheme',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FontScheme.new);
  }
}
extension type S_CT_Rst(_i1.XmlElement node) implements _i1.XmlElement {
  String? get t {
    final e = node.getElement(
      't',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  Iterable<S_CT_RElt> get r {
    return node
        .findElements(
          'r',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RElt.new);
  }

  Iterable<S_CT_PhoneticRun> get rPh {
    return node
        .findElements(
          'rPh',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PhoneticRun.new);
  }

  S_CT_PhoneticPr? get phoneticPr {
    final e = node.getElement(
      'phoneticPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PhoneticPr(e) : null;
  }
}
extension type S_CT_PhoneticPr(_i1.XmlElement node) implements _i1.XmlElement {
  String get fontId {
    return node.getAttribute(
      'fontId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_ST_PhoneticType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_PhoneticType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_PhoneticAlignment? get alignment {
    return node.getAttribute(
              'alignment',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_PhoneticAlignment.fromValue(
            node.getAttribute(
              'alignment',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_RevisionHeaders(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get lastGuid {
    return node.getAttribute(
      'lastGuid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get shared {
    return node.getAttribute(
              'shared',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'shared',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'shared',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get diskRevisions {
    return node.getAttribute(
              'diskRevisions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'diskRevisions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'diskRevisions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get history {
    return node.getAttribute(
              'history',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'history',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'history',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get trackRevisions {
    return node.getAttribute(
              'trackRevisions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'trackRevisions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'trackRevisions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get exclusive {
    return node.getAttribute(
              'exclusive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'exclusive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'exclusive',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get revisionId {
    return node.getAttribute(
              'revisionId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'revisionId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get version {
    return node.getAttribute(
              'version',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'version',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get keepChangeHistory {
    return node.getAttribute(
              'keepChangeHistory',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'keepChangeHistory',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'keepChangeHistory',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get protected {
    return node.getAttribute(
              'protected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'protected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'protected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get preserveHistory {
    return node.getAttribute(
              'preserveHistory',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'preserveHistory',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_RevisionHeader> get header {
    return node
        .findElements(
          'header',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionHeader.new);
  }
}
extension type S_CT_Revisions(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_RevisionRowColumn> get rrc {
    return node
        .findElements(
          'rrc',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionRowColumn.new);
  }

  Iterable<S_CT_RevisionMove> get rm {
    return node
        .findElements(
          'rm',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionMove.new);
  }

  Iterable<S_CT_RevisionCustomView> get rcv {
    return node
        .findElements(
          'rcv',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionCustomView.new);
  }

  Iterable<S_CT_RevisionSheetRename> get rsnm {
    return node
        .findElements(
          'rsnm',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionSheetRename.new);
  }

  Iterable<S_CT_RevisionInsertSheet> get ris {
    return node
        .findElements(
          'ris',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionInsertSheet.new);
  }

  Iterable<S_CT_RevisionCellChange> get rcc {
    return node
        .findElements(
          'rcc',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionCellChange.new);
  }

  Iterable<S_CT_RevisionFormatting> get rfmt {
    return node
        .findElements(
          'rfmt',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionFormatting.new);
  }

  Iterable<S_CT_RevisionAutoFormatting> get raf {
    return node
        .findElements(
          'raf',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionAutoFormatting.new);
  }

  Iterable<S_CT_RevisionDefinedName> get rdn {
    return node
        .findElements(
          'rdn',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionDefinedName.new);
  }

  Iterable<S_CT_RevisionComment> get rcmt {
    return node
        .findElements(
          'rcmt',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionComment.new);
  }

  Iterable<S_CT_RevisionQueryTableField> get rqt {
    return node
        .findElements(
          'rqt',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionQueryTableField.new);
  }

  Iterable<S_CT_RevisionConflict> get rcft {
    return node
        .findElements(
          'rcft',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionConflict.new);
  }
}
extension type S_CT_RevisionHeader(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get dateTime {
    return node.getAttribute(
      'dateTime',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get maxSheetId {
    return int.parse(
      node.getAttribute(
        'maxSheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get userName {
    return node.getAttribute(
      'userName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int? get minRId {
    return node.getAttribute(
              'minRId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'minRId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get maxRId {
    return node.getAttribute(
              'maxRId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'maxRId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_SheetIdMap? get sheetIdMap {
    final e = node.getElement(
      'sheetIdMap',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetIdMap(e) : null;
  }

  S_CT_ReviewedRevisions? get reviewedList {
    final e = node.getElement(
      'reviewedList',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ReviewedRevisions(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_SheetIdMap(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_SheetId> get sheetId {
    return node
        .findElements(
          'sheetId',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_SheetId.new);
  }
}
extension type S_CT_SheetId(_i1.XmlElement node) implements _i1.XmlElement {
  int get val {
    return int.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_ReviewedRevisions(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Reviewed> get reviewed {
    return node
        .findElements(
          'reviewed',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Reviewed.new);
  }
}
extension type S_CT_Reviewed(_i1.XmlElement node) implements _i1.XmlElement {
  int get rId {
    return int.parse(
      node.getAttribute(
        'rId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_UndoInfo(_i1.XmlElement node) implements _i1.XmlElement {
  int get index_ {
    return int.parse(
      node.getAttribute(
        'index',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_ST_FormulaExpression get exp {
    return S_ST_FormulaExpression.fromValue(
      node.getAttribute(
        'exp',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  bool? get ref3D {
    return node.getAttribute(
              'ref3D',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ref3D',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ref3D',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get array {
    return node.getAttribute(
              'array',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'array',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'array',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get v {
    return node.getAttribute(
              'v',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'v',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'v',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get nf {
    return node.getAttribute(
              'nf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'nf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'nf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get cs {
    return node.getAttribute(
              'cs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'cs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'cs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String get dr {
    return node.getAttribute(
      'dr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get dn {
    return node.getAttribute(
      'dn',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get sId {
    return node.getAttribute(
              'sId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'sId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_RevisionRowColumn(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sId {
    return int.parse(
      node.getAttribute(
        'sId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get eol {
    return node.getAttribute(
              'eol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'eol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'eol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_ST_rwColActionType get action {
    return S_ST_rwColActionType.fromValue(
      node.getAttribute(
        'action',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  bool? get edge {
    return node.getAttribute(
              'edge',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'edge',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'edge',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_UndoInfo> get undo {
    return node
        .findElements(
          'undo',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_UndoInfo.new);
  }

  Iterable<S_CT_RevisionCellChange> get rcc {
    return node
        .findElements(
          'rcc',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionCellChange.new);
  }

  Iterable<S_CT_RevisionFormatting> get rfmt {
    return node
        .findElements(
          'rfmt',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionFormatting.new);
  }
}
extension type S_CT_RevisionMove(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get source {
    return node.getAttribute(
      'source',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get destination {
    return node.getAttribute(
      'destination',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int? get sourceSheetId {
    return node.getAttribute(
              'sourceSheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'sourceSheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_UndoInfo> get undo {
    return node
        .findElements(
          'undo',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_UndoInfo.new);
  }

  Iterable<S_CT_RevisionCellChange> get rcc {
    return node
        .findElements(
          'rcc',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionCellChange.new);
  }

  Iterable<S_CT_RevisionFormatting> get rfmt {
    return node
        .findElements(
          'rfmt',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RevisionFormatting.new);
  }
}
extension type S_CT_RevisionCustomView(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_ST_RevisionAction get action {
    return S_ST_RevisionAction.fromValue(
      node.getAttribute(
        'action',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }
}
extension type S_CT_RevisionSheetRename(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get oldName {
    return node.getAttribute(
      'oldName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get newName {
    return node.getAttribute(
      'newName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_RevisionInsertSheet(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get sheetPosition {
    return int.parse(
      node.getAttribute(
        'sheetPosition',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_RevisionCellChange(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sId {
    return int.parse(
      node.getAttribute(
        'sId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get odxf {
    return node.getAttribute(
              'odxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'odxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'odxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get xfDxf {
    return node.getAttribute(
              'xfDxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'xfDxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'xfDxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get s {
    return node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dxf {
    return node.getAttribute(
              'dxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get numFmtId {
    return node.getAttribute(
      'numFmtId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get quotePrefix {
    return node.getAttribute(
              'quotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'quotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'quotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get oldQuotePrefix {
    return node.getAttribute(
              'oldQuotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'oldQuotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'oldQuotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get ph {
    return node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get oldPh {
    return node.getAttribute(
              'oldPh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'oldPh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'oldPh',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get endOfListFormulaUpdate {
    return node.getAttribute(
              'endOfListFormulaUpdate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'endOfListFormulaUpdate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'endOfListFormulaUpdate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_Cell? get oc {
    final e = node.getElement(
      'oc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Cell(e) : null;
  }

  S_CT_Cell? get nc {
    final e = node.getElement(
      'nc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Cell(e) : null;
  }

  S_CT_Dxf? get ndxf {
    final e = node.getElement(
      'ndxf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Dxf(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_RevisionFormatting(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get xfDxf {
    return node.getAttribute(
              'xfDxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'xfDxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'xfDxf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get s {
    return node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get start {
    return node.getAttribute(
              'start',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'start',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get length {
    return node.getAttribute(
              'length',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'length',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_Dxf? get dxf {
    final e = node.getElement(
      'dxf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Dxf(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_RevisionAutoFormatting(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_RevisionComment(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get cell {
    return node.getAttribute(
      'cell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_ST_RevisionAction? get action {
    return node.getAttribute(
              'action',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_RevisionAction.fromValue(
            node.getAttribute(
              'action',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get alwaysShow {
    return node.getAttribute(
              'alwaysShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'alwaysShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'alwaysShow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get old {
    return node.getAttribute(
              'old',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'old',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'old',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hiddenRow {
    return node.getAttribute(
              'hiddenRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hiddenRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hiddenRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hiddenColumn {
    return node.getAttribute(
              'hiddenColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hiddenColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hiddenColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String get author {
    return node.getAttribute(
      'author',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int? get oldLength {
    return node.getAttribute(
              'oldLength',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'oldLength',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get newLength {
    return node.getAttribute(
              'newLength',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'newLength',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_RevisionDefinedName(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get localSheetId {
    return node.getAttribute(
              'localSheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'localSheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get customView {
    return node.getAttribute(
              'customView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'customView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'customView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get function_ {
    return node.getAttribute(
              'function',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'function',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'function',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get oldFunction {
    return node.getAttribute(
              'oldFunction',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'oldFunction',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'oldFunction',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get functionGroupId {
    return node.getAttribute(
              'functionGroupId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'functionGroupId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get oldFunctionGroupId {
    return node.getAttribute(
              'oldFunctionGroupId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'oldFunctionGroupId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get shortcutKey {
    return node.getAttribute(
              'shortcutKey',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'shortcutKey',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get oldShortcutKey {
    return node.getAttribute(
              'oldShortcutKey',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'oldShortcutKey',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get oldHidden {
    return node.getAttribute(
              'oldHidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'oldHidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'oldHidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get customMenu {
    return node.getAttribute(
      'customMenu',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get oldCustomMenu {
    return node.getAttribute(
      'oldCustomMenu',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get description {
    return node.getAttribute(
      'description',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get oldDescription {
    return node.getAttribute(
      'oldDescription',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get help {
    return node.getAttribute(
      'help',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get oldHelp {
    return node.getAttribute(
      'oldHelp',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get statusBar {
    return node.getAttribute(
      'statusBar',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get oldStatusBar {
    return node.getAttribute(
      'oldStatusBar',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get comment {
    return node.getAttribute(
      'comment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get oldComment {
    return node.getAttribute(
      'oldComment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get formula {
    final e = node.getElement(
      'formula',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  String? get oldFormula {
    final e = node.getElement(
      'oldFormula',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_RevisionConflict(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get sheetId {
    return node.getAttribute(
              'sheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'sheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_RevisionQueryTableField(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get fieldId {
    return int.parse(
      node.getAttribute(
        'fieldId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_Users(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_SharedUser> get userInfo {
    return node
        .findElements(
          'userInfo',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_SharedUser.new);
  }
}
extension type S_CT_SharedUser(_i1.XmlElement node) implements _i1.XmlElement {
  String get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get dateTime {
    return node.getAttribute(
      'dateTime',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Macrosheet(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_SheetPr? get sheetPr {
    final e = node.getElement(
      'sheetPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetPr(e) : null;
  }

  S_CT_SheetDimension? get dimension {
    final e = node.getElement(
      'dimension',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetDimension(e) : null;
  }

  S_CT_SheetViews? get sheetViews {
    final e = node.getElement(
      'sheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetViews(e) : null;
  }

  S_CT_SheetFormatPr? get sheetFormatPr {
    final e = node.getElement(
      'sheetFormatPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetFormatPr(e) : null;
  }

  Iterable<S_CT_Cols> get cols {
    return node
        .findElements(
          'cols',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Cols.new);
  }

  S_CT_SheetData? get sheetData {
    final e = node.getElement(
      'sheetData',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetData(e) : null;
  }

  S_CT_SheetProtection? get sheetProtection {
    final e = node.getElement(
      'sheetProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetProtection(e) : null;
  }

  S_CT_AutoFilter? get autoFilter {
    final e = node.getElement(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_AutoFilter(e) : null;
  }

  S_CT_SortState? get sortState {
    final e = node.getElement(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SortState(e) : null;
  }

  S_CT_DataConsolidate? get dataConsolidate {
    final e = node.getElement(
      'dataConsolidate',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataConsolidate(e) : null;
  }

  S_CT_CustomSheetViews? get customSheetViews {
    final e = node.getElement(
      'customSheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CustomSheetViews(e) : null;
  }

  S_CT_PhoneticPr? get phoneticPr {
    final e = node.getElement(
      'phoneticPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PhoneticPr(e) : null;
  }

  Iterable<S_CT_ConditionalFormatting> get conditionalFormatting {
    return node
        .findElements(
          'conditionalFormatting',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ConditionalFormatting.new);
  }

  S_CT_PrintOptions? get printOptions {
    final e = node.getElement(
      'printOptions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PrintOptions(e) : null;
  }

  S_CT_PageMargins? get pageMargins {
    final e = node.getElement(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageMargins(e) : null;
  }

  S_CT_PageSetup? get pageSetup {
    final e = node.getElement(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageSetup(e) : null;
  }

  S_CT_HeaderFooter? get headerFooter {
    final e = node.getElement(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_HeaderFooter(e) : null;
  }

  S_CT_PageBreak? get rowBreaks {
    final e = node.getElement(
      'rowBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageBreak(e) : null;
  }

  S_CT_PageBreak? get colBreaks {
    final e = node.getElement(
      'colBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageBreak(e) : null;
  }

  S_CT_CustomProperties? get customProperties {
    final e = node.getElement(
      'customProperties',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CustomProperties(e) : null;
  }

  S_CT_Drawing? get drawing {
    final e = node.getElement(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Drawing(e) : null;
  }

  S_CT_LegacyDrawing? get legacyDrawing {
    final e = node.getElement(
      'legacyDrawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_LegacyDrawing(e) : null;
  }

  S_CT_LegacyDrawing? get legacyDrawingHF {
    final e = node.getElement(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_LegacyDrawing(e) : null;
  }

  S_CT_DrawingHF? get drawingHF {
    final e = node.getElement(
      'drawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DrawingHF(e) : null;
  }

  S_CT_SheetBackgroundPicture? get picture {
    final e = node.getElement(
      'picture',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetBackgroundPicture(e) : null;
  }

  S_CT_OleObjects? get oleObjects {
    final e = node.getElement(
      'oleObjects',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OleObjects(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Dialogsheet(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_SheetPr? get sheetPr {
    final e = node.getElement(
      'sheetPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetPr(e) : null;
  }

  S_CT_SheetViews? get sheetViews {
    final e = node.getElement(
      'sheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetViews(e) : null;
  }

  S_CT_SheetFormatPr? get sheetFormatPr {
    final e = node.getElement(
      'sheetFormatPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetFormatPr(e) : null;
  }

  S_CT_SheetProtection? get sheetProtection {
    final e = node.getElement(
      'sheetProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetProtection(e) : null;
  }

  S_CT_CustomSheetViews? get customSheetViews {
    final e = node.getElement(
      'customSheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CustomSheetViews(e) : null;
  }

  S_CT_PrintOptions? get printOptions {
    final e = node.getElement(
      'printOptions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PrintOptions(e) : null;
  }

  S_CT_PageMargins? get pageMargins {
    final e = node.getElement(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageMargins(e) : null;
  }

  S_CT_PageSetup? get pageSetup {
    final e = node.getElement(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageSetup(e) : null;
  }

  S_CT_HeaderFooter? get headerFooter {
    final e = node.getElement(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_HeaderFooter(e) : null;
  }

  S_CT_Drawing? get drawing {
    final e = node.getElement(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Drawing(e) : null;
  }

  S_CT_LegacyDrawing? get legacyDrawing {
    final e = node.getElement(
      'legacyDrawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_LegacyDrawing(e) : null;
  }

  S_CT_LegacyDrawing? get legacyDrawingHF {
    final e = node.getElement(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_LegacyDrawing(e) : null;
  }

  S_CT_DrawingHF? get drawingHF {
    final e = node.getElement(
      'drawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DrawingHF(e) : null;
  }

  S_CT_OleObjects? get oleObjects {
    final e = node.getElement(
      'oleObjects',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OleObjects(e) : null;
  }

  S_CT_Controls? get controls {
    final e = node.getElement(
      'controls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Controls(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Worksheet(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_SheetPr? get sheetPr {
    final e = node.getElement(
      'sheetPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetPr(e) : null;
  }

  S_CT_SheetDimension? get dimension {
    final e = node.getElement(
      'dimension',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetDimension(e) : null;
  }

  S_CT_SheetViews? get sheetViews {
    final e = node.getElement(
      'sheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetViews(e) : null;
  }

  S_CT_SheetFormatPr? get sheetFormatPr {
    final e = node.getElement(
      'sheetFormatPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetFormatPr(e) : null;
  }

  Iterable<S_CT_Cols> get cols {
    return node
        .findElements(
          'cols',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Cols.new);
  }

  S_CT_SheetData? get sheetData {
    final e = node.getElement(
      'sheetData',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetData(e) : null;
  }

  S_CT_SheetCalcPr? get sheetCalcPr {
    final e = node.getElement(
      'sheetCalcPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetCalcPr(e) : null;
  }

  S_CT_SheetProtection? get sheetProtection {
    final e = node.getElement(
      'sheetProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetProtection(e) : null;
  }

  S_CT_ProtectedRanges? get protectedRanges {
    final e = node.getElement(
      'protectedRanges',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ProtectedRanges(e) : null;
  }

  S_CT_Scenarios? get scenarios {
    final e = node.getElement(
      'scenarios',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Scenarios(e) : null;
  }

  S_CT_AutoFilter? get autoFilter {
    final e = node.getElement(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_AutoFilter(e) : null;
  }

  S_CT_SortState? get sortState {
    final e = node.getElement(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SortState(e) : null;
  }

  S_CT_DataConsolidate? get dataConsolidate {
    final e = node.getElement(
      'dataConsolidate',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataConsolidate(e) : null;
  }

  S_CT_CustomSheetViews? get customSheetViews {
    final e = node.getElement(
      'customSheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CustomSheetViews(e) : null;
  }

  S_CT_MergeCells? get mergeCells {
    final e = node.getElement(
      'mergeCells',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MergeCells(e) : null;
  }

  S_CT_PhoneticPr? get phoneticPr {
    final e = node.getElement(
      'phoneticPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PhoneticPr(e) : null;
  }

  Iterable<S_CT_ConditionalFormatting> get conditionalFormatting {
    return node
        .findElements(
          'conditionalFormatting',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ConditionalFormatting.new);
  }

  S_CT_DataValidations? get dataValidations {
    final e = node.getElement(
      'dataValidations',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataValidations(e) : null;
  }

  S_CT_Hyperlinks? get hyperlinks {
    final e = node.getElement(
      'hyperlinks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Hyperlinks(e) : null;
  }

  S_CT_PrintOptions? get printOptions {
    final e = node.getElement(
      'printOptions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PrintOptions(e) : null;
  }

  S_CT_PageMargins? get pageMargins {
    final e = node.getElement(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageMargins(e) : null;
  }

  S_CT_PageSetup? get pageSetup {
    final e = node.getElement(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageSetup(e) : null;
  }

  S_CT_HeaderFooter? get headerFooter {
    final e = node.getElement(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_HeaderFooter(e) : null;
  }

  S_CT_PageBreak? get rowBreaks {
    final e = node.getElement(
      'rowBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageBreak(e) : null;
  }

  S_CT_PageBreak? get colBreaks {
    final e = node.getElement(
      'colBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageBreak(e) : null;
  }

  S_CT_CustomProperties? get customProperties {
    final e = node.getElement(
      'customProperties',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CustomProperties(e) : null;
  }

  S_CT_CellWatches? get cellWatches {
    final e = node.getElement(
      'cellWatches',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellWatches(e) : null;
  }

  S_CT_IgnoredErrors? get ignoredErrors {
    final e = node.getElement(
      'ignoredErrors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_IgnoredErrors(e) : null;
  }

  S_CT_SmartTags? get smartTags {
    final e = node.getElement(
      'smartTags',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SmartTags(e) : null;
  }

  S_CT_Drawing? get drawing {
    final e = node.getElement(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Drawing(e) : null;
  }

  S_CT_LegacyDrawing? get legacyDrawing {
    final e = node.getElement(
      'legacyDrawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_LegacyDrawing(e) : null;
  }

  S_CT_LegacyDrawing? get legacyDrawingHF {
    final e = node.getElement(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_LegacyDrawing(e) : null;
  }

  S_CT_DrawingHF? get drawingHF {
    final e = node.getElement(
      'drawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DrawingHF(e) : null;
  }

  S_CT_SheetBackgroundPicture? get picture {
    final e = node.getElement(
      'picture',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetBackgroundPicture(e) : null;
  }

  S_CT_OleObjects? get oleObjects {
    final e = node.getElement(
      'oleObjects',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OleObjects(e) : null;
  }

  S_CT_Controls? get controls {
    final e = node.getElement(
      'controls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Controls(e) : null;
  }

  S_CT_WebPublishItems? get webPublishItems {
    final e = node.getElement(
      'webPublishItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_WebPublishItems(e) : null;
  }

  S_CT_TableParts? get tableParts {
    final e = node.getElement(
      'tableParts',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TableParts(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_SheetData(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Row> get row {
    return node
        .findElements(
          'row',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Row.new);
  }
}
extension type S_CT_SheetCalcPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get fullCalcOnLoad {
    return node.getAttribute(
              'fullCalcOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fullCalcOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fullCalcOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_SheetFormatPr(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get baseColWidth {
    return node.getAttribute(
              'baseColWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'baseColWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get defaultColWidth {
    return node.getAttribute(
              'defaultColWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'defaultColWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double get defaultRowHeight {
    return double.parse(
      node.getAttribute(
        'defaultRowHeight',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get customHeight {
    return node.getAttribute(
              'customHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'customHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'customHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get zeroHeight {
    return node.getAttribute(
              'zeroHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'zeroHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'zeroHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get thickTop {
    return node.getAttribute(
              'thickTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'thickTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'thickTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get thickBottom {
    return node.getAttribute(
              'thickBottom',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'thickBottom',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'thickBottom',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get outlineLevelRow {
    return node.getAttribute(
              'outlineLevelRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'outlineLevelRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get outlineLevelCol {
    return node.getAttribute(
              'outlineLevelCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'outlineLevelCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_Cols(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Col> get col {
    return node
        .findElements(
          'col',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Col.new);
  }
}
extension type S_CT_Col(_i1.XmlElement node) implements _i1.XmlElement {
  int get min {
    return int.parse(
      node.getAttribute(
        'min',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get max {
    return int.parse(
      node.getAttribute(
        'max',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  double? get width {
    return node.getAttribute(
              'width',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'width',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get style {
    return node.getAttribute(
              'style',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'style',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get bestFit {
    return node.getAttribute(
              'bestFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'bestFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'bestFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get customWidth {
    return node.getAttribute(
              'customWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'customWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'customWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get phonetic {
    return node.getAttribute(
              'phonetic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'phonetic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'phonetic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get outlineLevel {
    return node.getAttribute(
              'outlineLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'outlineLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get collapsed {
    return node.getAttribute(
              'collapsed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'collapsed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'collapsed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_Row(_i1.XmlElement node) implements _i1.XmlElement {
  int? get r {
    return node.getAttribute(
              'r',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'r',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get s {
    return node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get customFormat {
    return node.getAttribute(
              'customFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'customFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'customFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  double? get ht {
    return node.getAttribute(
              'ht',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'ht',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get customHeight {
    return node.getAttribute(
              'customHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'customHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'customHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get outlineLevel {
    return node.getAttribute(
              'outlineLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'outlineLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get collapsed {
    return node.getAttribute(
              'collapsed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'collapsed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'collapsed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get thickTop {
    return node.getAttribute(
              'thickTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'thickTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'thickTop',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get thickBot {
    return node.getAttribute(
              'thickBot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'thickBot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'thickBot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get ph {
    return node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Cell> get c {
    return node
        .findElements(
          'c',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Cell.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Cell(_i1.XmlElement node) implements _i1.XmlElement {
  String? get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get s {
    return node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_CellType? get t {
    return node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_CellType.fromValue(
            node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get cm {
    return node.getAttribute(
              'cm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get vm {
    return node.getAttribute(
              'vm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'vm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get ph {
    return node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ph',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_CellFormula? get f {
    final e = node.getElement(
      'f',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellFormula(e) : null;
  }

  String? get v {
    final e = node.getElement(
      'v',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  S_CT_Rst? get is_ {
    final e = node.getElement(
      'is',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Rst(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_SheetPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get syncHorizontal {
    return node.getAttribute(
              'syncHorizontal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'syncHorizontal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'syncHorizontal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get syncVertical {
    return node.getAttribute(
              'syncVertical',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'syncVertical',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'syncVertical',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get syncRef {
    return node.getAttribute(
      'syncRef',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get transitionEvaluation {
    return node.getAttribute(
              'transitionEvaluation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'transitionEvaluation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'transitionEvaluation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get transitionEntry {
    return node.getAttribute(
              'transitionEntry',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'transitionEntry',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'transitionEntry',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get published {
    return node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get codeName {
    return node.getAttribute(
      'codeName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get filterMode {
    return node.getAttribute(
              'filterMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'filterMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'filterMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get enableFormatConditionsCalculation {
    return node.getAttribute(
              'enableFormatConditionsCalculation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'enableFormatConditionsCalculation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'enableFormatConditionsCalculation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_Color? get tabColor {
    final e = node.getElement(
      'tabColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }

  S_CT_OutlinePr? get outlinePr {
    final e = node.getElement(
      'outlinePr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OutlinePr(e) : null;
  }

  S_CT_PageSetUpPr? get pageSetUpPr {
    final e = node.getElement(
      'pageSetUpPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageSetUpPr(e) : null;
  }
}
extension type S_CT_SheetDimension(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_SheetViews(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_SheetView> get sheetView {
    return node
        .findElements(
          'sheetView',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_SheetView.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_SheetView(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get windowProtection {
    return node.getAttribute(
              'windowProtection',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'windowProtection',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'windowProtection',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showFormulas {
    return node.getAttribute(
              'showFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showGridLines {
    return node.getAttribute(
              'showGridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showGridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showGridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showRowColHeaders {
    return node.getAttribute(
              'showRowColHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showRowColHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showRowColHeaders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showZeros {
    return node.getAttribute(
              'showZeros',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showZeros',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showZeros',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get rightToLeft {
    return node.getAttribute(
              'rightToLeft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rightToLeft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rightToLeft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get tabSelected {
    return node.getAttribute(
              'tabSelected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'tabSelected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'tabSelected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showRuler {
    return node.getAttribute(
              'showRuler',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showRuler',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showRuler',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showOutlineSymbols {
    return node.getAttribute(
              'showOutlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showOutlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showOutlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get defaultGridColor {
    return node.getAttribute(
              'defaultGridColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'defaultGridColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'defaultGridColor',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showWhiteSpace {
    return node.getAttribute(
              'showWhiteSpace',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showWhiteSpace',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showWhiteSpace',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_SheetViewType? get view {
    return node.getAttribute(
              'view',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SheetViewType.fromValue(
            node.getAttribute(
              'view',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get topLeftCell {
    return node.getAttribute(
      'topLeftCell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get colorId {
    return node.getAttribute(
              'colorId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'colorId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get zoomScale {
    return node.getAttribute(
              'zoomScale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'zoomScale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get zoomScaleNormal {
    return node.getAttribute(
              'zoomScaleNormal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'zoomScaleNormal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get zoomScaleSheetLayoutView {
    return node.getAttribute(
              'zoomScaleSheetLayoutView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'zoomScaleSheetLayoutView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get zoomScalePageLayoutView {
    return node.getAttribute(
              'zoomScalePageLayoutView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'zoomScalePageLayoutView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get workbookViewId {
    return int.parse(
      node.getAttribute(
        'workbookViewId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_CT_Pane? get pane {
    final e = node.getElement(
      'pane',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Pane(e) : null;
  }

  Iterable<S_CT_Selection> get selection {
    return node
        .findElements(
          'selection',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Selection.new);
  }

  Iterable<S_CT_PivotSelection> get pivotSelection {
    return node
        .findElements(
          'pivotSelection',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PivotSelection.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Pane(_i1.XmlElement node) implements _i1.XmlElement {
  double? get xSplit {
    return node.getAttribute(
              'xSplit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'xSplit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get ySplit {
    return node.getAttribute(
              'ySplit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'ySplit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get topLeftCell {
    return node.getAttribute(
      'topLeftCell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_Pane? get activePane {
    return node.getAttribute(
              'activePane',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Pane.fromValue(
            node.getAttribute(
              'activePane',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_PaneState? get state {
    return node.getAttribute(
              'state',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_PaneState.fromValue(
            node.getAttribute(
              'state',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_PivotSelection(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_Pane? get pane {
    return node.getAttribute(
              'pane',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Pane.fromValue(
            node.getAttribute(
              'pane',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showHeader {
    return node.getAttribute(
              'showHeader',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showHeader',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showHeader',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get label {
    return node.getAttribute(
              'label',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'label',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'label',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get data {
    return node.getAttribute(
              'data',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'data',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'data',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get extendable {
    return node.getAttribute(
              'extendable',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'extendable',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'extendable',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_Axis? get axis {
    return node.getAttribute(
              'axis',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Axis.fromValue(
            node.getAttribute(
              'axis',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get dimension {
    return node.getAttribute(
              'dimension',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'dimension',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get start {
    return node.getAttribute(
              'start',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'start',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get min {
    return node.getAttribute(
              'min',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'min',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get max {
    return node.getAttribute(
              'max',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'max',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get activeRow {
    return node.getAttribute(
              'activeRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'activeRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get activeCol {
    return node.getAttribute(
              'activeCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'activeCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get previousRow {
    return node.getAttribute(
              'previousRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'previousRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get previousCol {
    return node.getAttribute(
              'previousCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'previousCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get click {
    return node.getAttribute(
              'click',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'click',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_PivotArea? get pivotArea {
    final e = node.getElement(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotArea(e) : null;
  }
}
extension type S_CT_Selection(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_Pane? get pane {
    return node.getAttribute(
              'pane',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Pane.fromValue(
            node.getAttribute(
              'pane',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get activeCell {
    return node.getAttribute(
      'activeCell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get activeCellId {
    return node.getAttribute(
              'activeCellId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'activeCellId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_PageBreak(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get manualBreakCount {
    return node.getAttribute(
              'manualBreakCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'manualBreakCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Break> get brk {
    return node
        .findElements(
          'brk',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Break.new);
  }
}
extension type S_CT_Break(_i1.XmlElement node) implements _i1.XmlElement {
  int? get id {
    return node.getAttribute(
              'id',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'id',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get min {
    return node.getAttribute(
              'min',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'min',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get max {
    return node.getAttribute(
              'max',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'max',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get man {
    return node.getAttribute(
              'man',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'man',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'man',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pt {
    return node.getAttribute(
              'pt',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pt',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pt',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_OutlinePr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get applyStyles {
    return node.getAttribute(
              'applyStyles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'applyStyles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'applyStyles',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get summaryBelow {
    return node.getAttribute(
              'summaryBelow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'summaryBelow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'summaryBelow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get summaryRight {
    return node.getAttribute(
              'summaryRight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'summaryRight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'summaryRight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showOutlineSymbols {
    return node.getAttribute(
              'showOutlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showOutlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showOutlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_PageSetUpPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get autoPageBreaks {
    return node.getAttribute(
              'autoPageBreaks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoPageBreaks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoPageBreaks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get fitToPage {
    return node.getAttribute(
              'fitToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fitToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fitToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_DataConsolidate(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_DataConsolidateFunction? get function_ {
    return node.getAttribute(
              'function',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_DataConsolidateFunction.fromValue(
            node.getAttribute(
              'function',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get startLabels {
    return node.getAttribute(
              'startLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'startLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'startLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get leftLabels {
    return node.getAttribute(
              'leftLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'leftLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'leftLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get topLabels {
    return node.getAttribute(
              'topLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'topLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'topLabels',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get link {
    return node.getAttribute(
              'link',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'link',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'link',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_DataRefs? get dataRefs {
    final e = node.getElement(
      'dataRefs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataRefs(e) : null;
  }
}
extension type S_CT_DataRefs(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_DataRef> get dataRef {
    return node
        .findElements(
          'dataRef',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DataRef.new);
  }
}
extension type S_CT_DataRef(_i1.XmlElement node) implements _i1.XmlElement {
  String? get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get sheet {
    return node.getAttribute(
      'sheet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_MergeCells(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_MergeCell> get mergeCell {
    return node
        .findElements(
          'mergeCell',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MergeCell.new);
  }
}
extension type S_CT_MergeCell(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_SmartTags(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_CellSmartTags> get cellSmartTags {
    return node
        .findElements(
          'cellSmartTags',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CellSmartTags.new);
  }
}
extension type S_CT_CellSmartTags(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  Iterable<S_CT_CellSmartTag> get cellSmartTag {
    return node
        .findElements(
          'cellSmartTag',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CellSmartTag.new);
  }
}
extension type S_CT_CellSmartTag(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get type {
    return int.parse(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get deleted {
    return node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get xmlBased {
    return node.getAttribute(
              'xmlBased',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'xmlBased',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'xmlBased',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_CellSmartTagPr> get cellSmartTagPr {
    return node
        .findElements(
          'cellSmartTagPr',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CellSmartTagPr.new);
  }
}
extension type S_CT_CellSmartTagPr(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get key {
    return node.getAttribute(
      'key',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_Drawing(_i1.XmlElement node) implements _i1.XmlElement {}
extension type S_CT_LegacyDrawing(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type S_CT_DrawingHF(_i1.XmlElement node) implements _i1.XmlElement {
  int? get lho {
    return node.getAttribute(
              'lho',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'lho',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get lhe {
    return node.getAttribute(
              'lhe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'lhe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get lhf {
    return node.getAttribute(
              'lhf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'lhf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get cho {
    return node.getAttribute(
              'cho',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cho',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get che {
    return node.getAttribute(
              'che',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'che',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get chf {
    return node.getAttribute(
              'chf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'chf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get rho {
    return node.getAttribute(
              'rho',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rho',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get rhe {
    return node.getAttribute(
              'rhe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rhe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get rhf {
    return node.getAttribute(
              'rhf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rhf',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get lfo {
    return node.getAttribute(
              'lfo',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'lfo',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get lfe {
    return node.getAttribute(
              'lfe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'lfe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get lff {
    return node.getAttribute(
              'lff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'lff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get cfo {
    return node.getAttribute(
              'cfo',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cfo',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get cfe {
    return node.getAttribute(
              'cfe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cfe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get cff {
    return node.getAttribute(
              'cff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get rfo {
    return node.getAttribute(
              'rfo',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rfo',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get rfe {
    return node.getAttribute(
              'rfe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rfe',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get rff {
    return node.getAttribute(
              'rff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rff',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_CustomSheetViews(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_CustomSheetView> get customSheetView {
    return node
        .findElements(
          'customSheetView',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CustomSheetView.new);
  }
}
extension type S_CT_CustomSheetView(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int? get scale {
    return node.getAttribute(
              'scale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'scale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get colorId {
    return node.getAttribute(
              'colorId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'colorId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showPageBreaks {
    return node.getAttribute(
              'showPageBreaks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showPageBreaks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showPageBreaks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showFormulas {
    return node.getAttribute(
              'showFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showGridLines {
    return node.getAttribute(
              'showGridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showGridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showGridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showRowCol {
    return node.getAttribute(
              'showRowCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showRowCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showRowCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get outlineSymbols {
    return node.getAttribute(
              'outlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'outlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'outlineSymbols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get zeroValues {
    return node.getAttribute(
              'zeroValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'zeroValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'zeroValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get fitToPage {
    return node.getAttribute(
              'fitToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fitToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fitToPage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get printArea {
    return node.getAttribute(
              'printArea',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'printArea',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'printArea',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get filter {
    return node.getAttribute(
              'filter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'filter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'filter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showAutoFilter {
    return node.getAttribute(
              'showAutoFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showAutoFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showAutoFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hiddenRows {
    return node.getAttribute(
              'hiddenRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hiddenRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hiddenRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hiddenColumns {
    return node.getAttribute(
              'hiddenColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hiddenColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hiddenColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_SheetState? get state {
    return node.getAttribute(
              'state',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SheetState.fromValue(
            node.getAttribute(
              'state',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get filterUnique {
    return node.getAttribute(
              'filterUnique',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'filterUnique',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'filterUnique',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_SheetViewType? get view {
    return node.getAttribute(
              'view',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SheetViewType.fromValue(
            node.getAttribute(
              'view',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showRuler {
    return node.getAttribute(
              'showRuler',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showRuler',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showRuler',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get topLeftCell {
    return node.getAttribute(
      'topLeftCell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_Pane? get pane {
    final e = node.getElement(
      'pane',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Pane(e) : null;
  }

  S_CT_Selection? get selection {
    final e = node.getElement(
      'selection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Selection(e) : null;
  }

  S_CT_PageBreak? get rowBreaks {
    final e = node.getElement(
      'rowBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageBreak(e) : null;
  }

  S_CT_PageBreak? get colBreaks {
    final e = node.getElement(
      'colBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageBreak(e) : null;
  }

  S_CT_PageMargins? get pageMargins {
    final e = node.getElement(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageMargins(e) : null;
  }

  S_CT_PrintOptions? get printOptions {
    final e = node.getElement(
      'printOptions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PrintOptions(e) : null;
  }

  S_CT_PageSetup? get pageSetup {
    final e = node.getElement(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageSetup(e) : null;
  }

  S_CT_HeaderFooter? get headerFooter {
    final e = node.getElement(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_HeaderFooter(e) : null;
  }

  S_CT_AutoFilter? get autoFilter {
    final e = node.getElement(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_AutoFilter(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_DataValidations(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get disablePrompts {
    return node.getAttribute(
              'disablePrompts',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'disablePrompts',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'disablePrompts',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get xWindow {
    return node.getAttribute(
              'xWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'xWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get yWindow {
    return node.getAttribute(
              'yWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'yWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_DataValidation> get dataValidation {
    return node
        .findElements(
          'dataValidation',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DataValidation.new);
  }
}
extension type S_CT_DataValidation(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_DataValidationType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_DataValidationType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_DataValidationErrorStyle? get errorStyle {
    return node.getAttribute(
              'errorStyle',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_DataValidationErrorStyle.fromValue(
            node.getAttribute(
              'errorStyle',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_DataValidationImeMode? get imeMode {
    return node.getAttribute(
              'imeMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_DataValidationImeMode.fromValue(
            node.getAttribute(
              'imeMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_DataValidationOperator? get operator_ {
    return node.getAttribute(
              'operator',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_DataValidationOperator.fromValue(
            node.getAttribute(
              'operator',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get allowBlank {
    return node.getAttribute(
              'allowBlank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'allowBlank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'allowBlank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showDropDown {
    return node.getAttribute(
              'showDropDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showDropDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showDropDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showInputMessage {
    return node.getAttribute(
              'showInputMessage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showInputMessage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showInputMessage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showErrorMessage {
    return node.getAttribute(
              'showErrorMessage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showErrorMessage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showErrorMessage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get errorTitle {
    return node.getAttribute(
      'errorTitle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get error {
    return node.getAttribute(
      'error',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get promptTitle {
    return node.getAttribute(
      'promptTitle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get prompt {
    return node.getAttribute(
      'prompt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get formula1 {
    final e = node.getElement(
      'formula1',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  String? get formula2 {
    final e = node.getElement(
      'formula2',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }
}
extension type S_CT_ConditionalFormatting(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get pivot {
    return node.getAttribute(
              'pivot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pivot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pivot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_CfRule> get cfRule {
    return node
        .findElements(
          'cfRule',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CfRule.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_CfRule(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_CfType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_CfType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get dxfId {
    return node.getAttribute(
      'dxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int get priority {
    return int.parse(
      node.getAttribute(
        'priority',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get stopIfTrue {
    return node.getAttribute(
              'stopIfTrue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'stopIfTrue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'stopIfTrue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get aboveAverage {
    return node.getAttribute(
              'aboveAverage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'aboveAverage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'aboveAverage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get percent {
    return node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get bottom {
    return node.getAttribute(
              'bottom',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'bottom',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'bottom',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_ConditionalFormattingOperator? get operator_ {
    return node.getAttribute(
              'operator',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_ConditionalFormattingOperator.fromValue(
            node.getAttribute(
              'operator',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get text {
    return node.getAttribute(
      'text',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_TimePeriod? get timePeriod {
    return node.getAttribute(
              'timePeriod',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_TimePeriod.fromValue(
            node.getAttribute(
              'timePeriod',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get rank {
    return node.getAttribute(
              'rank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rank',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get stdDev {
    return node.getAttribute(
              'stdDev',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'stdDev',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get equalAverage {
    return node.getAttribute(
              'equalAverage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'equalAverage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'equalAverage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<String> get formula {
    return node
        .findElements(
          'formula',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map((e) => e.innerText);
  }

  S_CT_ColorScale? get colorScale {
    final e = node.getElement(
      'colorScale',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ColorScale(e) : null;
  }

  S_CT_DataBar? get dataBar {
    final e = node.getElement(
      'dataBar',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataBar(e) : null;
  }

  S_CT_IconSet? get iconSet {
    final e = node.getElement(
      'iconSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_IconSet(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Hyperlinks(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Hyperlink> get hyperlink {
    return node
        .findElements(
          'hyperlink',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Hyperlink.new);
  }
}
extension type S_CT_Hyperlink(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get location {
    return node.getAttribute(
      'location',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get tooltip {
    return node.getAttribute(
      'tooltip',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get display {
    return node.getAttribute(
      'display',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_CellFormula(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_CellFormulaType? get t {
    return node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_CellFormulaType.fromValue(
            node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get aca {
    return node.getAttribute(
              'aca',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'aca',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'aca',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get dt2D {
    return node.getAttribute(
              'dt2D',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dt2D',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dt2D',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dtr {
    return node.getAttribute(
              'dtr',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dtr',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dtr',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get del1 {
    return node.getAttribute(
              'del1',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'del1',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'del1',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get del2 {
    return node.getAttribute(
              'del2',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'del2',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'del2',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get r1 {
    return node.getAttribute(
      'r1',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get r2 {
    return node.getAttribute(
      'r2',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get ca {
    return node.getAttribute(
              'ca',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ca',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ca',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get si {
    return node.getAttribute(
              'si',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'si',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get bx {
    return node.getAttribute(
              'bx',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'bx',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'bx',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_ColorScale(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Cfvo> get cfvo {
    return node
        .findElements(
          'cfvo',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Cfvo.new);
  }

  Iterable<S_CT_Color> get color {
    return node
        .findElements(
          'color',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Color.new);
  }
}
extension type S_CT_DataBar(_i1.XmlElement node) implements _i1.XmlElement {
  int? get minLength {
    return node.getAttribute(
              'minLength',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'minLength',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get maxLength {
    return node.getAttribute(
              'maxLength',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'maxLength',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showValue {
    return node.getAttribute(
              'showValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Cfvo> get cfvo {
    return node
        .findElements(
          'cfvo',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Cfvo.new);
  }

  S_CT_Color? get color {
    final e = node.getElement(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }
}
extension type S_CT_IconSet(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_IconSetType? get iconSet {
    return node.getAttribute(
              'iconSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_IconSetType.fromValue(
            node.getAttribute(
              'iconSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showValue {
    return node.getAttribute(
              'showValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showValue',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get percent {
    return node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'percent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get reverse {
    return node.getAttribute(
              'reverse',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'reverse',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'reverse',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_Cfvo> get cfvo {
    return node
        .findElements(
          'cfvo',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Cfvo.new);
  }
}
extension type S_CT_Cfvo(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_CfvoType get type {
    return S_ST_CfvoType.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get gte {
    return node.getAttribute(
              'gte',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'gte',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'gte',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_PageMargins(_i1.XmlElement node) implements _i1.XmlElement {
  double get left {
    return double.parse(
      node.getAttribute(
        'left',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  double get right {
    return double.parse(
      node.getAttribute(
        'right',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  double get top {
    return double.parse(
      node.getAttribute(
        'top',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  double get bottom {
    return double.parse(
      node.getAttribute(
        'bottom',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  double get header {
    return double.parse(
      node.getAttribute(
        'header',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  double get footer {
    return double.parse(
      node.getAttribute(
        'footer',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_PrintOptions(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get horizontalCentered {
    return node.getAttribute(
              'horizontalCentered',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'horizontalCentered',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'horizontalCentered',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get verticalCentered {
    return node.getAttribute(
              'verticalCentered',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'verticalCentered',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'verticalCentered',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get headings {
    return node.getAttribute(
              'headings',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'headings',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'headings',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get gridLines {
    return node.getAttribute(
              'gridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'gridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'gridLines',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get gridLinesSet {
    return node.getAttribute(
              'gridLinesSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'gridLinesSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'gridLinesSet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_PageSetup(_i1.XmlElement node) implements _i1.XmlElement {
  int? get paperSize {
    return node.getAttribute(
              'paperSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'paperSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get paperHeight {
    return node.getAttribute(
      'paperHeight',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get paperWidth {
    return node.getAttribute(
      'paperWidth',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get scale {
    return node.getAttribute(
              'scale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'scale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get firstPageNumber {
    return node.getAttribute(
              'firstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'firstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get fitToWidth {
    return node.getAttribute(
              'fitToWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'fitToWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get fitToHeight {
    return node.getAttribute(
              'fitToHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'fitToHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_PageOrder? get pageOrder {
    return node.getAttribute(
              'pageOrder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_PageOrder.fromValue(
            node.getAttribute(
              'pageOrder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_Orientation? get orientation {
    return node.getAttribute(
              'orientation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Orientation.fromValue(
            node.getAttribute(
              'orientation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get usePrinterDefaults {
    return node.getAttribute(
              'usePrinterDefaults',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'usePrinterDefaults',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'usePrinterDefaults',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get blackAndWhite {
    return node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get draft {
    return node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_CellComments? get cellComments {
    return node.getAttribute(
              'cellComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_CellComments.fromValue(
            node.getAttribute(
              'cellComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get useFirstPageNumber {
    return node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_PrintError? get errors {
    return node.getAttribute(
              'errors',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_PrintError.fromValue(
            node.getAttribute(
              'errors',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get horizontalDpi {
    return node.getAttribute(
              'horizontalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'horizontalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get verticalDpi {
    return node.getAttribute(
              'verticalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'verticalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get copies {
    return node.getAttribute(
              'copies',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'copies',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_HeaderFooter(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get differentOddEven {
    return node.getAttribute(
              'differentOddEven',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'differentOddEven',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'differentOddEven',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get differentFirst {
    return node.getAttribute(
              'differentFirst',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'differentFirst',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'differentFirst',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get scaleWithDoc {
    return node.getAttribute(
              'scaleWithDoc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'scaleWithDoc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'scaleWithDoc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get alignWithMargins {
    return node.getAttribute(
              'alignWithMargins',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'alignWithMargins',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'alignWithMargins',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get oddHeader {
    final e = node.getElement(
      'oddHeader',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  String? get oddFooter {
    final e = node.getElement(
      'oddFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  String? get evenHeader {
    final e = node.getElement(
      'evenHeader',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  String? get evenFooter {
    final e = node.getElement(
      'evenFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  String? get firstHeader {
    final e = node.getElement(
      'firstHeader',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  String? get firstFooter {
    final e = node.getElement(
      'firstFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }
}
extension type S_CT_Scenarios(_i1.XmlElement node) implements _i1.XmlElement {
  int? get current {
    return node.getAttribute(
              'current',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'current',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get show_ {
    return node.getAttribute(
              'show',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'show',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Scenario> get scenario {
    return node
        .findElements(
          'scenario',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Scenario.new);
  }
}
extension type S_CT_SheetProtection(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get password {
    return node.getAttribute(
      'password',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get algorithmName {
    return node.getAttribute(
      'algorithmName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get hashValue {
    return node.getAttribute(
      'hashValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get saltValue {
    return node.getAttribute(
      'saltValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get spinCount {
    return node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get sheet {
    return node.getAttribute(
              'sheet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sheet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sheet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get objects {
    return node.getAttribute(
              'objects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'objects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'objects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get scenarios {
    return node.getAttribute(
              'scenarios',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'scenarios',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'scenarios',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get formatCells {
    return node.getAttribute(
              'formatCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'formatCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'formatCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get formatColumns {
    return node.getAttribute(
              'formatColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'formatColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'formatColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get formatRows {
    return node.getAttribute(
              'formatRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'formatRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'formatRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get insertColumns {
    return node.getAttribute(
              'insertColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'insertColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'insertColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get insertRows {
    return node.getAttribute(
              'insertRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'insertRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'insertRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get insertHyperlinks {
    return node.getAttribute(
              'insertHyperlinks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'insertHyperlinks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'insertHyperlinks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get deleteColumns {
    return node.getAttribute(
              'deleteColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'deleteColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'deleteColumns',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get deleteRows {
    return node.getAttribute(
              'deleteRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'deleteRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'deleteRows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get selectLockedCells {
    return node.getAttribute(
              'selectLockedCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'selectLockedCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'selectLockedCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get sort {
    return node.getAttribute(
              'sort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sort',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoFilter {
    return node.getAttribute(
              'autoFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pivotTables {
    return node.getAttribute(
              'pivotTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pivotTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pivotTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get selectUnlockedCells {
    return node.getAttribute(
              'selectUnlockedCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'selectUnlockedCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'selectUnlockedCells',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_ProtectedRanges(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_ProtectedRange> get protectedRange {
    return node
        .findElements(
          'protectedRange',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ProtectedRange.new);
  }
}
extension type S_CT_ProtectedRange(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get password {
    return node.getAttribute(
      'password',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get securityDescriptor {
    return node.getAttribute(
      'securityDescriptor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get algorithmName {
    return node.getAttribute(
      'algorithmName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get hashValue {
    return node.getAttribute(
      'hashValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get saltValue {
    return node.getAttribute(
      'saltValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get spinCount {
    return node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_Scenario(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get locked {
    return node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get user {
    return node.getAttribute(
      'user',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get comment {
    return node.getAttribute(
      'comment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  Iterable<S_CT_InputCells> get inputCells {
    return node
        .findElements(
          'inputCells',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_InputCells.new);
  }
}
extension type S_CT_InputCells(_i1.XmlElement node) implements _i1.XmlElement {
  String get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get deleted {
    return node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'deleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get undone {
    return node.getAttribute(
              'undone',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'undone',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'undone',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get numFmtId {
    return node.getAttribute(
      'numFmtId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_CellWatches(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_CellWatch> get cellWatch {
    return node
        .findElements(
          'cellWatch',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CellWatch.new);
  }
}
extension type S_CT_CellWatch(_i1.XmlElement node) implements _i1.XmlElement {
  String get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_Chartsheet(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_ChartsheetPr? get sheetPr {
    final e = node.getElement(
      'sheetPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ChartsheetPr(e) : null;
  }

  S_CT_ChartsheetViews? get sheetViews {
    final e = node.getElement(
      'sheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ChartsheetViews(e) : null;
  }

  S_CT_ChartsheetProtection? get sheetProtection {
    final e = node.getElement(
      'sheetProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ChartsheetProtection(e) : null;
  }

  S_CT_CustomChartsheetViews? get customSheetViews {
    final e = node.getElement(
      'customSheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CustomChartsheetViews(e) : null;
  }

  S_CT_PageMargins? get pageMargins {
    final e = node.getElement(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageMargins(e) : null;
  }

  S_CT_CsPageSetup? get pageSetup {
    final e = node.getElement(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CsPageSetup(e) : null;
  }

  S_CT_HeaderFooter? get headerFooter {
    final e = node.getElement(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_HeaderFooter(e) : null;
  }

  S_CT_Drawing? get drawing {
    final e = node.getElement(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Drawing(e) : null;
  }

  S_CT_LegacyDrawing? get legacyDrawing {
    final e = node.getElement(
      'legacyDrawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_LegacyDrawing(e) : null;
  }

  S_CT_LegacyDrawing? get legacyDrawingHF {
    final e = node.getElement(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_LegacyDrawing(e) : null;
  }

  S_CT_DrawingHF? get drawingHF {
    final e = node.getElement(
      'drawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DrawingHF(e) : null;
  }

  S_CT_SheetBackgroundPicture? get picture {
    final e = node.getElement(
      'picture',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SheetBackgroundPicture(e) : null;
  }

  S_CT_WebPublishItems? get webPublishItems {
    final e = node.getElement(
      'webPublishItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_WebPublishItems(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_ChartsheetPr(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get published {
    return node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get codeName {
    return node.getAttribute(
      'codeName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_Color? get tabColor {
    final e = node.getElement(
      'tabColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }
}
extension type S_CT_ChartsheetViews(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_ChartsheetView> get sheetView {
    return node
        .findElements(
          'sheetView',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ChartsheetView.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_ChartsheetView(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get tabSelected {
    return node.getAttribute(
              'tabSelected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'tabSelected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'tabSelected',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get zoomScale {
    return node.getAttribute(
              'zoomScale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'zoomScale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get workbookViewId {
    return int.parse(
      node.getAttribute(
        'workbookViewId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get zoomToFit {
    return node.getAttribute(
              'zoomToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'zoomToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'zoomToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_ChartsheetProtection(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get password {
    return node.getAttribute(
      'password',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get algorithmName {
    return node.getAttribute(
      'algorithmName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get hashValue {
    return node.getAttribute(
      'hashValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get saltValue {
    return node.getAttribute(
      'saltValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get spinCount {
    return node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get content {
    return node.getAttribute(
              'content',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'content',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'content',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get objects {
    return node.getAttribute(
              'objects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'objects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'objects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_CsPageSetup(_i1.XmlElement node) implements _i1.XmlElement {
  int? get paperSize {
    return node.getAttribute(
              'paperSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'paperSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get paperHeight {
    return node.getAttribute(
      'paperHeight',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get paperWidth {
    return node.getAttribute(
      'paperWidth',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get firstPageNumber {
    return node.getAttribute(
              'firstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'firstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_Orientation? get orientation {
    return node.getAttribute(
              'orientation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Orientation.fromValue(
            node.getAttribute(
              'orientation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get usePrinterDefaults {
    return node.getAttribute(
              'usePrinterDefaults',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'usePrinterDefaults',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'usePrinterDefaults',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get blackAndWhite {
    return node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'blackAndWhite',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get draft {
    return node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'draft',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get useFirstPageNumber {
    return node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'useFirstPageNumber',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get horizontalDpi {
    return node.getAttribute(
              'horizontalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'horizontalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get verticalDpi {
    return node.getAttribute(
              'verticalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'verticalDpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get copies {
    return node.getAttribute(
              'copies',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'copies',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_CustomChartsheetViews(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_CustomChartsheetView> get customSheetView {
    return node
        .findElements(
          'customSheetView',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CustomChartsheetView.new);
  }
}
extension type S_CT_CustomChartsheetView(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int? get scale {
    return node.getAttribute(
              'scale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'scale',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_SheetState? get state {
    return node.getAttribute(
              'state',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SheetState.fromValue(
            node.getAttribute(
              'state',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get zoomToFit {
    return node.getAttribute(
              'zoomToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'zoomToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'zoomToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_PageMargins? get pageMargins {
    final e = node.getElement(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PageMargins(e) : null;
  }

  S_CT_CsPageSetup? get pageSetup {
    final e = node.getElement(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CsPageSetup(e) : null;
  }

  S_CT_HeaderFooter? get headerFooter {
    final e = node.getElement(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_HeaderFooter(e) : null;
  }
}
extension type S_CT_CustomProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_CustomProperty> get customPr {
    return node
        .findElements(
          'customPr',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CustomProperty.new);
  }
}
extension type S_CT_CustomProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_OleObjects(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_OleObject> get oleObject {
    return node
        .findElements(
          'oleObject',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_OleObject.new);
  }
}
extension type S_CT_OleObject(_i1.XmlElement node) implements _i1.XmlElement {
  String? get progId {
    return node.getAttribute(
      'progId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_DvAspect? get dvAspect {
    return node.getAttribute(
              'dvAspect',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_DvAspect.fromValue(
            node.getAttribute(
              'dvAspect',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get link {
    return node.getAttribute(
      'link',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_OleUpdate? get oleUpdate {
    return node.getAttribute(
              'oleUpdate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_OleUpdate.fromValue(
            node.getAttribute(
              'oleUpdate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get autoLoad {
    return node.getAttribute(
              'autoLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int get shapeId {
    return int.parse(
      node.getAttribute(
        'shapeId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_CT_ObjectPr? get objectPr {
    final e = node.getElement(
      'objectPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ObjectPr(e) : null;
  }
}
extension type S_CT_ObjectPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get locked {
    return node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get defaultSize {
    return node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get print {
    return node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get disabled {
    return node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get uiObject {
    return node.getAttribute(
              'uiObject',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'uiObject',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'uiObject',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoFill {
    return node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoLine {
    return node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoPict {
    return node.getAttribute(
              'autoPict',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoPict',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoPict',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get macro {
    return node.getAttribute(
      'macro',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get altText {
    return node.getAttribute(
      'altText',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get dde {
    return node.getAttribute(
              'dde',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dde',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dde',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_ObjectAnchor? get anchor {
    final e = node.getElement(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ObjectAnchor(e) : null;
  }
}
extension type S_CT_WebPublishItems(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_WebPublishItem> get webPublishItem {
    return node
        .findElements(
          'webPublishItem',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_WebPublishItem.new);
  }
}
extension type S_CT_WebPublishItem(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get divId {
    return node.getAttribute(
      'divId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_ST_WebSourceType get sourceType {
    return S_ST_WebSourceType.fromValue(
      node.getAttribute(
        'sourceType',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  String? get sourceRef {
    return node.getAttribute(
      'sourceRef',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get sourceObject {
    return node.getAttribute(
      'sourceObject',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String get destinationFile {
    return node.getAttribute(
      'destinationFile',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get title {
    return node.getAttribute(
      'title',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get autoRepublish {
    return node.getAttribute(
              'autoRepublish',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoRepublish',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoRepublish',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_Controls(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Control> get control {
    return node
        .findElements(
          'control',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Control.new);
  }
}
extension type S_CT_Control(_i1.XmlElement node) implements _i1.XmlElement {
  int get shapeId {
    return int.parse(
      node.getAttribute(
        'shapeId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_ControlPr? get controlPr {
    final e = node.getElement(
      'controlPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ControlPr(e) : null;
  }
}
extension type S_CT_ControlPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get locked {
    return node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get defaultSize {
    return node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'defaultSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get print {
    return node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'print',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get disabled {
    return node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'disabled',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get recalcAlways {
    return node.getAttribute(
              'recalcAlways',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'recalcAlways',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'recalcAlways',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get uiObject {
    return node.getAttribute(
              'uiObject',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'uiObject',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'uiObject',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoFill {
    return node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoLine {
    return node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoPict {
    return node.getAttribute(
              'autoPict',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoPict',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoPict',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get macro {
    return node.getAttribute(
      'macro',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get altText {
    return node.getAttribute(
      'altText',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get linkedCell {
    return node.getAttribute(
      'linkedCell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get listFillRange {
    return node.getAttribute(
      'listFillRange',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get cf {
    return node.getAttribute(
      'cf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_ObjectAnchor? get anchor {
    final e = node.getElement(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ObjectAnchor(e) : null;
  }
}
extension type S_CT_IgnoredErrors(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_IgnoredError> get ignoredError {
    return node
        .findElements(
          'ignoredError',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_IgnoredError.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_IgnoredError(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get evalError {
    return node.getAttribute(
              'evalError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'evalError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'evalError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get twoDigitTextYear {
    return node.getAttribute(
              'twoDigitTextYear',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'twoDigitTextYear',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'twoDigitTextYear',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get numberStoredAsText {
    return node.getAttribute(
              'numberStoredAsText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'numberStoredAsText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'numberStoredAsText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get formula {
    return node.getAttribute(
              'formula',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'formula',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'formula',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get formulaRange {
    return node.getAttribute(
              'formulaRange',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'formulaRange',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'formulaRange',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get unlockedFormula {
    return node.getAttribute(
              'unlockedFormula',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'unlockedFormula',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'unlockedFormula',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get emptyCellReference {
    return node.getAttribute(
              'emptyCellReference',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'emptyCellReference',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'emptyCellReference',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get listDataValidation {
    return node.getAttribute(
              'listDataValidation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'listDataValidation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'listDataValidation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get calculatedColumn {
    return node.getAttribute(
              'calculatedColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'calculatedColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'calculatedColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_TableParts(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_TablePart> get tablePart {
    return node
        .findElements(
          'tablePart',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_TablePart.new);
  }
}
extension type S_CT_TablePart(_i1.XmlElement node) implements _i1.XmlElement {}
extension type S_CT_Metadata(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_MetadataTypes? get metadataTypes {
    final e = node.getElement(
      'metadataTypes',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MetadataTypes(e) : null;
  }

  S_CT_MetadataStrings? get metadataStrings {
    final e = node.getElement(
      'metadataStrings',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MetadataStrings(e) : null;
  }

  S_CT_MdxMetadata? get mdxMetadata {
    final e = node.getElement(
      'mdxMetadata',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MdxMetadata(e) : null;
  }

  Iterable<S_CT_FutureMetadata> get futureMetadata {
    return node
        .findElements(
          'futureMetadata',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FutureMetadata.new);
  }

  S_CT_MetadataBlocks? get cellMetadata {
    final e = node.getElement(
      'cellMetadata',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MetadataBlocks(e) : null;
  }

  S_CT_MetadataBlocks? get valueMetadata {
    final e = node.getElement(
      'valueMetadata',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MetadataBlocks(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_MetadataTypes(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_MetadataType> get metadataType {
    return node
        .findElements(
          'metadataType',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MetadataType.new);
  }
}
extension type S_CT_MetadataType(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get minSupportedVersion {
    return int.parse(
      node.getAttribute(
        'minSupportedVersion',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get ghostRow {
    return node.getAttribute(
              'ghostRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ghostRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ghostRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get ghostCol {
    return node.getAttribute(
              'ghostCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ghostCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ghostCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get edit {
    return node.getAttribute(
              'edit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'edit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'edit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get delete {
    return node.getAttribute(
              'delete',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'delete',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'delete',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get copy {
    return node.getAttribute(
              'copy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'copy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'copy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteAll {
    return node.getAttribute(
              'pasteAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteFormulas {
    return node.getAttribute(
              'pasteFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteFormulas',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteValues {
    return node.getAttribute(
              'pasteValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteFormats {
    return node.getAttribute(
              'pasteFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteComments {
    return node.getAttribute(
              'pasteComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteDataValidation {
    return node.getAttribute(
              'pasteDataValidation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteDataValidation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteDataValidation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteBorders {
    return node.getAttribute(
              'pasteBorders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteBorders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteBorders',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteColWidths {
    return node.getAttribute(
              'pasteColWidths',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteColWidths',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteColWidths',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pasteNumberFormats {
    return node.getAttribute(
              'pasteNumberFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pasteNumberFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pasteNumberFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get merge {
    return node.getAttribute(
              'merge',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'merge',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'merge',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get splitFirst {
    return node.getAttribute(
              'splitFirst',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'splitFirst',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'splitFirst',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get splitAll {
    return node.getAttribute(
              'splitAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'splitAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'splitAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get rowColShift {
    return node.getAttribute(
              'rowColShift',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rowColShift',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rowColShift',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get clearAll {
    return node.getAttribute(
              'clearAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'clearAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'clearAll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get clearFormats {
    return node.getAttribute(
              'clearFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'clearFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'clearFormats',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get clearContents {
    return node.getAttribute(
              'clearContents',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'clearContents',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'clearContents',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get clearComments {
    return node.getAttribute(
              'clearComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'clearComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'clearComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get assign {
    return node.getAttribute(
              'assign',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'assign',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'assign',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get coerce {
    return node.getAttribute(
              'coerce',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'coerce',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'coerce',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get adjust {
    return node.getAttribute(
              'adjust',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'adjust',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'adjust',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get cellMeta {
    return node.getAttribute(
              'cellMeta',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'cellMeta',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'cellMeta',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_MetadataBlocks(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_MetadataBlock> get bk {
    return node
        .findElements(
          'bk',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MetadataBlock.new);
  }
}
extension type S_CT_MetadataBlock(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_MetadataRecord> get rc {
    return node
        .findElements(
          'rc',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MetadataRecord.new);
  }
}
extension type S_CT_MetadataRecord(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get t {
    return int.parse(
      node.getAttribute(
        't',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get v {
    return int.parse(
      node.getAttribute(
        'v',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_FutureMetadata(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_FutureMetadataBlock> get bk {
    return node
        .findElements(
          'bk',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FutureMetadataBlock.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_FutureMetadataBlock(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_MdxMetadata(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Mdx> get mdx {
    return node
        .findElements(
          'mdx',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Mdx.new);
  }
}
extension type S_CT_Mdx(_i1.XmlElement node) implements _i1.XmlElement {
  int get n {
    return int.parse(
      node.getAttribute(
        'n',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_ST_MdxFunctionType get f {
    return S_ST_MdxFunctionType.fromValue(
      node.getAttribute(
        'f',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  S_CT_MdxTuple? get t {
    final e = node.getElement(
      't',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MdxTuple(e) : null;
  }

  S_CT_MdxSet? get ms {
    final e = node.getElement(
      'ms',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MdxSet(e) : null;
  }

  S_CT_MdxMemeberProp? get p {
    final e = node.getElement(
      'p',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MdxMemeberProp(e) : null;
  }

  S_CT_MdxKPI? get k {
    final e = node.getElement(
      'k',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MdxKPI(e) : null;
  }
}
extension type S_CT_MdxTuple(_i1.XmlElement node) implements _i1.XmlElement {
  int? get c {
    return node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get ct {
    return node.getAttribute(
      'ct',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get si {
    return node.getAttribute(
              'si',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'si',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get fi {
    return node.getAttribute(
              'fi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'fi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get bc {
    return node.getAttribute(
      'bc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get fc {
    return node.getAttribute(
      'fc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get i {
    return node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'i',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get u {
    return node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'u',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get st {
    return node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'st',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get b {
    return node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'b',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_MetadataStringIndex> get n {
    return node
        .findElements(
          'n',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MetadataStringIndex.new);
  }
}
extension type S_CT_MdxSet(_i1.XmlElement node) implements _i1.XmlElement {
  int get ns {
    return int.parse(
      node.getAttribute(
        'ns',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int? get c {
    return node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'c',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_MdxSetOrder? get o {
    return node.getAttribute(
              'o',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_MdxSetOrder.fromValue(
            node.getAttribute(
              'o',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_MetadataStringIndex> get n {
    return node
        .findElements(
          'n',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_MetadataStringIndex.new);
  }
}
extension type S_CT_MdxMemeberProp(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get n {
    return int.parse(
      node.getAttribute(
        'n',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get np {
    return int.parse(
      node.getAttribute(
        'np',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_MdxKPI(_i1.XmlElement node) implements _i1.XmlElement {
  int get n {
    return int.parse(
      node.getAttribute(
        'n',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get np {
    return int.parse(
      node.getAttribute(
        'np',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_ST_MdxKPIProperty get p {
    return S_ST_MdxKPIProperty.fromValue(
      node.getAttribute(
        'p',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }
}
extension type S_CT_MetadataStringIndex(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get x {
    return int.parse(
      node.getAttribute(
        'x',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get s {
    return node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              's',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_MetadataStrings(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_XStringElement> get s {
    return node
        .findElements(
          's',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_XStringElement.new);
  }
}
extension type S_CT_SingleXmlCells(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_SingleXmlCell> get singleXmlCell {
    return node
        .findElements(
          'singleXmlCell',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_SingleXmlCell.new);
  }
}
extension type S_CT_SingleXmlCell(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get connectionId {
    return int.parse(
      node.getAttribute(
        'connectionId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_CT_XmlCellPr? get xmlCellPr {
    final e = node.getElement(
      'xmlCellPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_XmlCellPr(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_XmlCellPr(_i1.XmlElement node) implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String? get uniqueName {
    return node.getAttribute(
      'uniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_XmlPr? get xmlPr {
    final e = node.getElement(
      'xmlPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_XmlPr(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_XmlPr(_i1.XmlElement node) implements _i1.XmlElement {
  int get mapId {
    return int.parse(
      node.getAttribute(
        'mapId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get xpath {
    return node.getAttribute(
      'xpath',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get xmlDataType {
    return node.getAttribute(
      'xmlDataType',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Stylesheet(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_NumFmts? get numFmts {
    final e = node.getElement(
      'numFmts',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_NumFmts(e) : null;
  }

  S_CT_Fonts? get fonts {
    final e = node.getElement(
      'fonts',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Fonts(e) : null;
  }

  S_CT_Fills? get fills {
    final e = node.getElement(
      'fills',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Fills(e) : null;
  }

  S_CT_Borders? get borders {
    final e = node.getElement(
      'borders',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Borders(e) : null;
  }

  S_CT_CellStyleXfs? get cellStyleXfs {
    final e = node.getElement(
      'cellStyleXfs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellStyleXfs(e) : null;
  }

  S_CT_CellXfs? get cellXfs {
    final e = node.getElement(
      'cellXfs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellXfs(e) : null;
  }

  S_CT_CellStyles? get cellStyles {
    final e = node.getElement(
      'cellStyles',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellStyles(e) : null;
  }

  S_CT_Dxfs? get dxfs {
    final e = node.getElement(
      'dxfs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Dxfs(e) : null;
  }

  S_CT_TableStyles? get tableStyles {
    final e = node.getElement(
      'tableStyles',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TableStyles(e) : null;
  }

  S_CT_Colors? get colors {
    final e = node.getElement(
      'colors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Colors(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_CellAlignment(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_HorizontalAlignment? get horizontal {
    return node.getAttribute(
              'horizontal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_HorizontalAlignment.fromValue(
            node.getAttribute(
              'horizontal',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_VerticalAlignment? get vertical {
    return node.getAttribute(
              'vertical',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_VerticalAlignment.fromValue(
            node.getAttribute(
              'vertical',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get textRotation {
    return node.getAttribute(
      'textRotation',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get wrapText {
    return node.getAttribute(
              'wrapText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'wrapText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'wrapText',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get indent {
    return node.getAttribute(
              'indent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'indent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get relativeIndent {
    return node.getAttribute(
              'relativeIndent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'relativeIndent',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get justifyLastLine {
    return node.getAttribute(
              'justifyLastLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'justifyLastLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'justifyLastLine',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get shrinkToFit {
    return node.getAttribute(
              'shrinkToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'shrinkToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'shrinkToFit',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get readingOrder {
    return node.getAttribute(
              'readingOrder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'readingOrder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_Borders(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Border> get border {
    return node
        .findElements(
          'border',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Border.new);
  }
}
extension type S_CT_Border(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get diagonalUp {
    return node.getAttribute(
              'diagonalUp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'diagonalUp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'diagonalUp',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get diagonalDown {
    return node.getAttribute(
              'diagonalDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'diagonalDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'diagonalDown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get outline {
    return node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'outline',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_BorderPr? get start {
    final e = node.getElement(
      'start',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }

  S_CT_BorderPr? get end {
    final e = node.getElement(
      'end',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }

  S_CT_BorderPr? get left {
    final e = node.getElement(
      'left',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }

  S_CT_BorderPr? get right {
    final e = node.getElement(
      'right',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }

  S_CT_BorderPr? get top {
    final e = node.getElement(
      'top',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }

  S_CT_BorderPr? get bottom {
    final e = node.getElement(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }

  S_CT_BorderPr? get diagonal {
    final e = node.getElement(
      'diagonal',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }

  S_CT_BorderPr? get vertical {
    final e = node.getElement(
      'vertical',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }

  S_CT_BorderPr? get horizontal {
    final e = node.getElement(
      'horizontal',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BorderPr(e) : null;
  }
}
extension type S_CT_BorderPr(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_BorderStyle? get style {
    return node.getAttribute(
              'style',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_BorderStyle.fromValue(
            node.getAttribute(
              'style',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_Color? get color {
    final e = node.getElement(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }
}
extension type S_CT_CellProtection(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get locked {
    return node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'locked',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_Fonts(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Font> get font {
    return node
        .findElements(
          'font',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Font.new);
  }
}
extension type S_CT_Fills(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Fill> get fill {
    return node
        .findElements(
          'fill',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Fill.new);
  }
}
extension type S_CT_Fill(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_PatternFill? get patternFill {
    final e = node.getElement(
      'patternFill',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PatternFill(e) : null;
  }

  S_CT_GradientFill? get gradientFill {
    final e = node.getElement(
      'gradientFill',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_GradientFill(e) : null;
  }
}
extension type S_CT_PatternFill(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_PatternType? get patternType {
    return node.getAttribute(
              'patternType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_PatternType.fromValue(
            node.getAttribute(
              'patternType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_Color? get fgColor {
    final e = node.getElement(
      'fgColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }

  S_CT_Color? get bgColor {
    final e = node.getElement(
      'bgColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }
}
extension type S_CT_Color(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get auto {
    return node.getAttribute(
              'auto',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'auto',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'auto',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get indexed {
    return node.getAttribute(
              'indexed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'indexed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get rgb {
    return node.getAttribute(
      'rgb',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get theme {
    return node.getAttribute(
              'theme',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'theme',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get tint {
    return node.getAttribute(
              'tint',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'tint',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_GradientFill(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_GradientType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_GradientType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get degree {
    return node.getAttribute(
              'degree',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'degree',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get left {
    return node.getAttribute(
              'left',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'left',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get right {
    return node.getAttribute(
              'right',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'right',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get top {
    return node.getAttribute(
              'top',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'top',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get bottom {
    return node.getAttribute(
              'bottom',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'bottom',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_GradientStop> get stop {
    return node
        .findElements(
          'stop',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_GradientStop.new);
  }
}
extension type S_CT_GradientStop(_i1.XmlElement node)
    implements _i1.XmlElement {
  double get position {
    return double.parse(
      node.getAttribute(
        'position',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_CT_Color? get color {
    final e = node.getElement(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }
}
extension type S_CT_NumFmts(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_NumFmt> get numFmt {
    return node
        .findElements(
          'numFmt',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_NumFmt.new);
  }
}
extension type S_CT_NumFmt(_i1.XmlElement node) implements _i1.XmlElement {
  String get numFmtId {
    return node.getAttribute(
      'numFmtId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get formatCode {
    return node.getAttribute(
      'formatCode',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_CellStyleXfs(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Xf> get xf {
    return node
        .findElements(
          'xf',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Xf.new);
  }
}
extension type S_CT_CellXfs(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Xf> get xf {
    return node
        .findElements(
          'xf',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Xf.new);
  }
}
extension type S_CT_Xf(_i1.XmlElement node) implements _i1.XmlElement {
  String? get numFmtId {
    return node.getAttribute(
      'numFmtId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get fontId {
    return node.getAttribute(
      'fontId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get fillId {
    return node.getAttribute(
      'fillId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get borderId {
    return node.getAttribute(
      'borderId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get xfId {
    return node.getAttribute(
      'xfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get quotePrefix {
    return node.getAttribute(
              'quotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'quotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'quotePrefix',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get pivotButton {
    return node.getAttribute(
              'pivotButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pivotButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pivotButton',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get applyNumberFormat {
    return node.getAttribute(
              'applyNumberFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'applyNumberFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'applyNumberFormat',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get applyFont {
    return node.getAttribute(
              'applyFont',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'applyFont',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'applyFont',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get applyFill {
    return node.getAttribute(
              'applyFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'applyFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'applyFill',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get applyBorder {
    return node.getAttribute(
              'applyBorder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'applyBorder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'applyBorder',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get applyAlignment {
    return node.getAttribute(
              'applyAlignment',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'applyAlignment',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'applyAlignment',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get applyProtection {
    return node.getAttribute(
              'applyProtection',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'applyProtection',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'applyProtection',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_CellAlignment? get alignment {
    final e = node.getElement(
      'alignment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellAlignment(e) : null;
  }

  S_CT_CellProtection? get protection {
    final e = node.getElement(
      'protection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellProtection(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_CellStyles(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_CellStyle> get cellStyle {
    return node
        .findElements(
          'cellStyle',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CellStyle.new);
  }
}
extension type S_CT_CellStyle(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String get xfId {
    return node.getAttribute(
      'xfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int? get builtinId {
    return node.getAttribute(
              'builtinId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'builtinId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get iLevel {
    return node.getAttribute(
              'iLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'iLevel',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get customBuiltin {
    return node.getAttribute(
              'customBuiltin',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'customBuiltin',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'customBuiltin',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Dxfs(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_Dxf> get dxf {
    return node
        .findElements(
          'dxf',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Dxf.new);
  }
}
extension type S_CT_Dxf(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_Font? get font {
    final e = node.getElement(
      'font',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Font(e) : null;
  }

  S_CT_NumFmt? get numFmt {
    final e = node.getElement(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_NumFmt(e) : null;
  }

  S_CT_Fill? get fill {
    final e = node.getElement(
      'fill',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Fill(e) : null;
  }

  S_CT_CellAlignment? get alignment {
    final e = node.getElement(
      'alignment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellAlignment(e) : null;
  }

  S_CT_Border? get border {
    final e = node.getElement(
      'border',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Border(e) : null;
  }

  S_CT_CellProtection? get protection {
    final e = node.getElement(
      'protection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CellProtection(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Colors(_i1.XmlElement node) implements _i1.XmlElement {
  S_CT_IndexedColors? get indexedColors {
    final e = node.getElement(
      'indexedColors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_IndexedColors(e) : null;
  }

  S_CT_MRUColors? get mruColors {
    final e = node.getElement(
      'mruColors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_MRUColors(e) : null;
  }
}
extension type S_CT_IndexedColors(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_RgbColor> get rgbColor {
    return node
        .findElements(
          'rgbColor',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_RgbColor.new);
  }
}
extension type S_CT_MRUColors(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Color> get color {
    return node
        .findElements(
          'color',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Color.new);
  }
}
extension type S_CT_RgbColor(_i1.XmlElement node) implements _i1.XmlElement {
  String? get rgb {
    return node.getAttribute(
      'rgb',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_TableStyles(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get defaultTableStyle {
    return node.getAttribute(
      'defaultTableStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get defaultPivotStyle {
    return node.getAttribute(
      'defaultPivotStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  Iterable<S_CT_TableStyle> get tableStyle {
    return node
        .findElements(
          'tableStyle',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_TableStyle.new);
  }
}
extension type S_CT_TableStyle(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get pivot {
    return node.getAttribute(
              'pivot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'pivot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'pivot',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get table {
    return node.getAttribute(
              'table',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'table',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'table',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_TableStyleElement> get tableStyleElement {
    return node
        .findElements(
          'tableStyleElement',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_TableStyleElement.new);
  }
}
extension type S_CT_TableStyleElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_TableStyleType get type {
    return S_ST_TableStyleType.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  int? get size {
    return node.getAttribute(
              'size',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'size',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get dxfId {
    return node.getAttribute(
      'dxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_BooleanProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_FontSize(_i1.XmlElement node) implements _i1.XmlElement {
  double get val {
    return double.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_IntProperty(_i1.XmlElement node) implements _i1.XmlElement {
  int get val {
    return int.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_FontName(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_VerticalAlignFontProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  ST_VerticalAlignRun get val {
    return ST_VerticalAlignRun.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }
}
extension type S_CT_FontScheme(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_FontScheme get val {
    return S_ST_FontScheme.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }
}
extension type S_CT_UnderlineProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_UnderlineValues? get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_UnderlineValues.fromValue(
            node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_Font(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_FontName> get name {
    return node
        .findElements(
          'name',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FontName.new);
  }

  Iterable<S_CT_IntProperty> get charset {
    return node
        .findElements(
          'charset',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_IntProperty.new);
  }

  Iterable<S_CT_FontFamily> get family {
    return node
        .findElements(
          'family',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FontFamily.new);
  }

  Iterable<S_CT_BooleanProperty> get b {
    return node
        .findElements(
          'b',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get i {
    return node
        .findElements(
          'i',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get strike {
    return node
        .findElements(
          'strike',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get outline {
    return node
        .findElements(
          'outline',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get shadow {
    return node
        .findElements(
          'shadow',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get condense {
    return node
        .findElements(
          'condense',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_BooleanProperty> get extend {
    return node
        .findElements(
          'extend',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BooleanProperty.new);
  }

  Iterable<S_CT_Color> get color {
    return node
        .findElements(
          'color',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Color.new);
  }

  Iterable<S_CT_FontSize> get sz {
    return node
        .findElements(
          'sz',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FontSize.new);
  }

  Iterable<S_CT_UnderlineProperty> get u {
    return node
        .findElements(
          'u',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_UnderlineProperty.new);
  }

  Iterable<S_CT_VerticalAlignFontProperty> get vertAlign {
    return node
        .findElements(
          'vertAlign',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_VerticalAlignFontProperty.new);
  }

  Iterable<S_CT_FontScheme> get scheme {
    return node
        .findElements(
          'scheme',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FontScheme.new);
  }
}
extension type S_CT_FontFamily(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_ExternalLink(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_CT_ExternalBook? get externalBook {
    final e = node.getElement(
      'externalBook',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExternalBook(e) : null;
  }

  S_CT_DdeLink? get ddeLink {
    final e = node.getElement(
      'ddeLink',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DdeLink(e) : null;
  }

  S_CT_OleLink? get oleLink {
    final e = node.getElement(
      'oleLink',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OleLink(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_ExternalBook(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_CT_ExternalSheetNames? get sheetNames {
    final e = node.getElement(
      'sheetNames',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExternalSheetNames(e) : null;
  }

  S_CT_ExternalDefinedNames? get definedNames {
    final e = node.getElement(
      'definedNames',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExternalDefinedNames(e) : null;
  }

  S_CT_ExternalSheetDataSet? get sheetDataSet {
    final e = node.getElement(
      'sheetDataSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExternalSheetDataSet(e) : null;
  }
}
extension type S_CT_ExternalSheetNames(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_ExternalSheetName> get sheetName {
    return node
        .findElements(
          'sheetName',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ExternalSheetName.new);
  }
}
extension type S_CT_ExternalSheetName(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_ExternalDefinedNames(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_ExternalDefinedName> get definedName {
    return node
        .findElements(
          'definedName',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ExternalDefinedName.new);
  }
}
extension type S_CT_ExternalDefinedName(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get refersTo {
    return node.getAttribute(
      'refersTo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get sheetId {
    return node.getAttribute(
              'sheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'sheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_ExternalSheetDataSet(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_ExternalSheetData> get sheetData {
    return node
        .findElements(
          'sheetData',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ExternalSheetData.new);
  }
}
extension type S_CT_ExternalSheetData(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get refreshError {
    return node.getAttribute(
              'refreshError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'refreshError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'refreshError',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  Iterable<S_CT_ExternalRow> get row {
    return node
        .findElements(
          'row',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ExternalRow.new);
  }
}
extension type S_CT_ExternalRow(_i1.XmlElement node) implements _i1.XmlElement {
  int get r {
    return int.parse(
      node.getAttribute(
        'r',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  Iterable<S_CT_ExternalCell> get cell {
    return node
        .findElements(
          'cell',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ExternalCell.new);
  }
}
extension type S_CT_ExternalCell(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_ST_CellType? get t {
    return node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_CellType.fromValue(
            node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get vm {
    return node.getAttribute(
              'vm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'vm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get v {
    final e = node.getElement(
      'v',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }
}
extension type S_CT_DdeLink(_i1.XmlElement node) implements _i1.XmlElement {
  String get ddeService {
    return node.getAttribute(
      'ddeService',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get ddeTopic {
    return node.getAttribute(
      'ddeTopic',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_CT_DdeItems? get ddeItems {
    final e = node.getElement(
      'ddeItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DdeItems(e) : null;
  }
}
extension type S_CT_DdeItems(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_DdeItem> get ddeItem {
    return node
        .findElements(
          'ddeItem',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DdeItem.new);
  }
}
extension type S_CT_DdeItem(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get ole {
    return node.getAttribute(
              'ole',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ole',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ole',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get advise {
    return node.getAttribute(
              'advise',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'advise',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'advise',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get preferPic {
    return node.getAttribute(
              'preferPic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preferPic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preferPic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_DdeValues? get values {
    final e = node.getElement(
      'values',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DdeValues(e) : null;
  }
}
extension type S_CT_DdeValues(_i1.XmlElement node) implements _i1.XmlElement {
  int? get rows {
    return node.getAttribute(
              'rows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'rows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get cols {
    return node.getAttribute(
              'cols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cols',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_DdeValue> get value_ {
    return node
        .findElements(
          'value',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DdeValue.new);
  }
}
extension type S_CT_DdeValue(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_DdeValueType? get t {
    return node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_DdeValueType.fromValue(
            node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }
}
extension type S_CT_OleLink(_i1.XmlElement node) implements _i1.XmlElement {
  String get progId {
    return node.getAttribute(
      'progId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_CT_OleItems? get oleItems {
    final e = node.getElement(
      'oleItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OleItems(e) : null;
  }
}
extension type S_CT_OleItems(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_OleItem> get oleItem {
    return node
        .findElements(
          'oleItem',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_OleItem.new);
  }
}
extension type S_CT_OleItem(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get icon {
    return node.getAttribute(
              'icon',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'icon',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'icon',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get advise {
    return node.getAttribute(
              'advise',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'advise',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'advise',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get preferPic {
    return node.getAttribute(
              'preferPic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preferPic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preferPic',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_Table(_i1.XmlElement node) implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String get displayName {
    return node.getAttribute(
      'displayName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get comment {
    return node.getAttribute(
      'comment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_ST_TableType? get tableType {
    return node.getAttribute(
              'tableType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_TableType.fromValue(
            node.getAttribute(
              'tableType',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get headerRowCount {
    return node.getAttribute(
              'headerRowCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'headerRowCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get insertRow {
    return node.getAttribute(
              'insertRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'insertRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'insertRow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get insertRowShift {
    return node.getAttribute(
              'insertRowShift',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'insertRowShift',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'insertRowShift',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get totalsRowCount {
    return node.getAttribute(
              'totalsRowCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'totalsRowCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get totalsRowShown {
    return node.getAttribute(
              'totalsRowShown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'totalsRowShown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'totalsRowShown',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get published {
    return node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'published',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get headerRowDxfId {
    return node.getAttribute(
      'headerRowDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get dataDxfId {
    return node.getAttribute(
      'dataDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get totalsRowDxfId {
    return node.getAttribute(
      'totalsRowDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get headerRowBorderDxfId {
    return node.getAttribute(
      'headerRowBorderDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get tableBorderDxfId {
    return node.getAttribute(
      'tableBorderDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get totalsRowBorderDxfId {
    return node.getAttribute(
      'totalsRowBorderDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get headerRowCellStyle {
    return node.getAttribute(
      'headerRowCellStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get dataCellStyle {
    return node.getAttribute(
      'dataCellStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get totalsRowCellStyle {
    return node.getAttribute(
      'totalsRowCellStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get connectionId {
    return node.getAttribute(
              'connectionId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'connectionId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_AutoFilter? get autoFilter {
    final e = node.getElement(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_AutoFilter(e) : null;
  }

  S_CT_SortState? get sortState {
    final e = node.getElement(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SortState(e) : null;
  }

  S_CT_TableColumns? get tableColumns {
    final e = node.getElement(
      'tableColumns',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TableColumns(e) : null;
  }

  S_CT_TableStyleInfo? get tableStyleInfo {
    final e = node.getElement(
      'tableStyleInfo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TableStyleInfo(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_TableStyleInfo(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get showFirstColumn {
    return node.getAttribute(
              'showFirstColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showFirstColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showFirstColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showLastColumn {
    return node.getAttribute(
              'showLastColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showLastColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showLastColumn',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showRowStripes {
    return node.getAttribute(
              'showRowStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showRowStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showRowStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showColumnStripes {
    return node.getAttribute(
              'showColumnStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showColumnStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showColumnStripes',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_TableColumns(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_TableColumn> get tableColumn {
    return node
        .findElements(
          'tableColumn',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_TableColumn.new);
  }
}
extension type S_CT_TableColumn(_i1.XmlElement node) implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String? get uniqueName {
    return node.getAttribute(
      'uniqueName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_ST_TotalsRowFunction? get totalsRowFunction {
    return node.getAttribute(
              'totalsRowFunction',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_TotalsRowFunction.fromValue(
            node.getAttribute(
              'totalsRowFunction',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get totalsRowLabel {
    return node.getAttribute(
      'totalsRowLabel',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get queryTableFieldId {
    return node.getAttribute(
              'queryTableFieldId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'queryTableFieldId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get headerRowDxfId {
    return node.getAttribute(
      'headerRowDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get dataDxfId {
    return node.getAttribute(
      'dataDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get totalsRowDxfId {
    return node.getAttribute(
      'totalsRowDxfId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get headerRowCellStyle {
    return node.getAttribute(
      'headerRowCellStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get dataCellStyle {
    return node.getAttribute(
      'dataCellStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get totalsRowCellStyle {
    return node.getAttribute(
      'totalsRowCellStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  S_CT_TableFormula? get calculatedColumnFormula {
    final e = node.getElement(
      'calculatedColumnFormula',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TableFormula(e) : null;
  }

  S_CT_TableFormula? get totalsRowFormula {
    final e = node.getElement(
      'totalsRowFormula',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TableFormula(e) : null;
  }

  S_CT_XmlColumnPr? get xmlColumnPr {
    final e = node.getElement(
      'xmlColumnPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_XmlColumnPr(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_TableFormula(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get array {
    return node.getAttribute(
              'array',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'array',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'array',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_XmlColumnPr(_i1.XmlElement node) implements _i1.XmlElement {
  int get mapId {
    return int.parse(
      node.getAttribute(
        'mapId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get xpath {
    return node.getAttribute(
      'xpath',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get denormalized {
    return node.getAttribute(
              'denormalized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'denormalized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'denormalized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String get xmlDataType {
    return node.getAttribute(
      'xmlDataType',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_VolTypes(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_VolType> get volType {
    return node
        .findElements(
          'volType',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_VolType.new);
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_VolType(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_VolDepType get type {
    return S_ST_VolDepType.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    )!;
  }

  Iterable<S_CT_VolMain> get main {
    return node
        .findElements(
          'main',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_VolMain.new);
  }
}
extension type S_CT_VolMain(_i1.XmlElement node) implements _i1.XmlElement {
  String get first {
    return node.getAttribute(
      'first',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  Iterable<S_CT_VolTopic> get tp {
    return node
        .findElements(
          'tp',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_VolTopic.new);
  }
}
extension type S_CT_VolTopic(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_VolValueType? get t {
    return node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_VolValueType.fromValue(
            node.getAttribute(
              't',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get v {
    final e = node.getElement(
      'v',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  Iterable<String> get stp {
    return node
        .findElements(
          'stp',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map((e) => e.innerText);
  }

  Iterable<S_CT_VolTopicRef> get tr {
    return node
        .findElements(
          'tr',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_VolTopicRef.new);
  }
}
extension type S_CT_VolTopicRef(_i1.XmlElement node) implements _i1.XmlElement {
  String get r {
    return node.getAttribute(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get s {
    return int.parse(
      node.getAttribute(
        's',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_Workbook(_i1.XmlElement node) implements _i1.XmlElement {
  ST_ConformanceClass? get conformance {
    return node.getAttribute(
              'conformance',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? ST_ConformanceClass.fromValue(
            node.getAttribute(
              'conformance',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_FileVersion? get fileVersion {
    final e = node.getElement(
      'fileVersion',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_FileVersion(e) : null;
  }

  S_CT_FileSharing? get fileSharing {
    final e = node.getElement(
      'fileSharing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_FileSharing(e) : null;
  }

  S_CT_WorkbookPr? get workbookPr {
    final e = node.getElement(
      'workbookPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_WorkbookPr(e) : null;
  }

  S_CT_WorkbookProtection? get workbookProtection {
    final e = node.getElement(
      'workbookProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_WorkbookProtection(e) : null;
  }

  S_CT_BookViews? get bookViews {
    final e = node.getElement(
      'bookViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_BookViews(e) : null;
  }

  S_CT_Sheets? get sheets {
    final e = node.getElement(
      'sheets',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Sheets(e) : null;
  }

  S_CT_FunctionGroups? get functionGroups {
    final e = node.getElement(
      'functionGroups',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_FunctionGroups(e) : null;
  }

  S_CT_ExternalReferences? get externalReferences {
    final e = node.getElement(
      'externalReferences',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExternalReferences(e) : null;
  }

  S_CT_DefinedNames? get definedNames {
    final e = node.getElement(
      'definedNames',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DefinedNames(e) : null;
  }

  S_CT_CalcPr? get calcPr {
    final e = node.getElement(
      'calcPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CalcPr(e) : null;
  }

  S_CT_OleSize? get oleSize {
    final e = node.getElement(
      'oleSize',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OleSize(e) : null;
  }

  S_CT_CustomWorkbookViews? get customWorkbookViews {
    final e = node.getElement(
      'customWorkbookViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_CustomWorkbookViews(e) : null;
  }

  S_CT_PivotCaches? get pivotCaches {
    final e = node.getElement(
      'pivotCaches',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotCaches(e) : null;
  }

  S_CT_SmartTagPr? get smartTagPr {
    final e = node.getElement(
      'smartTagPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SmartTagPr(e) : null;
  }

  S_CT_SmartTagTypes? get smartTagTypes {
    final e = node.getElement(
      'smartTagTypes',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_SmartTagTypes(e) : null;
  }

  S_CT_WebPublishing? get webPublishing {
    final e = node.getElement(
      'webPublishing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_WebPublishing(e) : null;
  }

  Iterable<S_CT_FileRecoveryPr> get fileRecoveryPr {
    return node
        .findElements(
          'fileRecoveryPr',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FileRecoveryPr.new);
  }

  S_CT_WebPublishObjects? get webPublishObjects {
    final e = node.getElement(
      'webPublishObjects',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_WebPublishObjects(e) : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_FileVersion(_i1.XmlElement node) implements _i1.XmlElement {
  String? get appName {
    return node.getAttribute(
      'appName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get lastEdited {
    return node.getAttribute(
      'lastEdited',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get lowestEdited {
    return node.getAttribute(
      'lowestEdited',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get rupBuild {
    return node.getAttribute(
      'rupBuild',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get codeName {
    return node.getAttribute(
      'codeName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_BookViews(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_BookView> get workbookView {
    return node
        .findElements(
          'workbookView',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_BookView.new);
  }
}
extension type S_CT_BookView(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_Visibility? get visibility {
    return node.getAttribute(
              'visibility',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Visibility.fromValue(
            node.getAttribute(
              'visibility',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get minimized {
    return node.getAttribute(
              'minimized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'minimized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'minimized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showHorizontalScroll {
    return node.getAttribute(
              'showHorizontalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showHorizontalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showHorizontalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showVerticalScroll {
    return node.getAttribute(
              'showVerticalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showVerticalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showVerticalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showSheetTabs {
    return node.getAttribute(
              'showSheetTabs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showSheetTabs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showSheetTabs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get xWindow {
    return node.getAttribute(
              'xWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'xWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get yWindow {
    return node.getAttribute(
              'yWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'yWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get windowWidth {
    return node.getAttribute(
              'windowWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'windowWidth',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get windowHeight {
    return node.getAttribute(
              'windowHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'windowHeight',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get tabRatio {
    return node.getAttribute(
              'tabRatio',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'tabRatio',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get firstSheet {
    return node.getAttribute(
              'firstSheet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'firstSheet',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get activeTab {
    return node.getAttribute(
              'activeTab',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'activeTab',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get autoFilterDateGrouping {
    return node.getAttribute(
              'autoFilterDateGrouping',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoFilterDateGrouping',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoFilterDateGrouping',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_CustomWorkbookViews(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_CustomWorkbookView> get customWorkbookView {
    return node
        .findElements(
          'customWorkbookView',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_CustomWorkbookView.new);
  }
}
extension type S_CT_CustomWorkbookView(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String get guid {
    return node.getAttribute(
      'guid',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  bool? get autoUpdate {
    return node.getAttribute(
              'autoUpdate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoUpdate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoUpdate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get mergeInterval {
    return node.getAttribute(
              'mergeInterval',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'mergeInterval',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get changesSavedWin {
    return node.getAttribute(
              'changesSavedWin',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'changesSavedWin',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'changesSavedWin',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get onlySync {
    return node.getAttribute(
              'onlySync',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'onlySync',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'onlySync',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get personalView {
    return node.getAttribute(
              'personalView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'personalView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'personalView',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get includePrintSettings {
    return node.getAttribute(
              'includePrintSettings',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'includePrintSettings',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'includePrintSettings',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get includeHiddenRowCol {
    return node.getAttribute(
              'includeHiddenRowCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'includeHiddenRowCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'includeHiddenRowCol',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get maximized {
    return node.getAttribute(
              'maximized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'maximized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'maximized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get minimized {
    return node.getAttribute(
              'minimized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'minimized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'minimized',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showHorizontalScroll {
    return node.getAttribute(
              'showHorizontalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showHorizontalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showHorizontalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showVerticalScroll {
    return node.getAttribute(
              'showVerticalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showVerticalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showVerticalScroll',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showSheetTabs {
    return node.getAttribute(
              'showSheetTabs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showSheetTabs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showSheetTabs',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get xWindow {
    return node.getAttribute(
              'xWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'xWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get yWindow {
    return node.getAttribute(
              'yWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'yWindow',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get windowWidth {
    return int.parse(
      node.getAttribute(
        'windowWidth',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int get windowHeight {
    return int.parse(
      node.getAttribute(
        'windowHeight',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  int? get tabRatio {
    return node.getAttribute(
              'tabRatio',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'tabRatio',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int get activeSheetId {
    return int.parse(
      node.getAttribute(
        'activeSheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  bool? get showFormulaBar {
    return node.getAttribute(
              'showFormulaBar',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showFormulaBar',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showFormulaBar',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showStatusbar {
    return node.getAttribute(
              'showStatusbar',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showStatusbar',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showStatusbar',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_Comments? get showComments {
    return node.getAttribute(
              'showComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Comments.fromValue(
            node.getAttribute(
              'showComments',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_Objects? get showObjects {
    return node.getAttribute(
              'showObjects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Objects.fromValue(
            node.getAttribute(
              'showObjects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }
}
extension type S_CT_Sheets(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_Sheet> get sheet {
    return node
        .findElements(
          'sheet',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_Sheet.new);
  }
}
extension type S_CT_Sheet(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  int get sheetId {
    return int.parse(
      node.getAttribute(
        'sheetId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  S_ST_SheetState? get state {
    return node.getAttribute(
              'state',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SheetState.fromValue(
            node.getAttribute(
              'state',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_WorkbookPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get date1904 {
    return node.getAttribute(
              'date1904',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'date1904',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'date1904',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_Objects? get showObjects {
    return node.getAttribute(
              'showObjects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_Objects.fromValue(
            node.getAttribute(
              'showObjects',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showBorderUnselectedTables {
    return node.getAttribute(
              'showBorderUnselectedTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showBorderUnselectedTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showBorderUnselectedTables',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get filterPrivacy {
    return node.getAttribute(
              'filterPrivacy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'filterPrivacy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'filterPrivacy',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get promptedSolutions {
    return node.getAttribute(
              'promptedSolutions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'promptedSolutions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'promptedSolutions',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showInkAnnotation {
    return node.getAttribute(
              'showInkAnnotation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showInkAnnotation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showInkAnnotation',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get backupFile {
    return node.getAttribute(
              'backupFile',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'backupFile',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'backupFile',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get saveExternalLinkValues {
    return node.getAttribute(
              'saveExternalLinkValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'saveExternalLinkValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'saveExternalLinkValues',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_UpdateLinks? get updateLinks {
    return node.getAttribute(
              'updateLinks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_UpdateLinks.fromValue(
            node.getAttribute(
              'updateLinks',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get codeName {
    return node.getAttribute(
      'codeName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get hidePivotFieldList {
    return node.getAttribute(
              'hidePivotFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidePivotFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidePivotFieldList',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get showPivotChartFilter {
    return node.getAttribute(
              'showPivotChartFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showPivotChartFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showPivotChartFilter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get allowRefreshQuery {
    return node.getAttribute(
              'allowRefreshQuery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'allowRefreshQuery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'allowRefreshQuery',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get publishItems {
    return node.getAttribute(
              'publishItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'publishItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'publishItems',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get checkCompatibility {
    return node.getAttribute(
              'checkCompatibility',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'checkCompatibility',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'checkCompatibility',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get autoCompressPictures {
    return node.getAttribute(
              'autoCompressPictures',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoCompressPictures',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoCompressPictures',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get refreshAllConnections {
    return node.getAttribute(
              'refreshAllConnections',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'refreshAllConnections',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'refreshAllConnections',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get defaultThemeVersion {
    return node.getAttribute(
              'defaultThemeVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'defaultThemeVersion',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_SmartTagPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get embed {
    return node.getAttribute(
              'embed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'embed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'embed',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_SmartTagShow? get show_ {
    return node.getAttribute(
              'show',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_SmartTagShow.fromValue(
            node.getAttribute(
              'show',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_SmartTagTypes(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_SmartTagType> get smartTagType {
    return node
        .findElements(
          'smartTagType',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_SmartTagType.new);
  }
}
extension type S_CT_SmartTagType(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get namespaceUri {
    return node.getAttribute(
      'namespaceUri',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get url {
    return node.getAttribute(
      'url',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_FileRecoveryPr(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get autoRecover {
    return node.getAttribute(
              'autoRecover',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoRecover',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoRecover',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get crashSave {
    return node.getAttribute(
              'crashSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'crashSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'crashSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get dataExtractLoad {
    return node.getAttribute(
              'dataExtractLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dataExtractLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dataExtractLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get repairLoad {
    return node.getAttribute(
              'repairLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'repairLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'repairLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_CalcPr(_i1.XmlElement node) implements _i1.XmlElement {
  int? get calcId {
    return node.getAttribute(
              'calcId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'calcId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  S_ST_CalcMode? get calcMode {
    return node.getAttribute(
              'calcMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_CalcMode.fromValue(
            node.getAttribute(
              'calcMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get fullCalcOnLoad {
    return node.getAttribute(
              'fullCalcOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fullCalcOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fullCalcOnLoad',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_RefMode? get refMode {
    return node.getAttribute(
              'refMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_RefMode.fromValue(
            node.getAttribute(
              'refMode',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get iterate {
    return node.getAttribute(
              'iterate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'iterate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'iterate',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get iterateCount {
    return node.getAttribute(
              'iterateCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'iterateCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  double? get iterateDelta {
    return node.getAttribute(
              'iterateDelta',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? double.tryParse(
            node.getAttribute(
              'iterateDelta',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get fullPrecision {
    return node.getAttribute(
              'fullPrecision',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fullPrecision',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fullPrecision',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get calcCompleted {
    return node.getAttribute(
              'calcCompleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'calcCompleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'calcCompleted',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get calcOnSave {
    return node.getAttribute(
              'calcOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'calcOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'calcOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get concurrentCalc {
    return node.getAttribute(
              'concurrentCalc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'concurrentCalc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'concurrentCalc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get concurrentManualCount {
    return node.getAttribute(
              'concurrentManualCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'concurrentManualCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get forceFullCalc {
    return node.getAttribute(
              'forceFullCalc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'forceFullCalc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'forceFullCalc',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_DefinedNames(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_DefinedName> get definedName {
    return node
        .findElements(
          'definedName',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_DefinedName.new);
  }
}
extension type S_CT_DefinedName(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get comment {
    return node.getAttribute(
      'comment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get customMenu {
    return node.getAttribute(
      'customMenu',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get description {
    return node.getAttribute(
      'description',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get help {
    return node.getAttribute(
      'help',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get statusBar {
    return node.getAttribute(
      'statusBar',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get localSheetId {
    return node.getAttribute(
              'localSheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'localSheetId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  bool? get hidden {
    return node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hidden',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get function_ {
    return node.getAttribute(
              'function',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'function',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'function',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get vbProcedure {
    return node.getAttribute(
              'vbProcedure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'vbProcedure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'vbProcedure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get xlm {
    return node.getAttribute(
              'xlm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'xlm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'xlm',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  int? get functionGroupId {
    return node.getAttribute(
              'functionGroupId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'functionGroupId',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get shortcutKey {
    return node.getAttribute(
      'shortcutKey',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get publishToServer {
    return node.getAttribute(
              'publishToServer',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'publishToServer',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'publishToServer',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get workbookParameter {
    return node.getAttribute(
              'workbookParameter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'workbookParameter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'workbookParameter',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}
extension type S_CT_ExternalReferences(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<S_CT_ExternalReference> get externalReference {
    return node
        .findElements(
          'externalReference',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_ExternalReference.new);
  }
}
extension type S_CT_ExternalReference(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type S_CT_SheetBackgroundPicture(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type S_CT_PivotCaches(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<S_CT_PivotCache> get pivotCache {
    return node
        .findElements(
          'pivotCache',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_PivotCache.new);
  }
}
extension type S_CT_PivotCache(_i1.XmlElement node) implements _i1.XmlElement {
  int get cacheId {
    return int.parse(
      node.getAttribute(
        'cacheId',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }
}
extension type S_CT_FileSharing(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get readOnlyRecommended {
    return node.getAttribute(
              'readOnlyRecommended',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'readOnlyRecommended',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'readOnlyRecommended',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get userName {
    return node.getAttribute(
      'userName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get reservationPassword {
    return node.getAttribute(
      'reservationPassword',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get algorithmName {
    return node.getAttribute(
      'algorithmName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get hashValue {
    return node.getAttribute(
      'hashValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get saltValue {
    return node.getAttribute(
      'saltValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get spinCount {
    return node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_OleSize(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute(
      'ref',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }
}
extension type S_CT_WorkbookProtection(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get workbookPassword {
    return node.getAttribute(
      'workbookPassword',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get workbookPasswordCharacterSet {
    return node.getAttribute(
      'workbookPasswordCharacterSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get revisionsPassword {
    return node.getAttribute(
      'revisionsPassword',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get revisionsPasswordCharacterSet {
    return node.getAttribute(
      'revisionsPasswordCharacterSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get lockStructure {
    return node.getAttribute(
              'lockStructure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'lockStructure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'lockStructure',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get lockWindows {
    return node.getAttribute(
              'lockWindows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'lockWindows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'lockWindows',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get lockRevision {
    return node.getAttribute(
              'lockRevision',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'lockRevision',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'lockRevision',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  String? get revisionsAlgorithmName {
    return node.getAttribute(
      'revisionsAlgorithmName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get revisionsHashValue {
    return node.getAttribute(
      'revisionsHashValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get revisionsSaltValue {
    return node.getAttribute(
      'revisionsSaltValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get revisionsSpinCount {
    return node.getAttribute(
              'revisionsSpinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'revisionsSpinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get workbookAlgorithmName {
    return node.getAttribute(
      'workbookAlgorithmName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get workbookHashValue {
    return node.getAttribute(
      'workbookHashValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String? get workbookSaltValue {
    return node.getAttribute(
      'workbookSaltValue',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  int? get workbookSpinCount {
    return node.getAttribute(
              'workbookSpinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'workbookSpinCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }
}
extension type S_CT_WebPublishing(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get css {
    return node.getAttribute(
              'css',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'css',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'css',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get thicket {
    return node.getAttribute(
              'thicket',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'thicket',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'thicket',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get longFileNames {
    return node.getAttribute(
              'longFileNames',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'longFileNames',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'longFileNames',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get vml {
    return node.getAttribute(
              'vml',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'vml',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'vml',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  bool? get allowPng {
    return node.getAttribute(
              'allowPng',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'allowPng',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'allowPng',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }

  S_ST_TargetScreenSize? get targetScreenSize {
    return node.getAttribute(
              'targetScreenSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? S_ST_TargetScreenSize.fromValue(
            node.getAttribute(
              'targetScreenSize',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get dpi {
    return node.getAttribute(
              'dpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'dpi',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  int? get codePage {
    return node.getAttribute(
              'codePage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'codePage',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  String? get characterSet {
    return node.getAttribute(
      'characterSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_FunctionGroups(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get builtInGroupCount {
    return node.getAttribute(
              'builtInGroupCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'builtInGroupCount',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_FunctionGroup> get functionGroup {
    return node
        .findElements(
          'functionGroup',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_FunctionGroup.new);
  }
}
extension type S_CT_FunctionGroup(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }
}
extension type S_CT_WebPublishObjects(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'count',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            )!,
          )
        : null;
  }

  Iterable<S_CT_WebPublishObject> get webPublishObject {
    return node
        .findElements(
          'webPublishObject',
          namespace:
              'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
        )
        .map(S_CT_WebPublishObject.new);
  }
}
extension type S_CT_WebPublishObject(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
      )!,
    );
  }

  String get divId {
    return node.getAttribute(
      'divId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get sourceObject {
    return node.getAttribute(
      'sourceObject',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  String get destinationFile {
    return node.getAttribute(
      'destinationFile',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )!;
  }

  String? get title {
    return node.getAttribute(
      'title',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
  }

  bool? get autoRepublish {
    return node.getAttribute(
              'autoRepublish',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoRepublish',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoRepublish',
              namespace:
                  'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
            ) ==
            'on';
  }
}

enum S_ST_FilterOperator {
  equal('equal'),
  lessThan('lessThan'),
  lessThanOrEqual('lessThanOrEqual'),
  notEqual('notEqual'),
  greaterThanOrEqual('greaterThanOrEqual'),
  greaterThan('greaterThan');

  const S_ST_FilterOperator(this.value);

  final String value;

  static S_ST_FilterOperator? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DynamicFilterType {
  null_('null'),
  aboveAverage('aboveAverage'),
  belowAverage('belowAverage'),
  tomorrow('tomorrow'),
  today('today'),
  yesterday('yesterday'),
  nextWeek('nextWeek'),
  thisWeek('thisWeek'),
  lastWeek('lastWeek'),
  nextMonth('nextMonth'),
  thisMonth('thisMonth'),
  lastMonth('lastMonth'),
  nextQuarter('nextQuarter'),
  thisQuarter('thisQuarter'),
  lastQuarter('lastQuarter'),
  nextYear('nextYear'),
  thisYear('thisYear'),
  lastYear('lastYear'),
  yearToDate('yearToDate'),
  Q1('Q1'),
  Q2('Q2'),
  Q3('Q3'),
  Q4('Q4'),
  M1('M1'),
  M2('M2'),
  M3('M3'),
  M4('M4'),
  M5('M5'),
  M6('M6'),
  M7('M7'),
  M8('M8'),
  M9('M9'),
  M10('M10'),
  M11('M11'),
  M12('M12');

  const S_ST_DynamicFilterType(this.value);

  final String value;

  static S_ST_DynamicFilterType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_IconSetType {
  v3Arrows('3Arrows'),
  v3ArrowsGray('3ArrowsGray'),
  v3Flags('3Flags'),
  v3TrafficLights1('3TrafficLights1'),
  v3TrafficLights2('3TrafficLights2'),
  v3Signs('3Signs'),
  v3Symbols('3Symbols'),
  v3Symbols2('3Symbols2'),
  v4Arrows('4Arrows'),
  v4ArrowsGray('4ArrowsGray'),
  v4RedToBlack('4RedToBlack'),
  v4Rating('4Rating'),
  v4TrafficLights('4TrafficLights'),
  v5Arrows('5Arrows'),
  v5ArrowsGray('5ArrowsGray'),
  v5Rating('5Rating'),
  v5Quarters('5Quarters');

  const S_ST_IconSetType(this.value);

  final String value;

  static S_ST_IconSetType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_SortBy {
  value_('value'),
  cellColor('cellColor'),
  fontColor('fontColor'),
  icon('icon');

  const S_ST_SortBy(this.value);

  final String value;

  static S_ST_SortBy? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_SortMethod {
  stroke('stroke'),
  pinYin('pinYin'),
  none('none');

  const S_ST_SortMethod(this.value);

  final String value;

  static S_ST_SortMethod? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DateTimeGrouping {
  year('year'),
  month('month'),
  day('day'),
  hour('hour'),
  minute('minute'),
  second('second');

  const S_ST_DateTimeGrouping(this.value);

  final String value;

  static S_ST_DateTimeGrouping? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_TextHAlign {
  left('left'),
  center('center'),
  right('right'),
  justify('justify'),
  distributed('distributed');

  const S_ST_TextHAlign(this.value);

  final String value;

  static S_ST_TextHAlign? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_TextVAlign {
  top('top'),
  center('center'),
  bottom('bottom'),
  justify('justify'),
  distributed('distributed');

  const S_ST_TextVAlign(this.value);

  final String value;

  static S_ST_TextVAlign? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_CredMethod {
  integrated('integrated'),
  none('none'),
  stored('stored'),
  prompt('prompt');

  const S_ST_CredMethod(this.value);

  final String value;

  static S_ST_CredMethod? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_HtmlFmt {
  none('none'),
  rtf('rtf'),
  all('all');

  const S_ST_HtmlFmt(this.value);

  final String value;

  static S_ST_HtmlFmt? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_ParameterType {
  prompt('prompt'),
  value_('value'),
  cell('cell');

  const S_ST_ParameterType(this.value);

  final String value;

  static S_ST_ParameterType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_FileType {
  mac('mac'),
  win('win'),
  dos('dos'),
  lin('lin'),
  other('other');

  const S_ST_FileType(this.value);

  final String value;

  static S_ST_FileType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Qualifier {
  doubleQuote('doubleQuote'),
  singleQuote('singleQuote'),
  none('none');

  const S_ST_Qualifier(this.value);

  final String value;

  static S_ST_Qualifier? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_ExternalConnectionType {
  general('general'),
  text('text'),
  MDY('MDY'),
  DMY('DMY'),
  YMD('YMD'),
  MYD('MYD'),
  DYM('DYM'),
  YDM('YDM'),
  skip('skip'),
  EMD('EMD');

  const S_ST_ExternalConnectionType(this.value);

  final String value;

  static S_ST_ExternalConnectionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_SourceType {
  worksheet('worksheet'),
  external_('external'),
  consolidation('consolidation'),
  scenario('scenario');

  const S_ST_SourceType(this.value);

  final String value;

  static S_ST_SourceType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_GroupBy {
  range('range'),
  seconds('seconds'),
  minutes('minutes'),
  hours('hours'),
  days('days'),
  months('months'),
  quarters('quarters'),
  years('years');

  const S_ST_GroupBy(this.value);

  final String value;

  static S_ST_GroupBy? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_SortType {
  none('none'),
  ascending('ascending'),
  descending('descending'),
  ascendingAlpha('ascendingAlpha'),
  descendingAlpha('descendingAlpha'),
  ascendingNatural('ascendingNatural'),
  descendingNatural('descendingNatural');

  const S_ST_SortType(this.value);

  final String value;

  static S_ST_SortType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Scope {
  selection('selection'),
  data('data'),
  field('field');

  const S_ST_Scope(this.value);

  final String value;

  static S_ST_Scope? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Type {
  none('none'),
  all('all'),
  row('row'),
  column('column');

  const S_ST_Type(this.value);

  final String value;

  static S_ST_Type? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_ShowDataAs {
  normal('normal'),
  difference('difference'),
  percent('percent'),
  percentDiff('percentDiff'),
  runTotal('runTotal'),
  percentOfRow('percentOfRow'),
  percentOfCol('percentOfCol'),
  percentOfTotal('percentOfTotal'),
  index_('index');

  const S_ST_ShowDataAs(this.value);

  final String value;

  static S_ST_ShowDataAs? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_ItemType {
  data('data'),
  default_('default'),
  sum('sum'),
  countA('countA'),
  avg('avg'),
  max('max'),
  min('min'),
  product('product'),
  count('count'),
  stdDev('stdDev'),
  stdDevP('stdDevP'),
  var_('var'),
  varP('varP'),
  grand('grand'),
  blank('blank');

  const S_ST_ItemType(this.value);

  final String value;

  static S_ST_ItemType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_FormatAction {
  blank('blank'),
  formatting('formatting'),
  drill('drill'),
  formula('formula');

  const S_ST_FormatAction(this.value);

  final String value;

  static S_ST_FormatAction? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_FieldSortType {
  manual('manual'),
  ascending('ascending'),
  descending('descending');

  const S_ST_FieldSortType(this.value);

  final String value;

  static S_ST_FieldSortType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_PivotFilterType {
  unknown('unknown'),
  count('count'),
  percent('percent'),
  sum('sum'),
  captionEqual('captionEqual'),
  captionNotEqual('captionNotEqual'),
  captionBeginsWith('captionBeginsWith'),
  captionNotBeginsWith('captionNotBeginsWith'),
  captionEndsWith('captionEndsWith'),
  captionNotEndsWith('captionNotEndsWith'),
  captionContains('captionContains'),
  captionNotContains('captionNotContains'),
  captionGreaterThan('captionGreaterThan'),
  captionGreaterThanOrEqual('captionGreaterThanOrEqual'),
  captionLessThan('captionLessThan'),
  captionLessThanOrEqual('captionLessThanOrEqual'),
  captionBetween('captionBetween'),
  captionNotBetween('captionNotBetween'),
  valueEqual('valueEqual'),
  valueNotEqual('valueNotEqual'),
  valueGreaterThan('valueGreaterThan'),
  valueGreaterThanOrEqual('valueGreaterThanOrEqual'),
  valueLessThan('valueLessThan'),
  valueLessThanOrEqual('valueLessThanOrEqual'),
  valueBetween('valueBetween'),
  valueNotBetween('valueNotBetween'),
  dateEqual('dateEqual'),
  dateNotEqual('dateNotEqual'),
  dateOlderThan('dateOlderThan'),
  dateOlderThanOrEqual('dateOlderThanOrEqual'),
  dateNewerThan('dateNewerThan'),
  dateNewerThanOrEqual('dateNewerThanOrEqual'),
  dateBetween('dateBetween'),
  dateNotBetween('dateNotBetween'),
  tomorrow('tomorrow'),
  today('today'),
  yesterday('yesterday'),
  nextWeek('nextWeek'),
  thisWeek('thisWeek'),
  lastWeek('lastWeek'),
  nextMonth('nextMonth'),
  thisMonth('thisMonth'),
  lastMonth('lastMonth'),
  nextQuarter('nextQuarter'),
  thisQuarter('thisQuarter'),
  lastQuarter('lastQuarter'),
  nextYear('nextYear'),
  thisYear('thisYear'),
  lastYear('lastYear'),
  yearToDate('yearToDate'),
  Q1('Q1'),
  Q2('Q2'),
  Q3('Q3'),
  Q4('Q4'),
  M1('M1'),
  M2('M2'),
  M3('M3'),
  M4('M4'),
  M5('M5'),
  M6('M6'),
  M7('M7'),
  M8('M8'),
  M9('M9'),
  M10('M10'),
  M11('M11'),
  M12('M12');

  const S_ST_PivotFilterType(this.value);

  final String value;

  static S_ST_PivotFilterType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_PivotAreaType {
  none('none'),
  normal('normal'),
  data('data'),
  all('all'),
  origin('origin'),
  button('button'),
  topEnd('topEnd'),
  topRight('topRight');

  const S_ST_PivotAreaType(this.value);

  final String value;

  static S_ST_PivotAreaType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Axis {
  axisRow('axisRow'),
  axisCol('axisCol'),
  axisPage('axisPage'),
  axisValues('axisValues');

  const S_ST_Axis(this.value);

  final String value;

  static S_ST_Axis? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_GrowShrinkType {
  insertDelete('insertDelete'),
  insertClear('insertClear'),
  overwriteClear('overwriteClear');

  const S_ST_GrowShrinkType(this.value);

  final String value;

  static S_ST_GrowShrinkType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_PhoneticType {
  halfwidthKatakana('halfwidthKatakana'),
  fullwidthKatakana('fullwidthKatakana'),
  Hiragana('Hiragana'),
  noConversion('noConversion');

  const S_ST_PhoneticType(this.value);

  final String value;

  static S_ST_PhoneticType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_PhoneticAlignment {
  noControl('noControl'),
  left('left'),
  center('center'),
  distributed('distributed');

  const S_ST_PhoneticAlignment(this.value);

  final String value;

  static S_ST_PhoneticAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_rwColActionType {
  insertRow('insertRow'),
  deleteRow('deleteRow'),
  insertCol('insertCol'),
  deleteCol('deleteCol');

  const S_ST_rwColActionType(this.value);

  final String value;

  static S_ST_rwColActionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_RevisionAction {
  add('add'),
  delete('delete');

  const S_ST_RevisionAction(this.value);

  final String value;

  static S_ST_RevisionAction? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_FormulaExpression {
  ref('ref'),
  refError('refError'),
  area('area'),
  areaError('areaError'),
  computedArea('computedArea');

  const S_ST_FormulaExpression(this.value);

  final String value;

  static S_ST_FormulaExpression? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_CellType {
  b('b'),
  n('n'),
  e('e'),
  s('s'),
  str('str'),
  inlineStr('inlineStr');

  const S_ST_CellType(this.value);

  final String value;

  static S_ST_CellType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_CellFormulaType {
  normal('normal'),
  array('array'),
  dataTable('dataTable'),
  shared('shared');

  const S_ST_CellFormulaType(this.value);

  final String value;

  static S_ST_CellFormulaType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Pane {
  bottomRight('bottomRight'),
  topRight('topRight'),
  bottomLeft('bottomLeft'),
  topLeft('topLeft');

  const S_ST_Pane(this.value);

  final String value;

  static S_ST_Pane? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_SheetViewType {
  normal('normal'),
  pageBreakPreview('pageBreakPreview'),
  pageLayout('pageLayout');

  const S_ST_SheetViewType(this.value);

  final String value;

  static S_ST_SheetViewType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DataConsolidateFunction {
  average('average'),
  count('count'),
  countNums('countNums'),
  max('max'),
  min('min'),
  product('product'),
  stdDev('stdDev'),
  stdDevp('stdDevp'),
  sum('sum'),
  var_('var'),
  varp('varp');

  const S_ST_DataConsolidateFunction(this.value);

  final String value;

  static S_ST_DataConsolidateFunction? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DataValidationType {
  none('none'),
  whole('whole'),
  decimal('decimal'),
  list('list'),
  date('date'),
  time('time'),
  textLength('textLength'),
  custom('custom');

  const S_ST_DataValidationType(this.value);

  final String value;

  static S_ST_DataValidationType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DataValidationOperator {
  between('between'),
  notBetween('notBetween'),
  equal('equal'),
  notEqual('notEqual'),
  lessThan('lessThan'),
  lessThanOrEqual('lessThanOrEqual'),
  greaterThan('greaterThan'),
  greaterThanOrEqual('greaterThanOrEqual');

  const S_ST_DataValidationOperator(this.value);

  final String value;

  static S_ST_DataValidationOperator? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DataValidationErrorStyle {
  stop('stop'),
  warning('warning'),
  information('information');

  const S_ST_DataValidationErrorStyle(this.value);

  final String value;

  static S_ST_DataValidationErrorStyle? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DataValidationImeMode {
  noControl('noControl'),
  off('off'),
  on_('on'),
  disabled('disabled'),
  hiragana('hiragana'),
  fullKatakana('fullKatakana'),
  halfKatakana('halfKatakana'),
  fullAlpha('fullAlpha'),
  halfAlpha('halfAlpha'),
  fullHangul('fullHangul'),
  halfHangul('halfHangul');

  const S_ST_DataValidationImeMode(this.value);

  final String value;

  static S_ST_DataValidationImeMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_CfType {
  expression('expression'),
  cellIs('cellIs'),
  colorScale('colorScale'),
  dataBar('dataBar'),
  iconSet('iconSet'),
  top10('top10'),
  uniqueValues('uniqueValues'),
  duplicateValues('duplicateValues'),
  containsText('containsText'),
  notContainsText('notContainsText'),
  beginsWith('beginsWith'),
  endsWith('endsWith'),
  containsBlanks('containsBlanks'),
  notContainsBlanks('notContainsBlanks'),
  containsErrors('containsErrors'),
  notContainsErrors('notContainsErrors'),
  timePeriod('timePeriod'),
  aboveAverage('aboveAverage');

  const S_ST_CfType(this.value);

  final String value;

  static S_ST_CfType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_TimePeriod {
  today('today'),
  yesterday('yesterday'),
  tomorrow('tomorrow'),
  last7Days('last7Days'),
  thisMonth('thisMonth'),
  lastMonth('lastMonth'),
  nextMonth('nextMonth'),
  thisWeek('thisWeek'),
  lastWeek('lastWeek'),
  nextWeek('nextWeek');

  const S_ST_TimePeriod(this.value);

  final String value;

  static S_ST_TimePeriod? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_ConditionalFormattingOperator {
  lessThan('lessThan'),
  lessThanOrEqual('lessThanOrEqual'),
  equal('equal'),
  notEqual('notEqual'),
  greaterThanOrEqual('greaterThanOrEqual'),
  greaterThan('greaterThan'),
  between('between'),
  notBetween('notBetween'),
  containsText('containsText'),
  notContains('notContains'),
  beginsWith('beginsWith'),
  endsWith('endsWith');

  const S_ST_ConditionalFormattingOperator(this.value);

  final String value;

  static S_ST_ConditionalFormattingOperator? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_CfvoType {
  num_('num'),
  percent('percent'),
  max('max'),
  min('min'),
  formula('formula'),
  percentile('percentile');

  const S_ST_CfvoType(this.value);

  final String value;

  static S_ST_CfvoType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_PageOrder {
  downThenOver('downThenOver'),
  overThenDown('overThenDown');

  const S_ST_PageOrder(this.value);

  final String value;

  static S_ST_PageOrder? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Orientation {
  default_('default'),
  portrait('portrait'),
  landscape('landscape');

  const S_ST_Orientation(this.value);

  final String value;

  static S_ST_Orientation? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_CellComments {
  none('none'),
  asDisplayed('asDisplayed'),
  atEnd('atEnd');

  const S_ST_CellComments(this.value);

  final String value;

  static S_ST_CellComments? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_PrintError {
  displayed('displayed'),
  blank('blank'),
  dash('dash'),
  NA('NA');

  const S_ST_PrintError(this.value);

  final String value;

  static S_ST_PrintError? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DvAspect {
  DVASPECT_CONTENT('DVASPECT_CONTENT'),
  DVASPECT_ICON('DVASPECT_ICON');

  const S_ST_DvAspect(this.value);

  final String value;

  static S_ST_DvAspect? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_OleUpdate {
  OLEUPDATE_ALWAYS('OLEUPDATE_ALWAYS'),
  OLEUPDATE_ONCALL('OLEUPDATE_ONCALL');

  const S_ST_OleUpdate(this.value);

  final String value;

  static S_ST_OleUpdate? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_WebSourceType {
  sheet('sheet'),
  printArea('printArea'),
  autoFilter('autoFilter'),
  range('range'),
  chart('chart'),
  pivotTable('pivotTable'),
  query('query'),
  label('label');

  const S_ST_WebSourceType(this.value);

  final String value;

  static S_ST_WebSourceType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_PaneState {
  split('split'),
  frozen('frozen'),
  frozenSplit('frozenSplit');

  const S_ST_PaneState(this.value);

  final String value;

  static S_ST_PaneState? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_MdxFunctionType {
  m('m'),
  v('v'),
  s('s'),
  c('c'),
  r('r'),
  p('p'),
  k('k');

  const S_ST_MdxFunctionType(this.value);

  final String value;

  static S_ST_MdxFunctionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_MdxSetOrder {
  u('u'),
  a('a'),
  d('d'),
  aa('aa'),
  ad('ad'),
  na('na'),
  nd('nd');

  const S_ST_MdxSetOrder(this.value);

  final String value;

  static S_ST_MdxSetOrder? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_MdxKPIProperty {
  v('v'),
  g('g'),
  s('s'),
  t('t'),
  w('w'),
  m('m');

  const S_ST_MdxKPIProperty(this.value);

  final String value;

  static S_ST_MdxKPIProperty? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_BorderStyle {
  none('none'),
  thin('thin'),
  medium('medium'),
  dashed('dashed'),
  dotted('dotted'),
  thick('thick'),
  double_('double'),
  hair('hair'),
  mediumDashed('mediumDashed'),
  dashDot('dashDot'),
  mediumDashDot('mediumDashDot'),
  dashDotDot('dashDotDot'),
  mediumDashDotDot('mediumDashDotDot'),
  slantDashDot('slantDashDot');

  const S_ST_BorderStyle(this.value);

  final String value;

  static S_ST_BorderStyle? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_PatternType {
  none('none'),
  solid('solid'),
  mediumGray('mediumGray'),
  darkGray('darkGray'),
  lightGray('lightGray'),
  darkHorizontal('darkHorizontal'),
  darkVertical('darkVertical'),
  darkDown('darkDown'),
  darkUp('darkUp'),
  darkGrid('darkGrid'),
  darkTrellis('darkTrellis'),
  lightHorizontal('lightHorizontal'),
  lightVertical('lightVertical'),
  lightDown('lightDown'),
  lightUp('lightUp'),
  lightGrid('lightGrid'),
  lightTrellis('lightTrellis'),
  gray125('gray125'),
  gray0625('gray0625');

  const S_ST_PatternType(this.value);

  final String value;

  static S_ST_PatternType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_GradientType {
  linear('linear'),
  path('path');

  const S_ST_GradientType(this.value);

  final String value;

  static S_ST_GradientType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_HorizontalAlignment {
  general('general'),
  left('left'),
  center('center'),
  right('right'),
  fill('fill'),
  justify('justify'),
  centerContinuous('centerContinuous'),
  distributed('distributed');

  const S_ST_HorizontalAlignment(this.value);

  final String value;

  static S_ST_HorizontalAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_VerticalAlignment {
  top('top'),
  center('center'),
  bottom('bottom'),
  justify('justify'),
  distributed('distributed');

  const S_ST_VerticalAlignment(this.value);

  final String value;

  static S_ST_VerticalAlignment? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_TableStyleType {
  wholeTable('wholeTable'),
  headerRow('headerRow'),
  totalRow('totalRow'),
  firstColumn('firstColumn'),
  lastColumn('lastColumn'),
  firstRowStripe('firstRowStripe'),
  secondRowStripe('secondRowStripe'),
  firstColumnStripe('firstColumnStripe'),
  secondColumnStripe('secondColumnStripe'),
  firstHeaderCell('firstHeaderCell'),
  lastHeaderCell('lastHeaderCell'),
  firstTotalCell('firstTotalCell'),
  lastTotalCell('lastTotalCell'),
  firstSubtotalColumn('firstSubtotalColumn'),
  secondSubtotalColumn('secondSubtotalColumn'),
  thirdSubtotalColumn('thirdSubtotalColumn'),
  firstSubtotalRow('firstSubtotalRow'),
  secondSubtotalRow('secondSubtotalRow'),
  thirdSubtotalRow('thirdSubtotalRow'),
  blankRow('blankRow'),
  firstColumnSubheading('firstColumnSubheading'),
  secondColumnSubheading('secondColumnSubheading'),
  thirdColumnSubheading('thirdColumnSubheading'),
  firstRowSubheading('firstRowSubheading'),
  secondRowSubheading('secondRowSubheading'),
  thirdRowSubheading('thirdRowSubheading'),
  pageFieldLabels('pageFieldLabels'),
  pageFieldValues('pageFieldValues');

  const S_ST_TableStyleType(this.value);

  final String value;

  static S_ST_TableStyleType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_FontScheme {
  none('none'),
  major('major'),
  minor('minor');

  const S_ST_FontScheme(this.value);

  final String value;

  static S_ST_FontScheme? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_UnderlineValues {
  single('single'),
  double_('double'),
  singleAccounting('singleAccounting'),
  doubleAccounting('doubleAccounting'),
  none('none');

  const S_ST_UnderlineValues(this.value);

  final String value;

  static S_ST_UnderlineValues? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_DdeValueType {
  nil('nil'),
  b('b'),
  n('n'),
  e('e'),
  str('str');

  const S_ST_DdeValueType(this.value);

  final String value;

  static S_ST_DdeValueType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_TableType {
  worksheet('worksheet'),
  xml('xml'),
  queryTable('queryTable');

  const S_ST_TableType(this.value);

  final String value;

  static S_ST_TableType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_TotalsRowFunction {
  none('none'),
  sum('sum'),
  min('min'),
  max('max'),
  average('average'),
  count('count'),
  countNums('countNums'),
  stdDev('stdDev'),
  var_('var'),
  custom('custom');

  const S_ST_TotalsRowFunction(this.value);

  final String value;

  static S_ST_TotalsRowFunction? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_VolDepType {
  realTimeData('realTimeData'),
  olapFunctions('olapFunctions');

  const S_ST_VolDepType(this.value);

  final String value;

  static S_ST_VolDepType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_VolValueType {
  b('b'),
  n('n'),
  e('e'),
  s('s');

  const S_ST_VolValueType(this.value);

  final String value;

  static S_ST_VolValueType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Visibility {
  visible('visible'),
  hidden('hidden'),
  veryHidden('veryHidden');

  const S_ST_Visibility(this.value);

  final String value;

  static S_ST_Visibility? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Comments {
  commNone('commNone'),
  commIndicator('commIndicator'),
  commIndAndComment('commIndAndComment');

  const S_ST_Comments(this.value);

  final String value;

  static S_ST_Comments? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_Objects {
  all('all'),
  placeholders('placeholders'),
  none('none');

  const S_ST_Objects(this.value);

  final String value;

  static S_ST_Objects? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_SheetState {
  visible('visible'),
  hidden('hidden'),
  veryHidden('veryHidden');

  const S_ST_SheetState(this.value);

  final String value;

  static S_ST_SheetState? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_UpdateLinks {
  userSet('userSet'),
  never('never'),
  always('always');

  const S_ST_UpdateLinks(this.value);

  final String value;

  static S_ST_UpdateLinks? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_SmartTagShow {
  all('all'),
  none('none'),
  noIndicator('noIndicator');

  const S_ST_SmartTagShow(this.value);

  final String value;

  static S_ST_SmartTagShow? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_CalcMode {
  manual('manual'),
  auto('auto'),
  autoNoTable('autoNoTable');

  const S_ST_CalcMode(this.value);

  final String value;

  static S_ST_CalcMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_RefMode {
  A1('A1'),
  R1C1('R1C1');

  const S_ST_RefMode(this.value);

  final String value;

  static S_ST_RefMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum S_ST_TargetScreenSize {
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

  const S_ST_TargetScreenSize(this.value);

  final String value;

  static S_ST_TargetScreenSize? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}
