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
    return node.getAttribute('ref');
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'filterColumn',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FilterColumn(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SortState(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_FilterColumn(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get colId {
    return int.parse(node.getAttribute('colId')!);
  }

  bool? get hiddenButton {
    return node.getAttribute('hiddenButton') == '1' ||
        node.getAttribute('hiddenButton') == 'true' ||
        node.getAttribute('hiddenButton') == 'on';
  }

  bool? get showButton {
    return node.getAttribute('showButton') == '1' ||
        node.getAttribute('showButton') == 'true' ||
        node.getAttribute('showButton') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('colId') == null) {
      errors.add(
        "Missing required attribute 'colId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'filters',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Filters(childNode).validate());
    }
    for (final childNode in node.findElements(
      'top10',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Top10(childNode).validate());
    }
    for (final childNode in node.findElements(
      'customFilters',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomFilters(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dynamicFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DynamicFilter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'colorFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ColorFilter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'iconFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_IconFilter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Filters(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get blank {
    return node.getAttribute('blank') == '1' ||
        node.getAttribute('blank') == 'true' ||
        node.getAttribute('blank') == 'on';
  }

  ST_CalendarType? get calendarType {
    return node.getAttribute('calendarType') != null
        ? ST_CalendarType.fromValue(node.getAttribute('calendarType')!)
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

  List<String> validate() {
    final errors = <String>[];
    final v_calendarType = node.getAttribute('calendarType');
    if (v_calendarType != null &&
        ST_CalendarType.fromValue(v_calendarType) == null) {
      errors.add(
        "Invalid enum value for attribute 'calendarType' in ${node.name.qualified}: $v_calendarType",
      );
    }
    for (final childNode in node.findElements(
      'filter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Filter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dateGroupItem',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DateGroupItem(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Filter(_i1.XmlElement node) implements _i1.XmlElement {
  String? get val {
    return node.getAttribute('val');
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_CustomFilters(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get and {
    return node.getAttribute('and') == '1' ||
        node.getAttribute('and') == 'true' ||
        node.getAttribute('and') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'customFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomFilter(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CustomFilter(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_FilterOperator? get operator_ {
    return node.getAttribute('operator') != null
        ? S_ST_FilterOperator.fromValue(node.getAttribute('operator')!)
        : null;
  }

  String? get val {
    return node.getAttribute('val');
  }

  List<String> validate() {
    final errors = <String>[];
    final v_operator = node.getAttribute('operator');
    if (v_operator != null &&
        S_ST_FilterOperator.fromValue(v_operator) == null) {
      errors.add(
        "Invalid enum value for attribute 'operator' in ${node.name.qualified}: $v_operator",
      );
    }
    return errors;
  }
}

extension type S_CT_Top10(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get top {
    return node.getAttribute('top') == '1' ||
        node.getAttribute('top') == 'true' ||
        node.getAttribute('top') == 'on';
  }

  bool? get percent {
    return node.getAttribute('percent') == '1' ||
        node.getAttribute('percent') == 'true' ||
        node.getAttribute('percent') == 'on';
  }

  double get val {
    return double.parse(node.getAttribute('val')!);
  }

  double? get filterVal {
    return node.getAttribute('filterVal') != null
        ? double.tryParse(node.getAttribute('filterVal')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_ColorFilter(_i1.XmlElement node) implements _i1.XmlElement {
  String? get dxfId {
    return node.getAttribute('dxfId');
  }

  bool? get cellColor {
    return node.getAttribute('cellColor') == '1' ||
        node.getAttribute('cellColor') == 'true' ||
        node.getAttribute('cellColor') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_IconFilter(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_IconSetType get iconSet {
    return S_ST_IconSetType.fromValue(node.getAttribute('iconSet')!)!;
  }

  int? get iconId {
    return node.getAttribute('iconId') != null
        ? int.tryParse(node.getAttribute('iconId')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('iconSet') == null) {
      errors.add(
        "Missing required attribute 'iconSet' in ${node.name.qualified}",
      );
    }
    final v_iconSet = node.getAttribute('iconSet');
    if (v_iconSet != null && S_ST_IconSetType.fromValue(v_iconSet) == null) {
      errors.add(
        "Invalid enum value for attribute 'iconSet' in ${node.name.qualified}: $v_iconSet",
      );
    }
    return errors;
  }
}

extension type S_CT_DynamicFilter(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_DynamicFilterType get type {
    return S_ST_DynamicFilterType.fromValue(node.getAttribute('type')!)!;
  }

  double? get val {
    return node.getAttribute('val') != null
        ? double.tryParse(node.getAttribute('val')!)
        : null;
  }

  String? get valIso {
    return node.getAttribute('valIso');
  }

  double? get maxVal {
    return node.getAttribute('maxVal') != null
        ? double.tryParse(node.getAttribute('maxVal')!)
        : null;
  }

  String? get maxValIso {
    return node.getAttribute('maxValIso');
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('type') == null) {
      errors.add("Missing required attribute 'type' in ${node.name.qualified}");
    }
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_DynamicFilterType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    return errors;
  }
}

extension type S_CT_SortState(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get columnSort {
    return node.getAttribute('columnSort') == '1' ||
        node.getAttribute('columnSort') == 'true' ||
        node.getAttribute('columnSort') == 'on';
  }

  bool? get caseSensitive {
    return node.getAttribute('caseSensitive') == '1' ||
        node.getAttribute('caseSensitive') == 'true' ||
        node.getAttribute('caseSensitive') == 'on';
  }

  S_ST_SortMethod? get sortMethod {
    return node.getAttribute('sortMethod') != null
        ? S_ST_SortMethod.fromValue(node.getAttribute('sortMethod')!)
        : null;
  }

  String get ref {
    return node.getAttribute('ref')!;
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

  List<String> validate() {
    final errors = <String>[];
    final v_sortMethod = node.getAttribute('sortMethod');
    if (v_sortMethod != null &&
        S_ST_SortMethod.fromValue(v_sortMethod) == null) {
      errors.add(
        "Invalid enum value for attribute 'sortMethod' in ${node.name.qualified}: $v_sortMethod",
      );
    }
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'sortCondition',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SortCondition(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SortCondition(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get descending {
    return node.getAttribute('descending') == '1' ||
        node.getAttribute('descending') == 'true' ||
        node.getAttribute('descending') == 'on';
  }

  S_ST_SortBy? get sortBy {
    return node.getAttribute('sortBy') != null
        ? S_ST_SortBy.fromValue(node.getAttribute('sortBy')!)
        : null;
  }

  String get ref {
    return node.getAttribute('ref')!;
  }

  String? get customList {
    return node.getAttribute('customList');
  }

  String? get dxfId {
    return node.getAttribute('dxfId');
  }

  S_ST_IconSetType? get iconSet {
    return node.getAttribute('iconSet') != null
        ? S_ST_IconSetType.fromValue(node.getAttribute('iconSet')!)
        : null;
  }

  int? get iconId {
    return node.getAttribute('iconId') != null
        ? int.tryParse(node.getAttribute('iconId')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_sortBy = node.getAttribute('sortBy');
    if (v_sortBy != null && S_ST_SortBy.fromValue(v_sortBy) == null) {
      errors.add(
        "Invalid enum value for attribute 'sortBy' in ${node.name.qualified}: $v_sortBy",
      );
    }
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    final v_iconSet = node.getAttribute('iconSet');
    if (v_iconSet != null && S_ST_IconSetType.fromValue(v_iconSet) == null) {
      errors.add(
        "Invalid enum value for attribute 'iconSet' in ${node.name.qualified}: $v_iconSet",
      );
    }
    return errors;
  }
}

extension type S_CT_DateGroupItem(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get year {
    return int.parse(node.getAttribute('year')!);
  }

  int? get month {
    return node.getAttribute('month') != null
        ? int.tryParse(node.getAttribute('month')!)
        : null;
  }

  int? get day {
    return node.getAttribute('day') != null
        ? int.tryParse(node.getAttribute('day')!)
        : null;
  }

  int? get hour {
    return node.getAttribute('hour') != null
        ? int.tryParse(node.getAttribute('hour')!)
        : null;
  }

  int? get minute {
    return node.getAttribute('minute') != null
        ? int.tryParse(node.getAttribute('minute')!)
        : null;
  }

  int? get second {
    return node.getAttribute('second') != null
        ? int.tryParse(node.getAttribute('second')!)
        : null;
  }

  S_ST_DateTimeGrouping get dateTimeGrouping {
    return S_ST_DateTimeGrouping.fromValue(
      node.getAttribute('dateTimeGrouping')!,
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('year') == null) {
      errors.add("Missing required attribute 'year' in ${node.name.qualified}");
    }
    if (node.getAttribute('dateTimeGrouping') == null) {
      errors.add(
        "Missing required attribute 'dateTimeGrouping' in ${node.name.qualified}",
      );
    }
    final v_dateTimeGrouping = node.getAttribute('dateTimeGrouping');
    if (v_dateTimeGrouping != null &&
        S_ST_DateTimeGrouping.fromValue(v_dateTimeGrouping) == null) {
      errors.add(
        "Invalid enum value for attribute 'dateTimeGrouping' in ${node.name.qualified}: $v_dateTimeGrouping",
      );
    }
    return errors;
  }
}

extension type S_CT_XStringElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get v {
    return node.getAttribute('v')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('v') == null) {
      errors.add("Missing required attribute 'v' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Extension(_i1.XmlElement node) implements _i1.XmlElement {
  String? get uri {
    return node.getAttribute('uri');
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_ObjectAnchor(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get moveWithCells {
    return node.getAttribute('moveWithCells') == '1' ||
        node.getAttribute('moveWithCells') == 'true' ||
        node.getAttribute('moveWithCells') == 'on';
  }

  bool? get sizeWithCells {
    return node.getAttribute('sizeWithCells') == '1' ||
        node.getAttribute('sizeWithCells') == 'true' ||
        node.getAttribute('sizeWithCells') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'ext',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(P_CT_Extension(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'c',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CalcCell(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CalcCell(_i1.XmlElement node) implements _i1.XmlElement {
  String? get r {
    return node.getAttribute('r');
  }

  String? get ref {
    return node.getAttribute('ref');
  }

  int? get i {
    return node.getAttribute('i') != null
        ? int.tryParse(node.getAttribute('i')!)
        : null;
  }

  bool? get s {
    return node.getAttribute('s') == '1' ||
        node.getAttribute('s') == 'true' ||
        node.getAttribute('s') == 'on';
  }

  bool? get l {
    return node.getAttribute('l') == '1' ||
        node.getAttribute('l') == 'true' ||
        node.getAttribute('l') == 'on';
  }

  bool? get t {
    return node.getAttribute('t') == '1' ||
        node.getAttribute('t') == 'true' ||
        node.getAttribute('t') == 'on';
  }

  bool? get a {
    return node.getAttribute('a') == '1' ||
        node.getAttribute('a') == 'true' ||
        node.getAttribute('a') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'authors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Authors(childNode).validate());
    }
    for (final childNode in node.findElements(
      'commentList',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CommentList(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'comment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Comment(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Comment(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute('ref')!;
  }

  int get authorId {
    return int.parse(node.getAttribute('authorId')!);
  }

  String? get guid {
    return node.getAttribute('guid');
  }

  int? get shapeId {
    return node.getAttribute('shapeId') != null
        ? int.tryParse(node.getAttribute('shapeId')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    if (node.getAttribute('authorId') == null) {
      errors.add(
        "Missing required attribute 'authorId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'text',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Rst(childNode).validate());
    }
    for (final childNode in node.findElements(
      'commentPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CommentPr(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CommentPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get locked {
    return node.getAttribute('locked') == '1' ||
        node.getAttribute('locked') == 'true' ||
        node.getAttribute('locked') == 'on';
  }

  bool? get defaultSize {
    return node.getAttribute('defaultSize') == '1' ||
        node.getAttribute('defaultSize') == 'true' ||
        node.getAttribute('defaultSize') == 'on';
  }

  bool? get print {
    return node.getAttribute('print') == '1' ||
        node.getAttribute('print') == 'true' ||
        node.getAttribute('print') == 'on';
  }

  bool? get disabled {
    return node.getAttribute('disabled') == '1' ||
        node.getAttribute('disabled') == 'true' ||
        node.getAttribute('disabled') == 'on';
  }

  bool? get autoFill {
    return node.getAttribute('autoFill') == '1' ||
        node.getAttribute('autoFill') == 'true' ||
        node.getAttribute('autoFill') == 'on';
  }

  bool? get autoLine {
    return node.getAttribute('autoLine') == '1' ||
        node.getAttribute('autoLine') == 'true' ||
        node.getAttribute('autoLine') == 'on';
  }

  String? get altText {
    return node.getAttribute('altText');
  }

  S_ST_TextHAlign? get textHAlign {
    return node.getAttribute('textHAlign') != null
        ? S_ST_TextHAlign.fromValue(node.getAttribute('textHAlign')!)
        : null;
  }

  S_ST_TextVAlign? get textVAlign {
    return node.getAttribute('textVAlign') != null
        ? S_ST_TextVAlign.fromValue(node.getAttribute('textVAlign')!)
        : null;
  }

  bool? get lockText {
    return node.getAttribute('lockText') == '1' ||
        node.getAttribute('lockText') == 'true' ||
        node.getAttribute('lockText') == 'on';
  }

  bool? get justLastX {
    return node.getAttribute('justLastX') == '1' ||
        node.getAttribute('justLastX') == 'true' ||
        node.getAttribute('justLastX') == 'on';
  }

  bool? get autoScale {
    return node.getAttribute('autoScale') == '1' ||
        node.getAttribute('autoScale') == 'true' ||
        node.getAttribute('autoScale') == 'on';
  }

  S_CT_ObjectAnchor? get anchor {
    final e = node.getElement(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ObjectAnchor(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_textHAlign = node.getAttribute('textHAlign');
    if (v_textHAlign != null &&
        S_ST_TextHAlign.fromValue(v_textHAlign) == null) {
      errors.add(
        "Invalid enum value for attribute 'textHAlign' in ${node.name.qualified}: $v_textHAlign",
      );
    }
    final v_textVAlign = node.getAttribute('textVAlign');
    if (v_textVAlign != null &&
        S_ST_TextVAlign.fromValue(v_textVAlign) == null) {
      errors.add(
        "Invalid enum value for attribute 'textVAlign' in ${node.name.qualified}: $v_textVAlign",
      );
    }
    for (final childNode in node.findElements(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ObjectAnchor(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MapInfo(_i1.XmlElement node) implements _i1.XmlElement {
  String get SelectionNamespaces {
    return node.getAttribute('SelectionNamespaces')!;
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('SelectionNamespaces') == null) {
      errors.add(
        "Missing required attribute 'SelectionNamespaces' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'Schema',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(CT_Schema(childNode).validate());
    }
    for (final childNode in node.findElements(
      'Map',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Map(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Schema(_i1.XmlElement node) implements _i1.XmlElement {
  String get ID {
    return node.getAttribute('ID')!;
  }

  String? get SchemaRef {
    return node.getAttribute('SchemaRef');
  }

  String? get Namespace {
    return node.getAttribute('Namespace');
  }

  String? get SchemaLanguage {
    return node.getAttribute('SchemaLanguage');
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ID') == null) {
      errors.add("Missing required attribute 'ID' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Map(_i1.XmlElement node) implements _i1.XmlElement {
  int get ID {
    return int.parse(node.getAttribute('ID')!);
  }

  String get Name {
    return node.getAttribute('Name')!;
  }

  String get RootElement {
    return node.getAttribute('RootElement')!;
  }

  String get SchemaID {
    return node.getAttribute('SchemaID')!;
  }

  bool get ShowImportExportValidationErrors {
    return node.getAttribute('ShowImportExportValidationErrors') == '1' ||
        node.getAttribute('ShowImportExportValidationErrors') == 'true' ||
        node.getAttribute('ShowImportExportValidationErrors') == 'on';
  }

  bool get AutoFit {
    return node.getAttribute('AutoFit') == '1' ||
        node.getAttribute('AutoFit') == 'true' ||
        node.getAttribute('AutoFit') == 'on';
  }

  bool get Append {
    return node.getAttribute('Append') == '1' ||
        node.getAttribute('Append') == 'true' ||
        node.getAttribute('Append') == 'on';
  }

  bool get PreserveSortAFLayout {
    return node.getAttribute('PreserveSortAFLayout') == '1' ||
        node.getAttribute('PreserveSortAFLayout') == 'true' ||
        node.getAttribute('PreserveSortAFLayout') == 'on';
  }

  bool get PreserveFormat {
    return node.getAttribute('PreserveFormat') == '1' ||
        node.getAttribute('PreserveFormat') == 'true' ||
        node.getAttribute('PreserveFormat') == 'on';
  }

  S_CT_DataBinding? get DataBinding {
    final e = node.getElement(
      'DataBinding',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataBinding(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ID') == null) {
      errors.add("Missing required attribute 'ID' in ${node.name.qualified}");
    }
    if (node.getAttribute('Name') == null) {
      errors.add("Missing required attribute 'Name' in ${node.name.qualified}");
    }
    if (node.getAttribute('RootElement') == null) {
      errors.add(
        "Missing required attribute 'RootElement' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('SchemaID') == null) {
      errors.add(
        "Missing required attribute 'SchemaID' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('ShowImportExportValidationErrors') == null) {
      errors.add(
        "Missing required attribute 'ShowImportExportValidationErrors' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('AutoFit') == null) {
      errors.add(
        "Missing required attribute 'AutoFit' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('Append') == null) {
      errors.add(
        "Missing required attribute 'Append' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('PreserveSortAFLayout') == null) {
      errors.add(
        "Missing required attribute 'PreserveSortAFLayout' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('PreserveFormat') == null) {
      errors.add(
        "Missing required attribute 'PreserveFormat' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'DataBinding',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataBinding(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DataBinding(_i1.XmlElement node) implements _i1.XmlElement {
  String? get DataBindingName {
    return node.getAttribute('DataBindingName');
  }

  bool? get FileBinding {
    return node.getAttribute('FileBinding') == '1' ||
        node.getAttribute('FileBinding') == 'true' ||
        node.getAttribute('FileBinding') == 'on';
  }

  int? get ConnectionID {
    return node.getAttribute('ConnectionID') != null
        ? int.tryParse(node.getAttribute('ConnectionID')!)
        : null;
  }

  String? get FileBindingName {
    return node.getAttribute('FileBindingName');
  }

  int get DataBindingLoadMode {
    return int.parse(node.getAttribute('DataBindingLoadMode')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('DataBindingLoadMode') == null) {
      errors.add(
        "Missing required attribute 'DataBindingLoadMode' in ${node.name.qualified}",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'connection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Connection(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Connection(_i1.XmlElement node) implements _i1.XmlElement {
  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String? get sourceFile {
    return node.getAttribute('sourceFile');
  }

  String? get odcFile {
    return node.getAttribute('odcFile');
  }

  bool? get keepAlive {
    return node.getAttribute('keepAlive') == '1' ||
        node.getAttribute('keepAlive') == 'true' ||
        node.getAttribute('keepAlive') == 'on';
  }

  int? get interval {
    return node.getAttribute('interval') != null
        ? int.tryParse(node.getAttribute('interval')!)
        : null;
  }

  String? get name {
    return node.getAttribute('name');
  }

  String? get description {
    return node.getAttribute('description');
  }

  int? get type {
    return node.getAttribute('type') != null
        ? int.tryParse(node.getAttribute('type')!)
        : null;
  }

  int? get reconnectionMethod {
    return node.getAttribute('reconnectionMethod') != null
        ? int.tryParse(node.getAttribute('reconnectionMethod')!)
        : null;
  }

  int get refreshedVersion {
    return int.parse(node.getAttribute('refreshedVersion')!);
  }

  int? get minRefreshableVersion {
    return node.getAttribute('minRefreshableVersion') != null
        ? int.tryParse(node.getAttribute('minRefreshableVersion')!)
        : null;
  }

  bool? get savePassword {
    return node.getAttribute('savePassword') == '1' ||
        node.getAttribute('savePassword') == 'true' ||
        node.getAttribute('savePassword') == 'on';
  }

  bool? get new_ {
    return node.getAttribute('new') == '1' ||
        node.getAttribute('new') == 'true' ||
        node.getAttribute('new') == 'on';
  }

  bool? get deleted {
    return node.getAttribute('deleted') == '1' ||
        node.getAttribute('deleted') == 'true' ||
        node.getAttribute('deleted') == 'on';
  }

  bool? get onlyUseConnectionFile {
    return node.getAttribute('onlyUseConnectionFile') == '1' ||
        node.getAttribute('onlyUseConnectionFile') == 'true' ||
        node.getAttribute('onlyUseConnectionFile') == 'on';
  }

  bool? get background {
    return node.getAttribute('background') == '1' ||
        node.getAttribute('background') == 'true' ||
        node.getAttribute('background') == 'on';
  }

  bool? get refreshOnLoad {
    return node.getAttribute('refreshOnLoad') == '1' ||
        node.getAttribute('refreshOnLoad') == 'true' ||
        node.getAttribute('refreshOnLoad') == 'on';
  }

  bool? get saveData {
    return node.getAttribute('saveData') == '1' ||
        node.getAttribute('saveData') == 'true' ||
        node.getAttribute('saveData') == 'on';
  }

  S_ST_CredMethod? get credentials {
    return node.getAttribute('credentials') != null
        ? S_ST_CredMethod.fromValue(node.getAttribute('credentials')!)
        : null;
  }

  String? get singleSignOnId {
    return node.getAttribute('singleSignOnId');
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    if (node.getAttribute('refreshedVersion') == null) {
      errors.add(
        "Missing required attribute 'refreshedVersion' in ${node.name.qualified}",
      );
    }
    final v_credentials = node.getAttribute('credentials');
    if (v_credentials != null &&
        S_ST_CredMethod.fromValue(v_credentials) == null) {
      errors.add(
        "Invalid enum value for attribute 'credentials' in ${node.name.qualified}: $v_credentials",
      );
    }
    for (final childNode in node.findElements(
      'dbPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DbPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'olapPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OlapPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'webPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WebPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'textPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TextPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'parameters',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Parameters(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DbPr(_i1.XmlElement node) implements _i1.XmlElement {
  String get connection {
    return node.getAttribute('connection')!;
  }

  String? get command {
    return node.getAttribute('command');
  }

  String? get serverCommand {
    return node.getAttribute('serverCommand');
  }

  int? get commandType {
    return node.getAttribute('commandType') != null
        ? int.tryParse(node.getAttribute('commandType')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('connection') == null) {
      errors.add(
        "Missing required attribute 'connection' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_OlapPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get local {
    return node.getAttribute('local') == '1' ||
        node.getAttribute('local') == 'true' ||
        node.getAttribute('local') == 'on';
  }

  String? get localConnection {
    return node.getAttribute('localConnection');
  }

  bool? get localRefresh {
    return node.getAttribute('localRefresh') == '1' ||
        node.getAttribute('localRefresh') == 'true' ||
        node.getAttribute('localRefresh') == 'on';
  }

  bool? get sendLocale {
    return node.getAttribute('sendLocale') == '1' ||
        node.getAttribute('sendLocale') == 'true' ||
        node.getAttribute('sendLocale') == 'on';
  }

  int? get rowDrillCount {
    return node.getAttribute('rowDrillCount') != null
        ? int.tryParse(node.getAttribute('rowDrillCount')!)
        : null;
  }

  bool? get serverFill {
    return node.getAttribute('serverFill') == '1' ||
        node.getAttribute('serverFill') == 'true' ||
        node.getAttribute('serverFill') == 'on';
  }

  bool? get serverNumberFormat {
    return node.getAttribute('serverNumberFormat') == '1' ||
        node.getAttribute('serverNumberFormat') == 'true' ||
        node.getAttribute('serverNumberFormat') == 'on';
  }

  bool? get serverFont {
    return node.getAttribute('serverFont') == '1' ||
        node.getAttribute('serverFont') == 'true' ||
        node.getAttribute('serverFont') == 'on';
  }

  bool? get serverFontColor {
    return node.getAttribute('serverFontColor') == '1' ||
        node.getAttribute('serverFontColor') == 'true' ||
        node.getAttribute('serverFontColor') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_WebPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get xml {
    return node.getAttribute('xml') == '1' ||
        node.getAttribute('xml') == 'true' ||
        node.getAttribute('xml') == 'on';
  }

  bool? get sourceData {
    return node.getAttribute('sourceData') == '1' ||
        node.getAttribute('sourceData') == 'true' ||
        node.getAttribute('sourceData') == 'on';
  }

  bool? get parsePre {
    return node.getAttribute('parsePre') == '1' ||
        node.getAttribute('parsePre') == 'true' ||
        node.getAttribute('parsePre') == 'on';
  }

  bool? get consecutive {
    return node.getAttribute('consecutive') == '1' ||
        node.getAttribute('consecutive') == 'true' ||
        node.getAttribute('consecutive') == 'on';
  }

  bool? get firstRow {
    return node.getAttribute('firstRow') == '1' ||
        node.getAttribute('firstRow') == 'true' ||
        node.getAttribute('firstRow') == 'on';
  }

  bool? get xl97 {
    return node.getAttribute('xl97') == '1' ||
        node.getAttribute('xl97') == 'true' ||
        node.getAttribute('xl97') == 'on';
  }

  bool? get textDates {
    return node.getAttribute('textDates') == '1' ||
        node.getAttribute('textDates') == 'true' ||
        node.getAttribute('textDates') == 'on';
  }

  bool? get xl2000 {
    return node.getAttribute('xl2000') == '1' ||
        node.getAttribute('xl2000') == 'true' ||
        node.getAttribute('xl2000') == 'on';
  }

  String? get url {
    return node.getAttribute('url');
  }

  String? get post {
    return node.getAttribute('post');
  }

  bool? get htmlTables {
    return node.getAttribute('htmlTables') == '1' ||
        node.getAttribute('htmlTables') == 'true' ||
        node.getAttribute('htmlTables') == 'on';
  }

  S_ST_HtmlFmt? get htmlFormat {
    return node.getAttribute('htmlFormat') != null
        ? S_ST_HtmlFmt.fromValue(node.getAttribute('htmlFormat')!)
        : null;
  }

  String? get editPage {
    return node.getAttribute('editPage');
  }

  S_CT_Tables? get tables {
    final e = node.getElement(
      'tables',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Tables(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_htmlFormat = node.getAttribute('htmlFormat');
    if (v_htmlFormat != null && S_ST_HtmlFmt.fromValue(v_htmlFormat) == null) {
      errors.add(
        "Invalid enum value for attribute 'htmlFormat' in ${node.name.qualified}: $v_htmlFormat",
      );
    }
    for (final childNode in node.findElements(
      'tables',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tables(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Parameters(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'parameter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Parameter(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Parameter(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  int? get sqlType {
    return node.getAttribute('sqlType') != null
        ? int.tryParse(node.getAttribute('sqlType')!)
        : null;
  }

  S_ST_ParameterType? get parameterType {
    return node.getAttribute('parameterType') != null
        ? S_ST_ParameterType.fromValue(node.getAttribute('parameterType')!)
        : null;
  }

  bool? get refreshOnChange {
    return node.getAttribute('refreshOnChange') == '1' ||
        node.getAttribute('refreshOnChange') == 'true' ||
        node.getAttribute('refreshOnChange') == 'on';
  }

  String? get prompt {
    return node.getAttribute('prompt');
  }

  bool? get boolean {
    return node.getAttribute('boolean') == '1' ||
        node.getAttribute('boolean') == 'true' ||
        node.getAttribute('boolean') == 'on';
  }

  double? get double_ {
    return node.getAttribute('double') != null
        ? double.tryParse(node.getAttribute('double')!)
        : null;
  }

  int? get integer {
    return node.getAttribute('integer') != null
        ? int.tryParse(node.getAttribute('integer')!)
        : null;
  }

  String? get string {
    return node.getAttribute('string');
  }

  String? get cell {
    return node.getAttribute('cell');
  }

  List<String> validate() {
    final errors = <String>[];
    final v_parameterType = node.getAttribute('parameterType');
    if (v_parameterType != null &&
        S_ST_ParameterType.fromValue(v_parameterType) == null) {
      errors.add(
        "Invalid enum value for attribute 'parameterType' in ${node.name.qualified}: $v_parameterType",
      );
    }
    return errors;
  }
}

extension type S_CT_Tables(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'm',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableMissing(childNode).validate());
    }
    for (final childNode in node.findElements(
      's',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_XStringElement(childNode).validate());
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Index(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TableMissing(_i1.XmlElement node)
    implements _i1.XmlElement {
  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_TextPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get prompt {
    return node.getAttribute('prompt') == '1' ||
        node.getAttribute('prompt') == 'true' ||
        node.getAttribute('prompt') == 'on';
  }

  S_ST_FileType? get fileType {
    return node.getAttribute('fileType') != null
        ? S_ST_FileType.fromValue(node.getAttribute('fileType')!)
        : null;
  }

  int? get codePage {
    return node.getAttribute('codePage') != null
        ? int.tryParse(node.getAttribute('codePage')!)
        : null;
  }

  String? get characterSet {
    return node.getAttribute('characterSet');
  }

  int? get firstRow {
    return node.getAttribute('firstRow') != null
        ? int.tryParse(node.getAttribute('firstRow')!)
        : null;
  }

  String? get sourceFile {
    return node.getAttribute('sourceFile');
  }

  bool? get delimited {
    return node.getAttribute('delimited') == '1' ||
        node.getAttribute('delimited') == 'true' ||
        node.getAttribute('delimited') == 'on';
  }

  String? get decimal {
    return node.getAttribute('decimal');
  }

  String? get thousands {
    return node.getAttribute('thousands');
  }

  bool? get tab {
    return node.getAttribute('tab') == '1' ||
        node.getAttribute('tab') == 'true' ||
        node.getAttribute('tab') == 'on';
  }

  bool? get space {
    return node.getAttribute('space') == '1' ||
        node.getAttribute('space') == 'true' ||
        node.getAttribute('space') == 'on';
  }

  bool? get comma {
    return node.getAttribute('comma') == '1' ||
        node.getAttribute('comma') == 'true' ||
        node.getAttribute('comma') == 'on';
  }

  bool? get semicolon {
    return node.getAttribute('semicolon') == '1' ||
        node.getAttribute('semicolon') == 'true' ||
        node.getAttribute('semicolon') == 'on';
  }

  bool? get consecutive {
    return node.getAttribute('consecutive') == '1' ||
        node.getAttribute('consecutive') == 'true' ||
        node.getAttribute('consecutive') == 'on';
  }

  S_ST_Qualifier? get qualifier {
    return node.getAttribute('qualifier') != null
        ? S_ST_Qualifier.fromValue(node.getAttribute('qualifier')!)
        : null;
  }

  String? get delimiter {
    return node.getAttribute('delimiter');
  }

  S_CT_TextFields? get textFields {
    final e = node.getElement(
      'textFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_TextFields(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_fileType = node.getAttribute('fileType');
    if (v_fileType != null && S_ST_FileType.fromValue(v_fileType) == null) {
      errors.add(
        "Invalid enum value for attribute 'fileType' in ${node.name.qualified}: $v_fileType",
      );
    }
    final v_qualifier = node.getAttribute('qualifier');
    if (v_qualifier != null && S_ST_Qualifier.fromValue(v_qualifier) == null) {
      errors.add(
        "Invalid enum value for attribute 'qualifier' in ${node.name.qualified}: $v_qualifier",
      );
    }
    for (final childNode in node.findElements(
      'textFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TextFields(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TextFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'textField',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TextField(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TextField(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_ExternalConnectionType? get type {
    return node.getAttribute('type') != null
        ? S_ST_ExternalConnectionType.fromValue(node.getAttribute('type')!)
        : null;
  }

  int? get position {
    return node.getAttribute('position') != null
        ? int.tryParse(node.getAttribute('position')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_type = node.getAttribute('type');
    if (v_type != null &&
        S_ST_ExternalConnectionType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    return errors;
  }
}

extension type S_CT_PivotCacheDefinition(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  bool? get invalid {
    return node.getAttribute('invalid') == '1' ||
        node.getAttribute('invalid') == 'true' ||
        node.getAttribute('invalid') == 'on';
  }

  bool? get saveData {
    return node.getAttribute('saveData') == '1' ||
        node.getAttribute('saveData') == 'true' ||
        node.getAttribute('saveData') == 'on';
  }

  bool? get refreshOnLoad {
    return node.getAttribute('refreshOnLoad') == '1' ||
        node.getAttribute('refreshOnLoad') == 'true' ||
        node.getAttribute('refreshOnLoad') == 'on';
  }

  bool? get optimizeMemory {
    return node.getAttribute('optimizeMemory') == '1' ||
        node.getAttribute('optimizeMemory') == 'true' ||
        node.getAttribute('optimizeMemory') == 'on';
  }

  bool? get enableRefresh {
    return node.getAttribute('enableRefresh') == '1' ||
        node.getAttribute('enableRefresh') == 'true' ||
        node.getAttribute('enableRefresh') == 'on';
  }

  String? get refreshedBy {
    return node.getAttribute('refreshedBy');
  }

  double? get refreshedDate {
    return node.getAttribute('refreshedDate') != null
        ? double.tryParse(node.getAttribute('refreshedDate')!)
        : null;
  }

  String? get refreshedDateIso {
    return node.getAttribute('refreshedDateIso');
  }

  bool? get backgroundQuery {
    return node.getAttribute('backgroundQuery') == '1' ||
        node.getAttribute('backgroundQuery') == 'true' ||
        node.getAttribute('backgroundQuery') == 'on';
  }

  int? get missingItemsLimit {
    return node.getAttribute('missingItemsLimit') != null
        ? int.tryParse(node.getAttribute('missingItemsLimit')!)
        : null;
  }

  int? get createdVersion {
    return node.getAttribute('createdVersion') != null
        ? int.tryParse(node.getAttribute('createdVersion')!)
        : null;
  }

  int? get refreshedVersion {
    return node.getAttribute('refreshedVersion') != null
        ? int.tryParse(node.getAttribute('refreshedVersion')!)
        : null;
  }

  int? get minRefreshableVersion {
    return node.getAttribute('minRefreshableVersion') != null
        ? int.tryParse(node.getAttribute('minRefreshableVersion')!)
        : null;
  }

  int? get recordCount {
    return node.getAttribute('recordCount') != null
        ? int.tryParse(node.getAttribute('recordCount')!)
        : null;
  }

  bool? get upgradeOnRefresh {
    return node.getAttribute('upgradeOnRefresh') == '1' ||
        node.getAttribute('upgradeOnRefresh') == 'true' ||
        node.getAttribute('upgradeOnRefresh') == 'on';
  }

  bool? get tupleCache {
    return node.getAttribute('tupleCache') == '1' ||
        node.getAttribute('tupleCache') == 'true' ||
        node.getAttribute('tupleCache') == 'on';
  }

  bool? get supportSubquery {
    return node.getAttribute('supportSubquery') == '1' ||
        node.getAttribute('supportSubquery') == 'true' ||
        node.getAttribute('supportSubquery') == 'on';
  }

  bool? get supportAdvancedDrill {
    return node.getAttribute('supportAdvancedDrill') == '1' ||
        node.getAttribute('supportAdvancedDrill') == 'true' ||
        node.getAttribute('supportAdvancedDrill') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cacheSource',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CacheSource(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cacheFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CacheFields(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cacheHierarchies',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CacheHierarchies(childNode).validate());
    }
    for (final childNode in node.findElements(
      'kpis',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PCDKPIs(childNode).validate());
    }
    for (final childNode in node.findElements(
      'tupleCache',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TupleCache(childNode).validate());
    }
    for (final childNode in node.findElements(
      'calculatedItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CalculatedItems(childNode).validate());
    }
    for (final childNode in node.findElements(
      'calculatedMembers',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CalculatedMembers(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dimensions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Dimensions(childNode).validate());
    }
    for (final childNode in node.findElements(
      'measureGroups',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MeasureGroups(childNode).validate());
    }
    for (final childNode in node.findElements(
      'maps',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MeasureDimensionMaps(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CacheFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cacheField',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CacheField(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CacheField(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  String? get caption {
    return node.getAttribute('caption');
  }

  String? get propertyName {
    return node.getAttribute('propertyName');
  }

  bool? get serverField {
    return node.getAttribute('serverField') == '1' ||
        node.getAttribute('serverField') == 'true' ||
        node.getAttribute('serverField') == 'on';
  }

  bool? get uniqueList {
    return node.getAttribute('uniqueList') == '1' ||
        node.getAttribute('uniqueList') == 'true' ||
        node.getAttribute('uniqueList') == 'on';
  }

  String? get numFmtId {
    return node.getAttribute('numFmtId');
  }

  String? get formula {
    return node.getAttribute('formula');
  }

  int? get sqlType {
    return node.getAttribute('sqlType') != null
        ? int.tryParse(node.getAttribute('sqlType')!)
        : null;
  }

  int? get hierarchy {
    return node.getAttribute('hierarchy') != null
        ? int.tryParse(node.getAttribute('hierarchy')!)
        : null;
  }

  int? get level {
    return node.getAttribute('level') != null
        ? int.tryParse(node.getAttribute('level')!)
        : null;
  }

  bool? get databaseField {
    return node.getAttribute('databaseField') == '1' ||
        node.getAttribute('databaseField') == 'true' ||
        node.getAttribute('databaseField') == 'on';
  }

  int? get mappingCount {
    return node.getAttribute('mappingCount') != null
        ? int.tryParse(node.getAttribute('mappingCount')!)
        : null;
  }

  bool? get memberPropertyField {
    return node.getAttribute('memberPropertyField') == '1' ||
        node.getAttribute('memberPropertyField') == 'true' ||
        node.getAttribute('memberPropertyField') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'sharedItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SharedItems(childNode).validate());
    }
    for (final childNode in node.findElements(
      'fieldGroup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FieldGroup(childNode).validate());
    }
    for (final childNode in node.findElements(
      'mpMap',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_X(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CacheSource(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_SourceType get type {
    return S_ST_SourceType.fromValue(node.getAttribute('type')!)!;
  }

  int? get connectionId {
    return node.getAttribute('connectionId') != null
        ? int.tryParse(node.getAttribute('connectionId')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('type') == null) {
      errors.add("Missing required attribute 'type' in ${node.name.qualified}");
    }
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_SourceType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    for (final childNode in node.findElements(
      'worksheetSource',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WorksheetSource(childNode).validate());
    }
    for (final childNode in node.findElements(
      'consolidation',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Consolidation(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_WorksheetSource(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get ref {
    return node.getAttribute('ref');
  }

  String? get name {
    return node.getAttribute('name');
  }

  String? get sheet {
    return node.getAttribute('sheet');
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_Consolidation(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get autoPage {
    return node.getAttribute('autoPage') == '1' ||
        node.getAttribute('autoPage') == 'true' ||
        node.getAttribute('autoPage') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pages',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Pages(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rangeSets',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RangeSets(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Pages(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'page',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PCDSCPage(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PCDSCPage(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pageItem',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageItem(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PageItem(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_RangeSets(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'rangeSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RangeSet(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RangeSet(_i1.XmlElement node) implements _i1.XmlElement {
  int? get i1 {
    return node.getAttribute('i1') != null
        ? int.tryParse(node.getAttribute('i1')!)
        : null;
  }

  int? get i2 {
    return node.getAttribute('i2') != null
        ? int.tryParse(node.getAttribute('i2')!)
        : null;
  }

  int? get i3 {
    return node.getAttribute('i3') != null
        ? int.tryParse(node.getAttribute('i3')!)
        : null;
  }

  int? get i4 {
    return node.getAttribute('i4') != null
        ? int.tryParse(node.getAttribute('i4')!)
        : null;
  }

  String? get ref {
    return node.getAttribute('ref');
  }

  String? get name {
    return node.getAttribute('name');
  }

  String? get sheet {
    return node.getAttribute('sheet');
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_SharedItems(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get containsSemiMixedTypes {
    return node.getAttribute('containsSemiMixedTypes') == '1' ||
        node.getAttribute('containsSemiMixedTypes') == 'true' ||
        node.getAttribute('containsSemiMixedTypes') == 'on';
  }

  bool? get containsNonDate {
    return node.getAttribute('containsNonDate') == '1' ||
        node.getAttribute('containsNonDate') == 'true' ||
        node.getAttribute('containsNonDate') == 'on';
  }

  bool? get containsDate {
    return node.getAttribute('containsDate') == '1' ||
        node.getAttribute('containsDate') == 'true' ||
        node.getAttribute('containsDate') == 'on';
  }

  bool? get containsString {
    return node.getAttribute('containsString') == '1' ||
        node.getAttribute('containsString') == 'true' ||
        node.getAttribute('containsString') == 'on';
  }

  bool? get containsBlank {
    return node.getAttribute('containsBlank') == '1' ||
        node.getAttribute('containsBlank') == 'true' ||
        node.getAttribute('containsBlank') == 'on';
  }

  bool? get containsMixedTypes {
    return node.getAttribute('containsMixedTypes') == '1' ||
        node.getAttribute('containsMixedTypes') == 'true' ||
        node.getAttribute('containsMixedTypes') == 'on';
  }

  bool? get containsNumber {
    return node.getAttribute('containsNumber') == '1' ||
        node.getAttribute('containsNumber') == 'true' ||
        node.getAttribute('containsNumber') == 'on';
  }

  bool? get containsInteger {
    return node.getAttribute('containsInteger') == '1' ||
        node.getAttribute('containsInteger') == 'true' ||
        node.getAttribute('containsInteger') == 'on';
  }

  double? get minValue {
    return node.getAttribute('minValue') != null
        ? double.tryParse(node.getAttribute('minValue')!)
        : null;
  }

  double? get maxValue {
    return node.getAttribute('maxValue') != null
        ? double.tryParse(node.getAttribute('maxValue')!)
        : null;
  }

  String? get minDate {
    return node.getAttribute('minDate');
  }

  String? get maxDate {
    return node.getAttribute('maxDate');
  }

  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  bool? get longText {
    return node.getAttribute('longText') == '1' ||
        node.getAttribute('longText') == 'true' ||
        node.getAttribute('longText') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'm',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Missing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'n',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Number(childNode).validate());
    }
    for (final childNode in node.findElements(
      'b',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Boolean(childNode).validate());
    }
    for (final childNode in node.findElements(
      'e',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Error(childNode).validate());
    }
    for (final childNode in node.findElements(
      's',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_String(childNode).validate());
    }
    for (final childNode in node.findElements(
      'd',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DateTime(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Missing(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get u {
    return node.getAttribute('u') == '1' ||
        node.getAttribute('u') == 'true' ||
        node.getAttribute('u') == 'on';
  }

  bool? get f {
    return node.getAttribute('f') == '1' ||
        node.getAttribute('f') == 'true' ||
        node.getAttribute('f') == 'on';
  }

  String? get c {
    return node.getAttribute('c');
  }

  int? get cp {
    return node.getAttribute('cp') != null
        ? int.tryParse(node.getAttribute('cp')!)
        : null;
  }

  int? get in_ {
    return node.getAttribute('in') != null
        ? int.tryParse(node.getAttribute('in')!)
        : null;
  }

  String? get bc {
    return node.getAttribute('bc');
  }

  String? get fc {
    return node.getAttribute('fc');
  }

  bool? get i {
    return node.getAttribute('i') == '1' ||
        node.getAttribute('i') == 'true' ||
        node.getAttribute('i') == 'on';
  }

  bool? get un {
    return node.getAttribute('un') == '1' ||
        node.getAttribute('un') == 'true' ||
        node.getAttribute('un') == 'on';
  }

  bool? get st {
    return node.getAttribute('st') == '1' ||
        node.getAttribute('st') == 'true' ||
        node.getAttribute('st') == 'on';
  }

  bool? get b {
    return node.getAttribute('b') == '1' ||
        node.getAttribute('b') == 'true' ||
        node.getAttribute('b') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tuples(childNode).validate());
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_X(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Number(_i1.XmlElement node) implements _i1.XmlElement {
  double get v {
    return double.parse(node.getAttribute('v')!);
  }

  bool? get u {
    return node.getAttribute('u') == '1' ||
        node.getAttribute('u') == 'true' ||
        node.getAttribute('u') == 'on';
  }

  bool? get f {
    return node.getAttribute('f') == '1' ||
        node.getAttribute('f') == 'true' ||
        node.getAttribute('f') == 'on';
  }

  String? get c {
    return node.getAttribute('c');
  }

  int? get cp {
    return node.getAttribute('cp') != null
        ? int.tryParse(node.getAttribute('cp')!)
        : null;
  }

  int? get in_ {
    return node.getAttribute('in') != null
        ? int.tryParse(node.getAttribute('in')!)
        : null;
  }

  String? get bc {
    return node.getAttribute('bc');
  }

  String? get fc {
    return node.getAttribute('fc');
  }

  bool? get i {
    return node.getAttribute('i') == '1' ||
        node.getAttribute('i') == 'true' ||
        node.getAttribute('i') == 'on';
  }

  bool? get un {
    return node.getAttribute('un') == '1' ||
        node.getAttribute('un') == 'true' ||
        node.getAttribute('un') == 'on';
  }

  bool? get st {
    return node.getAttribute('st') == '1' ||
        node.getAttribute('st') == 'true' ||
        node.getAttribute('st') == 'on';
  }

  bool? get b {
    return node.getAttribute('b') == '1' ||
        node.getAttribute('b') == 'true' ||
        node.getAttribute('b') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('v') == null) {
      errors.add("Missing required attribute 'v' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tuples(childNode).validate());
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_X(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Boolean(_i1.XmlElement node) implements _i1.XmlElement {
  bool get v {
    return node.getAttribute('v') == '1' ||
        node.getAttribute('v') == 'true' ||
        node.getAttribute('v') == 'on';
  }

  bool? get u {
    return node.getAttribute('u') == '1' ||
        node.getAttribute('u') == 'true' ||
        node.getAttribute('u') == 'on';
  }

  bool? get f {
    return node.getAttribute('f') == '1' ||
        node.getAttribute('f') == 'true' ||
        node.getAttribute('f') == 'on';
  }

  String? get c {
    return node.getAttribute('c');
  }

  int? get cp {
    return node.getAttribute('cp') != null
        ? int.tryParse(node.getAttribute('cp')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('v') == null) {
      errors.add("Missing required attribute 'v' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_X(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Error(_i1.XmlElement node) implements _i1.XmlElement {
  String get v {
    return node.getAttribute('v')!;
  }

  bool? get u {
    return node.getAttribute('u') == '1' ||
        node.getAttribute('u') == 'true' ||
        node.getAttribute('u') == 'on';
  }

  bool? get f {
    return node.getAttribute('f') == '1' ||
        node.getAttribute('f') == 'true' ||
        node.getAttribute('f') == 'on';
  }

  String? get c {
    return node.getAttribute('c');
  }

  int? get cp {
    return node.getAttribute('cp') != null
        ? int.tryParse(node.getAttribute('cp')!)
        : null;
  }

  int? get in_ {
    return node.getAttribute('in') != null
        ? int.tryParse(node.getAttribute('in')!)
        : null;
  }

  String? get bc {
    return node.getAttribute('bc');
  }

  String? get fc {
    return node.getAttribute('fc');
  }

  bool? get i {
    return node.getAttribute('i') == '1' ||
        node.getAttribute('i') == 'true' ||
        node.getAttribute('i') == 'on';
  }

  bool? get un {
    return node.getAttribute('un') == '1' ||
        node.getAttribute('un') == 'true' ||
        node.getAttribute('un') == 'on';
  }

  bool? get st {
    return node.getAttribute('st') == '1' ||
        node.getAttribute('st') == 'true' ||
        node.getAttribute('st') == 'on';
  }

  bool? get b {
    return node.getAttribute('b') == '1' ||
        node.getAttribute('b') == 'true' ||
        node.getAttribute('b') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('v') == null) {
      errors.add("Missing required attribute 'v' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tuples(childNode).validate());
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_X(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_String(_i1.XmlElement node) implements _i1.XmlElement {
  String get v {
    return node.getAttribute('v')!;
  }

  bool? get u {
    return node.getAttribute('u') == '1' ||
        node.getAttribute('u') == 'true' ||
        node.getAttribute('u') == 'on';
  }

  bool? get f {
    return node.getAttribute('f') == '1' ||
        node.getAttribute('f') == 'true' ||
        node.getAttribute('f') == 'on';
  }

  String? get c {
    return node.getAttribute('c');
  }

  int? get cp {
    return node.getAttribute('cp') != null
        ? int.tryParse(node.getAttribute('cp')!)
        : null;
  }

  int? get in_ {
    return node.getAttribute('in') != null
        ? int.tryParse(node.getAttribute('in')!)
        : null;
  }

  String? get bc {
    return node.getAttribute('bc');
  }

  String? get fc {
    return node.getAttribute('fc');
  }

  bool? get i {
    return node.getAttribute('i') == '1' ||
        node.getAttribute('i') == 'true' ||
        node.getAttribute('i') == 'on';
  }

  bool? get un {
    return node.getAttribute('un') == '1' ||
        node.getAttribute('un') == 'true' ||
        node.getAttribute('un') == 'on';
  }

  bool? get st {
    return node.getAttribute('st') == '1' ||
        node.getAttribute('st') == 'true' ||
        node.getAttribute('st') == 'on';
  }

  bool? get b {
    return node.getAttribute('b') == '1' ||
        node.getAttribute('b') == 'true' ||
        node.getAttribute('b') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('v') == null) {
      errors.add("Missing required attribute 'v' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tuples(childNode).validate());
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_X(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DateTime(_i1.XmlElement node) implements _i1.XmlElement {
  String get v {
    return node.getAttribute('v')!;
  }

  bool? get u {
    return node.getAttribute('u') == '1' ||
        node.getAttribute('u') == 'true' ||
        node.getAttribute('u') == 'on';
  }

  bool? get f {
    return node.getAttribute('f') == '1' ||
        node.getAttribute('f') == 'true' ||
        node.getAttribute('f') == 'on';
  }

  String? get c {
    return node.getAttribute('c');
  }

  int? get cp {
    return node.getAttribute('cp') != null
        ? int.tryParse(node.getAttribute('cp')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('v') == null) {
      errors.add("Missing required attribute 'v' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_X(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_FieldGroup(_i1.XmlElement node) implements _i1.XmlElement {
  int? get par {
    return node.getAttribute('par') != null
        ? int.tryParse(node.getAttribute('par')!)
        : null;
  }

  int? get base {
    return node.getAttribute('base') != null
        ? int.tryParse(node.getAttribute('base')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'rangePr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RangePr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'discretePr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DiscretePr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'groupItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_GroupItems(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RangePr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get autoStart {
    return node.getAttribute('autoStart') == '1' ||
        node.getAttribute('autoStart') == 'true' ||
        node.getAttribute('autoStart') == 'on';
  }

  bool? get autoEnd {
    return node.getAttribute('autoEnd') == '1' ||
        node.getAttribute('autoEnd') == 'true' ||
        node.getAttribute('autoEnd') == 'on';
  }

  S_ST_GroupBy? get groupBy {
    return node.getAttribute('groupBy') != null
        ? S_ST_GroupBy.fromValue(node.getAttribute('groupBy')!)
        : null;
  }

  double? get startNum {
    return node.getAttribute('startNum') != null
        ? double.tryParse(node.getAttribute('startNum')!)
        : null;
  }

  double? get endNum {
    return node.getAttribute('endNum') != null
        ? double.tryParse(node.getAttribute('endNum')!)
        : null;
  }

  String? get startDate {
    return node.getAttribute('startDate');
  }

  String? get endDate {
    return node.getAttribute('endDate');
  }

  double? get groupInterval {
    return node.getAttribute('groupInterval') != null
        ? double.tryParse(node.getAttribute('groupInterval')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_groupBy = node.getAttribute('groupBy');
    if (v_groupBy != null && S_ST_GroupBy.fromValue(v_groupBy) == null) {
      errors.add(
        "Invalid enum value for attribute 'groupBy' in ${node.name.qualified}: $v_groupBy",
      );
    }
    return errors;
  }
}

extension type S_CT_DiscretePr(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Index(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_GroupItems(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'm',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Missing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'n',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Number(childNode).validate());
    }
    for (final childNode in node.findElements(
      'b',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Boolean(childNode).validate());
    }
    for (final childNode in node.findElements(
      'e',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Error(childNode).validate());
    }
    for (final childNode in node.findElements(
      's',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_String(childNode).validate());
    }
    for (final childNode in node.findElements(
      'd',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DateTime(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotCacheRecords(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Record(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'm',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Missing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'n',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Number(childNode).validate());
    }
    for (final childNode in node.findElements(
      'b',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Boolean(childNode).validate());
    }
    for (final childNode in node.findElements(
      'e',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Error(childNode).validate());
    }
    for (final childNode in node.findElements(
      's',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_String(childNode).validate());
    }
    for (final childNode in node.findElements(
      'd',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DateTime(childNode).validate());
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Index(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PCDKPIs(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'kpi',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PCDKPI(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PCDKPI(_i1.XmlElement node) implements _i1.XmlElement {
  String get uniqueName {
    return node.getAttribute('uniqueName')!;
  }

  String? get caption {
    return node.getAttribute('caption');
  }

  String? get displayFolder {
    return node.getAttribute('displayFolder');
  }

  String? get measureGroup {
    return node.getAttribute('measureGroup');
  }

  String? get parent {
    return node.getAttribute('parent');
  }

  String get value_ {
    return node.getAttribute('value')!;
  }

  String? get goal {
    return node.getAttribute('goal');
  }

  String? get status {
    return node.getAttribute('status');
  }

  String? get trend {
    return node.getAttribute('trend');
  }

  String? get weight {
    return node.getAttribute('weight');
  }

  String? get time {
    return node.getAttribute('time');
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('uniqueName') == null) {
      errors.add(
        "Missing required attribute 'uniqueName' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('value') == null) {
      errors.add(
        "Missing required attribute 'value' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_CacheHierarchies(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cacheHierarchy',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CacheHierarchy(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CacheHierarchy(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get uniqueName {
    return node.getAttribute('uniqueName')!;
  }

  String? get caption {
    return node.getAttribute('caption');
  }

  bool? get measure {
    return node.getAttribute('measure') == '1' ||
        node.getAttribute('measure') == 'true' ||
        node.getAttribute('measure') == 'on';
  }

  bool? get set_ {
    return node.getAttribute('set') == '1' ||
        node.getAttribute('set') == 'true' ||
        node.getAttribute('set') == 'on';
  }

  int? get parentSet {
    return node.getAttribute('parentSet') != null
        ? int.tryParse(node.getAttribute('parentSet')!)
        : null;
  }

  int? get iconSet {
    return node.getAttribute('iconSet') != null
        ? int.tryParse(node.getAttribute('iconSet')!)
        : null;
  }

  bool? get attribute {
    return node.getAttribute('attribute') == '1' ||
        node.getAttribute('attribute') == 'true' ||
        node.getAttribute('attribute') == 'on';
  }

  bool? get time {
    return node.getAttribute('time') == '1' ||
        node.getAttribute('time') == 'true' ||
        node.getAttribute('time') == 'on';
  }

  bool? get keyAttribute {
    return node.getAttribute('keyAttribute') == '1' ||
        node.getAttribute('keyAttribute') == 'true' ||
        node.getAttribute('keyAttribute') == 'on';
  }

  String? get defaultMemberUniqueName {
    return node.getAttribute('defaultMemberUniqueName');
  }

  String? get allUniqueName {
    return node.getAttribute('allUniqueName');
  }

  String? get allCaption {
    return node.getAttribute('allCaption');
  }

  String? get dimensionUniqueName {
    return node.getAttribute('dimensionUniqueName');
  }

  String? get displayFolder {
    return node.getAttribute('displayFolder');
  }

  String? get measureGroup {
    return node.getAttribute('measureGroup');
  }

  bool? get measures {
    return node.getAttribute('measures') == '1' ||
        node.getAttribute('measures') == 'true' ||
        node.getAttribute('measures') == 'on';
  }

  int get count {
    return int.parse(node.getAttribute('count')!);
  }

  bool? get oneField {
    return node.getAttribute('oneField') == '1' ||
        node.getAttribute('oneField') == 'true' ||
        node.getAttribute('oneField') == 'on';
  }

  int? get memberValueDatatype {
    return node.getAttribute('memberValueDatatype') != null
        ? int.tryParse(node.getAttribute('memberValueDatatype')!)
        : null;
  }

  bool? get unbalanced {
    return node.getAttribute('unbalanced') == '1' ||
        node.getAttribute('unbalanced') == 'true' ||
        node.getAttribute('unbalanced') == 'on';
  }

  bool? get unbalancedGroup {
    return node.getAttribute('unbalancedGroup') == '1' ||
        node.getAttribute('unbalancedGroup') == 'true' ||
        node.getAttribute('unbalancedGroup') == 'on';
  }

  bool? get hidden {
    return node.getAttribute('hidden') == '1' ||
        node.getAttribute('hidden') == 'true' ||
        node.getAttribute('hidden') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('uniqueName') == null) {
      errors.add(
        "Missing required attribute 'uniqueName' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('count') == null) {
      errors.add(
        "Missing required attribute 'count' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'fieldsUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FieldsUsage(childNode).validate());
    }
    for (final childNode in node.findElements(
      'groupLevels',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_GroupLevels(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_FieldsUsage(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'fieldUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FieldUsage(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_FieldUsage(_i1.XmlElement node) implements _i1.XmlElement {
  int get x {
    return int.parse(node.getAttribute('x')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('x') == null) {
      errors.add("Missing required attribute 'x' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_GroupLevels(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'groupLevel',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_GroupLevel(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_GroupLevel(_i1.XmlElement node) implements _i1.XmlElement {
  String get uniqueName {
    return node.getAttribute('uniqueName')!;
  }

  String get caption {
    return node.getAttribute('caption')!;
  }

  bool? get user {
    return node.getAttribute('user') == '1' ||
        node.getAttribute('user') == 'true' ||
        node.getAttribute('user') == 'on';
  }

  bool? get customRollUp {
    return node.getAttribute('customRollUp') == '1' ||
        node.getAttribute('customRollUp') == 'true' ||
        node.getAttribute('customRollUp') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('uniqueName') == null) {
      errors.add(
        "Missing required attribute 'uniqueName' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('caption') == null) {
      errors.add(
        "Missing required attribute 'caption' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'groups',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Groups(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Groups(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'group',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LevelGroup(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_LevelGroup(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  String get uniqueName {
    return node.getAttribute('uniqueName')!;
  }

  String get caption {
    return node.getAttribute('caption')!;
  }

  String? get uniqueParent {
    return node.getAttribute('uniqueParent');
  }

  int? get id {
    return node.getAttribute('id') != null
        ? int.tryParse(node.getAttribute('id')!)
        : null;
  }

  S_CT_GroupMembers? get groupMembers {
    final e = node.getElement(
      'groupMembers',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_GroupMembers(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('uniqueName') == null) {
      errors.add(
        "Missing required attribute 'uniqueName' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('caption') == null) {
      errors.add(
        "Missing required attribute 'caption' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'groupMembers',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_GroupMembers(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_GroupMembers(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'groupMember',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_GroupMember(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_GroupMember(_i1.XmlElement node) implements _i1.XmlElement {
  String get uniqueName {
    return node.getAttribute('uniqueName')!;
  }

  bool? get group {
    return node.getAttribute('group') == '1' ||
        node.getAttribute('group') == 'true' ||
        node.getAttribute('group') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('uniqueName') == null) {
      errors.add(
        "Missing required attribute 'uniqueName' in ${node.name.qualified}",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'entries',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PCDSDTCEntries(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sets',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Sets(childNode).validate());
    }
    for (final childNode in node.findElements(
      'queryCache',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_QueryCache(childNode).validate());
    }
    for (final childNode in node.findElements(
      'serverFormats',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ServerFormats(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ServerFormat(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get culture {
    return node.getAttribute('culture');
  }

  String? get format {
    return node.getAttribute('format');
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_ServerFormats(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'serverFormat',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ServerFormat(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PCDSDTCEntries(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'm',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Missing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'n',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Number(childNode).validate());
    }
    for (final childNode in node.findElements(
      'e',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Error(childNode).validate());
    }
    for (final childNode in node.findElements(
      's',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_String(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Tuples(_i1.XmlElement node) implements _i1.XmlElement {
  int? get c {
    return node.getAttribute('c') != null
        ? int.tryParse(node.getAttribute('c')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'tpl',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tuple(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Tuple(_i1.XmlElement node) implements _i1.XmlElement {
  int? get fld {
    return node.getAttribute('fld') != null
        ? int.tryParse(node.getAttribute('fld')!)
        : null;
  }

  int? get hier {
    return node.getAttribute('hier') != null
        ? int.tryParse(node.getAttribute('hier')!)
        : null;
  }

  int get item {
    return int.parse(node.getAttribute('item')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('item') == null) {
      errors.add("Missing required attribute 'item' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Sets(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'set',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Set(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Set(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  int get maxRank {
    return int.parse(node.getAttribute('maxRank')!);
  }

  String get setDefinition {
    return node.getAttribute('setDefinition')!;
  }

  S_ST_SortType? get sortType {
    return node.getAttribute('sortType') != null
        ? S_ST_SortType.fromValue(node.getAttribute('sortType')!)
        : null;
  }

  bool? get queryFailed {
    return node.getAttribute('queryFailed') == '1' ||
        node.getAttribute('queryFailed') == 'true' ||
        node.getAttribute('queryFailed') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('maxRank') == null) {
      errors.add(
        "Missing required attribute 'maxRank' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('setDefinition') == null) {
      errors.add(
        "Missing required attribute 'setDefinition' in ${node.name.qualified}",
      );
    }
    final v_sortType = node.getAttribute('sortType');
    if (v_sortType != null && S_ST_SortType.fromValue(v_sortType) == null) {
      errors.add(
        "Invalid enum value for attribute 'sortType' in ${node.name.qualified}: $v_sortType",
      );
    }
    for (final childNode in node.findElements(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tuples(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sortByTuple',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tuples(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_QueryCache(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'query',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Query(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Query(_i1.XmlElement node) implements _i1.XmlElement {
  String get mdx {
    return node.getAttribute('mdx')!;
  }

  S_CT_Tuples? get tpls {
    final e = node.getElement(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Tuples(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('mdx') == null) {
      errors.add("Missing required attribute 'mdx' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'tpls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Tuples(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CalculatedItems(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'calculatedItem',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CalculatedItem(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CalculatedItem(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get field {
    return node.getAttribute('field') != null
        ? int.tryParse(node.getAttribute('field')!)
        : null;
  }

  String? get formula {
    return node.getAttribute('formula');
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotArea(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CalculatedMembers(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'calculatedMember',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CalculatedMember(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CalculatedMember(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  String get mdx {
    return node.getAttribute('mdx')!;
  }

  String? get memberName {
    return node.getAttribute('memberName');
  }

  String? get hierarchy {
    return node.getAttribute('hierarchy');
  }

  String? get parent {
    return node.getAttribute('parent');
  }

  int? get solveOrder {
    return node.getAttribute('solveOrder') != null
        ? int.tryParse(node.getAttribute('solveOrder')!)
        : null;
  }

  bool? get set_ {
    return node.getAttribute('set') == '1' ||
        node.getAttribute('set') == 'true' ||
        node.getAttribute('set') == 'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('mdx') == null) {
      errors.add("Missing required attribute 'mdx' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_pivotTableDefinition(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  int get cacheId {
    return int.parse(node.getAttribute('cacheId')!);
  }

  bool? get dataOnRows {
    return node.getAttribute('dataOnRows') == '1' ||
        node.getAttribute('dataOnRows') == 'true' ||
        node.getAttribute('dataOnRows') == 'on';
  }

  int? get dataPosition {
    return node.getAttribute('dataPosition') != null
        ? int.tryParse(node.getAttribute('dataPosition')!)
        : null;
  }

  String get dataCaption {
    return node.getAttribute('dataCaption')!;
  }

  String? get grandTotalCaption {
    return node.getAttribute('grandTotalCaption');
  }

  String? get errorCaption {
    return node.getAttribute('errorCaption');
  }

  bool? get showError {
    return node.getAttribute('showError') == '1' ||
        node.getAttribute('showError') == 'true' ||
        node.getAttribute('showError') == 'on';
  }

  String? get missingCaption {
    return node.getAttribute('missingCaption');
  }

  bool? get showMissing {
    return node.getAttribute('showMissing') == '1' ||
        node.getAttribute('showMissing') == 'true' ||
        node.getAttribute('showMissing') == 'on';
  }

  String? get pageStyle {
    return node.getAttribute('pageStyle');
  }

  String? get pivotTableStyle {
    return node.getAttribute('pivotTableStyle');
  }

  String? get vacatedStyle {
    return node.getAttribute('vacatedStyle');
  }

  String? get tag {
    return node.getAttribute('tag');
  }

  int? get updatedVersion {
    return node.getAttribute('updatedVersion') != null
        ? int.tryParse(node.getAttribute('updatedVersion')!)
        : null;
  }

  int? get minRefreshableVersion {
    return node.getAttribute('minRefreshableVersion') != null
        ? int.tryParse(node.getAttribute('minRefreshableVersion')!)
        : null;
  }

  bool? get asteriskTotals {
    return node.getAttribute('asteriskTotals') == '1' ||
        node.getAttribute('asteriskTotals') == 'true' ||
        node.getAttribute('asteriskTotals') == 'on';
  }

  bool? get showItems {
    return node.getAttribute('showItems') == '1' ||
        node.getAttribute('showItems') == 'true' ||
        node.getAttribute('showItems') == 'on';
  }

  bool? get editData {
    return node.getAttribute('editData') == '1' ||
        node.getAttribute('editData') == 'true' ||
        node.getAttribute('editData') == 'on';
  }

  bool? get disableFieldList {
    return node.getAttribute('disableFieldList') == '1' ||
        node.getAttribute('disableFieldList') == 'true' ||
        node.getAttribute('disableFieldList') == 'on';
  }

  bool? get showCalcMbrs {
    return node.getAttribute('showCalcMbrs') == '1' ||
        node.getAttribute('showCalcMbrs') == 'true' ||
        node.getAttribute('showCalcMbrs') == 'on';
  }

  bool? get visualTotals {
    return node.getAttribute('visualTotals') == '1' ||
        node.getAttribute('visualTotals') == 'true' ||
        node.getAttribute('visualTotals') == 'on';
  }

  bool? get showMultipleLabel {
    return node.getAttribute('showMultipleLabel') == '1' ||
        node.getAttribute('showMultipleLabel') == 'true' ||
        node.getAttribute('showMultipleLabel') == 'on';
  }

  bool? get showDataDropDown {
    return node.getAttribute('showDataDropDown') == '1' ||
        node.getAttribute('showDataDropDown') == 'true' ||
        node.getAttribute('showDataDropDown') == 'on';
  }

  bool? get showDrill {
    return node.getAttribute('showDrill') == '1' ||
        node.getAttribute('showDrill') == 'true' ||
        node.getAttribute('showDrill') == 'on';
  }

  bool? get printDrill {
    return node.getAttribute('printDrill') == '1' ||
        node.getAttribute('printDrill') == 'true' ||
        node.getAttribute('printDrill') == 'on';
  }

  bool? get showMemberPropertyTips {
    return node.getAttribute('showMemberPropertyTips') == '1' ||
        node.getAttribute('showMemberPropertyTips') == 'true' ||
        node.getAttribute('showMemberPropertyTips') == 'on';
  }

  bool? get showDataTips {
    return node.getAttribute('showDataTips') == '1' ||
        node.getAttribute('showDataTips') == 'true' ||
        node.getAttribute('showDataTips') == 'on';
  }

  bool? get enableWizard {
    return node.getAttribute('enableWizard') == '1' ||
        node.getAttribute('enableWizard') == 'true' ||
        node.getAttribute('enableWizard') == 'on';
  }

  bool? get enableDrill {
    return node.getAttribute('enableDrill') == '1' ||
        node.getAttribute('enableDrill') == 'true' ||
        node.getAttribute('enableDrill') == 'on';
  }

  bool? get enableFieldProperties {
    return node.getAttribute('enableFieldProperties') == '1' ||
        node.getAttribute('enableFieldProperties') == 'true' ||
        node.getAttribute('enableFieldProperties') == 'on';
  }

  bool? get preserveFormatting {
    return node.getAttribute('preserveFormatting') == '1' ||
        node.getAttribute('preserveFormatting') == 'true' ||
        node.getAttribute('preserveFormatting') == 'on';
  }

  bool? get useAutoFormatting {
    return node.getAttribute('useAutoFormatting') == '1' ||
        node.getAttribute('useAutoFormatting') == 'true' ||
        node.getAttribute('useAutoFormatting') == 'on';
  }

  int? get pageWrap {
    return node.getAttribute('pageWrap') != null
        ? int.tryParse(node.getAttribute('pageWrap')!)
        : null;
  }

  bool? get pageOverThenDown {
    return node.getAttribute('pageOverThenDown') == '1' ||
        node.getAttribute('pageOverThenDown') == 'true' ||
        node.getAttribute('pageOverThenDown') == 'on';
  }

  bool? get subtotalHiddenItems {
    return node.getAttribute('subtotalHiddenItems') == '1' ||
        node.getAttribute('subtotalHiddenItems') == 'true' ||
        node.getAttribute('subtotalHiddenItems') == 'on';
  }

  bool? get rowGrandTotals {
    return node.getAttribute('rowGrandTotals') == '1' ||
        node.getAttribute('rowGrandTotals') == 'true' ||
        node.getAttribute('rowGrandTotals') == 'on';
  }

  bool? get colGrandTotals {
    return node.getAttribute('colGrandTotals') == '1' ||
        node.getAttribute('colGrandTotals') == 'true' ||
        node.getAttribute('colGrandTotals') == 'on';
  }

  bool? get fieldPrintTitles {
    return node.getAttribute('fieldPrintTitles') == '1' ||
        node.getAttribute('fieldPrintTitles') == 'true' ||
        node.getAttribute('fieldPrintTitles') == 'on';
  }

  bool? get itemPrintTitles {
    return node.getAttribute('itemPrintTitles') == '1' ||
        node.getAttribute('itemPrintTitles') == 'true' ||
        node.getAttribute('itemPrintTitles') == 'on';
  }

  bool? get mergeItem {
    return node.getAttribute('mergeItem') == '1' ||
        node.getAttribute('mergeItem') == 'true' ||
        node.getAttribute('mergeItem') == 'on';
  }

  bool? get showDropZones {
    return node.getAttribute('showDropZones') == '1' ||
        node.getAttribute('showDropZones') == 'true' ||
        node.getAttribute('showDropZones') == 'on';
  }

  int? get createdVersion {
    return node.getAttribute('createdVersion') != null
        ? int.tryParse(node.getAttribute('createdVersion')!)
        : null;
  }

  int? get indent {
    return node.getAttribute('indent') != null
        ? int.tryParse(node.getAttribute('indent')!)
        : null;
  }

  bool? get showEmptyRow {
    return node.getAttribute('showEmptyRow') == '1' ||
        node.getAttribute('showEmptyRow') == 'true' ||
        node.getAttribute('showEmptyRow') == 'on';
  }

  bool? get showEmptyCol {
    return node.getAttribute('showEmptyCol') == '1' ||
        node.getAttribute('showEmptyCol') == 'true' ||
        node.getAttribute('showEmptyCol') == 'on';
  }

  bool? get showHeaders {
    return node.getAttribute('showHeaders') == '1' ||
        node.getAttribute('showHeaders') == 'true' ||
        node.getAttribute('showHeaders') == 'on';
  }

  bool? get compact {
    return node.getAttribute('compact') == '1' ||
        node.getAttribute('compact') == 'true' ||
        node.getAttribute('compact') == 'on';
  }

  bool? get outline {
    return node.getAttribute('outline') == '1' ||
        node.getAttribute('outline') == 'true' ||
        node.getAttribute('outline') == 'on';
  }

  bool? get outlineData {
    return node.getAttribute('outlineData') == '1' ||
        node.getAttribute('outlineData') == 'true' ||
        node.getAttribute('outlineData') == 'on';
  }

  bool? get compactData {
    return node.getAttribute('compactData') == '1' ||
        node.getAttribute('compactData') == 'true' ||
        node.getAttribute('compactData') == 'on';
  }

  bool? get published {
    return node.getAttribute('published') == '1' ||
        node.getAttribute('published') == 'true' ||
        node.getAttribute('published') == 'on';
  }

  bool? get gridDropZones {
    return node.getAttribute('gridDropZones') == '1' ||
        node.getAttribute('gridDropZones') == 'true' ||
        node.getAttribute('gridDropZones') == 'on';
  }

  bool? get immersive {
    return node.getAttribute('immersive') == '1' ||
        node.getAttribute('immersive') == 'true' ||
        node.getAttribute('immersive') == 'on';
  }

  bool? get multipleFieldFilters {
    return node.getAttribute('multipleFieldFilters') == '1' ||
        node.getAttribute('multipleFieldFilters') == 'true' ||
        node.getAttribute('multipleFieldFilters') == 'on';
  }

  int? get chartFormat {
    return node.getAttribute('chartFormat') != null
        ? int.tryParse(node.getAttribute('chartFormat')!)
        : null;
  }

  String? get rowHeaderCaption {
    return node.getAttribute('rowHeaderCaption');
  }

  String? get colHeaderCaption {
    return node.getAttribute('colHeaderCaption');
  }

  bool? get fieldListSortAscending {
    return node.getAttribute('fieldListSortAscending') == '1' ||
        node.getAttribute('fieldListSortAscending') == 'true' ||
        node.getAttribute('fieldListSortAscending') == 'on';
  }

  bool? get mdxSubqueries {
    return node.getAttribute('mdxSubqueries') == '1' ||
        node.getAttribute('mdxSubqueries') == 'true' ||
        node.getAttribute('mdxSubqueries') == 'on';
  }

  bool? get customListSort {
    return node.getAttribute('customListSort') == '1' ||
        node.getAttribute('customListSort') == 'true' ||
        node.getAttribute('customListSort') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('cacheId') == null) {
      errors.add(
        "Missing required attribute 'cacheId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('dataCaption') == null) {
      errors.add(
        "Missing required attribute 'dataCaption' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'location',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Location(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pivotFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotFields(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rowFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RowFields(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rowItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_rowItems(childNode).validate());
    }
    for (final childNode in node.findElements(
      'colFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ColFields(childNode).validate());
    }
    for (final childNode in node.findElements(
      'colItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_colItems(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageFields(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dataFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataFields(childNode).validate());
    }
    for (final childNode in node.findElements(
      'formats',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Formats(childNode).validate());
    }
    for (final childNode in node.findElements(
      'conditionalFormats',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ConditionalFormats(childNode).validate());
    }
    for (final childNode in node.findElements(
      'chartFormats',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ChartFormats(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pivotHierarchies',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotHierarchies(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pivotTableStyleInfo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotTableStyle(childNode).validate());
    }
    for (final childNode in node.findElements(
      'filters',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotFilters(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rowHierarchiesUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RowHierarchiesUsage(childNode).validate());
    }
    for (final childNode in node.findElements(
      'colHierarchiesUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ColHierarchiesUsage(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Location(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute('ref')!;
  }

  int get firstHeaderRow {
    return int.parse(node.getAttribute('firstHeaderRow')!);
  }

  int get firstDataRow {
    return int.parse(node.getAttribute('firstDataRow')!);
  }

  int get firstDataCol {
    return int.parse(node.getAttribute('firstDataCol')!);
  }

  int? get rowPageCount {
    return node.getAttribute('rowPageCount') != null
        ? int.tryParse(node.getAttribute('rowPageCount')!)
        : null;
  }

  int? get colPageCount {
    return node.getAttribute('colPageCount') != null
        ? int.tryParse(node.getAttribute('colPageCount')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    if (node.getAttribute('firstHeaderRow') == null) {
      errors.add(
        "Missing required attribute 'firstHeaderRow' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('firstDataRow') == null) {
      errors.add(
        "Missing required attribute 'firstDataRow' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('firstDataCol') == null) {
      errors.add(
        "Missing required attribute 'firstDataCol' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_PivotFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pivotField',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotField(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotField(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  S_ST_Axis? get axis {
    return node.getAttribute('axis') != null
        ? S_ST_Axis.fromValue(node.getAttribute('axis')!)
        : null;
  }

  bool? get dataField {
    return node.getAttribute('dataField') == '1' ||
        node.getAttribute('dataField') == 'true' ||
        node.getAttribute('dataField') == 'on';
  }

  String? get subtotalCaption {
    return node.getAttribute('subtotalCaption');
  }

  bool? get showDropDowns {
    return node.getAttribute('showDropDowns') == '1' ||
        node.getAttribute('showDropDowns') == 'true' ||
        node.getAttribute('showDropDowns') == 'on';
  }

  bool? get hiddenLevel {
    return node.getAttribute('hiddenLevel') == '1' ||
        node.getAttribute('hiddenLevel') == 'true' ||
        node.getAttribute('hiddenLevel') == 'on';
  }

  String? get uniqueMemberProperty {
    return node.getAttribute('uniqueMemberProperty');
  }

  bool? get compact {
    return node.getAttribute('compact') == '1' ||
        node.getAttribute('compact') == 'true' ||
        node.getAttribute('compact') == 'on';
  }

  bool? get allDrilled {
    return node.getAttribute('allDrilled') == '1' ||
        node.getAttribute('allDrilled') == 'true' ||
        node.getAttribute('allDrilled') == 'on';
  }

  String? get numFmtId {
    return node.getAttribute('numFmtId');
  }

  bool? get outline {
    return node.getAttribute('outline') == '1' ||
        node.getAttribute('outline') == 'true' ||
        node.getAttribute('outline') == 'on';
  }

  bool? get subtotalTop {
    return node.getAttribute('subtotalTop') == '1' ||
        node.getAttribute('subtotalTop') == 'true' ||
        node.getAttribute('subtotalTop') == 'on';
  }

  bool? get dragToRow {
    return node.getAttribute('dragToRow') == '1' ||
        node.getAttribute('dragToRow') == 'true' ||
        node.getAttribute('dragToRow') == 'on';
  }

  bool? get dragToCol {
    return node.getAttribute('dragToCol') == '1' ||
        node.getAttribute('dragToCol') == 'true' ||
        node.getAttribute('dragToCol') == 'on';
  }

  bool? get multipleItemSelectionAllowed {
    return node.getAttribute('multipleItemSelectionAllowed') == '1' ||
        node.getAttribute('multipleItemSelectionAllowed') == 'true' ||
        node.getAttribute('multipleItemSelectionAllowed') == 'on';
  }

  bool? get dragToPage {
    return node.getAttribute('dragToPage') == '1' ||
        node.getAttribute('dragToPage') == 'true' ||
        node.getAttribute('dragToPage') == 'on';
  }

  bool? get dragToData {
    return node.getAttribute('dragToData') == '1' ||
        node.getAttribute('dragToData') == 'true' ||
        node.getAttribute('dragToData') == 'on';
  }

  bool? get dragOff {
    return node.getAttribute('dragOff') == '1' ||
        node.getAttribute('dragOff') == 'true' ||
        node.getAttribute('dragOff') == 'on';
  }

  bool? get showAll {
    return node.getAttribute('showAll') == '1' ||
        node.getAttribute('showAll') == 'true' ||
        node.getAttribute('showAll') == 'on';
  }

  bool? get insertBlankRow {
    return node.getAttribute('insertBlankRow') == '1' ||
        node.getAttribute('insertBlankRow') == 'true' ||
        node.getAttribute('insertBlankRow') == 'on';
  }

  bool? get serverField {
    return node.getAttribute('serverField') == '1' ||
        node.getAttribute('serverField') == 'true' ||
        node.getAttribute('serverField') == 'on';
  }

  bool? get insertPageBreak {
    return node.getAttribute('insertPageBreak') == '1' ||
        node.getAttribute('insertPageBreak') == 'true' ||
        node.getAttribute('insertPageBreak') == 'on';
  }

  bool? get autoShow {
    return node.getAttribute('autoShow') == '1' ||
        node.getAttribute('autoShow') == 'true' ||
        node.getAttribute('autoShow') == 'on';
  }

  bool? get topAutoShow {
    return node.getAttribute('topAutoShow') == '1' ||
        node.getAttribute('topAutoShow') == 'true' ||
        node.getAttribute('topAutoShow') == 'on';
  }

  bool? get hideNewItems {
    return node.getAttribute('hideNewItems') == '1' ||
        node.getAttribute('hideNewItems') == 'true' ||
        node.getAttribute('hideNewItems') == 'on';
  }

  bool? get measureFilter {
    return node.getAttribute('measureFilter') == '1' ||
        node.getAttribute('measureFilter') == 'true' ||
        node.getAttribute('measureFilter') == 'on';
  }

  bool? get includeNewItemsInFilter {
    return node.getAttribute('includeNewItemsInFilter') == '1' ||
        node.getAttribute('includeNewItemsInFilter') == 'true' ||
        node.getAttribute('includeNewItemsInFilter') == 'on';
  }

  int? get itemPageCount {
    return node.getAttribute('itemPageCount') != null
        ? int.tryParse(node.getAttribute('itemPageCount')!)
        : null;
  }

  S_ST_FieldSortType? get sortType {
    return node.getAttribute('sortType') != null
        ? S_ST_FieldSortType.fromValue(node.getAttribute('sortType')!)
        : null;
  }

  bool? get dataSourceSort {
    return node.getAttribute('dataSourceSort') == '1' ||
        node.getAttribute('dataSourceSort') == 'true' ||
        node.getAttribute('dataSourceSort') == 'on';
  }

  bool? get nonAutoSortDefault {
    return node.getAttribute('nonAutoSortDefault') == '1' ||
        node.getAttribute('nonAutoSortDefault') == 'true' ||
        node.getAttribute('nonAutoSortDefault') == 'on';
  }

  int? get rankBy {
    return node.getAttribute('rankBy') != null
        ? int.tryParse(node.getAttribute('rankBy')!)
        : null;
  }

  bool? get defaultSubtotal {
    return node.getAttribute('defaultSubtotal') == '1' ||
        node.getAttribute('defaultSubtotal') == 'true' ||
        node.getAttribute('defaultSubtotal') == 'on';
  }

  bool? get sumSubtotal {
    return node.getAttribute('sumSubtotal') == '1' ||
        node.getAttribute('sumSubtotal') == 'true' ||
        node.getAttribute('sumSubtotal') == 'on';
  }

  bool? get countASubtotal {
    return node.getAttribute('countASubtotal') == '1' ||
        node.getAttribute('countASubtotal') == 'true' ||
        node.getAttribute('countASubtotal') == 'on';
  }

  bool? get avgSubtotal {
    return node.getAttribute('avgSubtotal') == '1' ||
        node.getAttribute('avgSubtotal') == 'true' ||
        node.getAttribute('avgSubtotal') == 'on';
  }

  bool? get maxSubtotal {
    return node.getAttribute('maxSubtotal') == '1' ||
        node.getAttribute('maxSubtotal') == 'true' ||
        node.getAttribute('maxSubtotal') == 'on';
  }

  bool? get minSubtotal {
    return node.getAttribute('minSubtotal') == '1' ||
        node.getAttribute('minSubtotal') == 'true' ||
        node.getAttribute('minSubtotal') == 'on';
  }

  bool? get productSubtotal {
    return node.getAttribute('productSubtotal') == '1' ||
        node.getAttribute('productSubtotal') == 'true' ||
        node.getAttribute('productSubtotal') == 'on';
  }

  bool? get countSubtotal {
    return node.getAttribute('countSubtotal') == '1' ||
        node.getAttribute('countSubtotal') == 'true' ||
        node.getAttribute('countSubtotal') == 'on';
  }

  bool? get stdDevSubtotal {
    return node.getAttribute('stdDevSubtotal') == '1' ||
        node.getAttribute('stdDevSubtotal') == 'true' ||
        node.getAttribute('stdDevSubtotal') == 'on';
  }

  bool? get stdDevPSubtotal {
    return node.getAttribute('stdDevPSubtotal') == '1' ||
        node.getAttribute('stdDevPSubtotal') == 'true' ||
        node.getAttribute('stdDevPSubtotal') == 'on';
  }

  bool? get varSubtotal {
    return node.getAttribute('varSubtotal') == '1' ||
        node.getAttribute('varSubtotal') == 'true' ||
        node.getAttribute('varSubtotal') == 'on';
  }

  bool? get varPSubtotal {
    return node.getAttribute('varPSubtotal') == '1' ||
        node.getAttribute('varPSubtotal') == 'true' ||
        node.getAttribute('varPSubtotal') == 'on';
  }

  bool? get showPropCell {
    return node.getAttribute('showPropCell') == '1' ||
        node.getAttribute('showPropCell') == 'true' ||
        node.getAttribute('showPropCell') == 'on';
  }

  bool? get showPropTip {
    return node.getAttribute('showPropTip') == '1' ||
        node.getAttribute('showPropTip') == 'true' ||
        node.getAttribute('showPropTip') == 'on';
  }

  bool? get showPropAsCaption {
    return node.getAttribute('showPropAsCaption') == '1' ||
        node.getAttribute('showPropAsCaption') == 'true' ||
        node.getAttribute('showPropAsCaption') == 'on';
  }

  bool? get defaultAttributeDrillState {
    return node.getAttribute('defaultAttributeDrillState') == '1' ||
        node.getAttribute('defaultAttributeDrillState') == 'true' ||
        node.getAttribute('defaultAttributeDrillState') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    final v_axis = node.getAttribute('axis');
    if (v_axis != null && S_ST_Axis.fromValue(v_axis) == null) {
      errors.add(
        "Invalid enum value for attribute 'axis' in ${node.name.qualified}: $v_axis",
      );
    }
    final v_sortType = node.getAttribute('sortType');
    if (v_sortType != null &&
        S_ST_FieldSortType.fromValue(v_sortType) == null) {
      errors.add(
        "Invalid enum value for attribute 'sortType' in ${node.name.qualified}: $v_sortType",
      );
    }
    for (final childNode in node.findElements(
      'items',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Items(childNode).validate());
    }
    for (final childNode in node.findElements(
      'autoSortScope',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_AutoSortScope(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotArea(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Items(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'item',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Item(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Item(_i1.XmlElement node) implements _i1.XmlElement {
  String? get n {
    return node.getAttribute('n');
  }

  S_ST_ItemType? get t {
    return node.getAttribute('t') != null
        ? S_ST_ItemType.fromValue(node.getAttribute('t')!)
        : null;
  }

  bool? get h {
    return node.getAttribute('h') == '1' ||
        node.getAttribute('h') == 'true' ||
        node.getAttribute('h') == 'on';
  }

  bool? get s {
    return node.getAttribute('s') == '1' ||
        node.getAttribute('s') == 'true' ||
        node.getAttribute('s') == 'on';
  }

  bool? get sd {
    return node.getAttribute('sd') == '1' ||
        node.getAttribute('sd') == 'true' ||
        node.getAttribute('sd') == 'on';
  }

  bool? get f {
    return node.getAttribute('f') == '1' ||
        node.getAttribute('f') == 'true' ||
        node.getAttribute('f') == 'on';
  }

  bool? get m {
    return node.getAttribute('m') == '1' ||
        node.getAttribute('m') == 'true' ||
        node.getAttribute('m') == 'on';
  }

  bool? get c {
    return node.getAttribute('c') == '1' ||
        node.getAttribute('c') == 'true' ||
        node.getAttribute('c') == 'on';
  }

  int? get x {
    return node.getAttribute('x') != null
        ? int.tryParse(node.getAttribute('x')!)
        : null;
  }

  bool? get d {
    return node.getAttribute('d') == '1' ||
        node.getAttribute('d') == 'true' ||
        node.getAttribute('d') == 'on';
  }

  bool? get e {
    return node.getAttribute('e') == '1' ||
        node.getAttribute('e') == 'true' ||
        node.getAttribute('e') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    final v_t = node.getAttribute('t');
    if (v_t != null && S_ST_ItemType.fromValue(v_t) == null) {
      errors.add(
        "Invalid enum value for attribute 't' in ${node.name.qualified}: $v_t",
      );
    }
    return errors;
  }
}

extension type S_CT_PageFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pageField',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageField(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PageField(_i1.XmlElement node) implements _i1.XmlElement {
  int get fld {
    return int.parse(node.getAttribute('fld')!);
  }

  int? get item {
    return node.getAttribute('item') != null
        ? int.tryParse(node.getAttribute('item')!)
        : null;
  }

  int? get hier {
    return node.getAttribute('hier') != null
        ? int.tryParse(node.getAttribute('hier')!)
        : null;
  }

  String? get name {
    return node.getAttribute('name');
  }

  String? get cap {
    return node.getAttribute('cap');
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('fld') == null) {
      errors.add("Missing required attribute 'fld' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DataFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'dataField',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataField(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DataField(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  int get fld {
    return int.parse(node.getAttribute('fld')!);
  }

  S_ST_DataConsolidateFunction? get subtotal {
    return node.getAttribute('subtotal') != null
        ? S_ST_DataConsolidateFunction.fromValue(node.getAttribute('subtotal')!)
        : null;
  }

  S_ST_ShowDataAs? get showDataAs {
    return node.getAttribute('showDataAs') != null
        ? S_ST_ShowDataAs.fromValue(node.getAttribute('showDataAs')!)
        : null;
  }

  int? get baseField {
    return node.getAttribute('baseField') != null
        ? int.tryParse(node.getAttribute('baseField')!)
        : null;
  }

  int? get baseItem {
    return node.getAttribute('baseItem') != null
        ? int.tryParse(node.getAttribute('baseItem')!)
        : null;
  }

  String? get numFmtId {
    return node.getAttribute('numFmtId');
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('fld') == null) {
      errors.add("Missing required attribute 'fld' in ${node.name.qualified}");
    }
    final v_subtotal = node.getAttribute('subtotal');
    if (v_subtotal != null &&
        S_ST_DataConsolidateFunction.fromValue(v_subtotal) == null) {
      errors.add(
        "Invalid enum value for attribute 'subtotal' in ${node.name.qualified}: $v_subtotal",
      );
    }
    final v_showDataAs = node.getAttribute('showDataAs');
    if (v_showDataAs != null &&
        S_ST_ShowDataAs.fromValue(v_showDataAs) == null) {
      errors.add(
        "Invalid enum value for attribute 'showDataAs' in ${node.name.qualified}: $v_showDataAs",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_rowItems(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'i',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_I(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_colItems(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'i',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_I(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_I(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_ItemType? get t {
    return node.getAttribute('t') != null
        ? S_ST_ItemType.fromValue(node.getAttribute('t')!)
        : null;
  }

  int? get r {
    return node.getAttribute('r') != null
        ? int.tryParse(node.getAttribute('r')!)
        : null;
  }

  int? get i {
    return node.getAttribute('i') != null
        ? int.tryParse(node.getAttribute('i')!)
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

  List<String> validate() {
    final errors = <String>[];
    final v_t = node.getAttribute('t');
    if (v_t != null && S_ST_ItemType.fromValue(v_t) == null) {
      errors.add(
        "Invalid enum value for attribute 't' in ${node.name.qualified}: $v_t",
      );
    }
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_X(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_X(_i1.XmlElement node) implements _i1.XmlElement {
  int? get v {
    return node.getAttribute('v') != null
        ? int.tryParse(node.getAttribute('v')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_RowFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'field',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Field(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ColFields(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'field',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Field(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Field(_i1.XmlElement node) implements _i1.XmlElement {
  int get x {
    return int.parse(node.getAttribute('x')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('x') == null) {
      errors.add("Missing required attribute 'x' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Formats(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'format',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Format(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Format(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_FormatAction? get action {
    return node.getAttribute('action') != null
        ? S_ST_FormatAction.fromValue(node.getAttribute('action')!)
        : null;
  }

  String? get dxfId {
    return node.getAttribute('dxfId');
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

  List<String> validate() {
    final errors = <String>[];
    final v_action = node.getAttribute('action');
    if (v_action != null && S_ST_FormatAction.fromValue(v_action) == null) {
      errors.add(
        "Invalid enum value for attribute 'action' in ${node.name.qualified}: $v_action",
      );
    }
    for (final childNode in node.findElements(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotArea(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ConditionalFormats(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'conditionalFormat',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ConditionalFormat(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ConditionalFormat(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_Scope? get scope {
    return node.getAttribute('scope') != null
        ? S_ST_Scope.fromValue(node.getAttribute('scope')!)
        : null;
  }

  S_ST_Type? get type {
    return node.getAttribute('type') != null
        ? S_ST_Type.fromValue(node.getAttribute('type')!)
        : null;
  }

  int get priority {
    return int.parse(node.getAttribute('priority')!);
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

  List<String> validate() {
    final errors = <String>[];
    final v_scope = node.getAttribute('scope');
    if (v_scope != null && S_ST_Scope.fromValue(v_scope) == null) {
      errors.add(
        "Invalid enum value for attribute 'scope' in ${node.name.qualified}: $v_scope",
      );
    }
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_Type.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    if (node.getAttribute('priority') == null) {
      errors.add(
        "Missing required attribute 'priority' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'pivotAreas',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotAreas(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotAreas(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotArea(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ChartFormats(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'chartFormat',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ChartFormat(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ChartFormat(_i1.XmlElement node) implements _i1.XmlElement {
  int get chart {
    return int.parse(node.getAttribute('chart')!);
  }

  int get format {
    return int.parse(node.getAttribute('format')!);
  }

  bool? get series {
    return node.getAttribute('series') == '1' ||
        node.getAttribute('series') == 'true' ||
        node.getAttribute('series') == 'on';
  }

  S_CT_PivotArea? get pivotArea {
    final e = node.getElement(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotArea(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('chart') == null) {
      errors.add(
        "Missing required attribute 'chart' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('format') == null) {
      errors.add(
        "Missing required attribute 'format' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotArea(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotHierarchies(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pivotHierarchy',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotHierarchy(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotHierarchy(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get outline {
    return node.getAttribute('outline') == '1' ||
        node.getAttribute('outline') == 'true' ||
        node.getAttribute('outline') == 'on';
  }

  bool? get multipleItemSelectionAllowed {
    return node.getAttribute('multipleItemSelectionAllowed') == '1' ||
        node.getAttribute('multipleItemSelectionAllowed') == 'true' ||
        node.getAttribute('multipleItemSelectionAllowed') == 'on';
  }

  bool? get subtotalTop {
    return node.getAttribute('subtotalTop') == '1' ||
        node.getAttribute('subtotalTop') == 'true' ||
        node.getAttribute('subtotalTop') == 'on';
  }

  bool? get showInFieldList {
    return node.getAttribute('showInFieldList') == '1' ||
        node.getAttribute('showInFieldList') == 'true' ||
        node.getAttribute('showInFieldList') == 'on';
  }

  bool? get dragToRow {
    return node.getAttribute('dragToRow') == '1' ||
        node.getAttribute('dragToRow') == 'true' ||
        node.getAttribute('dragToRow') == 'on';
  }

  bool? get dragToCol {
    return node.getAttribute('dragToCol') == '1' ||
        node.getAttribute('dragToCol') == 'true' ||
        node.getAttribute('dragToCol') == 'on';
  }

  bool? get dragToPage {
    return node.getAttribute('dragToPage') == '1' ||
        node.getAttribute('dragToPage') == 'true' ||
        node.getAttribute('dragToPage') == 'on';
  }

  bool? get dragToData {
    return node.getAttribute('dragToData') == '1' ||
        node.getAttribute('dragToData') == 'true' ||
        node.getAttribute('dragToData') == 'on';
  }

  bool? get dragOff {
    return node.getAttribute('dragOff') == '1' ||
        node.getAttribute('dragOff') == 'true' ||
        node.getAttribute('dragOff') == 'on';
  }

  bool? get includeNewItemsInFilter {
    return node.getAttribute('includeNewItemsInFilter') == '1' ||
        node.getAttribute('includeNewItemsInFilter') == 'true' ||
        node.getAttribute('includeNewItemsInFilter') == 'on';
  }

  String? get caption {
    return node.getAttribute('caption');
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'mps',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MemberProperties(childNode).validate());
    }
    for (final childNode in node.findElements(
      'members',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Members(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RowHierarchiesUsage(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'rowHierarchyUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_HierarchyUsage(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ColHierarchiesUsage(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'colHierarchyUsage',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_HierarchyUsage(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_HierarchyUsage(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get hierarchyUsage {
    return int.parse(node.getAttribute('hierarchyUsage')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('hierarchyUsage') == null) {
      errors.add(
        "Missing required attribute 'hierarchyUsage' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_MemberProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'mp',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MemberProperty(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MemberProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  bool? get showCell {
    return node.getAttribute('showCell') == '1' ||
        node.getAttribute('showCell') == 'true' ||
        node.getAttribute('showCell') == 'on';
  }

  bool? get showTip {
    return node.getAttribute('showTip') == '1' ||
        node.getAttribute('showTip') == 'true' ||
        node.getAttribute('showTip') == 'on';
  }

  bool? get showAsCaption {
    return node.getAttribute('showAsCaption') == '1' ||
        node.getAttribute('showAsCaption') == 'true' ||
        node.getAttribute('showAsCaption') == 'on';
  }

  int? get nameLen {
    return node.getAttribute('nameLen') != null
        ? int.tryParse(node.getAttribute('nameLen')!)
        : null;
  }

  int? get pPos {
    return node.getAttribute('pPos') != null
        ? int.tryParse(node.getAttribute('pPos')!)
        : null;
  }

  int? get pLen {
    return node.getAttribute('pLen') != null
        ? int.tryParse(node.getAttribute('pLen')!)
        : null;
  }

  int? get level {
    return node.getAttribute('level') != null
        ? int.tryParse(node.getAttribute('level')!)
        : null;
  }

  int get field {
    return int.parse(node.getAttribute('field')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('field') == null) {
      errors.add(
        "Missing required attribute 'field' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_Members(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  int? get level {
    return node.getAttribute('level') != null
        ? int.tryParse(node.getAttribute('level')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'member',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Member(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Member(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Dimensions(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'dimension',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotDimension(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotDimension(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get measure {
    return node.getAttribute('measure') == '1' ||
        node.getAttribute('measure') == 'true' ||
        node.getAttribute('measure') == 'on';
  }

  String get name {
    return node.getAttribute('name')!;
  }

  String get uniqueName {
    return node.getAttribute('uniqueName')!;
  }

  String get caption {
    return node.getAttribute('caption')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('uniqueName') == null) {
      errors.add(
        "Missing required attribute 'uniqueName' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('caption') == null) {
      errors.add(
        "Missing required attribute 'caption' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_MeasureGroups(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'measureGroup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MeasureGroup(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MeasureDimensionMaps(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'map',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MeasureDimensionMap(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MeasureGroup(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  String get caption {
    return node.getAttribute('caption')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('caption') == null) {
      errors.add(
        "Missing required attribute 'caption' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_MeasureDimensionMap(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get measureGroup {
    return node.getAttribute('measureGroup') != null
        ? int.tryParse(node.getAttribute('measureGroup')!)
        : null;
  }

  int? get dimension {
    return node.getAttribute('dimension') != null
        ? int.tryParse(node.getAttribute('dimension')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_PivotTableStyle(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  bool? get showRowHeaders {
    return node.getAttribute('showRowHeaders') == '1' ||
        node.getAttribute('showRowHeaders') == 'true' ||
        node.getAttribute('showRowHeaders') == 'on';
  }

  bool? get showColHeaders {
    return node.getAttribute('showColHeaders') == '1' ||
        node.getAttribute('showColHeaders') == 'true' ||
        node.getAttribute('showColHeaders') == 'on';
  }

  bool? get showRowStripes {
    return node.getAttribute('showRowStripes') == '1' ||
        node.getAttribute('showRowStripes') == 'true' ||
        node.getAttribute('showRowStripes') == 'on';
  }

  bool? get showColStripes {
    return node.getAttribute('showColStripes') == '1' ||
        node.getAttribute('showColStripes') == 'true' ||
        node.getAttribute('showColStripes') == 'on';
  }

  bool? get showLastColumn {
    return node.getAttribute('showLastColumn') == '1' ||
        node.getAttribute('showLastColumn') == 'true' ||
        node.getAttribute('showLastColumn') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_PivotFilters(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'filter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotFilter(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotFilter(_i1.XmlElement node) implements _i1.XmlElement {
  int get fld {
    return int.parse(node.getAttribute('fld')!);
  }

  int? get mpFld {
    return node.getAttribute('mpFld') != null
        ? int.tryParse(node.getAttribute('mpFld')!)
        : null;
  }

  S_ST_PivotFilterType get type {
    return S_ST_PivotFilterType.fromValue(node.getAttribute('type')!)!;
  }

  int? get evalOrder {
    return node.getAttribute('evalOrder') != null
        ? int.tryParse(node.getAttribute('evalOrder')!)
        : null;
  }

  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  int? get iMeasureHier {
    return node.getAttribute('iMeasureHier') != null
        ? int.tryParse(node.getAttribute('iMeasureHier')!)
        : null;
  }

  int? get iMeasureFld {
    return node.getAttribute('iMeasureFld') != null
        ? int.tryParse(node.getAttribute('iMeasureFld')!)
        : null;
  }

  String? get name {
    return node.getAttribute('name');
  }

  String? get description {
    return node.getAttribute('description');
  }

  String? get stringValue1 {
    return node.getAttribute('stringValue1');
  }

  String? get stringValue2 {
    return node.getAttribute('stringValue2');
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('fld') == null) {
      errors.add("Missing required attribute 'fld' in ${node.name.qualified}");
    }
    if (node.getAttribute('type') == null) {
      errors.add("Missing required attribute 'type' in ${node.name.qualified}");
    }
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_PivotFilterType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_AutoFilter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotArea(_i1.XmlElement node) implements _i1.XmlElement {
  int? get field {
    return node.getAttribute('field') != null
        ? int.tryParse(node.getAttribute('field')!)
        : null;
  }

  S_ST_PivotAreaType? get type {
    return node.getAttribute('type') != null
        ? S_ST_PivotAreaType.fromValue(node.getAttribute('type')!)
        : null;
  }

  bool? get dataOnly {
    return node.getAttribute('dataOnly') == '1' ||
        node.getAttribute('dataOnly') == 'true' ||
        node.getAttribute('dataOnly') == 'on';
  }

  bool? get labelOnly {
    return node.getAttribute('labelOnly') == '1' ||
        node.getAttribute('labelOnly') == 'true' ||
        node.getAttribute('labelOnly') == 'on';
  }

  bool? get grandRow {
    return node.getAttribute('grandRow') == '1' ||
        node.getAttribute('grandRow') == 'true' ||
        node.getAttribute('grandRow') == 'on';
  }

  bool? get grandCol {
    return node.getAttribute('grandCol') == '1' ||
        node.getAttribute('grandCol') == 'true' ||
        node.getAttribute('grandCol') == 'on';
  }

  bool? get cacheIndex {
    return node.getAttribute('cacheIndex') == '1' ||
        node.getAttribute('cacheIndex') == 'true' ||
        node.getAttribute('cacheIndex') == 'on';
  }

  bool? get outline {
    return node.getAttribute('outline') == '1' ||
        node.getAttribute('outline') == 'true' ||
        node.getAttribute('outline') == 'on';
  }

  String? get offset {
    return node.getAttribute('offset');
  }

  bool? get collapsedLevelsAreSubtotals {
    return node.getAttribute('collapsedLevelsAreSubtotals') == '1' ||
        node.getAttribute('collapsedLevelsAreSubtotals') == 'true' ||
        node.getAttribute('collapsedLevelsAreSubtotals') == 'on';
  }

  S_ST_Axis? get axis {
    return node.getAttribute('axis') != null
        ? S_ST_Axis.fromValue(node.getAttribute('axis')!)
        : null;
  }

  int? get fieldPosition {
    return node.getAttribute('fieldPosition') != null
        ? int.tryParse(node.getAttribute('fieldPosition')!)
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

  List<String> validate() {
    final errors = <String>[];
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_PivotAreaType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    final v_axis = node.getAttribute('axis');
    if (v_axis != null && S_ST_Axis.fromValue(v_axis) == null) {
      errors.add(
        "Invalid enum value for attribute 'axis' in ${node.name.qualified}: $v_axis",
      );
    }
    for (final childNode in node.findElements(
      'references',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotAreaReferences(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotAreaReferences(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'reference',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotAreaReference(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotAreaReference(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get field {
    return node.getAttribute('field') != null
        ? int.tryParse(node.getAttribute('field')!)
        : null;
  }

  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  bool? get selected {
    return node.getAttribute('selected') == '1' ||
        node.getAttribute('selected') == 'true' ||
        node.getAttribute('selected') == 'on';
  }

  bool? get byPosition {
    return node.getAttribute('byPosition') == '1' ||
        node.getAttribute('byPosition') == 'true' ||
        node.getAttribute('byPosition') == 'on';
  }

  bool? get relative {
    return node.getAttribute('relative') == '1' ||
        node.getAttribute('relative') == 'true' ||
        node.getAttribute('relative') == 'on';
  }

  bool? get defaultSubtotal {
    return node.getAttribute('defaultSubtotal') == '1' ||
        node.getAttribute('defaultSubtotal') == 'true' ||
        node.getAttribute('defaultSubtotal') == 'on';
  }

  bool? get sumSubtotal {
    return node.getAttribute('sumSubtotal') == '1' ||
        node.getAttribute('sumSubtotal') == 'true' ||
        node.getAttribute('sumSubtotal') == 'on';
  }

  bool? get countASubtotal {
    return node.getAttribute('countASubtotal') == '1' ||
        node.getAttribute('countASubtotal') == 'true' ||
        node.getAttribute('countASubtotal') == 'on';
  }

  bool? get avgSubtotal {
    return node.getAttribute('avgSubtotal') == '1' ||
        node.getAttribute('avgSubtotal') == 'true' ||
        node.getAttribute('avgSubtotal') == 'on';
  }

  bool? get maxSubtotal {
    return node.getAttribute('maxSubtotal') == '1' ||
        node.getAttribute('maxSubtotal') == 'true' ||
        node.getAttribute('maxSubtotal') == 'on';
  }

  bool? get minSubtotal {
    return node.getAttribute('minSubtotal') == '1' ||
        node.getAttribute('minSubtotal') == 'true' ||
        node.getAttribute('minSubtotal') == 'on';
  }

  bool? get productSubtotal {
    return node.getAttribute('productSubtotal') == '1' ||
        node.getAttribute('productSubtotal') == 'true' ||
        node.getAttribute('productSubtotal') == 'on';
  }

  bool? get countSubtotal {
    return node.getAttribute('countSubtotal') == '1' ||
        node.getAttribute('countSubtotal') == 'true' ||
        node.getAttribute('countSubtotal') == 'on';
  }

  bool? get stdDevSubtotal {
    return node.getAttribute('stdDevSubtotal') == '1' ||
        node.getAttribute('stdDevSubtotal') == 'true' ||
        node.getAttribute('stdDevSubtotal') == 'on';
  }

  bool? get stdDevPSubtotal {
    return node.getAttribute('stdDevPSubtotal') == '1' ||
        node.getAttribute('stdDevPSubtotal') == 'true' ||
        node.getAttribute('stdDevPSubtotal') == 'on';
  }

  bool? get varSubtotal {
    return node.getAttribute('varSubtotal') == '1' ||
        node.getAttribute('varSubtotal') == 'true' ||
        node.getAttribute('varSubtotal') == 'on';
  }

  bool? get varPSubtotal {
    return node.getAttribute('varPSubtotal') == '1' ||
        node.getAttribute('varPSubtotal') == 'true' ||
        node.getAttribute('varPSubtotal') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'x',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Index(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Index(_i1.XmlElement node) implements _i1.XmlElement {
  int get v {
    return int.parse(node.getAttribute('v')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('v') == null) {
      errors.add("Missing required attribute 'v' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_QueryTable(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  bool? get headers {
    return node.getAttribute('headers') == '1' ||
        node.getAttribute('headers') == 'true' ||
        node.getAttribute('headers') == 'on';
  }

  bool? get rowNumbers {
    return node.getAttribute('rowNumbers') == '1' ||
        node.getAttribute('rowNumbers') == 'true' ||
        node.getAttribute('rowNumbers') == 'on';
  }

  bool? get disableRefresh {
    return node.getAttribute('disableRefresh') == '1' ||
        node.getAttribute('disableRefresh') == 'true' ||
        node.getAttribute('disableRefresh') == 'on';
  }

  bool? get backgroundRefresh {
    return node.getAttribute('backgroundRefresh') == '1' ||
        node.getAttribute('backgroundRefresh') == 'true' ||
        node.getAttribute('backgroundRefresh') == 'on';
  }

  bool? get firstBackgroundRefresh {
    return node.getAttribute('firstBackgroundRefresh') == '1' ||
        node.getAttribute('firstBackgroundRefresh') == 'true' ||
        node.getAttribute('firstBackgroundRefresh') == 'on';
  }

  bool? get refreshOnLoad {
    return node.getAttribute('refreshOnLoad') == '1' ||
        node.getAttribute('refreshOnLoad') == 'true' ||
        node.getAttribute('refreshOnLoad') == 'on';
  }

  S_ST_GrowShrinkType? get growShrinkType {
    return node.getAttribute('growShrinkType') != null
        ? S_ST_GrowShrinkType.fromValue(node.getAttribute('growShrinkType')!)
        : null;
  }

  bool? get fillFormulas {
    return node.getAttribute('fillFormulas') == '1' ||
        node.getAttribute('fillFormulas') == 'true' ||
        node.getAttribute('fillFormulas') == 'on';
  }

  bool? get removeDataOnSave {
    return node.getAttribute('removeDataOnSave') == '1' ||
        node.getAttribute('removeDataOnSave') == 'true' ||
        node.getAttribute('removeDataOnSave') == 'on';
  }

  bool? get disableEdit {
    return node.getAttribute('disableEdit') == '1' ||
        node.getAttribute('disableEdit') == 'true' ||
        node.getAttribute('disableEdit') == 'on';
  }

  bool? get preserveFormatting {
    return node.getAttribute('preserveFormatting') == '1' ||
        node.getAttribute('preserveFormatting') == 'true' ||
        node.getAttribute('preserveFormatting') == 'on';
  }

  bool? get adjustColumnWidth {
    return node.getAttribute('adjustColumnWidth') == '1' ||
        node.getAttribute('adjustColumnWidth') == 'true' ||
        node.getAttribute('adjustColumnWidth') == 'on';
  }

  bool? get intermediate {
    return node.getAttribute('intermediate') == '1' ||
        node.getAttribute('intermediate') == 'true' ||
        node.getAttribute('intermediate') == 'on';
  }

  int get connectionId {
    return int.parse(node.getAttribute('connectionId')!);
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    final v_growShrinkType = node.getAttribute('growShrinkType');
    if (v_growShrinkType != null &&
        S_ST_GrowShrinkType.fromValue(v_growShrinkType) == null) {
      errors.add(
        "Invalid enum value for attribute 'growShrinkType' in ${node.name.qualified}: $v_growShrinkType",
      );
    }
    if (node.getAttribute('connectionId') == null) {
      errors.add(
        "Missing required attribute 'connectionId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'queryTableRefresh',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_QueryTableRefresh(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_QueryTableRefresh(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get preserveSortFilterLayout {
    return node.getAttribute('preserveSortFilterLayout') == '1' ||
        node.getAttribute('preserveSortFilterLayout') == 'true' ||
        node.getAttribute('preserveSortFilterLayout') == 'on';
  }

  bool? get fieldIdWrapped {
    return node.getAttribute('fieldIdWrapped') == '1' ||
        node.getAttribute('fieldIdWrapped') == 'true' ||
        node.getAttribute('fieldIdWrapped') == 'on';
  }

  bool? get headersInLastRefresh {
    return node.getAttribute('headersInLastRefresh') == '1' ||
        node.getAttribute('headersInLastRefresh') == 'true' ||
        node.getAttribute('headersInLastRefresh') == 'on';
  }

  int? get minimumVersion {
    return node.getAttribute('minimumVersion') != null
        ? int.tryParse(node.getAttribute('minimumVersion')!)
        : null;
  }

  int? get nextId {
    return node.getAttribute('nextId') != null
        ? int.tryParse(node.getAttribute('nextId')!)
        : null;
  }

  int? get unboundColumnsLeft {
    return node.getAttribute('unboundColumnsLeft') != null
        ? int.tryParse(node.getAttribute('unboundColumnsLeft')!)
        : null;
  }

  int? get unboundColumnsRight {
    return node.getAttribute('unboundColumnsRight') != null
        ? int.tryParse(node.getAttribute('unboundColumnsRight')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'queryTableFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_QueryTableFields(childNode).validate());
    }
    for (final childNode in node.findElements(
      'queryTableDeletedFields',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_QueryTableDeletedFields(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SortState(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_QueryTableDeletedFields(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'deletedField',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DeletedField(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DeletedField(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_QueryTableFields(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'queryTableField',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_QueryTableField(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_QueryTableField(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String? get name {
    return node.getAttribute('name');
  }

  bool? get dataBound {
    return node.getAttribute('dataBound') == '1' ||
        node.getAttribute('dataBound') == 'true' ||
        node.getAttribute('dataBound') == 'on';
  }

  bool? get rowNumbers {
    return node.getAttribute('rowNumbers') == '1' ||
        node.getAttribute('rowNumbers') == 'true' ||
        node.getAttribute('rowNumbers') == 'on';
  }

  bool? get fillFormulas {
    return node.getAttribute('fillFormulas') == '1' ||
        node.getAttribute('fillFormulas') == 'true' ||
        node.getAttribute('fillFormulas') == 'on';
  }

  bool? get clipped {
    return node.getAttribute('clipped') == '1' ||
        node.getAttribute('clipped') == 'true' ||
        node.getAttribute('clipped') == 'on';
  }

  int? get tableColumnId {
    return node.getAttribute('tableColumnId') != null
        ? int.tryParse(node.getAttribute('tableColumnId')!)
        : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Sst(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  int? get uniqueCount {
    return node.getAttribute('uniqueCount') != null
        ? int.tryParse(node.getAttribute('uniqueCount')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'si',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Rst(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PhoneticRun(_i1.XmlElement node) implements _i1.XmlElement {
  int get sb {
    return int.parse(node.getAttribute('sb')!);
  }

  int get eb {
    return int.parse(node.getAttribute('eb')!);
  }

  String? get t {
    final e = node.getElement(
      't',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sb') == null) {
      errors.add("Missing required attribute 'sb' in ${node.name.qualified}");
    }
    if (node.getAttribute('eb') == null) {
      errors.add("Missing required attribute 'eb' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'rPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RPrElt(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'rFont',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FontName(childNode).validate());
    }
    for (final childNode in node.findElements(
      'charset',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_IntProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'family',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_IntProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'b',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'i',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'strike',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'outline',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'shadow',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'condense',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extend',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sz',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FontSize(childNode).validate());
    }
    for (final childNode in node.findElements(
      'u',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_UnderlineProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'vertAlign',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_VerticalAlignFontProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'scheme',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FontScheme(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'r',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RElt(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rPh',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PhoneticRun(childNode).validate());
    }
    for (final childNode in node.findElements(
      'phoneticPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PhoneticPr(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PhoneticPr(_i1.XmlElement node) implements _i1.XmlElement {
  String get fontId {
    return node.getAttribute('fontId')!;
  }

  S_ST_PhoneticType? get type {
    return node.getAttribute('type') != null
        ? S_ST_PhoneticType.fromValue(node.getAttribute('type')!)
        : null;
  }

  S_ST_PhoneticAlignment? get alignment {
    return node.getAttribute('alignment') != null
        ? S_ST_PhoneticAlignment.fromValue(node.getAttribute('alignment')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('fontId') == null) {
      errors.add(
        "Missing required attribute 'fontId' in ${node.name.qualified}",
      );
    }
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_PhoneticType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    final v_alignment = node.getAttribute('alignment');
    if (v_alignment != null &&
        S_ST_PhoneticAlignment.fromValue(v_alignment) == null) {
      errors.add(
        "Invalid enum value for attribute 'alignment' in ${node.name.qualified}: $v_alignment",
      );
    }
    return errors;
  }
}

extension type S_CT_RevisionHeaders(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute('guid')!;
  }

  String? get lastGuid {
    return node.getAttribute('lastGuid');
  }

  bool? get shared {
    return node.getAttribute('shared') == '1' ||
        node.getAttribute('shared') == 'true' ||
        node.getAttribute('shared') == 'on';
  }

  bool? get diskRevisions {
    return node.getAttribute('diskRevisions') == '1' ||
        node.getAttribute('diskRevisions') == 'true' ||
        node.getAttribute('diskRevisions') == 'on';
  }

  bool? get history {
    return node.getAttribute('history') == '1' ||
        node.getAttribute('history') == 'true' ||
        node.getAttribute('history') == 'on';
  }

  bool? get trackRevisions {
    return node.getAttribute('trackRevisions') == '1' ||
        node.getAttribute('trackRevisions') == 'true' ||
        node.getAttribute('trackRevisions') == 'on';
  }

  bool? get exclusive {
    return node.getAttribute('exclusive') == '1' ||
        node.getAttribute('exclusive') == 'true' ||
        node.getAttribute('exclusive') == 'on';
  }

  int? get revisionId {
    return node.getAttribute('revisionId') != null
        ? int.tryParse(node.getAttribute('revisionId')!)
        : null;
  }

  int? get version {
    return node.getAttribute('version') != null
        ? int.tryParse(node.getAttribute('version')!)
        : null;
  }

  bool? get keepChangeHistory {
    return node.getAttribute('keepChangeHistory') == '1' ||
        node.getAttribute('keepChangeHistory') == 'true' ||
        node.getAttribute('keepChangeHistory') == 'on';
  }

  bool? get protected {
    return node.getAttribute('protected') == '1' ||
        node.getAttribute('protected') == 'true' ||
        node.getAttribute('protected') == 'on';
  }

  int? get preserveHistory {
    return node.getAttribute('preserveHistory') != null
        ? int.tryParse(node.getAttribute('preserveHistory')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('guid') == null) {
      errors.add("Missing required attribute 'guid' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'header',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionHeader(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'rrc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionRowColumn(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rm',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionMove(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rcv',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionCustomView(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rsnm',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionSheetRename(childNode).validate());
    }
    for (final childNode in node.findElements(
      'ris',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionInsertSheet(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rcc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionCellChange(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rfmt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionFormatting(childNode).validate());
    }
    for (final childNode in node.findElements(
      'raf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionAutoFormatting(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rdn',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionDefinedName(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rcmt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionComment(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rqt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionQueryTableField(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rcft',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionConflict(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RevisionHeader(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute('guid')!;
  }

  String get dateTime {
    return node.getAttribute('dateTime')!;
  }

  int get maxSheetId {
    return int.parse(node.getAttribute('maxSheetId')!);
  }

  String get userName {
    return node.getAttribute('userName')!;
  }

  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  int? get minRId {
    return node.getAttribute('minRId') != null
        ? int.tryParse(node.getAttribute('minRId')!)
        : null;
  }

  int? get maxRId {
    return node.getAttribute('maxRId') != null
        ? int.tryParse(node.getAttribute('maxRId')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('guid') == null) {
      errors.add("Missing required attribute 'guid' in ${node.name.qualified}");
    }
    if (node.getAttribute('dateTime') == null) {
      errors.add(
        "Missing required attribute 'dateTime' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('maxSheetId') == null) {
      errors.add(
        "Missing required attribute 'maxSheetId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('userName') == null) {
      errors.add(
        "Missing required attribute 'userName' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'sheetIdMap',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetIdMap(childNode).validate());
    }
    for (final childNode in node.findElements(
      'reviewedList',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ReviewedRevisions(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SheetIdMap(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetId',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetId(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SheetId(_i1.XmlElement node) implements _i1.XmlElement {
  int get val {
    return int.parse(node.getAttribute('val')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_ReviewedRevisions(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'reviewed',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Reviewed(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Reviewed(_i1.XmlElement node) implements _i1.XmlElement {
  int get rId {
    return int.parse(node.getAttribute('rId')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('rId') == null) {
      errors.add("Missing required attribute 'rId' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_UndoInfo(_i1.XmlElement node) implements _i1.XmlElement {
  int get index_ {
    return int.parse(node.getAttribute('index')!);
  }

  S_ST_FormulaExpression get exp {
    return S_ST_FormulaExpression.fromValue(node.getAttribute('exp')!)!;
  }

  bool? get ref3D {
    return node.getAttribute('ref3D') == '1' ||
        node.getAttribute('ref3D') == 'true' ||
        node.getAttribute('ref3D') == 'on';
  }

  bool? get array {
    return node.getAttribute('array') == '1' ||
        node.getAttribute('array') == 'true' ||
        node.getAttribute('array') == 'on';
  }

  bool? get v {
    return node.getAttribute('v') == '1' ||
        node.getAttribute('v') == 'true' ||
        node.getAttribute('v') == 'on';
  }

  bool? get nf {
    return node.getAttribute('nf') == '1' ||
        node.getAttribute('nf') == 'true' ||
        node.getAttribute('nf') == 'on';
  }

  bool? get cs {
    return node.getAttribute('cs') == '1' ||
        node.getAttribute('cs') == 'true' ||
        node.getAttribute('cs') == 'on';
  }

  String get dr {
    return node.getAttribute('dr')!;
  }

  String? get dn {
    return node.getAttribute('dn');
  }

  String? get r {
    return node.getAttribute('r');
  }

  int? get sId {
    return node.getAttribute('sId') != null
        ? int.tryParse(node.getAttribute('sId')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('index') == null) {
      errors.add(
        "Missing required attribute 'index' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('exp') == null) {
      errors.add("Missing required attribute 'exp' in ${node.name.qualified}");
    }
    final v_exp = node.getAttribute('exp');
    if (v_exp != null && S_ST_FormulaExpression.fromValue(v_exp) == null) {
      errors.add(
        "Invalid enum value for attribute 'exp' in ${node.name.qualified}: $v_exp",
      );
    }
    if (node.getAttribute('dr') == null) {
      errors.add("Missing required attribute 'dr' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_RevisionRowColumn(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sId {
    return int.parse(node.getAttribute('sId')!);
  }

  bool? get eol {
    return node.getAttribute('eol') == '1' ||
        node.getAttribute('eol') == 'true' ||
        node.getAttribute('eol') == 'on';
  }

  String get ref {
    return node.getAttribute('ref')!;
  }

  S_ST_rwColActionType get action {
    return S_ST_rwColActionType.fromValue(node.getAttribute('action')!)!;
  }

  bool? get edge {
    return node.getAttribute('edge') == '1' ||
        node.getAttribute('edge') == 'true' ||
        node.getAttribute('edge') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sId') == null) {
      errors.add("Missing required attribute 'sId' in ${node.name.qualified}");
    }
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    if (node.getAttribute('action') == null) {
      errors.add(
        "Missing required attribute 'action' in ${node.name.qualified}",
      );
    }
    final v_action = node.getAttribute('action');
    if (v_action != null && S_ST_rwColActionType.fromValue(v_action) == null) {
      errors.add(
        "Invalid enum value for attribute 'action' in ${node.name.qualified}: $v_action",
      );
    }
    for (final childNode in node.findElements(
      'undo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_UndoInfo(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rcc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionCellChange(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rfmt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionFormatting(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RevisionMove(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  String get source {
    return node.getAttribute('source')!;
  }

  String get destination {
    return node.getAttribute('destination')!;
  }

  int? get sourceSheetId {
    return node.getAttribute('sourceSheetId') != null
        ? int.tryParse(node.getAttribute('sourceSheetId')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('source') == null) {
      errors.add(
        "Missing required attribute 'source' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('destination') == null) {
      errors.add(
        "Missing required attribute 'destination' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'undo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_UndoInfo(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rcc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionCellChange(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rfmt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RevisionFormatting(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RevisionCustomView(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute('guid')!;
  }

  S_ST_RevisionAction get action {
    return S_ST_RevisionAction.fromValue(node.getAttribute('action')!)!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('guid') == null) {
      errors.add("Missing required attribute 'guid' in ${node.name.qualified}");
    }
    if (node.getAttribute('action') == null) {
      errors.add(
        "Missing required attribute 'action' in ${node.name.qualified}",
      );
    }
    final v_action = node.getAttribute('action');
    if (v_action != null && S_ST_RevisionAction.fromValue(v_action) == null) {
      errors.add(
        "Invalid enum value for attribute 'action' in ${node.name.qualified}: $v_action",
      );
    }
    return errors;
  }
}

extension type S_CT_RevisionSheetRename(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  String get oldName {
    return node.getAttribute('oldName')!;
  }

  String get newName {
    return node.getAttribute('newName')!;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('oldName') == null) {
      errors.add(
        "Missing required attribute 'oldName' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('newName') == null) {
      errors.add(
        "Missing required attribute 'newName' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RevisionInsertSheet(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  String get name {
    return node.getAttribute('name')!;
  }

  int get sheetPosition {
    return int.parse(node.getAttribute('sheetPosition')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('sheetPosition') == null) {
      errors.add(
        "Missing required attribute 'sheetPosition' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_RevisionCellChange(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sId {
    return int.parse(node.getAttribute('sId')!);
  }

  bool? get odxf {
    return node.getAttribute('odxf') == '1' ||
        node.getAttribute('odxf') == 'true' ||
        node.getAttribute('odxf') == 'on';
  }

  bool? get xfDxf {
    return node.getAttribute('xfDxf') == '1' ||
        node.getAttribute('xfDxf') == 'true' ||
        node.getAttribute('xfDxf') == 'on';
  }

  bool? get s {
    return node.getAttribute('s') == '1' ||
        node.getAttribute('s') == 'true' ||
        node.getAttribute('s') == 'on';
  }

  bool? get dxf {
    return node.getAttribute('dxf') == '1' ||
        node.getAttribute('dxf') == 'true' ||
        node.getAttribute('dxf') == 'on';
  }

  String? get numFmtId {
    return node.getAttribute('numFmtId');
  }

  bool? get quotePrefix {
    return node.getAttribute('quotePrefix') == '1' ||
        node.getAttribute('quotePrefix') == 'true' ||
        node.getAttribute('quotePrefix') == 'on';
  }

  bool? get oldQuotePrefix {
    return node.getAttribute('oldQuotePrefix') == '1' ||
        node.getAttribute('oldQuotePrefix') == 'true' ||
        node.getAttribute('oldQuotePrefix') == 'on';
  }

  bool? get ph {
    return node.getAttribute('ph') == '1' ||
        node.getAttribute('ph') == 'true' ||
        node.getAttribute('ph') == 'on';
  }

  bool? get oldPh {
    return node.getAttribute('oldPh') == '1' ||
        node.getAttribute('oldPh') == 'true' ||
        node.getAttribute('oldPh') == 'on';
  }

  bool? get endOfListFormulaUpdate {
    return node.getAttribute('endOfListFormulaUpdate') == '1' ||
        node.getAttribute('endOfListFormulaUpdate') == 'true' ||
        node.getAttribute('endOfListFormulaUpdate') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sId') == null) {
      errors.add("Missing required attribute 'sId' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'oc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Cell(childNode).validate());
    }
    for (final childNode in node.findElements(
      'nc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Cell(childNode).validate());
    }
    for (final childNode in node.findElements(
      'odxf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Dxf(childNode).validate());
    }
    for (final childNode in node.findElements(
      'ndxf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Dxf(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RevisionFormatting(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  bool? get xfDxf {
    return node.getAttribute('xfDxf') == '1' ||
        node.getAttribute('xfDxf') == 'true' ||
        node.getAttribute('xfDxf') == 'on';
  }

  bool? get s {
    return node.getAttribute('s') == '1' ||
        node.getAttribute('s') == 'true' ||
        node.getAttribute('s') == 'on';
  }

  int? get start {
    return node.getAttribute('start') != null
        ? int.tryParse(node.getAttribute('start')!)
        : null;
  }

  int? get length {
    return node.getAttribute('length') != null
        ? int.tryParse(node.getAttribute('length')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'dxf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Dxf(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RevisionAutoFormatting(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  String get ref {
    return node.getAttribute('ref')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_RevisionComment(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  String get cell {
    return node.getAttribute('cell')!;
  }

  String get guid {
    return node.getAttribute('guid')!;
  }

  S_ST_RevisionAction? get action {
    return node.getAttribute('action') != null
        ? S_ST_RevisionAction.fromValue(node.getAttribute('action')!)
        : null;
  }

  bool? get alwaysShow {
    return node.getAttribute('alwaysShow') == '1' ||
        node.getAttribute('alwaysShow') == 'true' ||
        node.getAttribute('alwaysShow') == 'on';
  }

  bool? get old {
    return node.getAttribute('old') == '1' ||
        node.getAttribute('old') == 'true' ||
        node.getAttribute('old') == 'on';
  }

  bool? get hiddenRow {
    return node.getAttribute('hiddenRow') == '1' ||
        node.getAttribute('hiddenRow') == 'true' ||
        node.getAttribute('hiddenRow') == 'on';
  }

  bool? get hiddenColumn {
    return node.getAttribute('hiddenColumn') == '1' ||
        node.getAttribute('hiddenColumn') == 'true' ||
        node.getAttribute('hiddenColumn') == 'on';
  }

  String get author {
    return node.getAttribute('author')!;
  }

  int? get oldLength {
    return node.getAttribute('oldLength') != null
        ? int.tryParse(node.getAttribute('oldLength')!)
        : null;
  }

  int? get newLength {
    return node.getAttribute('newLength') != null
        ? int.tryParse(node.getAttribute('newLength')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('cell') == null) {
      errors.add("Missing required attribute 'cell' in ${node.name.qualified}");
    }
    if (node.getAttribute('guid') == null) {
      errors.add("Missing required attribute 'guid' in ${node.name.qualified}");
    }
    final v_action = node.getAttribute('action');
    if (v_action != null && S_ST_RevisionAction.fromValue(v_action) == null) {
      errors.add(
        "Invalid enum value for attribute 'action' in ${node.name.qualified}: $v_action",
      );
    }
    if (node.getAttribute('author') == null) {
      errors.add(
        "Missing required attribute 'author' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_RevisionDefinedName(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get localSheetId {
    return node.getAttribute('localSheetId') != null
        ? int.tryParse(node.getAttribute('localSheetId')!)
        : null;
  }

  bool? get customView {
    return node.getAttribute('customView') == '1' ||
        node.getAttribute('customView') == 'true' ||
        node.getAttribute('customView') == 'on';
  }

  String get name {
    return node.getAttribute('name')!;
  }

  bool? get function_ {
    return node.getAttribute('function') == '1' ||
        node.getAttribute('function') == 'true' ||
        node.getAttribute('function') == 'on';
  }

  bool? get oldFunction {
    return node.getAttribute('oldFunction') == '1' ||
        node.getAttribute('oldFunction') == 'true' ||
        node.getAttribute('oldFunction') == 'on';
  }

  int? get functionGroupId {
    return node.getAttribute('functionGroupId') != null
        ? int.tryParse(node.getAttribute('functionGroupId')!)
        : null;
  }

  int? get oldFunctionGroupId {
    return node.getAttribute('oldFunctionGroupId') != null
        ? int.tryParse(node.getAttribute('oldFunctionGroupId')!)
        : null;
  }

  int? get shortcutKey {
    return node.getAttribute('shortcutKey') != null
        ? int.tryParse(node.getAttribute('shortcutKey')!)
        : null;
  }

  int? get oldShortcutKey {
    return node.getAttribute('oldShortcutKey') != null
        ? int.tryParse(node.getAttribute('oldShortcutKey')!)
        : null;
  }

  bool? get hidden {
    return node.getAttribute('hidden') == '1' ||
        node.getAttribute('hidden') == 'true' ||
        node.getAttribute('hidden') == 'on';
  }

  bool? get oldHidden {
    return node.getAttribute('oldHidden') == '1' ||
        node.getAttribute('oldHidden') == 'true' ||
        node.getAttribute('oldHidden') == 'on';
  }

  String? get customMenu {
    return node.getAttribute('customMenu');
  }

  String? get oldCustomMenu {
    return node.getAttribute('oldCustomMenu');
  }

  String? get description {
    return node.getAttribute('description');
  }

  String? get oldDescription {
    return node.getAttribute('oldDescription');
  }

  String? get help {
    return node.getAttribute('help');
  }

  String? get oldHelp {
    return node.getAttribute('oldHelp');
  }

  String? get statusBar {
    return node.getAttribute('statusBar');
  }

  String? get oldStatusBar {
    return node.getAttribute('oldStatusBar');
  }

  String? get comment {
    return node.getAttribute('comment');
  }

  String? get oldComment {
    return node.getAttribute('oldComment');
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RevisionConflict(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get sheetId {
    return node.getAttribute('sheetId') != null
        ? int.tryParse(node.getAttribute('sheetId')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_RevisionQueryTableField(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  String get ref {
    return node.getAttribute('ref')!;
  }

  int get fieldId {
    return int.parse(node.getAttribute('fieldId')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    if (node.getAttribute('fieldId') == null) {
      errors.add(
        "Missing required attribute 'fieldId' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_Users(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'userInfo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SharedUser(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SharedUser(_i1.XmlElement node) implements _i1.XmlElement {
  String get guid {
    return node.getAttribute('guid')!;
  }

  String get name {
    return node.getAttribute('name')!;
  }

  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String get dateTime {
    return node.getAttribute('dateTime')!;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('guid') == null) {
      errors.add("Missing required attribute 'guid' in ${node.name.qualified}");
    }
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    if (node.getAttribute('dateTime') == null) {
      errors.add(
        "Missing required attribute 'dateTime' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dimension',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetDimension(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetFormatPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetFormatPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cols',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Cols(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetData',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetData(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetProtection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_AutoFilter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SortState(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dataConsolidate',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataConsolidate(childNode).validate());
    }
    for (final childNode in node.findElements(
      'customSheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomSheetViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'phoneticPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PhoneticPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'conditionalFormatting',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ConditionalFormatting(childNode).validate());
    }
    for (final childNode in node.findElements(
      'printOptions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PrintOptions(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageMargins(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageSetup(childNode).validate());
    }
    for (final childNode in node.findElements(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_HeaderFooter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rowBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageBreak(childNode).validate());
    }
    for (final childNode in node.findElements(
      'colBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageBreak(childNode).validate());
    }
    for (final childNode in node.findElements(
      'customProperties',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomProperties(childNode).validate());
    }
    for (final childNode in node.findElements(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Drawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'legacyDrawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LegacyDrawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LegacyDrawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'drawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DrawingHF(childNode).validate());
    }
    for (final childNode in node.findElements(
      'picture',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetBackgroundPicture(childNode).validate());
    }
    for (final childNode in node.findElements(
      'oleObjects',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OleObjects(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetFormatPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetFormatPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetProtection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'customSheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomSheetViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'printOptions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PrintOptions(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageMargins(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageSetup(childNode).validate());
    }
    for (final childNode in node.findElements(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_HeaderFooter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Drawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'legacyDrawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LegacyDrawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LegacyDrawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'drawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DrawingHF(childNode).validate());
    }
    for (final childNode in node.findElements(
      'oleObjects',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OleObjects(childNode).validate());
    }
    for (final childNode in node.findElements(
      'controls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Controls(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dimension',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetDimension(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetFormatPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetFormatPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cols',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Cols(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetData',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetData(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetCalcPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetCalcPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetProtection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'protectedRanges',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ProtectedRanges(childNode).validate());
    }
    for (final childNode in node.findElements(
      'scenarios',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Scenarios(childNode).validate());
    }
    for (final childNode in node.findElements(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_AutoFilter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SortState(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dataConsolidate',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataConsolidate(childNode).validate());
    }
    for (final childNode in node.findElements(
      'customSheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomSheetViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'mergeCells',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MergeCells(childNode).validate());
    }
    for (final childNode in node.findElements(
      'phoneticPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PhoneticPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'conditionalFormatting',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ConditionalFormatting(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dataValidations',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataValidations(childNode).validate());
    }
    for (final childNode in node.findElements(
      'hyperlinks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Hyperlinks(childNode).validate());
    }
    for (final childNode in node.findElements(
      'printOptions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PrintOptions(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageMargins(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageSetup(childNode).validate());
    }
    for (final childNode in node.findElements(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_HeaderFooter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rowBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageBreak(childNode).validate());
    }
    for (final childNode in node.findElements(
      'colBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageBreak(childNode).validate());
    }
    for (final childNode in node.findElements(
      'customProperties',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomProperties(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cellWatches',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellWatches(childNode).validate());
    }
    for (final childNode in node.findElements(
      'ignoredErrors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_IgnoredErrors(childNode).validate());
    }
    for (final childNode in node.findElements(
      'smartTags',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SmartTags(childNode).validate());
    }
    for (final childNode in node.findElements(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Drawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'legacyDrawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LegacyDrawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LegacyDrawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'drawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DrawingHF(childNode).validate());
    }
    for (final childNode in node.findElements(
      'picture',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetBackgroundPicture(childNode).validate());
    }
    for (final childNode in node.findElements(
      'oleObjects',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OleObjects(childNode).validate());
    }
    for (final childNode in node.findElements(
      'controls',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Controls(childNode).validate());
    }
    for (final childNode in node.findElements(
      'webPublishItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WebPublishItems(childNode).validate());
    }
    for (final childNode in node.findElements(
      'tableParts',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableParts(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'row',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Row(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SheetCalcPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get fullCalcOnLoad {
    return node.getAttribute('fullCalcOnLoad') == '1' ||
        node.getAttribute('fullCalcOnLoad') == 'true' ||
        node.getAttribute('fullCalcOnLoad') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_SheetFormatPr(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get baseColWidth {
    return node.getAttribute('baseColWidth') != null
        ? int.tryParse(node.getAttribute('baseColWidth')!)
        : null;
  }

  double? get defaultColWidth {
    return node.getAttribute('defaultColWidth') != null
        ? double.tryParse(node.getAttribute('defaultColWidth')!)
        : null;
  }

  double get defaultRowHeight {
    return double.parse(node.getAttribute('defaultRowHeight')!);
  }

  bool? get customHeight {
    return node.getAttribute('customHeight') == '1' ||
        node.getAttribute('customHeight') == 'true' ||
        node.getAttribute('customHeight') == 'on';
  }

  bool? get zeroHeight {
    return node.getAttribute('zeroHeight') == '1' ||
        node.getAttribute('zeroHeight') == 'true' ||
        node.getAttribute('zeroHeight') == 'on';
  }

  bool? get thickTop {
    return node.getAttribute('thickTop') == '1' ||
        node.getAttribute('thickTop') == 'true' ||
        node.getAttribute('thickTop') == 'on';
  }

  bool? get thickBottom {
    return node.getAttribute('thickBottom') == '1' ||
        node.getAttribute('thickBottom') == 'true' ||
        node.getAttribute('thickBottom') == 'on';
  }

  int? get outlineLevelRow {
    return node.getAttribute('outlineLevelRow') != null
        ? int.tryParse(node.getAttribute('outlineLevelRow')!)
        : null;
  }

  int? get outlineLevelCol {
    return node.getAttribute('outlineLevelCol') != null
        ? int.tryParse(node.getAttribute('outlineLevelCol')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('defaultRowHeight') == null) {
      errors.add(
        "Missing required attribute 'defaultRowHeight' in ${node.name.qualified}",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'col',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Col(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Col(_i1.XmlElement node) implements _i1.XmlElement {
  int get min {
    return int.parse(node.getAttribute('min')!);
  }

  int get max {
    return int.parse(node.getAttribute('max')!);
  }

  double? get width {
    return node.getAttribute('width') != null
        ? double.tryParse(node.getAttribute('width')!)
        : null;
  }

  int? get style {
    return node.getAttribute('style') != null
        ? int.tryParse(node.getAttribute('style')!)
        : null;
  }

  bool? get hidden {
    return node.getAttribute('hidden') == '1' ||
        node.getAttribute('hidden') == 'true' ||
        node.getAttribute('hidden') == 'on';
  }

  bool? get bestFit {
    return node.getAttribute('bestFit') == '1' ||
        node.getAttribute('bestFit') == 'true' ||
        node.getAttribute('bestFit') == 'on';
  }

  bool? get customWidth {
    return node.getAttribute('customWidth') == '1' ||
        node.getAttribute('customWidth') == 'true' ||
        node.getAttribute('customWidth') == 'on';
  }

  bool? get phonetic {
    return node.getAttribute('phonetic') == '1' ||
        node.getAttribute('phonetic') == 'true' ||
        node.getAttribute('phonetic') == 'on';
  }

  int? get outlineLevel {
    return node.getAttribute('outlineLevel') != null
        ? int.tryParse(node.getAttribute('outlineLevel')!)
        : null;
  }

  bool? get collapsed {
    return node.getAttribute('collapsed') == '1' ||
        node.getAttribute('collapsed') == 'true' ||
        node.getAttribute('collapsed') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('min') == null) {
      errors.add("Missing required attribute 'min' in ${node.name.qualified}");
    }
    if (node.getAttribute('max') == null) {
      errors.add("Missing required attribute 'max' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Row(_i1.XmlElement node) implements _i1.XmlElement {
  int? get r {
    return node.getAttribute('r') != null
        ? int.tryParse(node.getAttribute('r')!)
        : null;
  }

  int? get s {
    return node.getAttribute('s') != null
        ? int.tryParse(node.getAttribute('s')!)
        : null;
  }

  bool? get customFormat {
    return node.getAttribute('customFormat') == '1' ||
        node.getAttribute('customFormat') == 'true' ||
        node.getAttribute('customFormat') == 'on';
  }

  double? get ht {
    return node.getAttribute('ht') != null
        ? double.tryParse(node.getAttribute('ht')!)
        : null;
  }

  bool? get hidden {
    return node.getAttribute('hidden') == '1' ||
        node.getAttribute('hidden') == 'true' ||
        node.getAttribute('hidden') == 'on';
  }

  bool? get customHeight {
    return node.getAttribute('customHeight') == '1' ||
        node.getAttribute('customHeight') == 'true' ||
        node.getAttribute('customHeight') == 'on';
  }

  int? get outlineLevel {
    return node.getAttribute('outlineLevel') != null
        ? int.tryParse(node.getAttribute('outlineLevel')!)
        : null;
  }

  bool? get collapsed {
    return node.getAttribute('collapsed') == '1' ||
        node.getAttribute('collapsed') == 'true' ||
        node.getAttribute('collapsed') == 'on';
  }

  bool? get thickTop {
    return node.getAttribute('thickTop') == '1' ||
        node.getAttribute('thickTop') == 'true' ||
        node.getAttribute('thickTop') == 'on';
  }

  bool? get thickBot {
    return node.getAttribute('thickBot') == '1' ||
        node.getAttribute('thickBot') == 'true' ||
        node.getAttribute('thickBot') == 'on';
  }

  bool? get ph {
    return node.getAttribute('ph') == '1' ||
        node.getAttribute('ph') == 'true' ||
        node.getAttribute('ph') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'c',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Cell(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Cell(_i1.XmlElement node) implements _i1.XmlElement {
  String? get r {
    return node.getAttribute('r');
  }

  int? get s {
    return node.getAttribute('s') != null
        ? int.tryParse(node.getAttribute('s')!)
        : null;
  }

  S_ST_CellType? get t {
    return node.getAttribute('t') != null
        ? S_ST_CellType.fromValue(node.getAttribute('t')!)
        : null;
  }

  int? get cm {
    return node.getAttribute('cm') != null
        ? int.tryParse(node.getAttribute('cm')!)
        : null;
  }

  int? get vm {
    return node.getAttribute('vm') != null
        ? int.tryParse(node.getAttribute('vm')!)
        : null;
  }

  bool? get ph {
    return node.getAttribute('ph') == '1' ||
        node.getAttribute('ph') == 'true' ||
        node.getAttribute('ph') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    final v_t = node.getAttribute('t');
    if (v_t != null && S_ST_CellType.fromValue(v_t) == null) {
      errors.add(
        "Invalid enum value for attribute 't' in ${node.name.qualified}: $v_t",
      );
    }
    for (final childNode in node.findElements(
      'f',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellFormula(childNode).validate());
    }
    for (final childNode in node.findElements(
      'is',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Rst(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SheetPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get syncHorizontal {
    return node.getAttribute('syncHorizontal') == '1' ||
        node.getAttribute('syncHorizontal') == 'true' ||
        node.getAttribute('syncHorizontal') == 'on';
  }

  bool? get syncVertical {
    return node.getAttribute('syncVertical') == '1' ||
        node.getAttribute('syncVertical') == 'true' ||
        node.getAttribute('syncVertical') == 'on';
  }

  String? get syncRef {
    return node.getAttribute('syncRef');
  }

  bool? get transitionEvaluation {
    return node.getAttribute('transitionEvaluation') == '1' ||
        node.getAttribute('transitionEvaluation') == 'true' ||
        node.getAttribute('transitionEvaluation') == 'on';
  }

  bool? get transitionEntry {
    return node.getAttribute('transitionEntry') == '1' ||
        node.getAttribute('transitionEntry') == 'true' ||
        node.getAttribute('transitionEntry') == 'on';
  }

  bool? get published {
    return node.getAttribute('published') == '1' ||
        node.getAttribute('published') == 'true' ||
        node.getAttribute('published') == 'on';
  }

  String? get codeName {
    return node.getAttribute('codeName');
  }

  bool? get filterMode {
    return node.getAttribute('filterMode') == '1' ||
        node.getAttribute('filterMode') == 'true' ||
        node.getAttribute('filterMode') == 'on';
  }

  bool? get enableFormatConditionsCalculation {
    return node.getAttribute('enableFormatConditionsCalculation') == '1' ||
        node.getAttribute('enableFormatConditionsCalculation') == 'true' ||
        node.getAttribute('enableFormatConditionsCalculation') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'tabColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    for (final childNode in node.findElements(
      'outlinePr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OutlinePr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageSetUpPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageSetUpPr(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SheetDimension(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get ref {
    return node.getAttribute('ref')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetView',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetView(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SheetView(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get windowProtection {
    return node.getAttribute('windowProtection') == '1' ||
        node.getAttribute('windowProtection') == 'true' ||
        node.getAttribute('windowProtection') == 'on';
  }

  bool? get showFormulas {
    return node.getAttribute('showFormulas') == '1' ||
        node.getAttribute('showFormulas') == 'true' ||
        node.getAttribute('showFormulas') == 'on';
  }

  bool? get showGridLines {
    return node.getAttribute('showGridLines') == '1' ||
        node.getAttribute('showGridLines') == 'true' ||
        node.getAttribute('showGridLines') == 'on';
  }

  bool? get showRowColHeaders {
    return node.getAttribute('showRowColHeaders') == '1' ||
        node.getAttribute('showRowColHeaders') == 'true' ||
        node.getAttribute('showRowColHeaders') == 'on';
  }

  bool? get showZeros {
    return node.getAttribute('showZeros') == '1' ||
        node.getAttribute('showZeros') == 'true' ||
        node.getAttribute('showZeros') == 'on';
  }

  bool? get rightToLeft {
    return node.getAttribute('rightToLeft') == '1' ||
        node.getAttribute('rightToLeft') == 'true' ||
        node.getAttribute('rightToLeft') == 'on';
  }

  bool? get tabSelected {
    return node.getAttribute('tabSelected') == '1' ||
        node.getAttribute('tabSelected') == 'true' ||
        node.getAttribute('tabSelected') == 'on';
  }

  bool? get showRuler {
    return node.getAttribute('showRuler') == '1' ||
        node.getAttribute('showRuler') == 'true' ||
        node.getAttribute('showRuler') == 'on';
  }

  bool? get showOutlineSymbols {
    return node.getAttribute('showOutlineSymbols') == '1' ||
        node.getAttribute('showOutlineSymbols') == 'true' ||
        node.getAttribute('showOutlineSymbols') == 'on';
  }

  bool? get defaultGridColor {
    return node.getAttribute('defaultGridColor') == '1' ||
        node.getAttribute('defaultGridColor') == 'true' ||
        node.getAttribute('defaultGridColor') == 'on';
  }

  bool? get showWhiteSpace {
    return node.getAttribute('showWhiteSpace') == '1' ||
        node.getAttribute('showWhiteSpace') == 'true' ||
        node.getAttribute('showWhiteSpace') == 'on';
  }

  S_ST_SheetViewType? get view {
    return node.getAttribute('view') != null
        ? S_ST_SheetViewType.fromValue(node.getAttribute('view')!)
        : null;
  }

  String? get topLeftCell {
    return node.getAttribute('topLeftCell');
  }

  int? get colorId {
    return node.getAttribute('colorId') != null
        ? int.tryParse(node.getAttribute('colorId')!)
        : null;
  }

  int? get zoomScale {
    return node.getAttribute('zoomScale') != null
        ? int.tryParse(node.getAttribute('zoomScale')!)
        : null;
  }

  int? get zoomScaleNormal {
    return node.getAttribute('zoomScaleNormal') != null
        ? int.tryParse(node.getAttribute('zoomScaleNormal')!)
        : null;
  }

  int? get zoomScaleSheetLayoutView {
    return node.getAttribute('zoomScaleSheetLayoutView') != null
        ? int.tryParse(node.getAttribute('zoomScaleSheetLayoutView')!)
        : null;
  }

  int? get zoomScalePageLayoutView {
    return node.getAttribute('zoomScalePageLayoutView') != null
        ? int.tryParse(node.getAttribute('zoomScalePageLayoutView')!)
        : null;
  }

  int get workbookViewId {
    return int.parse(node.getAttribute('workbookViewId')!);
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

  List<String> validate() {
    final errors = <String>[];
    final v_view = node.getAttribute('view');
    if (v_view != null && S_ST_SheetViewType.fromValue(v_view) == null) {
      errors.add(
        "Invalid enum value for attribute 'view' in ${node.name.qualified}: $v_view",
      );
    }
    if (node.getAttribute('workbookViewId') == null) {
      errors.add(
        "Missing required attribute 'workbookViewId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'pane',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Pane(childNode).validate());
    }
    for (final childNode in node.findElements(
      'selection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Selection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pivotSelection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotSelection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Pane(_i1.XmlElement node) implements _i1.XmlElement {
  double? get xSplit {
    return node.getAttribute('xSplit') != null
        ? double.tryParse(node.getAttribute('xSplit')!)
        : null;
  }

  double? get ySplit {
    return node.getAttribute('ySplit') != null
        ? double.tryParse(node.getAttribute('ySplit')!)
        : null;
  }

  String? get topLeftCell {
    return node.getAttribute('topLeftCell');
  }

  S_ST_Pane? get activePane {
    return node.getAttribute('activePane') != null
        ? S_ST_Pane.fromValue(node.getAttribute('activePane')!)
        : null;
  }

  S_ST_PaneState? get state {
    return node.getAttribute('state') != null
        ? S_ST_PaneState.fromValue(node.getAttribute('state')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_activePane = node.getAttribute('activePane');
    if (v_activePane != null && S_ST_Pane.fromValue(v_activePane) == null) {
      errors.add(
        "Invalid enum value for attribute 'activePane' in ${node.name.qualified}: $v_activePane",
      );
    }
    final v_state = node.getAttribute('state');
    if (v_state != null && S_ST_PaneState.fromValue(v_state) == null) {
      errors.add(
        "Invalid enum value for attribute 'state' in ${node.name.qualified}: $v_state",
      );
    }
    return errors;
  }
}

extension type S_CT_PivotSelection(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_Pane? get pane {
    return node.getAttribute('pane') != null
        ? S_ST_Pane.fromValue(node.getAttribute('pane')!)
        : null;
  }

  bool? get showHeader {
    return node.getAttribute('showHeader') == '1' ||
        node.getAttribute('showHeader') == 'true' ||
        node.getAttribute('showHeader') == 'on';
  }

  bool? get label {
    return node.getAttribute('label') == '1' ||
        node.getAttribute('label') == 'true' ||
        node.getAttribute('label') == 'on';
  }

  bool? get data {
    return node.getAttribute('data') == '1' ||
        node.getAttribute('data') == 'true' ||
        node.getAttribute('data') == 'on';
  }

  bool? get extendable {
    return node.getAttribute('extendable') == '1' ||
        node.getAttribute('extendable') == 'true' ||
        node.getAttribute('extendable') == 'on';
  }

  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  S_ST_Axis? get axis {
    return node.getAttribute('axis') != null
        ? S_ST_Axis.fromValue(node.getAttribute('axis')!)
        : null;
  }

  int? get dimension {
    return node.getAttribute('dimension') != null
        ? int.tryParse(node.getAttribute('dimension')!)
        : null;
  }

  int? get start {
    return node.getAttribute('start') != null
        ? int.tryParse(node.getAttribute('start')!)
        : null;
  }

  int? get min {
    return node.getAttribute('min') != null
        ? int.tryParse(node.getAttribute('min')!)
        : null;
  }

  int? get max {
    return node.getAttribute('max') != null
        ? int.tryParse(node.getAttribute('max')!)
        : null;
  }

  int? get activeRow {
    return node.getAttribute('activeRow') != null
        ? int.tryParse(node.getAttribute('activeRow')!)
        : null;
  }

  int? get activeCol {
    return node.getAttribute('activeCol') != null
        ? int.tryParse(node.getAttribute('activeCol')!)
        : null;
  }

  int? get previousRow {
    return node.getAttribute('previousRow') != null
        ? int.tryParse(node.getAttribute('previousRow')!)
        : null;
  }

  int? get previousCol {
    return node.getAttribute('previousCol') != null
        ? int.tryParse(node.getAttribute('previousCol')!)
        : null;
  }

  int? get click {
    return node.getAttribute('click') != null
        ? int.tryParse(node.getAttribute('click')!)
        : null;
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  S_CT_PivotArea? get pivotArea {
    final e = node.getElement(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_PivotArea(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_pane = node.getAttribute('pane');
    if (v_pane != null && S_ST_Pane.fromValue(v_pane) == null) {
      errors.add(
        "Invalid enum value for attribute 'pane' in ${node.name.qualified}: $v_pane",
      );
    }
    final v_axis = node.getAttribute('axis');
    if (v_axis != null && S_ST_Axis.fromValue(v_axis) == null) {
      errors.add(
        "Invalid enum value for attribute 'axis' in ${node.name.qualified}: $v_axis",
      );
    }
    for (final childNode in node.findElements(
      'pivotArea',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotArea(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Selection(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_Pane? get pane {
    return node.getAttribute('pane') != null
        ? S_ST_Pane.fromValue(node.getAttribute('pane')!)
        : null;
  }

  String? get activeCell {
    return node.getAttribute('activeCell');
  }

  int? get activeCellId {
    return node.getAttribute('activeCellId') != null
        ? int.tryParse(node.getAttribute('activeCellId')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_pane = node.getAttribute('pane');
    if (v_pane != null && S_ST_Pane.fromValue(v_pane) == null) {
      errors.add(
        "Invalid enum value for attribute 'pane' in ${node.name.qualified}: $v_pane",
      );
    }
    return errors;
  }
}

extension type S_CT_PageBreak(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  int? get manualBreakCount {
    return node.getAttribute('manualBreakCount') != null
        ? int.tryParse(node.getAttribute('manualBreakCount')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'brk',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Break(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Break(_i1.XmlElement node) implements _i1.XmlElement {
  int? get id {
    return node.getAttribute('id') != null
        ? int.tryParse(node.getAttribute('id')!)
        : null;
  }

  int? get min {
    return node.getAttribute('min') != null
        ? int.tryParse(node.getAttribute('min')!)
        : null;
  }

  int? get max {
    return node.getAttribute('max') != null
        ? int.tryParse(node.getAttribute('max')!)
        : null;
  }

  bool? get man {
    return node.getAttribute('man') == '1' ||
        node.getAttribute('man') == 'true' ||
        node.getAttribute('man') == 'on';
  }

  bool? get pt {
    return node.getAttribute('pt') == '1' ||
        node.getAttribute('pt') == 'true' ||
        node.getAttribute('pt') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_OutlinePr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get applyStyles {
    return node.getAttribute('applyStyles') == '1' ||
        node.getAttribute('applyStyles') == 'true' ||
        node.getAttribute('applyStyles') == 'on';
  }

  bool? get summaryBelow {
    return node.getAttribute('summaryBelow') == '1' ||
        node.getAttribute('summaryBelow') == 'true' ||
        node.getAttribute('summaryBelow') == 'on';
  }

  bool? get summaryRight {
    return node.getAttribute('summaryRight') == '1' ||
        node.getAttribute('summaryRight') == 'true' ||
        node.getAttribute('summaryRight') == 'on';
  }

  bool? get showOutlineSymbols {
    return node.getAttribute('showOutlineSymbols') == '1' ||
        node.getAttribute('showOutlineSymbols') == 'true' ||
        node.getAttribute('showOutlineSymbols') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_PageSetUpPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get autoPageBreaks {
    return node.getAttribute('autoPageBreaks') == '1' ||
        node.getAttribute('autoPageBreaks') == 'true' ||
        node.getAttribute('autoPageBreaks') == 'on';
  }

  bool? get fitToPage {
    return node.getAttribute('fitToPage') == '1' ||
        node.getAttribute('fitToPage') == 'true' ||
        node.getAttribute('fitToPage') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_DataConsolidate(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_DataConsolidateFunction? get function_ {
    return node.getAttribute('function') != null
        ? S_ST_DataConsolidateFunction.fromValue(node.getAttribute('function')!)
        : null;
  }

  bool? get startLabels {
    return node.getAttribute('startLabels') == '1' ||
        node.getAttribute('startLabels') == 'true' ||
        node.getAttribute('startLabels') == 'on';
  }

  bool? get leftLabels {
    return node.getAttribute('leftLabels') == '1' ||
        node.getAttribute('leftLabels') == 'true' ||
        node.getAttribute('leftLabels') == 'on';
  }

  bool? get topLabels {
    return node.getAttribute('topLabels') == '1' ||
        node.getAttribute('topLabels') == 'true' ||
        node.getAttribute('topLabels') == 'on';
  }

  bool? get link {
    return node.getAttribute('link') == '1' ||
        node.getAttribute('link') == 'true' ||
        node.getAttribute('link') == 'on';
  }

  S_CT_DataRefs? get dataRefs {
    final e = node.getElement(
      'dataRefs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DataRefs(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_function = node.getAttribute('function');
    if (v_function != null &&
        S_ST_DataConsolidateFunction.fromValue(v_function) == null) {
      errors.add(
        "Invalid enum value for attribute 'function' in ${node.name.qualified}: $v_function",
      );
    }
    for (final childNode in node.findElements(
      'dataRefs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataRefs(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DataRefs(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'dataRef',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataRef(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DataRef(_i1.XmlElement node) implements _i1.XmlElement {
  String? get ref {
    return node.getAttribute('ref');
  }

  String? get name {
    return node.getAttribute('name');
  }

  String? get sheet {
    return node.getAttribute('sheet');
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_MergeCells(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'mergeCell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MergeCell(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MergeCell(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute('ref')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cellSmartTags',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellSmartTags(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellSmartTags(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get r {
    return node.getAttribute('r')!;
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('r') == null) {
      errors.add("Missing required attribute 'r' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'cellSmartTag',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellSmartTag(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellSmartTag(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get type {
    return int.parse(node.getAttribute('type')!);
  }

  bool? get deleted {
    return node.getAttribute('deleted') == '1' ||
        node.getAttribute('deleted') == 'true' ||
        node.getAttribute('deleted') == 'on';
  }

  bool? get xmlBased {
    return node.getAttribute('xmlBased') == '1' ||
        node.getAttribute('xmlBased') == 'true' ||
        node.getAttribute('xmlBased') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('type') == null) {
      errors.add("Missing required attribute 'type' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'cellSmartTagPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellSmartTagPr(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellSmartTagPr(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get key {
    return node.getAttribute('key')!;
  }

  String get val {
    return node.getAttribute('val')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('key') == null) {
      errors.add("Missing required attribute 'key' in ${node.name.qualified}");
    }
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Drawing(_i1.XmlElement node) implements _i1.XmlElement {
  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_LegacyDrawing(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_DrawingHF(_i1.XmlElement node) implements _i1.XmlElement {
  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  int? get lho {
    return node.getAttribute('lho') != null
        ? int.tryParse(node.getAttribute('lho')!)
        : null;
  }

  int? get lhe {
    return node.getAttribute('lhe') != null
        ? int.tryParse(node.getAttribute('lhe')!)
        : null;
  }

  int? get lhf {
    return node.getAttribute('lhf') != null
        ? int.tryParse(node.getAttribute('lhf')!)
        : null;
  }

  int? get cho {
    return node.getAttribute('cho') != null
        ? int.tryParse(node.getAttribute('cho')!)
        : null;
  }

  int? get che {
    return node.getAttribute('che') != null
        ? int.tryParse(node.getAttribute('che')!)
        : null;
  }

  int? get chf {
    return node.getAttribute('chf') != null
        ? int.tryParse(node.getAttribute('chf')!)
        : null;
  }

  int? get rho {
    return node.getAttribute('rho') != null
        ? int.tryParse(node.getAttribute('rho')!)
        : null;
  }

  int? get rhe {
    return node.getAttribute('rhe') != null
        ? int.tryParse(node.getAttribute('rhe')!)
        : null;
  }

  int? get rhf {
    return node.getAttribute('rhf') != null
        ? int.tryParse(node.getAttribute('rhf')!)
        : null;
  }

  int? get lfo {
    return node.getAttribute('lfo') != null
        ? int.tryParse(node.getAttribute('lfo')!)
        : null;
  }

  int? get lfe {
    return node.getAttribute('lfe') != null
        ? int.tryParse(node.getAttribute('lfe')!)
        : null;
  }

  int? get lff {
    return node.getAttribute('lff') != null
        ? int.tryParse(node.getAttribute('lff')!)
        : null;
  }

  int? get cfo {
    return node.getAttribute('cfo') != null
        ? int.tryParse(node.getAttribute('cfo')!)
        : null;
  }

  int? get cfe {
    return node.getAttribute('cfe') != null
        ? int.tryParse(node.getAttribute('cfe')!)
        : null;
  }

  int? get cff {
    return node.getAttribute('cff') != null
        ? int.tryParse(node.getAttribute('cff')!)
        : null;
  }

  int? get rfo {
    return node.getAttribute('rfo') != null
        ? int.tryParse(node.getAttribute('rfo')!)
        : null;
  }

  int? get rfe {
    return node.getAttribute('rfe') != null
        ? int.tryParse(node.getAttribute('rfe')!)
        : null;
  }

  int? get rff {
    return node.getAttribute('rff') != null
        ? int.tryParse(node.getAttribute('rff')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'customSheetView',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomSheetView(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CustomSheetView(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute('guid')!;
  }

  int? get scale {
    return node.getAttribute('scale') != null
        ? int.tryParse(node.getAttribute('scale')!)
        : null;
  }

  int? get colorId {
    return node.getAttribute('colorId') != null
        ? int.tryParse(node.getAttribute('colorId')!)
        : null;
  }

  bool? get showPageBreaks {
    return node.getAttribute('showPageBreaks') == '1' ||
        node.getAttribute('showPageBreaks') == 'true' ||
        node.getAttribute('showPageBreaks') == 'on';
  }

  bool? get showFormulas {
    return node.getAttribute('showFormulas') == '1' ||
        node.getAttribute('showFormulas') == 'true' ||
        node.getAttribute('showFormulas') == 'on';
  }

  bool? get showGridLines {
    return node.getAttribute('showGridLines') == '1' ||
        node.getAttribute('showGridLines') == 'true' ||
        node.getAttribute('showGridLines') == 'on';
  }

  bool? get showRowCol {
    return node.getAttribute('showRowCol') == '1' ||
        node.getAttribute('showRowCol') == 'true' ||
        node.getAttribute('showRowCol') == 'on';
  }

  bool? get outlineSymbols {
    return node.getAttribute('outlineSymbols') == '1' ||
        node.getAttribute('outlineSymbols') == 'true' ||
        node.getAttribute('outlineSymbols') == 'on';
  }

  bool? get zeroValues {
    return node.getAttribute('zeroValues') == '1' ||
        node.getAttribute('zeroValues') == 'true' ||
        node.getAttribute('zeroValues') == 'on';
  }

  bool? get fitToPage {
    return node.getAttribute('fitToPage') == '1' ||
        node.getAttribute('fitToPage') == 'true' ||
        node.getAttribute('fitToPage') == 'on';
  }

  bool? get printArea {
    return node.getAttribute('printArea') == '1' ||
        node.getAttribute('printArea') == 'true' ||
        node.getAttribute('printArea') == 'on';
  }

  bool? get filter {
    return node.getAttribute('filter') == '1' ||
        node.getAttribute('filter') == 'true' ||
        node.getAttribute('filter') == 'on';
  }

  bool? get showAutoFilter {
    return node.getAttribute('showAutoFilter') == '1' ||
        node.getAttribute('showAutoFilter') == 'true' ||
        node.getAttribute('showAutoFilter') == 'on';
  }

  bool? get hiddenRows {
    return node.getAttribute('hiddenRows') == '1' ||
        node.getAttribute('hiddenRows') == 'true' ||
        node.getAttribute('hiddenRows') == 'on';
  }

  bool? get hiddenColumns {
    return node.getAttribute('hiddenColumns') == '1' ||
        node.getAttribute('hiddenColumns') == 'true' ||
        node.getAttribute('hiddenColumns') == 'on';
  }

  S_ST_SheetState? get state {
    return node.getAttribute('state') != null
        ? S_ST_SheetState.fromValue(node.getAttribute('state')!)
        : null;
  }

  bool? get filterUnique {
    return node.getAttribute('filterUnique') == '1' ||
        node.getAttribute('filterUnique') == 'true' ||
        node.getAttribute('filterUnique') == 'on';
  }

  S_ST_SheetViewType? get view {
    return node.getAttribute('view') != null
        ? S_ST_SheetViewType.fromValue(node.getAttribute('view')!)
        : null;
  }

  bool? get showRuler {
    return node.getAttribute('showRuler') == '1' ||
        node.getAttribute('showRuler') == 'true' ||
        node.getAttribute('showRuler') == 'on';
  }

  String? get topLeftCell {
    return node.getAttribute('topLeftCell');
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('guid') == null) {
      errors.add("Missing required attribute 'guid' in ${node.name.qualified}");
    }
    final v_state = node.getAttribute('state');
    if (v_state != null && S_ST_SheetState.fromValue(v_state) == null) {
      errors.add(
        "Invalid enum value for attribute 'state' in ${node.name.qualified}: $v_state",
      );
    }
    final v_view = node.getAttribute('view');
    if (v_view != null && S_ST_SheetViewType.fromValue(v_view) == null) {
      errors.add(
        "Invalid enum value for attribute 'view' in ${node.name.qualified}: $v_view",
      );
    }
    for (final childNode in node.findElements(
      'pane',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Pane(childNode).validate());
    }
    for (final childNode in node.findElements(
      'selection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Selection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'rowBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageBreak(childNode).validate());
    }
    for (final childNode in node.findElements(
      'colBreaks',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageBreak(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageMargins(childNode).validate());
    }
    for (final childNode in node.findElements(
      'printOptions',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PrintOptions(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageSetup(childNode).validate());
    }
    for (final childNode in node.findElements(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_HeaderFooter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_AutoFilter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DataValidations(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get disablePrompts {
    return node.getAttribute('disablePrompts') == '1' ||
        node.getAttribute('disablePrompts') == 'true' ||
        node.getAttribute('disablePrompts') == 'on';
  }

  int? get xWindow {
    return node.getAttribute('xWindow') != null
        ? int.tryParse(node.getAttribute('xWindow')!)
        : null;
  }

  int? get yWindow {
    return node.getAttribute('yWindow') != null
        ? int.tryParse(node.getAttribute('yWindow')!)
        : null;
  }

  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'dataValidation',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataValidation(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DataValidation(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_DataValidationType? get type {
    return node.getAttribute('type') != null
        ? S_ST_DataValidationType.fromValue(node.getAttribute('type')!)
        : null;
  }

  S_ST_DataValidationErrorStyle? get errorStyle {
    return node.getAttribute('errorStyle') != null
        ? S_ST_DataValidationErrorStyle.fromValue(
            node.getAttribute('errorStyle')!,
          )
        : null;
  }

  S_ST_DataValidationImeMode? get imeMode {
    return node.getAttribute('imeMode') != null
        ? S_ST_DataValidationImeMode.fromValue(node.getAttribute('imeMode')!)
        : null;
  }

  S_ST_DataValidationOperator? get operator_ {
    return node.getAttribute('operator') != null
        ? S_ST_DataValidationOperator.fromValue(node.getAttribute('operator')!)
        : null;
  }

  bool? get allowBlank {
    return node.getAttribute('allowBlank') == '1' ||
        node.getAttribute('allowBlank') == 'true' ||
        node.getAttribute('allowBlank') == 'on';
  }

  bool? get showDropDown {
    return node.getAttribute('showDropDown') == '1' ||
        node.getAttribute('showDropDown') == 'true' ||
        node.getAttribute('showDropDown') == 'on';
  }

  bool? get showInputMessage {
    return node.getAttribute('showInputMessage') == '1' ||
        node.getAttribute('showInputMessage') == 'true' ||
        node.getAttribute('showInputMessage') == 'on';
  }

  bool? get showErrorMessage {
    return node.getAttribute('showErrorMessage') == '1' ||
        node.getAttribute('showErrorMessage') == 'true' ||
        node.getAttribute('showErrorMessage') == 'on';
  }

  String? get errorTitle {
    return node.getAttribute('errorTitle');
  }

  String? get error {
    return node.getAttribute('error');
  }

  String? get promptTitle {
    return node.getAttribute('promptTitle');
  }

  String? get prompt {
    return node.getAttribute('prompt');
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

  List<String> validate() {
    final errors = <String>[];
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_DataValidationType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    final v_errorStyle = node.getAttribute('errorStyle');
    if (v_errorStyle != null &&
        S_ST_DataValidationErrorStyle.fromValue(v_errorStyle) == null) {
      errors.add(
        "Invalid enum value for attribute 'errorStyle' in ${node.name.qualified}: $v_errorStyle",
      );
    }
    final v_imeMode = node.getAttribute('imeMode');
    if (v_imeMode != null &&
        S_ST_DataValidationImeMode.fromValue(v_imeMode) == null) {
      errors.add(
        "Invalid enum value for attribute 'imeMode' in ${node.name.qualified}: $v_imeMode",
      );
    }
    final v_operator = node.getAttribute('operator');
    if (v_operator != null &&
        S_ST_DataValidationOperator.fromValue(v_operator) == null) {
      errors.add(
        "Invalid enum value for attribute 'operator' in ${node.name.qualified}: $v_operator",
      );
    }
    return errors;
  }
}

extension type S_CT_ConditionalFormatting(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get pivot {
    return node.getAttribute('pivot') == '1' ||
        node.getAttribute('pivot') == 'true' ||
        node.getAttribute('pivot') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cfRule',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CfRule(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CfRule(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_CfType? get type {
    return node.getAttribute('type') != null
        ? S_ST_CfType.fromValue(node.getAttribute('type')!)
        : null;
  }

  String? get dxfId {
    return node.getAttribute('dxfId');
  }

  int get priority {
    return int.parse(node.getAttribute('priority')!);
  }

  bool? get stopIfTrue {
    return node.getAttribute('stopIfTrue') == '1' ||
        node.getAttribute('stopIfTrue') == 'true' ||
        node.getAttribute('stopIfTrue') == 'on';
  }

  bool? get aboveAverage {
    return node.getAttribute('aboveAverage') == '1' ||
        node.getAttribute('aboveAverage') == 'true' ||
        node.getAttribute('aboveAverage') == 'on';
  }

  bool? get percent {
    return node.getAttribute('percent') == '1' ||
        node.getAttribute('percent') == 'true' ||
        node.getAttribute('percent') == 'on';
  }

  bool? get bottom {
    return node.getAttribute('bottom') == '1' ||
        node.getAttribute('bottom') == 'true' ||
        node.getAttribute('bottom') == 'on';
  }

  S_ST_ConditionalFormattingOperator? get operator_ {
    return node.getAttribute('operator') != null
        ? S_ST_ConditionalFormattingOperator.fromValue(
            node.getAttribute('operator')!,
          )
        : null;
  }

  String? get text {
    return node.getAttribute('text');
  }

  S_ST_TimePeriod? get timePeriod {
    return node.getAttribute('timePeriod') != null
        ? S_ST_TimePeriod.fromValue(node.getAttribute('timePeriod')!)
        : null;
  }

  int? get rank {
    return node.getAttribute('rank') != null
        ? int.tryParse(node.getAttribute('rank')!)
        : null;
  }

  int? get stdDev {
    return node.getAttribute('stdDev') != null
        ? int.tryParse(node.getAttribute('stdDev')!)
        : null;
  }

  bool? get equalAverage {
    return node.getAttribute('equalAverage') == '1' ||
        node.getAttribute('equalAverage') == 'true' ||
        node.getAttribute('equalAverage') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_CfType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    if (node.getAttribute('priority') == null) {
      errors.add(
        "Missing required attribute 'priority' in ${node.name.qualified}",
      );
    }
    final v_operator = node.getAttribute('operator');
    if (v_operator != null &&
        S_ST_ConditionalFormattingOperator.fromValue(v_operator) == null) {
      errors.add(
        "Invalid enum value for attribute 'operator' in ${node.name.qualified}: $v_operator",
      );
    }
    final v_timePeriod = node.getAttribute('timePeriod');
    if (v_timePeriod != null &&
        S_ST_TimePeriod.fromValue(v_timePeriod) == null) {
      errors.add(
        "Invalid enum value for attribute 'timePeriod' in ${node.name.qualified}: $v_timePeriod",
      );
    }
    for (final childNode in node.findElements(
      'colorScale',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ColorScale(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dataBar',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DataBar(childNode).validate());
    }
    for (final childNode in node.findElements(
      'iconSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_IconSet(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'hyperlink',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Hyperlink(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Hyperlink(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute('ref')!;
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  String? get location {
    return node.getAttribute('location');
  }

  String? get tooltip {
    return node.getAttribute('tooltip');
  }

  String? get display {
    return node.getAttribute('display');
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_CellFormula(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_CellFormulaType? get t {
    return node.getAttribute('t') != null
        ? S_ST_CellFormulaType.fromValue(node.getAttribute('t')!)
        : null;
  }

  bool? get aca {
    return node.getAttribute('aca') == '1' ||
        node.getAttribute('aca') == 'true' ||
        node.getAttribute('aca') == 'on';
  }

  String? get ref {
    return node.getAttribute('ref');
  }

  bool? get dt2D {
    return node.getAttribute('dt2D') == '1' ||
        node.getAttribute('dt2D') == 'true' ||
        node.getAttribute('dt2D') == 'on';
  }

  bool? get dtr {
    return node.getAttribute('dtr') == '1' ||
        node.getAttribute('dtr') == 'true' ||
        node.getAttribute('dtr') == 'on';
  }

  bool? get del1 {
    return node.getAttribute('del1') == '1' ||
        node.getAttribute('del1') == 'true' ||
        node.getAttribute('del1') == 'on';
  }

  bool? get del2 {
    return node.getAttribute('del2') == '1' ||
        node.getAttribute('del2') == 'true' ||
        node.getAttribute('del2') == 'on';
  }

  String? get r1 {
    return node.getAttribute('r1');
  }

  String? get r2 {
    return node.getAttribute('r2');
  }

  bool? get ca {
    return node.getAttribute('ca') == '1' ||
        node.getAttribute('ca') == 'true' ||
        node.getAttribute('ca') == 'on';
  }

  int? get si {
    return node.getAttribute('si') != null
        ? int.tryParse(node.getAttribute('si')!)
        : null;
  }

  bool? get bx {
    return node.getAttribute('bx') == '1' ||
        node.getAttribute('bx') == 'true' ||
        node.getAttribute('bx') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    final v_t = node.getAttribute('t');
    if (v_t != null && S_ST_CellFormulaType.fromValue(v_t) == null) {
      errors.add(
        "Invalid enum value for attribute 't' in ${node.name.qualified}: $v_t",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cfvo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Cfvo(childNode).validate());
    }
    for (final childNode in node.findElements(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DataBar(_i1.XmlElement node) implements _i1.XmlElement {
  int? get minLength {
    return node.getAttribute('minLength') != null
        ? int.tryParse(node.getAttribute('minLength')!)
        : null;
  }

  int? get maxLength {
    return node.getAttribute('maxLength') != null
        ? int.tryParse(node.getAttribute('maxLength')!)
        : null;
  }

  bool? get showValue {
    return node.getAttribute('showValue') == '1' ||
        node.getAttribute('showValue') == 'true' ||
        node.getAttribute('showValue') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cfvo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Cfvo(childNode).validate());
    }
    for (final childNode in node.findElements(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_IconSet(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_IconSetType? get iconSet {
    return node.getAttribute('iconSet') != null
        ? S_ST_IconSetType.fromValue(node.getAttribute('iconSet')!)
        : null;
  }

  bool? get showValue {
    return node.getAttribute('showValue') == '1' ||
        node.getAttribute('showValue') == 'true' ||
        node.getAttribute('showValue') == 'on';
  }

  bool? get percent {
    return node.getAttribute('percent') == '1' ||
        node.getAttribute('percent') == 'true' ||
        node.getAttribute('percent') == 'on';
  }

  bool? get reverse {
    return node.getAttribute('reverse') == '1' ||
        node.getAttribute('reverse') == 'true' ||
        node.getAttribute('reverse') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    final v_iconSet = node.getAttribute('iconSet');
    if (v_iconSet != null && S_ST_IconSetType.fromValue(v_iconSet) == null) {
      errors.add(
        "Invalid enum value for attribute 'iconSet' in ${node.name.qualified}: $v_iconSet",
      );
    }
    for (final childNode in node.findElements(
      'cfvo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Cfvo(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Cfvo(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_CfvoType get type {
    return S_ST_CfvoType.fromValue(node.getAttribute('type')!)!;
  }

  String? get val {
    return node.getAttribute('val');
  }

  bool? get gte {
    return node.getAttribute('gte') == '1' ||
        node.getAttribute('gte') == 'true' ||
        node.getAttribute('gte') == 'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('type') == null) {
      errors.add("Missing required attribute 'type' in ${node.name.qualified}");
    }
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_CfvoType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PageMargins(_i1.XmlElement node) implements _i1.XmlElement {
  double get left {
    return double.parse(node.getAttribute('left')!);
  }

  double get right {
    return double.parse(node.getAttribute('right')!);
  }

  double get top {
    return double.parse(node.getAttribute('top')!);
  }

  double get bottom {
    return double.parse(node.getAttribute('bottom')!);
  }

  double get header {
    return double.parse(node.getAttribute('header')!);
  }

  double get footer {
    return double.parse(node.getAttribute('footer')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('left') == null) {
      errors.add("Missing required attribute 'left' in ${node.name.qualified}");
    }
    if (node.getAttribute('right') == null) {
      errors.add(
        "Missing required attribute 'right' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('top') == null) {
      errors.add("Missing required attribute 'top' in ${node.name.qualified}");
    }
    if (node.getAttribute('bottom') == null) {
      errors.add(
        "Missing required attribute 'bottom' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('header') == null) {
      errors.add(
        "Missing required attribute 'header' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('footer') == null) {
      errors.add(
        "Missing required attribute 'footer' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_PrintOptions(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get horizontalCentered {
    return node.getAttribute('horizontalCentered') == '1' ||
        node.getAttribute('horizontalCentered') == 'true' ||
        node.getAttribute('horizontalCentered') == 'on';
  }

  bool? get verticalCentered {
    return node.getAttribute('verticalCentered') == '1' ||
        node.getAttribute('verticalCentered') == 'true' ||
        node.getAttribute('verticalCentered') == 'on';
  }

  bool? get headings {
    return node.getAttribute('headings') == '1' ||
        node.getAttribute('headings') == 'true' ||
        node.getAttribute('headings') == 'on';
  }

  bool? get gridLines {
    return node.getAttribute('gridLines') == '1' ||
        node.getAttribute('gridLines') == 'true' ||
        node.getAttribute('gridLines') == 'on';
  }

  bool? get gridLinesSet {
    return node.getAttribute('gridLinesSet') == '1' ||
        node.getAttribute('gridLinesSet') == 'true' ||
        node.getAttribute('gridLinesSet') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_PageSetup(_i1.XmlElement node) implements _i1.XmlElement {
  int? get paperSize {
    return node.getAttribute('paperSize') != null
        ? int.tryParse(node.getAttribute('paperSize')!)
        : null;
  }

  String? get paperHeight {
    return node.getAttribute('paperHeight');
  }

  String? get paperWidth {
    return node.getAttribute('paperWidth');
  }

  int? get scale {
    return node.getAttribute('scale') != null
        ? int.tryParse(node.getAttribute('scale')!)
        : null;
  }

  int? get firstPageNumber {
    return node.getAttribute('firstPageNumber') != null
        ? int.tryParse(node.getAttribute('firstPageNumber')!)
        : null;
  }

  int? get fitToWidth {
    return node.getAttribute('fitToWidth') != null
        ? int.tryParse(node.getAttribute('fitToWidth')!)
        : null;
  }

  int? get fitToHeight {
    return node.getAttribute('fitToHeight') != null
        ? int.tryParse(node.getAttribute('fitToHeight')!)
        : null;
  }

  S_ST_PageOrder? get pageOrder {
    return node.getAttribute('pageOrder') != null
        ? S_ST_PageOrder.fromValue(node.getAttribute('pageOrder')!)
        : null;
  }

  S_ST_Orientation? get orientation {
    return node.getAttribute('orientation') != null
        ? S_ST_Orientation.fromValue(node.getAttribute('orientation')!)
        : null;
  }

  bool? get usePrinterDefaults {
    return node.getAttribute('usePrinterDefaults') == '1' ||
        node.getAttribute('usePrinterDefaults') == 'true' ||
        node.getAttribute('usePrinterDefaults') == 'on';
  }

  bool? get blackAndWhite {
    return node.getAttribute('blackAndWhite') == '1' ||
        node.getAttribute('blackAndWhite') == 'true' ||
        node.getAttribute('blackAndWhite') == 'on';
  }

  bool? get draft {
    return node.getAttribute('draft') == '1' ||
        node.getAttribute('draft') == 'true' ||
        node.getAttribute('draft') == 'on';
  }

  S_ST_CellComments? get cellComments {
    return node.getAttribute('cellComments') != null
        ? S_ST_CellComments.fromValue(node.getAttribute('cellComments')!)
        : null;
  }

  bool? get useFirstPageNumber {
    return node.getAttribute('useFirstPageNumber') == '1' ||
        node.getAttribute('useFirstPageNumber') == 'true' ||
        node.getAttribute('useFirstPageNumber') == 'on';
  }

  S_ST_PrintError? get errors {
    return node.getAttribute('errors') != null
        ? S_ST_PrintError.fromValue(node.getAttribute('errors')!)
        : null;
  }

  int? get horizontalDpi {
    return node.getAttribute('horizontalDpi') != null
        ? int.tryParse(node.getAttribute('horizontalDpi')!)
        : null;
  }

  int? get verticalDpi {
    return node.getAttribute('verticalDpi') != null
        ? int.tryParse(node.getAttribute('verticalDpi')!)
        : null;
  }

  int? get copies {
    return node.getAttribute('copies') != null
        ? int.tryParse(node.getAttribute('copies')!)
        : null;
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  List<String> validate() {
    final errors = <String>[];
    final v_pageOrder = node.getAttribute('pageOrder');
    if (v_pageOrder != null && S_ST_PageOrder.fromValue(v_pageOrder) == null) {
      errors.add(
        "Invalid enum value for attribute 'pageOrder' in ${node.name.qualified}: $v_pageOrder",
      );
    }
    final v_orientation = node.getAttribute('orientation');
    if (v_orientation != null &&
        S_ST_Orientation.fromValue(v_orientation) == null) {
      errors.add(
        "Invalid enum value for attribute 'orientation' in ${node.name.qualified}: $v_orientation",
      );
    }
    final v_cellComments = node.getAttribute('cellComments');
    if (v_cellComments != null &&
        S_ST_CellComments.fromValue(v_cellComments) == null) {
      errors.add(
        "Invalid enum value for attribute 'cellComments' in ${node.name.qualified}: $v_cellComments",
      );
    }
    final v_errors = node.getAttribute('errors');
    if (v_errors != null && S_ST_PrintError.fromValue(v_errors) == null) {
      errors.add(
        "Invalid enum value for attribute 'errors' in ${node.name.qualified}: $v_errors",
      );
    }
    return errors;
  }
}

extension type S_CT_HeaderFooter(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get differentOddEven {
    return node.getAttribute('differentOddEven') == '1' ||
        node.getAttribute('differentOddEven') == 'true' ||
        node.getAttribute('differentOddEven') == 'on';
  }

  bool? get differentFirst {
    return node.getAttribute('differentFirst') == '1' ||
        node.getAttribute('differentFirst') == 'true' ||
        node.getAttribute('differentFirst') == 'on';
  }

  bool? get scaleWithDoc {
    return node.getAttribute('scaleWithDoc') == '1' ||
        node.getAttribute('scaleWithDoc') == 'true' ||
        node.getAttribute('scaleWithDoc') == 'on';
  }

  bool? get alignWithMargins {
    return node.getAttribute('alignWithMargins') == '1' ||
        node.getAttribute('alignWithMargins') == 'true' ||
        node.getAttribute('alignWithMargins') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_Scenarios(_i1.XmlElement node) implements _i1.XmlElement {
  int? get current {
    return node.getAttribute('current') != null
        ? int.tryParse(node.getAttribute('current')!)
        : null;
  }

  int? get show_ {
    return node.getAttribute('show') != null
        ? int.tryParse(node.getAttribute('show')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'scenario',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Scenario(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SheetProtection(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get password {
    return node.getAttribute('password');
  }

  String? get algorithmName {
    return node.getAttribute('algorithmName');
  }

  String? get hashValue {
    return node.getAttribute('hashValue');
  }

  String? get saltValue {
    return node.getAttribute('saltValue');
  }

  int? get spinCount {
    return node.getAttribute('spinCount') != null
        ? int.tryParse(node.getAttribute('spinCount')!)
        : null;
  }

  bool? get sheet {
    return node.getAttribute('sheet') == '1' ||
        node.getAttribute('sheet') == 'true' ||
        node.getAttribute('sheet') == 'on';
  }

  bool? get objects {
    return node.getAttribute('objects') == '1' ||
        node.getAttribute('objects') == 'true' ||
        node.getAttribute('objects') == 'on';
  }

  bool? get scenarios {
    return node.getAttribute('scenarios') == '1' ||
        node.getAttribute('scenarios') == 'true' ||
        node.getAttribute('scenarios') == 'on';
  }

  bool? get formatCells {
    return node.getAttribute('formatCells') == '1' ||
        node.getAttribute('formatCells') == 'true' ||
        node.getAttribute('formatCells') == 'on';
  }

  bool? get formatColumns {
    return node.getAttribute('formatColumns') == '1' ||
        node.getAttribute('formatColumns') == 'true' ||
        node.getAttribute('formatColumns') == 'on';
  }

  bool? get formatRows {
    return node.getAttribute('formatRows') == '1' ||
        node.getAttribute('formatRows') == 'true' ||
        node.getAttribute('formatRows') == 'on';
  }

  bool? get insertColumns {
    return node.getAttribute('insertColumns') == '1' ||
        node.getAttribute('insertColumns') == 'true' ||
        node.getAttribute('insertColumns') == 'on';
  }

  bool? get insertRows {
    return node.getAttribute('insertRows') == '1' ||
        node.getAttribute('insertRows') == 'true' ||
        node.getAttribute('insertRows') == 'on';
  }

  bool? get insertHyperlinks {
    return node.getAttribute('insertHyperlinks') == '1' ||
        node.getAttribute('insertHyperlinks') == 'true' ||
        node.getAttribute('insertHyperlinks') == 'on';
  }

  bool? get deleteColumns {
    return node.getAttribute('deleteColumns') == '1' ||
        node.getAttribute('deleteColumns') == 'true' ||
        node.getAttribute('deleteColumns') == 'on';
  }

  bool? get deleteRows {
    return node.getAttribute('deleteRows') == '1' ||
        node.getAttribute('deleteRows') == 'true' ||
        node.getAttribute('deleteRows') == 'on';
  }

  bool? get selectLockedCells {
    return node.getAttribute('selectLockedCells') == '1' ||
        node.getAttribute('selectLockedCells') == 'true' ||
        node.getAttribute('selectLockedCells') == 'on';
  }

  bool? get sort {
    return node.getAttribute('sort') == '1' ||
        node.getAttribute('sort') == 'true' ||
        node.getAttribute('sort') == 'on';
  }

  bool? get autoFilter {
    return node.getAttribute('autoFilter') == '1' ||
        node.getAttribute('autoFilter') == 'true' ||
        node.getAttribute('autoFilter') == 'on';
  }

  bool? get pivotTables {
    return node.getAttribute('pivotTables') == '1' ||
        node.getAttribute('pivotTables') == 'true' ||
        node.getAttribute('pivotTables') == 'on';
  }

  bool? get selectUnlockedCells {
    return node.getAttribute('selectUnlockedCells') == '1' ||
        node.getAttribute('selectUnlockedCells') == 'true' ||
        node.getAttribute('selectUnlockedCells') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'protectedRange',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ProtectedRange(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ProtectedRange(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get password {
    return node.getAttribute('password');
  }

  String get name {
    return node.getAttribute('name')!;
  }

  String? get securityDescriptor {
    return node.getAttribute('securityDescriptor');
  }

  String? get algorithmName {
    return node.getAttribute('algorithmName');
  }

  String? get hashValue {
    return node.getAttribute('hashValue');
  }

  String? get saltValue {
    return node.getAttribute('saltValue');
  }

  int? get spinCount {
    return node.getAttribute('spinCount') != null
        ? int.tryParse(node.getAttribute('spinCount')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Scenario(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  bool? get locked {
    return node.getAttribute('locked') == '1' ||
        node.getAttribute('locked') == 'true' ||
        node.getAttribute('locked') == 'on';
  }

  bool? get hidden {
    return node.getAttribute('hidden') == '1' ||
        node.getAttribute('hidden') == 'true' ||
        node.getAttribute('hidden') == 'on';
  }

  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  String? get user {
    return node.getAttribute('user');
  }

  String? get comment {
    return node.getAttribute('comment');
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'inputCells',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_InputCells(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_InputCells(_i1.XmlElement node) implements _i1.XmlElement {
  String get r {
    return node.getAttribute('r')!;
  }

  bool? get deleted {
    return node.getAttribute('deleted') == '1' ||
        node.getAttribute('deleted') == 'true' ||
        node.getAttribute('deleted') == 'on';
  }

  bool? get undone {
    return node.getAttribute('undone') == '1' ||
        node.getAttribute('undone') == 'true' ||
        node.getAttribute('undone') == 'on';
  }

  String get val {
    return node.getAttribute('val')!;
  }

  String? get numFmtId {
    return node.getAttribute('numFmtId');
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('r') == null) {
      errors.add("Missing required attribute 'r' in ${node.name.qualified}");
    }
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cellWatch',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellWatch(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellWatch(_i1.XmlElement node) implements _i1.XmlElement {
  String get r {
    return node.getAttribute('r')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('r') == null) {
      errors.add("Missing required attribute 'r' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ChartsheetPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ChartsheetViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ChartsheetProtection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'customSheetViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomChartsheetViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageMargins(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CsPageSetup(childNode).validate());
    }
    for (final childNode in node.findElements(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_HeaderFooter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'drawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Drawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'legacyDrawing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LegacyDrawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'legacyDrawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_LegacyDrawing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'drawingHF',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DrawingHF(childNode).validate());
    }
    for (final childNode in node.findElements(
      'picture',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SheetBackgroundPicture(childNode).validate());
    }
    for (final childNode in node.findElements(
      'webPublishItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WebPublishItems(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ChartsheetPr(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get published {
    return node.getAttribute('published') == '1' ||
        node.getAttribute('published') == 'true' ||
        node.getAttribute('published') == 'on';
  }

  String? get codeName {
    return node.getAttribute('codeName');
  }

  S_CT_Color? get tabColor {
    final e = node.getElement(
      'tabColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'tabColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetView',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ChartsheetView(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ChartsheetView(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get tabSelected {
    return node.getAttribute('tabSelected') == '1' ||
        node.getAttribute('tabSelected') == 'true' ||
        node.getAttribute('tabSelected') == 'on';
  }

  int? get zoomScale {
    return node.getAttribute('zoomScale') != null
        ? int.tryParse(node.getAttribute('zoomScale')!)
        : null;
  }

  int get workbookViewId {
    return int.parse(node.getAttribute('workbookViewId')!);
  }

  bool? get zoomToFit {
    return node.getAttribute('zoomToFit') == '1' ||
        node.getAttribute('zoomToFit') == 'true' ||
        node.getAttribute('zoomToFit') == 'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('workbookViewId') == null) {
      errors.add(
        "Missing required attribute 'workbookViewId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ChartsheetProtection(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get password {
    return node.getAttribute('password');
  }

  String? get algorithmName {
    return node.getAttribute('algorithmName');
  }

  String? get hashValue {
    return node.getAttribute('hashValue');
  }

  String? get saltValue {
    return node.getAttribute('saltValue');
  }

  int? get spinCount {
    return node.getAttribute('spinCount') != null
        ? int.tryParse(node.getAttribute('spinCount')!)
        : null;
  }

  bool? get content {
    return node.getAttribute('content') == '1' ||
        node.getAttribute('content') == 'true' ||
        node.getAttribute('content') == 'on';
  }

  bool? get objects {
    return node.getAttribute('objects') == '1' ||
        node.getAttribute('objects') == 'true' ||
        node.getAttribute('objects') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_CsPageSetup(_i1.XmlElement node) implements _i1.XmlElement {
  int? get paperSize {
    return node.getAttribute('paperSize') != null
        ? int.tryParse(node.getAttribute('paperSize')!)
        : null;
  }

  String? get paperHeight {
    return node.getAttribute('paperHeight');
  }

  String? get paperWidth {
    return node.getAttribute('paperWidth');
  }

  int? get firstPageNumber {
    return node.getAttribute('firstPageNumber') != null
        ? int.tryParse(node.getAttribute('firstPageNumber')!)
        : null;
  }

  S_ST_Orientation? get orientation {
    return node.getAttribute('orientation') != null
        ? S_ST_Orientation.fromValue(node.getAttribute('orientation')!)
        : null;
  }

  bool? get usePrinterDefaults {
    return node.getAttribute('usePrinterDefaults') == '1' ||
        node.getAttribute('usePrinterDefaults') == 'true' ||
        node.getAttribute('usePrinterDefaults') == 'on';
  }

  bool? get blackAndWhite {
    return node.getAttribute('blackAndWhite') == '1' ||
        node.getAttribute('blackAndWhite') == 'true' ||
        node.getAttribute('blackAndWhite') == 'on';
  }

  bool? get draft {
    return node.getAttribute('draft') == '1' ||
        node.getAttribute('draft') == 'true' ||
        node.getAttribute('draft') == 'on';
  }

  bool? get useFirstPageNumber {
    return node.getAttribute('useFirstPageNumber') == '1' ||
        node.getAttribute('useFirstPageNumber') == 'true' ||
        node.getAttribute('useFirstPageNumber') == 'on';
  }

  int? get horizontalDpi {
    return node.getAttribute('horizontalDpi') != null
        ? int.tryParse(node.getAttribute('horizontalDpi')!)
        : null;
  }

  int? get verticalDpi {
    return node.getAttribute('verticalDpi') != null
        ? int.tryParse(node.getAttribute('verticalDpi')!)
        : null;
  }

  int? get copies {
    return node.getAttribute('copies') != null
        ? int.tryParse(node.getAttribute('copies')!)
        : null;
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  List<String> validate() {
    final errors = <String>[];
    final v_orientation = node.getAttribute('orientation');
    if (v_orientation != null &&
        S_ST_Orientation.fromValue(v_orientation) == null) {
      errors.add(
        "Invalid enum value for attribute 'orientation' in ${node.name.qualified}: $v_orientation",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'customSheetView',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomChartsheetView(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CustomChartsheetView(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get guid {
    return node.getAttribute('guid')!;
  }

  int? get scale {
    return node.getAttribute('scale') != null
        ? int.tryParse(node.getAttribute('scale')!)
        : null;
  }

  S_ST_SheetState? get state {
    return node.getAttribute('state') != null
        ? S_ST_SheetState.fromValue(node.getAttribute('state')!)
        : null;
  }

  bool? get zoomToFit {
    return node.getAttribute('zoomToFit') == '1' ||
        node.getAttribute('zoomToFit') == 'true' ||
        node.getAttribute('zoomToFit') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('guid') == null) {
      errors.add("Missing required attribute 'guid' in ${node.name.qualified}");
    }
    final v_state = node.getAttribute('state');
    if (v_state != null && S_ST_SheetState.fromValue(v_state) == null) {
      errors.add(
        "Invalid enum value for attribute 'state' in ${node.name.qualified}: $v_state",
      );
    }
    for (final childNode in node.findElements(
      'pageMargins',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PageMargins(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pageSetup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CsPageSetup(childNode).validate());
    }
    for (final childNode in node.findElements(
      'headerFooter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_HeaderFooter(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'customPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomProperty(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CustomProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'oleObject',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OleObject(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_OleObject(_i1.XmlElement node) implements _i1.XmlElement {
  String? get progId {
    return node.getAttribute('progId');
  }

  S_ST_DvAspect? get dvAspect {
    return node.getAttribute('dvAspect') != null
        ? S_ST_DvAspect.fromValue(node.getAttribute('dvAspect')!)
        : null;
  }

  String? get link {
    return node.getAttribute('link');
  }

  S_ST_OleUpdate? get oleUpdate {
    return node.getAttribute('oleUpdate') != null
        ? S_ST_OleUpdate.fromValue(node.getAttribute('oleUpdate')!)
        : null;
  }

  bool? get autoLoad {
    return node.getAttribute('autoLoad') == '1' ||
        node.getAttribute('autoLoad') == 'true' ||
        node.getAttribute('autoLoad') == 'on';
  }

  int get shapeId {
    return int.parse(node.getAttribute('shapeId')!);
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  S_CT_ObjectPr? get objectPr {
    final e = node.getElement(
      'objectPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ObjectPr(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_dvAspect = node.getAttribute('dvAspect');
    if (v_dvAspect != null && S_ST_DvAspect.fromValue(v_dvAspect) == null) {
      errors.add(
        "Invalid enum value for attribute 'dvAspect' in ${node.name.qualified}: $v_dvAspect",
      );
    }
    final v_oleUpdate = node.getAttribute('oleUpdate');
    if (v_oleUpdate != null && S_ST_OleUpdate.fromValue(v_oleUpdate) == null) {
      errors.add(
        "Invalid enum value for attribute 'oleUpdate' in ${node.name.qualified}: $v_oleUpdate",
      );
    }
    if (node.getAttribute('shapeId') == null) {
      errors.add(
        "Missing required attribute 'shapeId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'objectPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ObjectPr(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ObjectPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get locked {
    return node.getAttribute('locked') == '1' ||
        node.getAttribute('locked') == 'true' ||
        node.getAttribute('locked') == 'on';
  }

  bool? get defaultSize {
    return node.getAttribute('defaultSize') == '1' ||
        node.getAttribute('defaultSize') == 'true' ||
        node.getAttribute('defaultSize') == 'on';
  }

  bool? get print {
    return node.getAttribute('print') == '1' ||
        node.getAttribute('print') == 'true' ||
        node.getAttribute('print') == 'on';
  }

  bool? get disabled {
    return node.getAttribute('disabled') == '1' ||
        node.getAttribute('disabled') == 'true' ||
        node.getAttribute('disabled') == 'on';
  }

  bool? get uiObject {
    return node.getAttribute('uiObject') == '1' ||
        node.getAttribute('uiObject') == 'true' ||
        node.getAttribute('uiObject') == 'on';
  }

  bool? get autoFill {
    return node.getAttribute('autoFill') == '1' ||
        node.getAttribute('autoFill') == 'true' ||
        node.getAttribute('autoFill') == 'on';
  }

  bool? get autoLine {
    return node.getAttribute('autoLine') == '1' ||
        node.getAttribute('autoLine') == 'true' ||
        node.getAttribute('autoLine') == 'on';
  }

  bool? get autoPict {
    return node.getAttribute('autoPict') == '1' ||
        node.getAttribute('autoPict') == 'true' ||
        node.getAttribute('autoPict') == 'on';
  }

  String? get macro {
    return node.getAttribute('macro');
  }

  String? get altText {
    return node.getAttribute('altText');
  }

  bool? get dde {
    return node.getAttribute('dde') == '1' ||
        node.getAttribute('dde') == 'true' ||
        node.getAttribute('dde') == 'on';
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  S_CT_ObjectAnchor? get anchor {
    final e = node.getElement(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ObjectAnchor(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ObjectAnchor(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_WebPublishItems(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'webPublishItem',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WebPublishItem(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_WebPublishItem(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String get divId {
    return node.getAttribute('divId')!;
  }

  S_ST_WebSourceType get sourceType {
    return S_ST_WebSourceType.fromValue(node.getAttribute('sourceType')!)!;
  }

  String? get sourceRef {
    return node.getAttribute('sourceRef');
  }

  String? get sourceObject {
    return node.getAttribute('sourceObject');
  }

  String get destinationFile {
    return node.getAttribute('destinationFile')!;
  }

  String? get title {
    return node.getAttribute('title');
  }

  bool? get autoRepublish {
    return node.getAttribute('autoRepublish') == '1' ||
        node.getAttribute('autoRepublish') == 'true' ||
        node.getAttribute('autoRepublish') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    if (node.getAttribute('divId') == null) {
      errors.add(
        "Missing required attribute 'divId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('sourceType') == null) {
      errors.add(
        "Missing required attribute 'sourceType' in ${node.name.qualified}",
      );
    }
    final v_sourceType = node.getAttribute('sourceType');
    if (v_sourceType != null &&
        S_ST_WebSourceType.fromValue(v_sourceType) == null) {
      errors.add(
        "Invalid enum value for attribute 'sourceType' in ${node.name.qualified}: $v_sourceType",
      );
    }
    if (node.getAttribute('destinationFile') == null) {
      errors.add(
        "Missing required attribute 'destinationFile' in ${node.name.qualified}",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'control',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Control(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Control(_i1.XmlElement node) implements _i1.XmlElement {
  int get shapeId {
    return int.parse(node.getAttribute('shapeId')!);
  }

  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  String? get name {
    return node.getAttribute('name');
  }

  S_CT_ControlPr? get controlPr {
    final e = node.getElement(
      'controlPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ControlPr(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('shapeId') == null) {
      errors.add(
        "Missing required attribute 'shapeId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'controlPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ControlPr(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ControlPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get locked {
    return node.getAttribute('locked') == '1' ||
        node.getAttribute('locked') == 'true' ||
        node.getAttribute('locked') == 'on';
  }

  bool? get defaultSize {
    return node.getAttribute('defaultSize') == '1' ||
        node.getAttribute('defaultSize') == 'true' ||
        node.getAttribute('defaultSize') == 'on';
  }

  bool? get print {
    return node.getAttribute('print') == '1' ||
        node.getAttribute('print') == 'true' ||
        node.getAttribute('print') == 'on';
  }

  bool? get disabled {
    return node.getAttribute('disabled') == '1' ||
        node.getAttribute('disabled') == 'true' ||
        node.getAttribute('disabled') == 'on';
  }

  bool? get recalcAlways {
    return node.getAttribute('recalcAlways') == '1' ||
        node.getAttribute('recalcAlways') == 'true' ||
        node.getAttribute('recalcAlways') == 'on';
  }

  bool? get uiObject {
    return node.getAttribute('uiObject') == '1' ||
        node.getAttribute('uiObject') == 'true' ||
        node.getAttribute('uiObject') == 'on';
  }

  bool? get autoFill {
    return node.getAttribute('autoFill') == '1' ||
        node.getAttribute('autoFill') == 'true' ||
        node.getAttribute('autoFill') == 'on';
  }

  bool? get autoLine {
    return node.getAttribute('autoLine') == '1' ||
        node.getAttribute('autoLine') == 'true' ||
        node.getAttribute('autoLine') == 'on';
  }

  bool? get autoPict {
    return node.getAttribute('autoPict') == '1' ||
        node.getAttribute('autoPict') == 'true' ||
        node.getAttribute('autoPict') == 'on';
  }

  String? get macro {
    return node.getAttribute('macro');
  }

  String? get altText {
    return node.getAttribute('altText');
  }

  String? get linkedCell {
    return node.getAttribute('linkedCell');
  }

  String? get listFillRange {
    return node.getAttribute('listFillRange');
  }

  String? get cf {
    return node.getAttribute('cf');
  }

  String? get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    );
  }

  S_CT_ObjectAnchor? get anchor {
    final e = node.getElement(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ObjectAnchor(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'anchor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ObjectAnchor(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'ignoredError',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_IgnoredError(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_IgnoredError(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get evalError {
    return node.getAttribute('evalError') == '1' ||
        node.getAttribute('evalError') == 'true' ||
        node.getAttribute('evalError') == 'on';
  }

  bool? get twoDigitTextYear {
    return node.getAttribute('twoDigitTextYear') == '1' ||
        node.getAttribute('twoDigitTextYear') == 'true' ||
        node.getAttribute('twoDigitTextYear') == 'on';
  }

  bool? get numberStoredAsText {
    return node.getAttribute('numberStoredAsText') == '1' ||
        node.getAttribute('numberStoredAsText') == 'true' ||
        node.getAttribute('numberStoredAsText') == 'on';
  }

  bool? get formula {
    return node.getAttribute('formula') == '1' ||
        node.getAttribute('formula') == 'true' ||
        node.getAttribute('formula') == 'on';
  }

  bool? get formulaRange {
    return node.getAttribute('formulaRange') == '1' ||
        node.getAttribute('formulaRange') == 'true' ||
        node.getAttribute('formulaRange') == 'on';
  }

  bool? get unlockedFormula {
    return node.getAttribute('unlockedFormula') == '1' ||
        node.getAttribute('unlockedFormula') == 'true' ||
        node.getAttribute('unlockedFormula') == 'on';
  }

  bool? get emptyCellReference {
    return node.getAttribute('emptyCellReference') == '1' ||
        node.getAttribute('emptyCellReference') == 'true' ||
        node.getAttribute('emptyCellReference') == 'on';
  }

  bool? get listDataValidation {
    return node.getAttribute('listDataValidation') == '1' ||
        node.getAttribute('listDataValidation') == 'true' ||
        node.getAttribute('listDataValidation') == 'on';
  }

  bool? get calculatedColumn {
    return node.getAttribute('calculatedColumn') == '1' ||
        node.getAttribute('calculatedColumn') == 'true' ||
        node.getAttribute('calculatedColumn') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_TableParts(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'tablePart',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TablePart(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TablePart(_i1.XmlElement node) implements _i1.XmlElement {
  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
  }
}

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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'metadataTypes',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataTypes(childNode).validate());
    }
    for (final childNode in node.findElements(
      'metadataStrings',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataStrings(childNode).validate());
    }
    for (final childNode in node.findElements(
      'mdxMetadata',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MdxMetadata(childNode).validate());
    }
    for (final childNode in node.findElements(
      'futureMetadata',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FutureMetadata(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cellMetadata',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataBlocks(childNode).validate());
    }
    for (final childNode in node.findElements(
      'valueMetadata',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataBlocks(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MetadataTypes(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'metadataType',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataType(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MetadataType(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  int get minSupportedVersion {
    return int.parse(node.getAttribute('minSupportedVersion')!);
  }

  bool? get ghostRow {
    return node.getAttribute('ghostRow') == '1' ||
        node.getAttribute('ghostRow') == 'true' ||
        node.getAttribute('ghostRow') == 'on';
  }

  bool? get ghostCol {
    return node.getAttribute('ghostCol') == '1' ||
        node.getAttribute('ghostCol') == 'true' ||
        node.getAttribute('ghostCol') == 'on';
  }

  bool? get edit {
    return node.getAttribute('edit') == '1' ||
        node.getAttribute('edit') == 'true' ||
        node.getAttribute('edit') == 'on';
  }

  bool? get delete {
    return node.getAttribute('delete') == '1' ||
        node.getAttribute('delete') == 'true' ||
        node.getAttribute('delete') == 'on';
  }

  bool? get copy {
    return node.getAttribute('copy') == '1' ||
        node.getAttribute('copy') == 'true' ||
        node.getAttribute('copy') == 'on';
  }

  bool? get pasteAll {
    return node.getAttribute('pasteAll') == '1' ||
        node.getAttribute('pasteAll') == 'true' ||
        node.getAttribute('pasteAll') == 'on';
  }

  bool? get pasteFormulas {
    return node.getAttribute('pasteFormulas') == '1' ||
        node.getAttribute('pasteFormulas') == 'true' ||
        node.getAttribute('pasteFormulas') == 'on';
  }

  bool? get pasteValues {
    return node.getAttribute('pasteValues') == '1' ||
        node.getAttribute('pasteValues') == 'true' ||
        node.getAttribute('pasteValues') == 'on';
  }

  bool? get pasteFormats {
    return node.getAttribute('pasteFormats') == '1' ||
        node.getAttribute('pasteFormats') == 'true' ||
        node.getAttribute('pasteFormats') == 'on';
  }

  bool? get pasteComments {
    return node.getAttribute('pasteComments') == '1' ||
        node.getAttribute('pasteComments') == 'true' ||
        node.getAttribute('pasteComments') == 'on';
  }

  bool? get pasteDataValidation {
    return node.getAttribute('pasteDataValidation') == '1' ||
        node.getAttribute('pasteDataValidation') == 'true' ||
        node.getAttribute('pasteDataValidation') == 'on';
  }

  bool? get pasteBorders {
    return node.getAttribute('pasteBorders') == '1' ||
        node.getAttribute('pasteBorders') == 'true' ||
        node.getAttribute('pasteBorders') == 'on';
  }

  bool? get pasteColWidths {
    return node.getAttribute('pasteColWidths') == '1' ||
        node.getAttribute('pasteColWidths') == 'true' ||
        node.getAttribute('pasteColWidths') == 'on';
  }

  bool? get pasteNumberFormats {
    return node.getAttribute('pasteNumberFormats') == '1' ||
        node.getAttribute('pasteNumberFormats') == 'true' ||
        node.getAttribute('pasteNumberFormats') == 'on';
  }

  bool? get merge {
    return node.getAttribute('merge') == '1' ||
        node.getAttribute('merge') == 'true' ||
        node.getAttribute('merge') == 'on';
  }

  bool? get splitFirst {
    return node.getAttribute('splitFirst') == '1' ||
        node.getAttribute('splitFirst') == 'true' ||
        node.getAttribute('splitFirst') == 'on';
  }

  bool? get splitAll {
    return node.getAttribute('splitAll') == '1' ||
        node.getAttribute('splitAll') == 'true' ||
        node.getAttribute('splitAll') == 'on';
  }

  bool? get rowColShift {
    return node.getAttribute('rowColShift') == '1' ||
        node.getAttribute('rowColShift') == 'true' ||
        node.getAttribute('rowColShift') == 'on';
  }

  bool? get clearAll {
    return node.getAttribute('clearAll') == '1' ||
        node.getAttribute('clearAll') == 'true' ||
        node.getAttribute('clearAll') == 'on';
  }

  bool? get clearFormats {
    return node.getAttribute('clearFormats') == '1' ||
        node.getAttribute('clearFormats') == 'true' ||
        node.getAttribute('clearFormats') == 'on';
  }

  bool? get clearContents {
    return node.getAttribute('clearContents') == '1' ||
        node.getAttribute('clearContents') == 'true' ||
        node.getAttribute('clearContents') == 'on';
  }

  bool? get clearComments {
    return node.getAttribute('clearComments') == '1' ||
        node.getAttribute('clearComments') == 'true' ||
        node.getAttribute('clearComments') == 'on';
  }

  bool? get assign {
    return node.getAttribute('assign') == '1' ||
        node.getAttribute('assign') == 'true' ||
        node.getAttribute('assign') == 'on';
  }

  bool? get coerce {
    return node.getAttribute('coerce') == '1' ||
        node.getAttribute('coerce') == 'true' ||
        node.getAttribute('coerce') == 'on';
  }

  bool? get adjust {
    return node.getAttribute('adjust') == '1' ||
        node.getAttribute('adjust') == 'true' ||
        node.getAttribute('adjust') == 'on';
  }

  bool? get cellMeta {
    return node.getAttribute('cellMeta') == '1' ||
        node.getAttribute('cellMeta') == 'true' ||
        node.getAttribute('cellMeta') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('minSupportedVersion') == null) {
      errors.add(
        "Missing required attribute 'minSupportedVersion' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_MetadataBlocks(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'bk',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataBlock(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'rc',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataRecord(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MetadataRecord(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get t {
    return int.parse(node.getAttribute('t')!);
  }

  int get v {
    return int.parse(node.getAttribute('v')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('t') == null) {
      errors.add("Missing required attribute 't' in ${node.name.qualified}");
    }
    if (node.getAttribute('v') == null) {
      errors.add("Missing required attribute 'v' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_FutureMetadata(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'bk',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FutureMetadataBlock(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MdxMetadata(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'mdx',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Mdx(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Mdx(_i1.XmlElement node) implements _i1.XmlElement {
  int get n {
    return int.parse(node.getAttribute('n')!);
  }

  S_ST_MdxFunctionType get f {
    return S_ST_MdxFunctionType.fromValue(node.getAttribute('f')!)!;
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('n') == null) {
      errors.add("Missing required attribute 'n' in ${node.name.qualified}");
    }
    if (node.getAttribute('f') == null) {
      errors.add("Missing required attribute 'f' in ${node.name.qualified}");
    }
    final v_f = node.getAttribute('f');
    if (v_f != null && S_ST_MdxFunctionType.fromValue(v_f) == null) {
      errors.add(
        "Invalid enum value for attribute 'f' in ${node.name.qualified}: $v_f",
      );
    }
    for (final childNode in node.findElements(
      't',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MdxTuple(childNode).validate());
    }
    for (final childNode in node.findElements(
      'ms',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MdxSet(childNode).validate());
    }
    for (final childNode in node.findElements(
      'p',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MdxMemeberProp(childNode).validate());
    }
    for (final childNode in node.findElements(
      'k',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MdxKPI(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MdxTuple(_i1.XmlElement node) implements _i1.XmlElement {
  int? get c {
    return node.getAttribute('c') != null
        ? int.tryParse(node.getAttribute('c')!)
        : null;
  }

  String? get ct {
    return node.getAttribute('ct');
  }

  int? get si {
    return node.getAttribute('si') != null
        ? int.tryParse(node.getAttribute('si')!)
        : null;
  }

  int? get fi {
    return node.getAttribute('fi') != null
        ? int.tryParse(node.getAttribute('fi')!)
        : null;
  }

  String? get bc {
    return node.getAttribute('bc');
  }

  String? get fc {
    return node.getAttribute('fc');
  }

  bool? get i {
    return node.getAttribute('i') == '1' ||
        node.getAttribute('i') == 'true' ||
        node.getAttribute('i') == 'on';
  }

  bool? get u {
    return node.getAttribute('u') == '1' ||
        node.getAttribute('u') == 'true' ||
        node.getAttribute('u') == 'on';
  }

  bool? get st {
    return node.getAttribute('st') == '1' ||
        node.getAttribute('st') == 'true' ||
        node.getAttribute('st') == 'on';
  }

  bool? get b {
    return node.getAttribute('b') == '1' ||
        node.getAttribute('b') == 'true' ||
        node.getAttribute('b') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'n',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataStringIndex(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MdxSet(_i1.XmlElement node) implements _i1.XmlElement {
  int get ns {
    return int.parse(node.getAttribute('ns')!);
  }

  int? get c {
    return node.getAttribute('c') != null
        ? int.tryParse(node.getAttribute('c')!)
        : null;
  }

  S_ST_MdxSetOrder? get o {
    return node.getAttribute('o') != null
        ? S_ST_MdxSetOrder.fromValue(node.getAttribute('o')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ns') == null) {
      errors.add("Missing required attribute 'ns' in ${node.name.qualified}");
    }
    final v_o = node.getAttribute('o');
    if (v_o != null && S_ST_MdxSetOrder.fromValue(v_o) == null) {
      errors.add(
        "Invalid enum value for attribute 'o' in ${node.name.qualified}: $v_o",
      );
    }
    for (final childNode in node.findElements(
      'n',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MetadataStringIndex(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_MdxMemeberProp(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get n {
    return int.parse(node.getAttribute('n')!);
  }

  int get np {
    return int.parse(node.getAttribute('np')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('n') == null) {
      errors.add("Missing required attribute 'n' in ${node.name.qualified}");
    }
    if (node.getAttribute('np') == null) {
      errors.add("Missing required attribute 'np' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_MdxKPI(_i1.XmlElement node) implements _i1.XmlElement {
  int get n {
    return int.parse(node.getAttribute('n')!);
  }

  int get np {
    return int.parse(node.getAttribute('np')!);
  }

  S_ST_MdxKPIProperty get p {
    return S_ST_MdxKPIProperty.fromValue(node.getAttribute('p')!)!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('n') == null) {
      errors.add("Missing required attribute 'n' in ${node.name.qualified}");
    }
    if (node.getAttribute('np') == null) {
      errors.add("Missing required attribute 'np' in ${node.name.qualified}");
    }
    if (node.getAttribute('p') == null) {
      errors.add("Missing required attribute 'p' in ${node.name.qualified}");
    }
    final v_p = node.getAttribute('p');
    if (v_p != null && S_ST_MdxKPIProperty.fromValue(v_p) == null) {
      errors.add(
        "Invalid enum value for attribute 'p' in ${node.name.qualified}: $v_p",
      );
    }
    return errors;
  }
}

extension type S_CT_MetadataStringIndex(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get x {
    return int.parse(node.getAttribute('x')!);
  }

  bool? get s {
    return node.getAttribute('s') == '1' ||
        node.getAttribute('s') == 'true' ||
        node.getAttribute('s') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('x') == null) {
      errors.add("Missing required attribute 'x' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_MetadataStrings(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      's',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_XStringElement(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'singleXmlCell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SingleXmlCell(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SingleXmlCell(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String get r {
    return node.getAttribute('r')!;
  }

  int get connectionId {
    return int.parse(node.getAttribute('connectionId')!);
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    if (node.getAttribute('r') == null) {
      errors.add("Missing required attribute 'r' in ${node.name.qualified}");
    }
    if (node.getAttribute('connectionId') == null) {
      errors.add(
        "Missing required attribute 'connectionId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'xmlCellPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_XmlCellPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_XmlCellPr(_i1.XmlElement node) implements _i1.XmlElement {
  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String? get uniqueName {
    return node.getAttribute('uniqueName');
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'xmlPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_XmlPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_XmlPr(_i1.XmlElement node) implements _i1.XmlElement {
  int get mapId {
    return int.parse(node.getAttribute('mapId')!);
  }

  String get xpath {
    return node.getAttribute('xpath')!;
  }

  String get xmlDataType {
    return node.getAttribute('xmlDataType')!;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('mapId') == null) {
      errors.add(
        "Missing required attribute 'mapId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('xpath') == null) {
      errors.add(
        "Missing required attribute 'xpath' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('xmlDataType') == null) {
      errors.add(
        "Missing required attribute 'xmlDataType' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'numFmts',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_NumFmts(childNode).validate());
    }
    for (final childNode in node.findElements(
      'fonts',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Fonts(childNode).validate());
    }
    for (final childNode in node.findElements(
      'fills',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Fills(childNode).validate());
    }
    for (final childNode in node.findElements(
      'borders',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Borders(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cellStyleXfs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellStyleXfs(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cellXfs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellXfs(childNode).validate());
    }
    for (final childNode in node.findElements(
      'cellStyles',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellStyles(childNode).validate());
    }
    for (final childNode in node.findElements(
      'dxfs',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Dxfs(childNode).validate());
    }
    for (final childNode in node.findElements(
      'tableStyles',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableStyles(childNode).validate());
    }
    for (final childNode in node.findElements(
      'colors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Colors(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellAlignment(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_HorizontalAlignment? get horizontal {
    return node.getAttribute('horizontal') != null
        ? S_ST_HorizontalAlignment.fromValue(node.getAttribute('horizontal')!)
        : null;
  }

  S_ST_VerticalAlignment? get vertical {
    return node.getAttribute('vertical') != null
        ? S_ST_VerticalAlignment.fromValue(node.getAttribute('vertical')!)
        : null;
  }

  String? get textRotation {
    return node.getAttribute('textRotation');
  }

  bool? get wrapText {
    return node.getAttribute('wrapText') == '1' ||
        node.getAttribute('wrapText') == 'true' ||
        node.getAttribute('wrapText') == 'on';
  }

  int? get indent {
    return node.getAttribute('indent') != null
        ? int.tryParse(node.getAttribute('indent')!)
        : null;
  }

  int? get relativeIndent {
    return node.getAttribute('relativeIndent') != null
        ? int.tryParse(node.getAttribute('relativeIndent')!)
        : null;
  }

  bool? get justifyLastLine {
    return node.getAttribute('justifyLastLine') == '1' ||
        node.getAttribute('justifyLastLine') == 'true' ||
        node.getAttribute('justifyLastLine') == 'on';
  }

  bool? get shrinkToFit {
    return node.getAttribute('shrinkToFit') == '1' ||
        node.getAttribute('shrinkToFit') == 'true' ||
        node.getAttribute('shrinkToFit') == 'on';
  }

  int? get readingOrder {
    return node.getAttribute('readingOrder') != null
        ? int.tryParse(node.getAttribute('readingOrder')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_horizontal = node.getAttribute('horizontal');
    if (v_horizontal != null &&
        S_ST_HorizontalAlignment.fromValue(v_horizontal) == null) {
      errors.add(
        "Invalid enum value for attribute 'horizontal' in ${node.name.qualified}: $v_horizontal",
      );
    }
    final v_vertical = node.getAttribute('vertical');
    if (v_vertical != null &&
        S_ST_VerticalAlignment.fromValue(v_vertical) == null) {
      errors.add(
        "Invalid enum value for attribute 'vertical' in ${node.name.qualified}: $v_vertical",
      );
    }
    return errors;
  }
}

extension type S_CT_Borders(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'border',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Border(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Border(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get diagonalUp {
    return node.getAttribute('diagonalUp') == '1' ||
        node.getAttribute('diagonalUp') == 'true' ||
        node.getAttribute('diagonalUp') == 'on';
  }

  bool? get diagonalDown {
    return node.getAttribute('diagonalDown') == '1' ||
        node.getAttribute('diagonalDown') == 'true' ||
        node.getAttribute('diagonalDown') == 'on';
  }

  bool? get outline {
    return node.getAttribute('outline') == '1' ||
        node.getAttribute('outline') == 'true' ||
        node.getAttribute('outline') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'start',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'end',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'left',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'right',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'top',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'bottom',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'diagonal',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'vertical',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'horizontal',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BorderPr(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_BorderPr(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_BorderStyle? get style {
    return node.getAttribute('style') != null
        ? S_ST_BorderStyle.fromValue(node.getAttribute('style')!)
        : null;
  }

  S_CT_Color? get color {
    final e = node.getElement(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_style = node.getAttribute('style');
    if (v_style != null && S_ST_BorderStyle.fromValue(v_style) == null) {
      errors.add(
        "Invalid enum value for attribute 'style' in ${node.name.qualified}: $v_style",
      );
    }
    for (final childNode in node.findElements(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellProtection(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get locked {
    return node.getAttribute('locked') == '1' ||
        node.getAttribute('locked') == 'true' ||
        node.getAttribute('locked') == 'on';
  }

  bool? get hidden {
    return node.getAttribute('hidden') == '1' ||
        node.getAttribute('hidden') == 'true' ||
        node.getAttribute('hidden') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_Fonts(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'font',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Font(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Fills(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'fill',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Fill(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'patternFill',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PatternFill(childNode).validate());
    }
    for (final childNode in node.findElements(
      'gradientFill',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_GradientFill(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PatternFill(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_PatternType? get patternType {
    return node.getAttribute('patternType') != null
        ? S_ST_PatternType.fromValue(node.getAttribute('patternType')!)
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

  List<String> validate() {
    final errors = <String>[];
    final v_patternType = node.getAttribute('patternType');
    if (v_patternType != null &&
        S_ST_PatternType.fromValue(v_patternType) == null) {
      errors.add(
        "Invalid enum value for attribute 'patternType' in ${node.name.qualified}: $v_patternType",
      );
    }
    for (final childNode in node.findElements(
      'fgColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    for (final childNode in node.findElements(
      'bgColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Color(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get auto {
    return node.getAttribute('auto') == '1' ||
        node.getAttribute('auto') == 'true' ||
        node.getAttribute('auto') == 'on';
  }

  int? get indexed {
    return node.getAttribute('indexed') != null
        ? int.tryParse(node.getAttribute('indexed')!)
        : null;
  }

  String? get rgb {
    return node.getAttribute('rgb');
  }

  int? get theme {
    return node.getAttribute('theme') != null
        ? int.tryParse(node.getAttribute('theme')!)
        : null;
  }

  double? get tint {
    return node.getAttribute('tint') != null
        ? double.tryParse(node.getAttribute('tint')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_GradientFill(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_GradientType? get type {
    return node.getAttribute('type') != null
        ? S_ST_GradientType.fromValue(node.getAttribute('type')!)
        : null;
  }

  double? get degree {
    return node.getAttribute('degree') != null
        ? double.tryParse(node.getAttribute('degree')!)
        : null;
  }

  double? get left {
    return node.getAttribute('left') != null
        ? double.tryParse(node.getAttribute('left')!)
        : null;
  }

  double? get right {
    return node.getAttribute('right') != null
        ? double.tryParse(node.getAttribute('right')!)
        : null;
  }

  double? get top {
    return node.getAttribute('top') != null
        ? double.tryParse(node.getAttribute('top')!)
        : null;
  }

  double? get bottom {
    return node.getAttribute('bottom') != null
        ? double.tryParse(node.getAttribute('bottom')!)
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

  List<String> validate() {
    final errors = <String>[];
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_GradientType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    for (final childNode in node.findElements(
      'stop',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_GradientStop(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_GradientStop(_i1.XmlElement node)
    implements _i1.XmlElement {
  double get position {
    return double.parse(node.getAttribute('position')!);
  }

  S_CT_Color? get color {
    final e = node.getElement(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_Color(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('position') == null) {
      errors.add(
        "Missing required attribute 'position' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_NumFmts(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_NumFmt(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_NumFmt(_i1.XmlElement node) implements _i1.XmlElement {
  String get numFmtId {
    return node.getAttribute('numFmtId')!;
  }

  String get formatCode {
    return node.getAttribute('formatCode')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('numFmtId') == null) {
      errors.add(
        "Missing required attribute 'numFmtId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('formatCode') == null) {
      errors.add(
        "Missing required attribute 'formatCode' in ${node.name.qualified}",
      );
    }
    return errors;
  }
}

extension type S_CT_CellStyleXfs(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'xf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Xf(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellXfs(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'xf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Xf(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Xf(_i1.XmlElement node) implements _i1.XmlElement {
  String? get numFmtId {
    return node.getAttribute('numFmtId');
  }

  String? get fontId {
    return node.getAttribute('fontId');
  }

  String? get fillId {
    return node.getAttribute('fillId');
  }

  String? get borderId {
    return node.getAttribute('borderId');
  }

  String? get xfId {
    return node.getAttribute('xfId');
  }

  bool? get quotePrefix {
    return node.getAttribute('quotePrefix') == '1' ||
        node.getAttribute('quotePrefix') == 'true' ||
        node.getAttribute('quotePrefix') == 'on';
  }

  bool? get pivotButton {
    return node.getAttribute('pivotButton') == '1' ||
        node.getAttribute('pivotButton') == 'true' ||
        node.getAttribute('pivotButton') == 'on';
  }

  bool? get applyNumberFormat {
    return node.getAttribute('applyNumberFormat') == '1' ||
        node.getAttribute('applyNumberFormat') == 'true' ||
        node.getAttribute('applyNumberFormat') == 'on';
  }

  bool? get applyFont {
    return node.getAttribute('applyFont') == '1' ||
        node.getAttribute('applyFont') == 'true' ||
        node.getAttribute('applyFont') == 'on';
  }

  bool? get applyFill {
    return node.getAttribute('applyFill') == '1' ||
        node.getAttribute('applyFill') == 'true' ||
        node.getAttribute('applyFill') == 'on';
  }

  bool? get applyBorder {
    return node.getAttribute('applyBorder') == '1' ||
        node.getAttribute('applyBorder') == 'true' ||
        node.getAttribute('applyBorder') == 'on';
  }

  bool? get applyAlignment {
    return node.getAttribute('applyAlignment') == '1' ||
        node.getAttribute('applyAlignment') == 'true' ||
        node.getAttribute('applyAlignment') == 'on';
  }

  bool? get applyProtection {
    return node.getAttribute('applyProtection') == '1' ||
        node.getAttribute('applyProtection') == 'true' ||
        node.getAttribute('applyProtection') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'alignment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellAlignment(childNode).validate());
    }
    for (final childNode in node.findElements(
      'protection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellProtection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellStyles(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'cellStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellStyle(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CellStyle(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  String get xfId {
    return node.getAttribute('xfId')!;
  }

  int? get builtinId {
    return node.getAttribute('builtinId') != null
        ? int.tryParse(node.getAttribute('builtinId')!)
        : null;
  }

  int? get iLevel {
    return node.getAttribute('iLevel') != null
        ? int.tryParse(node.getAttribute('iLevel')!)
        : null;
  }

  bool? get hidden {
    return node.getAttribute('hidden') == '1' ||
        node.getAttribute('hidden') == 'true' ||
        node.getAttribute('hidden') == 'on';
  }

  bool? get customBuiltin {
    return node.getAttribute('customBuiltin') == '1' ||
        node.getAttribute('customBuiltin') == 'true' ||
        node.getAttribute('customBuiltin') == 'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('xfId') == null) {
      errors.add("Missing required attribute 'xfId' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Dxfs(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'dxf',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Dxf(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'font',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Font(childNode).validate());
    }
    for (final childNode in node.findElements(
      'numFmt',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_NumFmt(childNode).validate());
    }
    for (final childNode in node.findElements(
      'fill',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Fill(childNode).validate());
    }
    for (final childNode in node.findElements(
      'alignment',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellAlignment(childNode).validate());
    }
    for (final childNode in node.findElements(
      'border',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Border(childNode).validate());
    }
    for (final childNode in node.findElements(
      'protection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CellProtection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'indexedColors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_IndexedColors(childNode).validate());
    }
    for (final childNode in node.findElements(
      'mruColors',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_MRUColors(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'rgbColor',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_RgbColor(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_RgbColor(_i1.XmlElement node) implements _i1.XmlElement {
  String? get rgb {
    return node.getAttribute('rgb');
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_TableStyles(_i1.XmlElement node) implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
        : null;
  }

  String? get defaultTableStyle {
    return node.getAttribute('defaultTableStyle');
  }

  String? get defaultPivotStyle {
    return node.getAttribute('defaultPivotStyle');
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'tableStyle',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableStyle(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TableStyle(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  bool? get pivot {
    return node.getAttribute('pivot') == '1' ||
        node.getAttribute('pivot') == 'true' ||
        node.getAttribute('pivot') == 'on';
  }

  bool? get table {
    return node.getAttribute('table') == '1' ||
        node.getAttribute('table') == 'true' ||
        node.getAttribute('table') == 'on';
  }

  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'tableStyleElement',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableStyleElement(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TableStyleElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_TableStyleType get type {
    return S_ST_TableStyleType.fromValue(node.getAttribute('type')!)!;
  }

  int? get size {
    return node.getAttribute('size') != null
        ? int.tryParse(node.getAttribute('size')!)
        : null;
  }

  String? get dxfId {
    return node.getAttribute('dxfId');
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('type') == null) {
      errors.add("Missing required attribute 'type' in ${node.name.qualified}");
    }
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_TableStyleType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    return errors;
  }
}

extension type S_CT_BooleanProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get val {
    return node.getAttribute('val') == '1' ||
        node.getAttribute('val') == 'true' ||
        node.getAttribute('val') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_FontSize(_i1.XmlElement node) implements _i1.XmlElement {
  double get val {
    return double.parse(node.getAttribute('val')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_IntProperty(_i1.XmlElement node) implements _i1.XmlElement {
  int get val {
    return int.parse(node.getAttribute('val')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_FontName(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute('val')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_VerticalAlignFontProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  ST_VerticalAlignRun get val {
    return ST_VerticalAlignRun.fromValue(node.getAttribute('val')!)!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    final v_val = node.getAttribute('val');
    if (v_val != null && ST_VerticalAlignRun.fromValue(v_val) == null) {
      errors.add(
        "Invalid enum value for attribute 'val' in ${node.name.qualified}: $v_val",
      );
    }
    return errors;
  }
}

extension type S_CT_FontScheme(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_FontScheme get val {
    return S_ST_FontScheme.fromValue(node.getAttribute('val')!)!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    final v_val = node.getAttribute('val');
    if (v_val != null && S_ST_FontScheme.fromValue(v_val) == null) {
      errors.add(
        "Invalid enum value for attribute 'val' in ${node.name.qualified}: $v_val",
      );
    }
    return errors;
  }
}

extension type S_CT_UnderlineProperty(_i1.XmlElement node)
    implements _i1.XmlElement {
  S_ST_UnderlineValues? get val {
    return node.getAttribute('val') != null
        ? S_ST_UnderlineValues.fromValue(node.getAttribute('val')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_val = node.getAttribute('val');
    if (v_val != null && S_ST_UnderlineValues.fromValue(v_val) == null) {
      errors.add(
        "Invalid enum value for attribute 'val' in ${node.name.qualified}: $v_val",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'name',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FontName(childNode).validate());
    }
    for (final childNode in node.findElements(
      'charset',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_IntProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'family',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FontFamily(childNode).validate());
    }
    for (final childNode in node.findElements(
      'b',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'i',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'strike',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'outline',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'shadow',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'condense',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extend',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BooleanProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'color',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Color(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sz',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FontSize(childNode).validate());
    }
    for (final childNode in node.findElements(
      'u',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_UnderlineProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'vertAlign',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_VerticalAlignFontProperty(childNode).validate());
    }
    for (final childNode in node.findElements(
      'scheme',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FontScheme(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_FontFamily(_i1.XmlElement node) implements _i1.XmlElement {
  String get val {
    return node.getAttribute('val')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('val') == null) {
      errors.add("Missing required attribute 'val' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'externalBook',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalBook(childNode).validate());
    }
    for (final childNode in node.findElements(
      'ddeLink',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DdeLink(childNode).validate());
    }
    for (final childNode in node.findElements(
      'oleLink',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OleLink(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ExternalBook(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'sheetNames',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalSheetNames(childNode).validate());
    }
    for (final childNode in node.findElements(
      'definedNames',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalDefinedNames(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheetDataSet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalSheetDataSet(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalSheetName(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ExternalSheetName(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get val {
    return node.getAttribute('val');
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'definedName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalDefinedName(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ExternalDefinedName(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  String? get refersTo {
    return node.getAttribute('refersTo');
  }

  int? get sheetId {
    return node.getAttribute('sheetId') != null
        ? int.tryParse(node.getAttribute('sheetId')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheetData',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalSheetData(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ExternalSheetData(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  bool? get refreshError {
    return node.getAttribute('refreshError') == '1' ||
        node.getAttribute('refreshError') == 'true' ||
        node.getAttribute('refreshError') == 'on';
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'row',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalRow(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ExternalRow(_i1.XmlElement node) implements _i1.XmlElement {
  int get r {
    return int.parse(node.getAttribute('r')!);
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('r') == null) {
      errors.add("Missing required attribute 'r' in ${node.name.qualified}");
    }
    for (final childNode in node.findElements(
      'cell',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalCell(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ExternalCell(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get r {
    return node.getAttribute('r');
  }

  S_ST_CellType? get t {
    return node.getAttribute('t') != null
        ? S_ST_CellType.fromValue(node.getAttribute('t')!)
        : null;
  }

  int? get vm {
    return node.getAttribute('vm') != null
        ? int.tryParse(node.getAttribute('vm')!)
        : null;
  }

  String? get v {
    final e = node.getElement(
      'v',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_t = node.getAttribute('t');
    if (v_t != null && S_ST_CellType.fromValue(v_t) == null) {
      errors.add(
        "Invalid enum value for attribute 't' in ${node.name.qualified}: $v_t",
      );
    }
    return errors;
  }
}

extension type S_CT_DdeLink(_i1.XmlElement node) implements _i1.XmlElement {
  String get ddeService {
    return node.getAttribute('ddeService')!;
  }

  String get ddeTopic {
    return node.getAttribute('ddeTopic')!;
  }

  S_CT_DdeItems? get ddeItems {
    final e = node.getElement(
      'ddeItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DdeItems(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ddeService') == null) {
      errors.add(
        "Missing required attribute 'ddeService' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('ddeTopic') == null) {
      errors.add(
        "Missing required attribute 'ddeTopic' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'ddeItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DdeItems(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'ddeItem',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DdeItem(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DdeItem(_i1.XmlElement node) implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  bool? get ole {
    return node.getAttribute('ole') == '1' ||
        node.getAttribute('ole') == 'true' ||
        node.getAttribute('ole') == 'on';
  }

  bool? get advise {
    return node.getAttribute('advise') == '1' ||
        node.getAttribute('advise') == 'true' ||
        node.getAttribute('advise') == 'on';
  }

  bool? get preferPic {
    return node.getAttribute('preferPic') == '1' ||
        node.getAttribute('preferPic') == 'true' ||
        node.getAttribute('preferPic') == 'on';
  }

  S_CT_DdeValues? get values {
    final e = node.getElement(
      'values',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_DdeValues(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'values',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DdeValues(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DdeValues(_i1.XmlElement node) implements _i1.XmlElement {
  int? get rows {
    return node.getAttribute('rows') != null
        ? int.tryParse(node.getAttribute('rows')!)
        : null;
  }

  int? get cols {
    return node.getAttribute('cols') != null
        ? int.tryParse(node.getAttribute('cols')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'value',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DdeValue(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DdeValue(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_DdeValueType? get t {
    return node.getAttribute('t') != null
        ? S_ST_DdeValueType.fromValue(node.getAttribute('t')!)
        : null;
  }

  String? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_t = node.getAttribute('t');
    if (v_t != null && S_ST_DdeValueType.fromValue(v_t) == null) {
      errors.add(
        "Invalid enum value for attribute 't' in ${node.name.qualified}: $v_t",
      );
    }
    return errors;
  }
}

extension type S_CT_OleLink(_i1.XmlElement node) implements _i1.XmlElement {
  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  String get progId {
    return node.getAttribute('progId')!;
  }

  S_CT_OleItems? get oleItems {
    final e = node.getElement(
      'oleItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_OleItems(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    if (node.getAttribute('progId') == null) {
      errors.add(
        "Missing required attribute 'progId' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'oleItems',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OleItems(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'oleItem',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OleItem(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_OleItem(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  bool? get icon {
    return node.getAttribute('icon') == '1' ||
        node.getAttribute('icon') == 'true' ||
        node.getAttribute('icon') == 'on';
  }

  bool? get advise {
    return node.getAttribute('advise') == '1' ||
        node.getAttribute('advise') == 'true' ||
        node.getAttribute('advise') == 'on';
  }

  bool? get preferPic {
    return node.getAttribute('preferPic') == '1' ||
        node.getAttribute('preferPic') == 'true' ||
        node.getAttribute('preferPic') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Table(_i1.XmlElement node) implements _i1.XmlElement {
  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String? get name {
    return node.getAttribute('name');
  }

  String get displayName {
    return node.getAttribute('displayName')!;
  }

  String? get comment {
    return node.getAttribute('comment');
  }

  String get ref {
    return node.getAttribute('ref')!;
  }

  S_ST_TableType? get tableType {
    return node.getAttribute('tableType') != null
        ? S_ST_TableType.fromValue(node.getAttribute('tableType')!)
        : null;
  }

  int? get headerRowCount {
    return node.getAttribute('headerRowCount') != null
        ? int.tryParse(node.getAttribute('headerRowCount')!)
        : null;
  }

  bool? get insertRow {
    return node.getAttribute('insertRow') == '1' ||
        node.getAttribute('insertRow') == 'true' ||
        node.getAttribute('insertRow') == 'on';
  }

  bool? get insertRowShift {
    return node.getAttribute('insertRowShift') == '1' ||
        node.getAttribute('insertRowShift') == 'true' ||
        node.getAttribute('insertRowShift') == 'on';
  }

  int? get totalsRowCount {
    return node.getAttribute('totalsRowCount') != null
        ? int.tryParse(node.getAttribute('totalsRowCount')!)
        : null;
  }

  bool? get totalsRowShown {
    return node.getAttribute('totalsRowShown') == '1' ||
        node.getAttribute('totalsRowShown') == 'true' ||
        node.getAttribute('totalsRowShown') == 'on';
  }

  bool? get published {
    return node.getAttribute('published') == '1' ||
        node.getAttribute('published') == 'true' ||
        node.getAttribute('published') == 'on';
  }

  String? get headerRowDxfId {
    return node.getAttribute('headerRowDxfId');
  }

  String? get dataDxfId {
    return node.getAttribute('dataDxfId');
  }

  String? get totalsRowDxfId {
    return node.getAttribute('totalsRowDxfId');
  }

  String? get headerRowBorderDxfId {
    return node.getAttribute('headerRowBorderDxfId');
  }

  String? get tableBorderDxfId {
    return node.getAttribute('tableBorderDxfId');
  }

  String? get totalsRowBorderDxfId {
    return node.getAttribute('totalsRowBorderDxfId');
  }

  String? get headerRowCellStyle {
    return node.getAttribute('headerRowCellStyle');
  }

  String? get dataCellStyle {
    return node.getAttribute('dataCellStyle');
  }

  String? get totalsRowCellStyle {
    return node.getAttribute('totalsRowCellStyle');
  }

  int? get connectionId {
    return node.getAttribute('connectionId') != null
        ? int.tryParse(node.getAttribute('connectionId')!)
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    if (node.getAttribute('displayName') == null) {
      errors.add(
        "Missing required attribute 'displayName' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    final v_tableType = node.getAttribute('tableType');
    if (v_tableType != null && S_ST_TableType.fromValue(v_tableType) == null) {
      errors.add(
        "Invalid enum value for attribute 'tableType' in ${node.name.qualified}: $v_tableType",
      );
    }
    for (final childNode in node.findElements(
      'autoFilter',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_AutoFilter(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sortState',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SortState(childNode).validate());
    }
    for (final childNode in node.findElements(
      'tableColumns',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableColumns(childNode).validate());
    }
    for (final childNode in node.findElements(
      'tableStyleInfo',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableStyleInfo(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TableStyleInfo(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  bool? get showFirstColumn {
    return node.getAttribute('showFirstColumn') == '1' ||
        node.getAttribute('showFirstColumn') == 'true' ||
        node.getAttribute('showFirstColumn') == 'on';
  }

  bool? get showLastColumn {
    return node.getAttribute('showLastColumn') == '1' ||
        node.getAttribute('showLastColumn') == 'true' ||
        node.getAttribute('showLastColumn') == 'on';
  }

  bool? get showRowStripes {
    return node.getAttribute('showRowStripes') == '1' ||
        node.getAttribute('showRowStripes') == 'true' ||
        node.getAttribute('showRowStripes') == 'on';
  }

  bool? get showColumnStripes {
    return node.getAttribute('showColumnStripes') == '1' ||
        node.getAttribute('showColumnStripes') == 'true' ||
        node.getAttribute('showColumnStripes') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_TableColumns(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'tableColumn',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableColumn(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TableColumn(_i1.XmlElement node) implements _i1.XmlElement {
  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String? get uniqueName {
    return node.getAttribute('uniqueName');
  }

  String get name {
    return node.getAttribute('name')!;
  }

  S_ST_TotalsRowFunction? get totalsRowFunction {
    return node.getAttribute('totalsRowFunction') != null
        ? S_ST_TotalsRowFunction.fromValue(
            node.getAttribute('totalsRowFunction')!,
          )
        : null;
  }

  String? get totalsRowLabel {
    return node.getAttribute('totalsRowLabel');
  }

  int? get queryTableFieldId {
    return node.getAttribute('queryTableFieldId') != null
        ? int.tryParse(node.getAttribute('queryTableFieldId')!)
        : null;
  }

  String? get headerRowDxfId {
    return node.getAttribute('headerRowDxfId');
  }

  String? get dataDxfId {
    return node.getAttribute('dataDxfId');
  }

  String? get totalsRowDxfId {
    return node.getAttribute('totalsRowDxfId');
  }

  String? get headerRowCellStyle {
    return node.getAttribute('headerRowCellStyle');
  }

  String? get dataCellStyle {
    return node.getAttribute('dataCellStyle');
  }

  String? get totalsRowCellStyle {
    return node.getAttribute('totalsRowCellStyle');
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    final v_totalsRowFunction = node.getAttribute('totalsRowFunction');
    if (v_totalsRowFunction != null &&
        S_ST_TotalsRowFunction.fromValue(v_totalsRowFunction) == null) {
      errors.add(
        "Invalid enum value for attribute 'totalsRowFunction' in ${node.name.qualified}: $v_totalsRowFunction",
      );
    }
    for (final childNode in node.findElements(
      'calculatedColumnFormula',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableFormula(childNode).validate());
    }
    for (final childNode in node.findElements(
      'totalsRowFormula',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_TableFormula(childNode).validate());
    }
    for (final childNode in node.findElements(
      'xmlColumnPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_XmlColumnPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_TableFormula(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get array {
    return node.getAttribute('array') == '1' ||
        node.getAttribute('array') == 'true' ||
        node.getAttribute('array') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_XmlColumnPr(_i1.XmlElement node) implements _i1.XmlElement {
  int get mapId {
    return int.parse(node.getAttribute('mapId')!);
  }

  String get xpath {
    return node.getAttribute('xpath')!;
  }

  bool? get denormalized {
    return node.getAttribute('denormalized') == '1' ||
        node.getAttribute('denormalized') == 'true' ||
        node.getAttribute('denormalized') == 'on';
  }

  String get xmlDataType {
    return node.getAttribute('xmlDataType')!;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('mapId') == null) {
      errors.add(
        "Missing required attribute 'mapId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('xpath') == null) {
      errors.add(
        "Missing required attribute 'xpath' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('xmlDataType') == null) {
      errors.add(
        "Missing required attribute 'xmlDataType' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'volType',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_VolType(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_VolType(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_VolDepType get type {
    return S_ST_VolDepType.fromValue(node.getAttribute('type')!)!;
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('type') == null) {
      errors.add("Missing required attribute 'type' in ${node.name.qualified}");
    }
    final v_type = node.getAttribute('type');
    if (v_type != null && S_ST_VolDepType.fromValue(v_type) == null) {
      errors.add(
        "Invalid enum value for attribute 'type' in ${node.name.qualified}: $v_type",
      );
    }
    for (final childNode in node.findElements(
      'main',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_VolMain(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_VolMain(_i1.XmlElement node) implements _i1.XmlElement {
  String get first {
    return node.getAttribute('first')!;
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

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('first') == null) {
      errors.add(
        "Missing required attribute 'first' in ${node.name.qualified}",
      );
    }
    for (final childNode in node.findElements(
      'tp',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_VolTopic(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_VolTopic(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_VolValueType? get t {
    return node.getAttribute('t') != null
        ? S_ST_VolValueType.fromValue(node.getAttribute('t')!)
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

  List<String> validate() {
    final errors = <String>[];
    final v_t = node.getAttribute('t');
    if (v_t != null && S_ST_VolValueType.fromValue(v_t) == null) {
      errors.add(
        "Invalid enum value for attribute 't' in ${node.name.qualified}: $v_t",
      );
    }
    for (final childNode in node.findElements(
      'tr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_VolTopicRef(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_VolTopicRef(_i1.XmlElement node) implements _i1.XmlElement {
  String get r {
    return node.getAttribute('r')!;
  }

  int get s {
    return int.parse(node.getAttribute('s')!);
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('r') == null) {
      errors.add("Missing required attribute 'r' in ${node.name.qualified}");
    }
    if (node.getAttribute('s') == null) {
      errors.add("Missing required attribute 's' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_Workbook(_i1.XmlElement node) implements _i1.XmlElement {
  ST_ConformanceClass? get conformance {
    return node.getAttribute('conformance') != null
        ? ST_ConformanceClass.fromValue(node.getAttribute('conformance')!)
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

  List<String> validate() {
    final errors = <String>[];
    final v_conformance = node.getAttribute('conformance');
    if (v_conformance != null &&
        ST_ConformanceClass.fromValue(v_conformance) == null) {
      errors.add(
        "Invalid enum value for attribute 'conformance' in ${node.name.qualified}: $v_conformance",
      );
    }
    for (final childNode in node.findElements(
      'fileVersion',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FileVersion(childNode).validate());
    }
    for (final childNode in node.findElements(
      'fileSharing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FileSharing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'workbookPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WorkbookPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'workbookProtection',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WorkbookProtection(childNode).validate());
    }
    for (final childNode in node.findElements(
      'bookViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BookViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'sheets',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Sheets(childNode).validate());
    }
    for (final childNode in node.findElements(
      'functionGroups',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FunctionGroups(childNode).validate());
    }
    for (final childNode in node.findElements(
      'externalReferences',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalReferences(childNode).validate());
    }
    for (final childNode in node.findElements(
      'definedNames',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DefinedNames(childNode).validate());
    }
    for (final childNode in node.findElements(
      'calcPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CalcPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'oleSize',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_OleSize(childNode).validate());
    }
    for (final childNode in node.findElements(
      'customWorkbookViews',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomWorkbookViews(childNode).validate());
    }
    for (final childNode in node.findElements(
      'pivotCaches',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotCaches(childNode).validate());
    }
    for (final childNode in node.findElements(
      'smartTagPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SmartTagPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'smartTagTypes',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SmartTagTypes(childNode).validate());
    }
    for (final childNode in node.findElements(
      'webPublishing',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WebPublishing(childNode).validate());
    }
    for (final childNode in node.findElements(
      'fileRecoveryPr',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FileRecoveryPr(childNode).validate());
    }
    for (final childNode in node.findElements(
      'webPublishObjects',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WebPublishObjects(childNode).validate());
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_FileVersion(_i1.XmlElement node) implements _i1.XmlElement {
  String? get appName {
    return node.getAttribute('appName');
  }

  String? get lastEdited {
    return node.getAttribute('lastEdited');
  }

  String? get lowestEdited {
    return node.getAttribute('lowestEdited');
  }

  String? get rupBuild {
    return node.getAttribute('rupBuild');
  }

  String? get codeName {
    return node.getAttribute('codeName');
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'workbookView',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_BookView(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_BookView(_i1.XmlElement node) implements _i1.XmlElement {
  S_ST_Visibility? get visibility {
    return node.getAttribute('visibility') != null
        ? S_ST_Visibility.fromValue(node.getAttribute('visibility')!)
        : null;
  }

  bool? get minimized {
    return node.getAttribute('minimized') == '1' ||
        node.getAttribute('minimized') == 'true' ||
        node.getAttribute('minimized') == 'on';
  }

  bool? get showHorizontalScroll {
    return node.getAttribute('showHorizontalScroll') == '1' ||
        node.getAttribute('showHorizontalScroll') == 'true' ||
        node.getAttribute('showHorizontalScroll') == 'on';
  }

  bool? get showVerticalScroll {
    return node.getAttribute('showVerticalScroll') == '1' ||
        node.getAttribute('showVerticalScroll') == 'true' ||
        node.getAttribute('showVerticalScroll') == 'on';
  }

  bool? get showSheetTabs {
    return node.getAttribute('showSheetTabs') == '1' ||
        node.getAttribute('showSheetTabs') == 'true' ||
        node.getAttribute('showSheetTabs') == 'on';
  }

  int? get xWindow {
    return node.getAttribute('xWindow') != null
        ? int.tryParse(node.getAttribute('xWindow')!)
        : null;
  }

  int? get yWindow {
    return node.getAttribute('yWindow') != null
        ? int.tryParse(node.getAttribute('yWindow')!)
        : null;
  }

  int? get windowWidth {
    return node.getAttribute('windowWidth') != null
        ? int.tryParse(node.getAttribute('windowWidth')!)
        : null;
  }

  int? get windowHeight {
    return node.getAttribute('windowHeight') != null
        ? int.tryParse(node.getAttribute('windowHeight')!)
        : null;
  }

  int? get tabRatio {
    return node.getAttribute('tabRatio') != null
        ? int.tryParse(node.getAttribute('tabRatio')!)
        : null;
  }

  int? get firstSheet {
    return node.getAttribute('firstSheet') != null
        ? int.tryParse(node.getAttribute('firstSheet')!)
        : null;
  }

  int? get activeTab {
    return node.getAttribute('activeTab') != null
        ? int.tryParse(node.getAttribute('activeTab')!)
        : null;
  }

  bool? get autoFilterDateGrouping {
    return node.getAttribute('autoFilterDateGrouping') == '1' ||
        node.getAttribute('autoFilterDateGrouping') == 'true' ||
        node.getAttribute('autoFilterDateGrouping') == 'on';
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_visibility = node.getAttribute('visibility');
    if (v_visibility != null &&
        S_ST_Visibility.fromValue(v_visibility) == null) {
      errors.add(
        "Invalid enum value for attribute 'visibility' in ${node.name.qualified}: $v_visibility",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'customWorkbookView',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_CustomWorkbookView(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_CustomWorkbookView(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  String get guid {
    return node.getAttribute('guid')!;
  }

  bool? get autoUpdate {
    return node.getAttribute('autoUpdate') == '1' ||
        node.getAttribute('autoUpdate') == 'true' ||
        node.getAttribute('autoUpdate') == 'on';
  }

  int? get mergeInterval {
    return node.getAttribute('mergeInterval') != null
        ? int.tryParse(node.getAttribute('mergeInterval')!)
        : null;
  }

  bool? get changesSavedWin {
    return node.getAttribute('changesSavedWin') == '1' ||
        node.getAttribute('changesSavedWin') == 'true' ||
        node.getAttribute('changesSavedWin') == 'on';
  }

  bool? get onlySync {
    return node.getAttribute('onlySync') == '1' ||
        node.getAttribute('onlySync') == 'true' ||
        node.getAttribute('onlySync') == 'on';
  }

  bool? get personalView {
    return node.getAttribute('personalView') == '1' ||
        node.getAttribute('personalView') == 'true' ||
        node.getAttribute('personalView') == 'on';
  }

  bool? get includePrintSettings {
    return node.getAttribute('includePrintSettings') == '1' ||
        node.getAttribute('includePrintSettings') == 'true' ||
        node.getAttribute('includePrintSettings') == 'on';
  }

  bool? get includeHiddenRowCol {
    return node.getAttribute('includeHiddenRowCol') == '1' ||
        node.getAttribute('includeHiddenRowCol') == 'true' ||
        node.getAttribute('includeHiddenRowCol') == 'on';
  }

  bool? get maximized {
    return node.getAttribute('maximized') == '1' ||
        node.getAttribute('maximized') == 'true' ||
        node.getAttribute('maximized') == 'on';
  }

  bool? get minimized {
    return node.getAttribute('minimized') == '1' ||
        node.getAttribute('minimized') == 'true' ||
        node.getAttribute('minimized') == 'on';
  }

  bool? get showHorizontalScroll {
    return node.getAttribute('showHorizontalScroll') == '1' ||
        node.getAttribute('showHorizontalScroll') == 'true' ||
        node.getAttribute('showHorizontalScroll') == 'on';
  }

  bool? get showVerticalScroll {
    return node.getAttribute('showVerticalScroll') == '1' ||
        node.getAttribute('showVerticalScroll') == 'true' ||
        node.getAttribute('showVerticalScroll') == 'on';
  }

  bool? get showSheetTabs {
    return node.getAttribute('showSheetTabs') == '1' ||
        node.getAttribute('showSheetTabs') == 'true' ||
        node.getAttribute('showSheetTabs') == 'on';
  }

  int? get xWindow {
    return node.getAttribute('xWindow') != null
        ? int.tryParse(node.getAttribute('xWindow')!)
        : null;
  }

  int? get yWindow {
    return node.getAttribute('yWindow') != null
        ? int.tryParse(node.getAttribute('yWindow')!)
        : null;
  }

  int get windowWidth {
    return int.parse(node.getAttribute('windowWidth')!);
  }

  int get windowHeight {
    return int.parse(node.getAttribute('windowHeight')!);
  }

  int? get tabRatio {
    return node.getAttribute('tabRatio') != null
        ? int.tryParse(node.getAttribute('tabRatio')!)
        : null;
  }

  int get activeSheetId {
    return int.parse(node.getAttribute('activeSheetId')!);
  }

  bool? get showFormulaBar {
    return node.getAttribute('showFormulaBar') == '1' ||
        node.getAttribute('showFormulaBar') == 'true' ||
        node.getAttribute('showFormulaBar') == 'on';
  }

  bool? get showStatusbar {
    return node.getAttribute('showStatusbar') == '1' ||
        node.getAttribute('showStatusbar') == 'true' ||
        node.getAttribute('showStatusbar') == 'on';
  }

  S_ST_Comments? get showComments {
    return node.getAttribute('showComments') != null
        ? S_ST_Comments.fromValue(node.getAttribute('showComments')!)
        : null;
  }

  S_ST_Objects? get showObjects {
    return node.getAttribute('showObjects') != null
        ? S_ST_Objects.fromValue(node.getAttribute('showObjects')!)
        : null;
  }

  S_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    );
    return e != null ? S_CT_ExtensionList(e) : null;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('guid') == null) {
      errors.add("Missing required attribute 'guid' in ${node.name.qualified}");
    }
    if (node.getAttribute('windowWidth') == null) {
      errors.add(
        "Missing required attribute 'windowWidth' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('windowHeight') == null) {
      errors.add(
        "Missing required attribute 'windowHeight' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('activeSheetId') == null) {
      errors.add(
        "Missing required attribute 'activeSheetId' in ${node.name.qualified}",
      );
    }
    final v_showComments = node.getAttribute('showComments');
    if (v_showComments != null &&
        S_ST_Comments.fromValue(v_showComments) == null) {
      errors.add(
        "Invalid enum value for attribute 'showComments' in ${node.name.qualified}: $v_showComments",
      );
    }
    final v_showObjects = node.getAttribute('showObjects');
    if (v_showObjects != null &&
        S_ST_Objects.fromValue(v_showObjects) == null) {
      errors.add(
        "Invalid enum value for attribute 'showObjects' in ${node.name.qualified}: $v_showObjects",
      );
    }
    for (final childNode in node.findElements(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExtensionList(childNode).validate());
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'sheet',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_Sheet(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_Sheet(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  int get sheetId {
    return int.parse(node.getAttribute('sheetId')!);
  }

  S_ST_SheetState? get state {
    return node.getAttribute('state') != null
        ? S_ST_SheetState.fromValue(node.getAttribute('state')!)
        : null;
  }

  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    if (node.getAttribute('sheetId') == null) {
      errors.add(
        "Missing required attribute 'sheetId' in ${node.name.qualified}",
      );
    }
    final v_state = node.getAttribute('state');
    if (v_state != null && S_ST_SheetState.fromValue(v_state) == null) {
      errors.add(
        "Invalid enum value for attribute 'state' in ${node.name.qualified}: $v_state",
      );
    }
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_WorkbookPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get date1904 {
    return node.getAttribute('date1904') == '1' ||
        node.getAttribute('date1904') == 'true' ||
        node.getAttribute('date1904') == 'on';
  }

  S_ST_Objects? get showObjects {
    return node.getAttribute('showObjects') != null
        ? S_ST_Objects.fromValue(node.getAttribute('showObjects')!)
        : null;
  }

  bool? get showBorderUnselectedTables {
    return node.getAttribute('showBorderUnselectedTables') == '1' ||
        node.getAttribute('showBorderUnselectedTables') == 'true' ||
        node.getAttribute('showBorderUnselectedTables') == 'on';
  }

  bool? get filterPrivacy {
    return node.getAttribute('filterPrivacy') == '1' ||
        node.getAttribute('filterPrivacy') == 'true' ||
        node.getAttribute('filterPrivacy') == 'on';
  }

  bool? get promptedSolutions {
    return node.getAttribute('promptedSolutions') == '1' ||
        node.getAttribute('promptedSolutions') == 'true' ||
        node.getAttribute('promptedSolutions') == 'on';
  }

  bool? get showInkAnnotation {
    return node.getAttribute('showInkAnnotation') == '1' ||
        node.getAttribute('showInkAnnotation') == 'true' ||
        node.getAttribute('showInkAnnotation') == 'on';
  }

  bool? get backupFile {
    return node.getAttribute('backupFile') == '1' ||
        node.getAttribute('backupFile') == 'true' ||
        node.getAttribute('backupFile') == 'on';
  }

  bool? get saveExternalLinkValues {
    return node.getAttribute('saveExternalLinkValues') == '1' ||
        node.getAttribute('saveExternalLinkValues') == 'true' ||
        node.getAttribute('saveExternalLinkValues') == 'on';
  }

  S_ST_UpdateLinks? get updateLinks {
    return node.getAttribute('updateLinks') != null
        ? S_ST_UpdateLinks.fromValue(node.getAttribute('updateLinks')!)
        : null;
  }

  String? get codeName {
    return node.getAttribute('codeName');
  }

  bool? get hidePivotFieldList {
    return node.getAttribute('hidePivotFieldList') == '1' ||
        node.getAttribute('hidePivotFieldList') == 'true' ||
        node.getAttribute('hidePivotFieldList') == 'on';
  }

  bool? get showPivotChartFilter {
    return node.getAttribute('showPivotChartFilter') == '1' ||
        node.getAttribute('showPivotChartFilter') == 'true' ||
        node.getAttribute('showPivotChartFilter') == 'on';
  }

  bool? get allowRefreshQuery {
    return node.getAttribute('allowRefreshQuery') == '1' ||
        node.getAttribute('allowRefreshQuery') == 'true' ||
        node.getAttribute('allowRefreshQuery') == 'on';
  }

  bool? get publishItems {
    return node.getAttribute('publishItems') == '1' ||
        node.getAttribute('publishItems') == 'true' ||
        node.getAttribute('publishItems') == 'on';
  }

  bool? get checkCompatibility {
    return node.getAttribute('checkCompatibility') == '1' ||
        node.getAttribute('checkCompatibility') == 'true' ||
        node.getAttribute('checkCompatibility') == 'on';
  }

  bool? get autoCompressPictures {
    return node.getAttribute('autoCompressPictures') == '1' ||
        node.getAttribute('autoCompressPictures') == 'true' ||
        node.getAttribute('autoCompressPictures') == 'on';
  }

  bool? get refreshAllConnections {
    return node.getAttribute('refreshAllConnections') == '1' ||
        node.getAttribute('refreshAllConnections') == 'true' ||
        node.getAttribute('refreshAllConnections') == 'on';
  }

  int? get defaultThemeVersion {
    return node.getAttribute('defaultThemeVersion') != null
        ? int.tryParse(node.getAttribute('defaultThemeVersion')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_showObjects = node.getAttribute('showObjects');
    if (v_showObjects != null &&
        S_ST_Objects.fromValue(v_showObjects) == null) {
      errors.add(
        "Invalid enum value for attribute 'showObjects' in ${node.name.qualified}: $v_showObjects",
      );
    }
    final v_updateLinks = node.getAttribute('updateLinks');
    if (v_updateLinks != null &&
        S_ST_UpdateLinks.fromValue(v_updateLinks) == null) {
      errors.add(
        "Invalid enum value for attribute 'updateLinks' in ${node.name.qualified}: $v_updateLinks",
      );
    }
    return errors;
  }
}

extension type S_CT_SmartTagPr(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get embed {
    return node.getAttribute('embed') == '1' ||
        node.getAttribute('embed') == 'true' ||
        node.getAttribute('embed') == 'on';
  }

  S_ST_SmartTagShow? get show_ {
    return node.getAttribute('show') != null
        ? S_ST_SmartTagShow.fromValue(node.getAttribute('show')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_show = node.getAttribute('show');
    if (v_show != null && S_ST_SmartTagShow.fromValue(v_show) == null) {
      errors.add(
        "Invalid enum value for attribute 'show' in ${node.name.qualified}: $v_show",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'smartTagType',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_SmartTagType(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_SmartTagType(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get namespaceUri {
    return node.getAttribute('namespaceUri');
  }

  String? get name {
    return node.getAttribute('name');
  }

  String? get url {
    return node.getAttribute('url');
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_FileRecoveryPr(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get autoRecover {
    return node.getAttribute('autoRecover') == '1' ||
        node.getAttribute('autoRecover') == 'true' ||
        node.getAttribute('autoRecover') == 'on';
  }

  bool? get crashSave {
    return node.getAttribute('crashSave') == '1' ||
        node.getAttribute('crashSave') == 'true' ||
        node.getAttribute('crashSave') == 'on';
  }

  bool? get dataExtractLoad {
    return node.getAttribute('dataExtractLoad') == '1' ||
        node.getAttribute('dataExtractLoad') == 'true' ||
        node.getAttribute('dataExtractLoad') == 'on';
  }

  bool? get repairLoad {
    return node.getAttribute('repairLoad') == '1' ||
        node.getAttribute('repairLoad') == 'true' ||
        node.getAttribute('repairLoad') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_CalcPr(_i1.XmlElement node) implements _i1.XmlElement {
  int? get calcId {
    return node.getAttribute('calcId') != null
        ? int.tryParse(node.getAttribute('calcId')!)
        : null;
  }

  S_ST_CalcMode? get calcMode {
    return node.getAttribute('calcMode') != null
        ? S_ST_CalcMode.fromValue(node.getAttribute('calcMode')!)
        : null;
  }

  bool? get fullCalcOnLoad {
    return node.getAttribute('fullCalcOnLoad') == '1' ||
        node.getAttribute('fullCalcOnLoad') == 'true' ||
        node.getAttribute('fullCalcOnLoad') == 'on';
  }

  S_ST_RefMode? get refMode {
    return node.getAttribute('refMode') != null
        ? S_ST_RefMode.fromValue(node.getAttribute('refMode')!)
        : null;
  }

  bool? get iterate {
    return node.getAttribute('iterate') == '1' ||
        node.getAttribute('iterate') == 'true' ||
        node.getAttribute('iterate') == 'on';
  }

  int? get iterateCount {
    return node.getAttribute('iterateCount') != null
        ? int.tryParse(node.getAttribute('iterateCount')!)
        : null;
  }

  double? get iterateDelta {
    return node.getAttribute('iterateDelta') != null
        ? double.tryParse(node.getAttribute('iterateDelta')!)
        : null;
  }

  bool? get fullPrecision {
    return node.getAttribute('fullPrecision') == '1' ||
        node.getAttribute('fullPrecision') == 'true' ||
        node.getAttribute('fullPrecision') == 'on';
  }

  bool? get calcCompleted {
    return node.getAttribute('calcCompleted') == '1' ||
        node.getAttribute('calcCompleted') == 'true' ||
        node.getAttribute('calcCompleted') == 'on';
  }

  bool? get calcOnSave {
    return node.getAttribute('calcOnSave') == '1' ||
        node.getAttribute('calcOnSave') == 'true' ||
        node.getAttribute('calcOnSave') == 'on';
  }

  bool? get concurrentCalc {
    return node.getAttribute('concurrentCalc') == '1' ||
        node.getAttribute('concurrentCalc') == 'true' ||
        node.getAttribute('concurrentCalc') == 'on';
  }

  int? get concurrentManualCount {
    return node.getAttribute('concurrentManualCount') != null
        ? int.tryParse(node.getAttribute('concurrentManualCount')!)
        : null;
  }

  bool? get forceFullCalc {
    return node.getAttribute('forceFullCalc') == '1' ||
        node.getAttribute('forceFullCalc') == 'true' ||
        node.getAttribute('forceFullCalc') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    final v_calcMode = node.getAttribute('calcMode');
    if (v_calcMode != null && S_ST_CalcMode.fromValue(v_calcMode) == null) {
      errors.add(
        "Invalid enum value for attribute 'calcMode' in ${node.name.qualified}: $v_calcMode",
      );
    }
    final v_refMode = node.getAttribute('refMode');
    if (v_refMode != null && S_ST_RefMode.fromValue(v_refMode) == null) {
      errors.add(
        "Invalid enum value for attribute 'refMode' in ${node.name.qualified}: $v_refMode",
      );
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'definedName',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_DefinedName(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_DefinedName(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute('name')!;
  }

  String? get comment {
    return node.getAttribute('comment');
  }

  String? get customMenu {
    return node.getAttribute('customMenu');
  }

  String? get description {
    return node.getAttribute('description');
  }

  String? get help {
    return node.getAttribute('help');
  }

  String? get statusBar {
    return node.getAttribute('statusBar');
  }

  int? get localSheetId {
    return node.getAttribute('localSheetId') != null
        ? int.tryParse(node.getAttribute('localSheetId')!)
        : null;
  }

  bool? get hidden {
    return node.getAttribute('hidden') == '1' ||
        node.getAttribute('hidden') == 'true' ||
        node.getAttribute('hidden') == 'on';
  }

  bool? get function_ {
    return node.getAttribute('function') == '1' ||
        node.getAttribute('function') == 'true' ||
        node.getAttribute('function') == 'on';
  }

  bool? get vbProcedure {
    return node.getAttribute('vbProcedure') == '1' ||
        node.getAttribute('vbProcedure') == 'true' ||
        node.getAttribute('vbProcedure') == 'on';
  }

  bool? get xlm {
    return node.getAttribute('xlm') == '1' ||
        node.getAttribute('xlm') == 'true' ||
        node.getAttribute('xlm') == 'on';
  }

  int? get functionGroupId {
    return node.getAttribute('functionGroupId') != null
        ? int.tryParse(node.getAttribute('functionGroupId')!)
        : null;
  }

  String? get shortcutKey {
    return node.getAttribute('shortcutKey');
  }

  bool? get publishToServer {
    return node.getAttribute('publishToServer') == '1' ||
        node.getAttribute('publishToServer') == 'true' ||
        node.getAttribute('publishToServer') == 'on';
  }

  bool? get workbookParameter {
    return node.getAttribute('workbookParameter') == '1' ||
        node.getAttribute('workbookParameter') == 'true' ||
        node.getAttribute('workbookParameter') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('name') == null) {
      errors.add("Missing required attribute 'name' in ${node.name.qualified}");
    }
    return errors;
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'externalReference',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_ExternalReference(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_ExternalReference(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_SheetBackgroundPicture(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
  }
}

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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'pivotCache',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_PivotCache(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_PivotCache(_i1.XmlElement node) implements _i1.XmlElement {
  int get cacheId {
    return int.parse(node.getAttribute('cacheId')!);
  }

  String get r_id {
    return node.getAttribute(
      'id',
      namespace:
          'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
    )!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('cacheId') == null) {
      errors.add(
        "Missing required attribute 'cacheId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute(
          'id',
          namespace:
              'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
        ) ==
        null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_FileSharing(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get readOnlyRecommended {
    return node.getAttribute('readOnlyRecommended') == '1' ||
        node.getAttribute('readOnlyRecommended') == 'true' ||
        node.getAttribute('readOnlyRecommended') == 'on';
  }

  String? get userName {
    return node.getAttribute('userName');
  }

  String? get reservationPassword {
    return node.getAttribute('reservationPassword');
  }

  String? get algorithmName {
    return node.getAttribute('algorithmName');
  }

  String? get hashValue {
    return node.getAttribute('hashValue');
  }

  String? get saltValue {
    return node.getAttribute('saltValue');
  }

  int? get spinCount {
    return node.getAttribute('spinCount') != null
        ? int.tryParse(node.getAttribute('spinCount')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_OleSize(_i1.XmlElement node) implements _i1.XmlElement {
  String get ref {
    return node.getAttribute('ref')!;
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('ref') == null) {
      errors.add("Missing required attribute 'ref' in ${node.name.qualified}");
    }
    return errors;
  }
}

extension type S_CT_WorkbookProtection(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get workbookPassword {
    return node.getAttribute('workbookPassword');
  }

  String? get workbookPasswordCharacterSet {
    return node.getAttribute('workbookPasswordCharacterSet');
  }

  String? get revisionsPassword {
    return node.getAttribute('revisionsPassword');
  }

  String? get revisionsPasswordCharacterSet {
    return node.getAttribute('revisionsPasswordCharacterSet');
  }

  bool? get lockStructure {
    return node.getAttribute('lockStructure') == '1' ||
        node.getAttribute('lockStructure') == 'true' ||
        node.getAttribute('lockStructure') == 'on';
  }

  bool? get lockWindows {
    return node.getAttribute('lockWindows') == '1' ||
        node.getAttribute('lockWindows') == 'true' ||
        node.getAttribute('lockWindows') == 'on';
  }

  bool? get lockRevision {
    return node.getAttribute('lockRevision') == '1' ||
        node.getAttribute('lockRevision') == 'true' ||
        node.getAttribute('lockRevision') == 'on';
  }

  String? get revisionsAlgorithmName {
    return node.getAttribute('revisionsAlgorithmName');
  }

  String? get revisionsHashValue {
    return node.getAttribute('revisionsHashValue');
  }

  String? get revisionsSaltValue {
    return node.getAttribute('revisionsSaltValue');
  }

  int? get revisionsSpinCount {
    return node.getAttribute('revisionsSpinCount') != null
        ? int.tryParse(node.getAttribute('revisionsSpinCount')!)
        : null;
  }

  String? get workbookAlgorithmName {
    return node.getAttribute('workbookAlgorithmName');
  }

  String? get workbookHashValue {
    return node.getAttribute('workbookHashValue');
  }

  String? get workbookSaltValue {
    return node.getAttribute('workbookSaltValue');
  }

  int? get workbookSpinCount {
    return node.getAttribute('workbookSpinCount') != null
        ? int.tryParse(node.getAttribute('workbookSpinCount')!)
        : null;
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_WebPublishing(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get css {
    return node.getAttribute('css') == '1' ||
        node.getAttribute('css') == 'true' ||
        node.getAttribute('css') == 'on';
  }

  bool? get thicket {
    return node.getAttribute('thicket') == '1' ||
        node.getAttribute('thicket') == 'true' ||
        node.getAttribute('thicket') == 'on';
  }

  bool? get longFileNames {
    return node.getAttribute('longFileNames') == '1' ||
        node.getAttribute('longFileNames') == 'true' ||
        node.getAttribute('longFileNames') == 'on';
  }

  bool? get vml {
    return node.getAttribute('vml') == '1' ||
        node.getAttribute('vml') == 'true' ||
        node.getAttribute('vml') == 'on';
  }

  bool? get allowPng {
    return node.getAttribute('allowPng') == '1' ||
        node.getAttribute('allowPng') == 'true' ||
        node.getAttribute('allowPng') == 'on';
  }

  S_ST_TargetScreenSize? get targetScreenSize {
    return node.getAttribute('targetScreenSize') != null
        ? S_ST_TargetScreenSize.fromValue(
            node.getAttribute('targetScreenSize')!,
          )
        : null;
  }

  int? get dpi {
    return node.getAttribute('dpi') != null
        ? int.tryParse(node.getAttribute('dpi')!)
        : null;
  }

  int? get codePage {
    return node.getAttribute('codePage') != null
        ? int.tryParse(node.getAttribute('codePage')!)
        : null;
  }

  String? get characterSet {
    return node.getAttribute('characterSet');
  }

  List<String> validate() {
    final errors = <String>[];
    final v_targetScreenSize = node.getAttribute('targetScreenSize');
    if (v_targetScreenSize != null &&
        S_ST_TargetScreenSize.fromValue(v_targetScreenSize) == null) {
      errors.add(
        "Invalid enum value for attribute 'targetScreenSize' in ${node.name.qualified}: $v_targetScreenSize",
      );
    }
    return errors;
  }
}

extension type S_CT_FunctionGroups(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get builtInGroupCount {
    return node.getAttribute('builtInGroupCount') != null
        ? int.tryParse(node.getAttribute('builtInGroupCount')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'functionGroup',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_FunctionGroup(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_FunctionGroup(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute('name');
  }

  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type S_CT_WebPublishObjects(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get count {
    return node.getAttribute('count') != null
        ? int.tryParse(node.getAttribute('count')!)
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

  List<String> validate() {
    final errors = <String>[];
    for (final childNode in node.findElements(
      'webPublishObject',
      namespace: 'http://schemas.openxmlformats.org/spreadsheetml/2006/main',
    )) {
      errors.addAll(S_CT_WebPublishObject(childNode).validate());
    }
    return errors;
  }
}

extension type S_CT_WebPublishObject(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(node.getAttribute('id')!);
  }

  String get divId {
    return node.getAttribute('divId')!;
  }

  String? get sourceObject {
    return node.getAttribute('sourceObject');
  }

  String get destinationFile {
    return node.getAttribute('destinationFile')!;
  }

  String? get title {
    return node.getAttribute('title');
  }

  bool? get autoRepublish {
    return node.getAttribute('autoRepublish') == '1' ||
        node.getAttribute('autoRepublish') == 'true' ||
        node.getAttribute('autoRepublish') == 'on';
  }

  List<String> validate() {
    final errors = <String>[];
    if (node.getAttribute('id') == null) {
      errors.add("Missing required attribute 'id' in ${node.name.qualified}");
    }
    if (node.getAttribute('divId') == null) {
      errors.add(
        "Missing required attribute 'divId' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('destinationFile') == null) {
      errors.add(
        "Missing required attribute 'destinationFile' in ${node.name.qualified}",
      );
    }
    return errors;
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
