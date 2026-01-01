import 'package:open_xml/open_xml.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

void main() {
  group('SlideTransition', () {
    test('PushTransition generates correct XML', () {
      final transition = PushTransition(
        direction: P_ST_TransitionSideDirectionType.r,
        speed: P_ST_TransitionSpeed.fast,
      );

      final builder = XmlBuilder();
      builder.element(
        'root',
        namespaces: {
          'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        },
        nest: () => transition.build(builder),
      );
      final xml = builder.buildDocument().toXmlString();

      expect(xml, contains('<p:transition spd="fast">'));
      expect(xml, contains('<p:push dir="r"/>'));
    });

    test('WipeTransition generates correct XML', () {
      final transition = WipeTransition(
        direction: P_ST_TransitionSideDirectionType.d,
        speed: P_ST_TransitionSpeed.slow,
      );

      final builder = XmlBuilder();
      builder.element(
        'root',
        namespaces: {
          'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        },
        nest: () => transition.build(builder),
      );
      final xml = builder.buildDocument().toXmlString();

      expect(xml, contains('<p:transition spd="slow">'));
      expect(xml, contains('<p:wipe dir="d"/>'));
    });

    test('FadeTransition generates correct XML', () {
      final transition = FadeTransition();

      final builder = XmlBuilder();
      builder.element(
        'root',
        namespaces: {
          'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        },
        nest: () => transition.build(builder),
      );
      final xml = builder.buildDocument().toXmlString();

      expect(xml, contains('<p:transition>'));
      expect(xml, contains('<p:fade thruBlk="false"/>'));
    });

    test('CoverTransition generates correct XML', () {
      final transition = CoverTransition();

      final builder = XmlBuilder();
      builder.element(
        'root',
        namespaces: {
          'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        },
        nest: () => transition.build(builder),
      );
      final xml = builder.buildDocument().toXmlString();

      expect(xml, contains('<p:transition>'));
      expect(xml, contains('<p:cover/>'));
    });

    test('Advance attributes set correctly', () {
      final transition = FadeTransition(
        advanceOnClick: false,
        advanceAfterTime: 5000,
      );

      final builder = XmlBuilder();
      builder.element(
        'root',
        namespaces: {
          'http://schemas.openxmlformats.org/presentationml/2006/main': 'p',
        },
        nest: () => transition.build(builder),
      );
      final xml = builder.buildDocument().toXmlString();

      expect(xml, contains('advClick="false"'));
      expect(xml, contains('advTm="5000"'));
    });
  });
}
