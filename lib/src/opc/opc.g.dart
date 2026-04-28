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

extension type Opc_CT_Relationships(_i1.XmlElement node)
    implements _i1.XmlElement {
  List<String> validate() {
    final errors = <String>[];
    return errors;
  }
}

extension type Opc_CT_Relationship(_i1.XmlElement node)
    implements _i1.XmlElement {
  Opc_ST_TargetMode? get TargetMode {
    return node.getAttribute('TargetMode') != null
        ? Opc_ST_TargetMode.fromValue(node.getAttribute('TargetMode')!)
        : null;
  }

  String get Target {
    return node.getAttribute('Target')!;
  }

  String get Type {
    return node.getAttribute('Type')!;
  }

  String get Id {
    return node.getAttribute('Id')!;
  }

  List<String> validate() {
    final errors = <String>[];
    final v_TargetMode = node.getAttribute('TargetMode');
    if (v_TargetMode != null &&
        Opc_ST_TargetMode.fromValue(v_TargetMode) == null) {
      errors.add(
        "Invalid enum value for attribute 'TargetMode' in ${node.name.qualified}: $v_TargetMode",
      );
    }
    if (node.getAttribute('Target') == null) {
      errors.add(
        "Missing required attribute 'Target' in ${node.name.qualified}",
      );
    }
    if (node.getAttribute('Type') == null) {
      errors.add("Missing required attribute 'Type' in ${node.name.qualified}");
    }
    if (node.getAttribute('Id') == null) {
      errors.add("Missing required attribute 'Id' in ${node.name.qualified}");
    }
    return errors;
  }
}

enum Opc_ST_TargetMode {
  External('External'),
  Internal('Internal');

  const Opc_ST_TargetMode(this.value);

  final String value;

  static Opc_ST_TargetMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}
