// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:xml/xml.dart' as _i1;
import 'package:xml/xml.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';

extension Opc_CT_Relationships_Builder on _i1.XmlBuilder {
  void opc_ct_relationships({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/package/2006/relationships',
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children);
        },
      );
    } else {
      _buildBody(children);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children) {
    children?.call(this);
  }
}

extension Opc_CT_Relationship_Builder on _i1.XmlBuilder {
  void opc_ct_relationship({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/package/2006/relationships',
    Opc_ST_TargetMode? TargetMode,
    String? Target,
    String? Type,
    String? Id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, TargetMode, Target, Type, Id);
        },
      );
    } else {
      _buildBody(children, TargetMode, Target, Type, Id);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    Opc_ST_TargetMode? TargetMode,
    String? Target,
    String? Type,
    String? Id,
  ) {
    if (TargetMode != null) this.attribute('TargetMode', TargetMode!.value);
    if (Target != null) this.attribute('Target', Target);
    if (Type != null) this.attribute('Type', Type);
    if (Id != null) this.attribute('Id', Id);
    children?.call(this);
  }
}
