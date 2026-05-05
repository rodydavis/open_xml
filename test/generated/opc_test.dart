// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides, unused_local_variable
import 'package:test/test.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/opc/opc_builder.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';

void main() {
  group('opc generated tests', () {
    test('Test Opc_CT_Relationships with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/package/2006/relationships',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/package/2006/relationships',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = Opc_CT_Relationships(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test Opc_CT_Relationships with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/package/2006/relationships',
            'ns0',
          );
          builder.opc_ct_relationships(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/package/2006/relationships',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = Opc_CT_Relationships(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test Opc_CT_Relationship with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/package/2006/relationships',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/package/2006/relationships',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = Opc_CT_Relationship(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_TargetMode = instance.TargetMode;
      } catch (e) {}
      try {
        final v_Target = instance.Target;
      } catch (e) {}
      try {
        final v_Type = instance.Type;
      } catch (e) {}
      try {
        final v_Id = instance.Id;
      } catch (e) {}
    });
    test('Test Opc_CT_Relationship with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/package/2006/relationships',
            'ns0',
          );
          builder.opc_ct_relationship(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/package/2006/relationships',
            TargetMode: Opc_ST_TargetMode.values.first,
            Target: 'test',
            Type: 'test',
            Id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = Opc_CT_Relationship(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_TargetMode = instance.TargetMode;
      } catch (e) {}
      try {
        final v_Target = instance.Target;
      } catch (e) {}
      try {
        final v_Type = instance.Type;
      } catch (e) {}
      try {
        final v_Id = instance.Id;
      } catch (e) {}
    });
  });
}
