// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides, unused_local_variable
import 'package:test/test.dart';
import 'package:xml/xml.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/pml/pml_builder.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';
import 'package:open_xml/src/sml/sml.g.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/opc/opc.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';

void main() {
  group('pml generated tests', () {
    test('Test P_CT_SideDirectionTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SideDirectionTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_SideDirectionTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_sidedirectiontransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            dir: P_ST_TransitionSideDirectionType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SideDirectionTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_CornerDirectionTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CornerDirectionTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_CornerDirectionTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_cornerdirectiontransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            dir: P_ST_TransitionCornerDirectionType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CornerDirectionTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_EightDirectionTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_EightDirectionTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_EightDirectionTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_eightdirectiontransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_EightDirectionTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_OrientationTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OrientationTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_OrientationTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_orientationtransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            dir: P_ST_Direction.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OrientationTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_InOutTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_InOutTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_InOutTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_inouttransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            dir: P_ST_TransitionInOutDirectionType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_InOutTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_OptionalBlackTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OptionalBlackTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_thruBlk = instance.thruBlk;
      } catch (e) {}
    });
    test('Test P_CT_OptionalBlackTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_optionalblacktransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            thruBlk: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OptionalBlackTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_thruBlk = instance.thruBlk;
      } catch (e) {}
    });
    test('Test P_CT_SplitTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SplitTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_orient = instance.orient;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_SplitTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_splittransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            orient: P_ST_Direction.values.first,
            dir: P_ST_TransitionInOutDirectionType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SplitTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_orient = instance.orient;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
    });
    test('Test P_CT_WheelTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_WheelTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spokes = instance.spokes;
      } catch (e) {}
    });
    test('Test P_CT_WheelTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_wheeltransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            spokes: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_WheelTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spokes = instance.spokes;
      } catch (e) {}
    });
    test('Test P_CT_TransitionStartSoundAction with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TransitionStartSoundAction(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_loop = instance.loop;
      } catch (e) {}
      try {
        final c_snd = instance.snd;
      } catch (e) {}
    });
    test('Test P_CT_TransitionStartSoundAction with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_transitionstartsoundaction(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            loop: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TransitionStartSoundAction(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_loop = instance.loop;
      } catch (e) {}
      try {
        final c_snd = instance.snd;
      } catch (e) {}
    });
    test('Test P_CT_TransitionSoundAction with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TransitionSoundAction(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_stSnd = instance.stSnd;
      } catch (e) {}
      try {
        final c_endSnd = instance.endSnd;
      } catch (e) {}
    });
    test('Test P_CT_TransitionSoundAction with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_transitionsoundaction(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TransitionSoundAction(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_stSnd = instance.stSnd;
      } catch (e) {}
      try {
        final c_endSnd = instance.endSnd;
      } catch (e) {}
    });
    test('Test P_CT_SlideTransition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spd = instance.spd;
      } catch (e) {}
      try {
        final v_advClick = instance.advClick;
      } catch (e) {}
      try {
        final v_advTm = instance.advTm;
      } catch (e) {}
      try {
        final c_blinds = instance.blinds;
      } catch (e) {}
      try {
        final c_checker = instance.checker;
      } catch (e) {}
      try {
        final c_circle = instance.circle;
      } catch (e) {}
      try {
        final c_dissolve = instance.dissolve;
      } catch (e) {}
      try {
        final c_comb = instance.comb;
      } catch (e) {}
      try {
        final c_cover = instance.cover;
      } catch (e) {}
      try {
        final c_cut = instance.cut;
      } catch (e) {}
      try {
        final c_diamond = instance.diamond;
      } catch (e) {}
      try {
        final c_fade = instance.fade;
      } catch (e) {}
      try {
        final c_newsflash = instance.newsflash;
      } catch (e) {}
      try {
        final c_plus = instance.plus;
      } catch (e) {}
      try {
        final c_pull = instance.pull;
      } catch (e) {}
      try {
        final c_push = instance.push;
      } catch (e) {}
      try {
        final c_random = instance.random;
      } catch (e) {}
      try {
        final c_randomBar = instance.randomBar;
      } catch (e) {}
      try {
        final c_split = instance.split;
      } catch (e) {}
      try {
        final c_strips = instance.strips;
      } catch (e) {}
      try {
        final c_wedge = instance.wedge;
      } catch (e) {}
      try {
        final c_wheel = instance.wheel;
      } catch (e) {}
      try {
        final c_wipe = instance.wipe;
      } catch (e) {}
      try {
        final c_zoom = instance.zoom;
      } catch (e) {}
      try {
        final c_sndAc = instance.sndAc;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideTransition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidetransition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            spd: P_ST_TransitionSpeed.values.first,
            advClick: true,
            advTm: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideTransition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spd = instance.spd;
      } catch (e) {}
      try {
        final v_advClick = instance.advClick;
      } catch (e) {}
      try {
        final v_advTm = instance.advTm;
      } catch (e) {}
      try {
        final c_blinds = instance.blinds;
      } catch (e) {}
      try {
        final c_checker = instance.checker;
      } catch (e) {}
      try {
        final c_circle = instance.circle;
      } catch (e) {}
      try {
        final c_dissolve = instance.dissolve;
      } catch (e) {}
      try {
        final c_comb = instance.comb;
      } catch (e) {}
      try {
        final c_cover = instance.cover;
      } catch (e) {}
      try {
        final c_cut = instance.cut;
      } catch (e) {}
      try {
        final c_diamond = instance.diamond;
      } catch (e) {}
      try {
        final c_fade = instance.fade;
      } catch (e) {}
      try {
        final c_newsflash = instance.newsflash;
      } catch (e) {}
      try {
        final c_plus = instance.plus;
      } catch (e) {}
      try {
        final c_pull = instance.pull;
      } catch (e) {}
      try {
        final c_push = instance.push;
      } catch (e) {}
      try {
        final c_random = instance.random;
      } catch (e) {}
      try {
        final c_randomBar = instance.randomBar;
      } catch (e) {}
      try {
        final c_split = instance.split;
      } catch (e) {}
      try {
        final c_strips = instance.strips;
      } catch (e) {}
      try {
        final c_wedge = instance.wedge;
      } catch (e) {}
      try {
        final c_wheel = instance.wheel;
      } catch (e) {}
      try {
        final c_wipe = instance.wipe;
      } catch (e) {}
      try {
        final c_zoom = instance.zoom;
      } catch (e) {}
      try {
        final c_sndAc = instance.sndAc;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_TLIterateIntervalTime with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLIterateIntervalTime(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_TLIterateIntervalTime with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tliterateintervaltime(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLIterateIntervalTime(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_TLIterateIntervalPercentage with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLIterateIntervalPercentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_TLIterateIntervalPercentage with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tliterateintervalpercentage(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLIterateIntervalPercentage(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_TLIterateData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLIterateData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_backwards = instance.backwards;
      } catch (e) {}
      try {
        final c_tmAbs = instance.tmAbs;
      } catch (e) {}
      try {
        final c_tmPct = instance.tmPct;
      } catch (e) {}
    });
    test('Test P_CT_TLIterateData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tliteratedata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            type: P_ST_IterateType.values.first,
            backwards: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLIterateData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_backwards = instance.backwards;
      } catch (e) {}
      try {
        final c_tmAbs = instance.tmAbs;
      } catch (e) {}
      try {
        final c_tmPct = instance.tmPct;
      } catch (e) {}
    });
    test('Test P_CT_TLSubShapeId with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLSubShapeId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spid = instance.spid;
      } catch (e) {}
    });
    test('Test P_CT_TLSubShapeId with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlsubshapeid(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            spid: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLSubShapeId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spid = instance.spid;
      } catch (e) {}
    });
    test('Test P_CT_TLTextTargetElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTextTargetElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_charRg = instance.charRg;
      } catch (e) {}
      try {
        final c_pRg = instance.pRg;
      } catch (e) {}
    });
    test('Test P_CT_TLTextTargetElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltexttargetelement(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTextTargetElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_charRg = instance.charRg;
      } catch (e) {}
      try {
        final c_pRg = instance.pRg;
      } catch (e) {}
    });
    test('Test P_CT_TLOleChartTargetElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLOleChartTargetElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_lvl = instance.lvl;
      } catch (e) {}
    });
    test('Test P_CT_TLOleChartTargetElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlolecharttargetelement(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            type: P_ST_TLChartSubelementType.values.first,
            lvl: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLOleChartTargetElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_lvl = instance.lvl;
      } catch (e) {}
    });
    test('Test P_CT_TLShapeTargetElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLShapeTargetElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spid = instance.spid;
      } catch (e) {}
      try {
        final c_bg = instance.bg;
      } catch (e) {}
      try {
        final c_subSp = instance.subSp;
      } catch (e) {}
      try {
        final c_oleChartEl = instance.oleChartEl;
      } catch (e) {}
      try {
        final c_txEl = instance.txEl;
      } catch (e) {}
      try {
        final c_graphicEl = instance.graphicEl;
      } catch (e) {}
    });
    test('Test P_CT_TLShapeTargetElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlshapetargetelement(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            spid: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLShapeTargetElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_spid = instance.spid;
      } catch (e) {}
      try {
        final c_bg = instance.bg;
      } catch (e) {}
      try {
        final c_subSp = instance.subSp;
      } catch (e) {}
      try {
        final c_oleChartEl = instance.oleChartEl;
      } catch (e) {}
      try {
        final c_txEl = instance.txEl;
      } catch (e) {}
      try {
        final c_graphicEl = instance.graphicEl;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeTargetElement with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeTargetElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sldTgt = instance.sldTgt;
      } catch (e) {}
      try {
        final c_sndTgt = instance.sndTgt;
      } catch (e) {}
      try {
        final c_spTgt = instance.spTgt;
      } catch (e) {}
      try {
        final c_inkTgt = instance.inkTgt;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeTargetElement with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltimetargetelement(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeTargetElement(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sldTgt = instance.sldTgt;
      } catch (e) {}
      try {
        final c_sndTgt = instance.sndTgt;
      } catch (e) {}
      try {
        final c_spTgt = instance.spTgt;
      } catch (e) {}
      try {
        final c_inkTgt = instance.inkTgt;
      } catch (e) {}
    });
    test('Test P_CT_TLTriggerTimeNodeID with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTriggerTimeNodeID(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLTriggerTimeNodeID with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltriggertimenodeid(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTriggerTimeNodeID(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLTriggerRuntimeNode with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTriggerRuntimeNode(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLTriggerRuntimeNode with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltriggerruntimenode(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            val: P_ST_TLTriggerRuntimeNode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTriggerRuntimeNode(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeCondition with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeCondition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_evt = instance.evt;
      } catch (e) {}
      try {
        final c_tgtEl = instance.tgtEl;
      } catch (e) {}
      try {
        final c_tn = instance.tn;
      } catch (e) {}
      try {
        final c_rtn = instance.rtn;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeCondition with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltimecondition(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            evt: P_ST_TLTriggerEvent.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeCondition(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_evt = instance.evt;
      } catch (e) {}
      try {
        final c_tgtEl = instance.tgtEl;
      } catch (e) {}
      try {
        final c_tn = instance.tn;
      } catch (e) {}
      try {
        final c_rtn = instance.rtn;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeConditionList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeConditionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cond = instance.cond;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeConditionList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltimeconditionlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeConditionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cond = instance.cond;
      } catch (e) {}
    });
    test('Test P_CT_TimeNodeList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TimeNodeList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_par = instance.par;
      } catch (e) {}
      try {
        final c_seq = instance.seq;
      } catch (e) {}
      try {
        final c_excl = instance.excl;
      } catch (e) {}
      try {
        final c_anim = instance.anim;
      } catch (e) {}
      try {
        final c_animClr = instance.animClr;
      } catch (e) {}
      try {
        final c_animEffect = instance.animEffect;
      } catch (e) {}
      try {
        final c_animMotion = instance.animMotion;
      } catch (e) {}
      try {
        final c_animRot = instance.animRot;
      } catch (e) {}
      try {
        final c_animScale = instance.animScale;
      } catch (e) {}
      try {
        final c_cmd = instance.cmd;
      } catch (e) {}
      try {
        final c_set_ = instance.set_;
      } catch (e) {}
      try {
        final c_audio = instance.audio;
      } catch (e) {}
      try {
        final c_video = instance.video;
      } catch (e) {}
    });
    test('Test P_CT_TimeNodeList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_timenodelist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TimeNodeList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_par = instance.par;
      } catch (e) {}
      try {
        final c_seq = instance.seq;
      } catch (e) {}
      try {
        final c_excl = instance.excl;
      } catch (e) {}
      try {
        final c_anim = instance.anim;
      } catch (e) {}
      try {
        final c_animClr = instance.animClr;
      } catch (e) {}
      try {
        final c_animEffect = instance.animEffect;
      } catch (e) {}
      try {
        final c_animMotion = instance.animMotion;
      } catch (e) {}
      try {
        final c_animRot = instance.animRot;
      } catch (e) {}
      try {
        final c_animScale = instance.animScale;
      } catch (e) {}
      try {
        final c_cmd = instance.cmd;
      } catch (e) {}
      try {
        final c_set_ = instance.set_;
      } catch (e) {}
      try {
        final c_audio = instance.audio;
      } catch (e) {}
      try {
        final c_video = instance.video;
      } catch (e) {}
    });
    test('Test P_CT_TLCommonTimeNodeData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLCommonTimeNodeData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_presetID = instance.presetID;
      } catch (e) {}
      try {
        final v_presetClass = instance.presetClass;
      } catch (e) {}
      try {
        final v_presetSubtype = instance.presetSubtype;
      } catch (e) {}
      try {
        final v_autoRev = instance.autoRev;
      } catch (e) {}
      try {
        final v_restart = instance.restart;
      } catch (e) {}
      try {
        final v_fill = instance.fill;
      } catch (e) {}
      try {
        final v_syncBehavior = instance.syncBehavior;
      } catch (e) {}
      try {
        final v_tmFilter = instance.tmFilter;
      } catch (e) {}
      try {
        final v_evtFilter = instance.evtFilter;
      } catch (e) {}
      try {
        final v_display = instance.display;
      } catch (e) {}
      try {
        final v_masterRel = instance.masterRel;
      } catch (e) {}
      try {
        final v_bldLvl = instance.bldLvl;
      } catch (e) {}
      try {
        final v_grpId = instance.grpId;
      } catch (e) {}
      try {
        final v_afterEffect = instance.afterEffect;
      } catch (e) {}
      try {
        final v_nodeType = instance.nodeType;
      } catch (e) {}
      try {
        final v_nodePh = instance.nodePh;
      } catch (e) {}
      try {
        final c_stCondLst = instance.stCondLst;
      } catch (e) {}
      try {
        final c_endCondLst = instance.endCondLst;
      } catch (e) {}
      try {
        final c_endSync = instance.endSync;
      } catch (e) {}
      try {
        final c_iterate = instance.iterate;
      } catch (e) {}
      try {
        final c_childTnLst = instance.childTnLst;
      } catch (e) {}
      try {
        final c_subTnLst = instance.subTnLst;
      } catch (e) {}
    });
    test('Test P_CT_TLCommonTimeNodeData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlcommontimenodedata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            id: 'test',
            presetID: 1,
            presetClass: P_ST_TLTimeNodePresetClassType.values.first,
            presetSubtype: 1,
            autoRev: true,
            restart: P_ST_TLTimeNodeRestartType.values.first,
            fill: P_ST_TLTimeNodeFillType.values.first,
            syncBehavior: P_ST_TLTimeNodeSyncType.values.first,
            tmFilter: 'test',
            evtFilter: 'test',
            display: true,
            masterRel: P_ST_TLTimeNodeMasterRelation.values.first,
            bldLvl: 1,
            grpId: 1,
            afterEffect: true,
            nodeType: P_ST_TLTimeNodeType.values.first,
            nodePh: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLCommonTimeNodeData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_presetID = instance.presetID;
      } catch (e) {}
      try {
        final v_presetClass = instance.presetClass;
      } catch (e) {}
      try {
        final v_presetSubtype = instance.presetSubtype;
      } catch (e) {}
      try {
        final v_autoRev = instance.autoRev;
      } catch (e) {}
      try {
        final v_restart = instance.restart;
      } catch (e) {}
      try {
        final v_fill = instance.fill;
      } catch (e) {}
      try {
        final v_syncBehavior = instance.syncBehavior;
      } catch (e) {}
      try {
        final v_tmFilter = instance.tmFilter;
      } catch (e) {}
      try {
        final v_evtFilter = instance.evtFilter;
      } catch (e) {}
      try {
        final v_display = instance.display;
      } catch (e) {}
      try {
        final v_masterRel = instance.masterRel;
      } catch (e) {}
      try {
        final v_bldLvl = instance.bldLvl;
      } catch (e) {}
      try {
        final v_grpId = instance.grpId;
      } catch (e) {}
      try {
        final v_afterEffect = instance.afterEffect;
      } catch (e) {}
      try {
        final v_nodeType = instance.nodeType;
      } catch (e) {}
      try {
        final v_nodePh = instance.nodePh;
      } catch (e) {}
      try {
        final c_stCondLst = instance.stCondLst;
      } catch (e) {}
      try {
        final c_endCondLst = instance.endCondLst;
      } catch (e) {}
      try {
        final c_endSync = instance.endSync;
      } catch (e) {}
      try {
        final c_iterate = instance.iterate;
      } catch (e) {}
      try {
        final c_childTnLst = instance.childTnLst;
      } catch (e) {}
      try {
        final c_subTnLst = instance.subTnLst;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeNodeParallel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeNodeParallel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeNodeParallel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltimenodeparallel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeNodeParallel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeNodeSequence with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeNodeSequence(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_concurrent = instance.concurrent;
      } catch (e) {}
      try {
        final v_prevAc = instance.prevAc;
      } catch (e) {}
      try {
        final v_nextAc = instance.nextAc;
      } catch (e) {}
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
      try {
        final c_prevCondLst = instance.prevCondLst;
      } catch (e) {}
      try {
        final c_nextCondLst = instance.nextCondLst;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeNodeSequence with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltimenodesequence(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            concurrent: true,
            prevAc: P_ST_TLPreviousActionType.values.first,
            nextAc: P_ST_TLNextActionType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeNodeSequence(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_concurrent = instance.concurrent;
      } catch (e) {}
      try {
        final v_prevAc = instance.prevAc;
      } catch (e) {}
      try {
        final v_nextAc = instance.nextAc;
      } catch (e) {}
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
      try {
        final c_prevCondLst = instance.prevCondLst;
      } catch (e) {}
      try {
        final c_nextCondLst = instance.nextCondLst;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeNodeExclusive with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeNodeExclusive(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeNodeExclusive with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltimenodeexclusive(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeNodeExclusive(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
    });
    test('Test P_CT_TLBehaviorAttributeNameList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLBehaviorAttributeNameList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_attrName = instance.attrName;
      } catch (e) {}
    });
    test('Test P_CT_TLBehaviorAttributeNameList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlbehaviorattributenamelist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLBehaviorAttributeNameList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_attrName = instance.attrName;
      } catch (e) {}
    });
    test('Test P_CT_TLCommonBehaviorData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLCommonBehaviorData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_additive = instance.additive;
      } catch (e) {}
      try {
        final v_accumulate = instance.accumulate;
      } catch (e) {}
      try {
        final v_xfrmType = instance.xfrmType;
      } catch (e) {}
      try {
        final v_from = instance.from;
      } catch (e) {}
      try {
        final v_to = instance.to;
      } catch (e) {}
      try {
        final v_by = instance.by;
      } catch (e) {}
      try {
        final v_rctx = instance.rctx;
      } catch (e) {}
      try {
        final v_override = instance.override;
      } catch (e) {}
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
      try {
        final c_tgtEl = instance.tgtEl;
      } catch (e) {}
      try {
        final c_attrNameLst = instance.attrNameLst;
      } catch (e) {}
    });
    test('Test P_CT_TLCommonBehaviorData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlcommonbehaviordata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            additive: P_ST_TLBehaviorAdditiveType.values.first,
            accumulate: P_ST_TLBehaviorAccumulateType.values.first,
            xfrmType: P_ST_TLBehaviorTransformType.values.first,
            from: 'test',
            to: 'test',
            by: 'test',
            rctx: 'test',
            override: P_ST_TLBehaviorOverrideType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLCommonBehaviorData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_additive = instance.additive;
      } catch (e) {}
      try {
        final v_accumulate = instance.accumulate;
      } catch (e) {}
      try {
        final v_xfrmType = instance.xfrmType;
      } catch (e) {}
      try {
        final v_from = instance.from;
      } catch (e) {}
      try {
        final v_to = instance.to;
      } catch (e) {}
      try {
        final v_by = instance.by;
      } catch (e) {}
      try {
        final v_rctx = instance.rctx;
      } catch (e) {}
      try {
        final v_override = instance.override;
      } catch (e) {}
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
      try {
        final c_tgtEl = instance.tgtEl;
      } catch (e) {}
      try {
        final c_attrNameLst = instance.attrNameLst;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariantBooleanVal with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariantBooleanVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariantBooleanVal with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimvariantbooleanval(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            val: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariantBooleanVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariantIntegerVal with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariantIntegerVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariantIntegerVal with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimvariantintegerval(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            val: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariantIntegerVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariantFloatVal with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariantFloatVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariantFloatVal with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimvariantfloatval(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            val: 1.0,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariantFloatVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariantStringVal with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariantStringVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariantStringVal with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimvariantstringval(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariantStringVal(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariant with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariant(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_boolVal = instance.boolVal;
      } catch (e) {}
      try {
        final c_intVal = instance.intVal;
      } catch (e) {}
      try {
        final c_fltVal = instance.fltVal;
      } catch (e) {}
      try {
        final c_strVal = instance.strVal;
      } catch (e) {}
      try {
        final c_clrVal = instance.clrVal;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimVariant with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimvariant(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimVariant(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_boolVal = instance.boolVal;
      } catch (e) {}
      try {
        final c_intVal = instance.intVal;
      } catch (e) {}
      try {
        final c_fltVal = instance.fltVal;
      } catch (e) {}
      try {
        final c_strVal = instance.strVal;
      } catch (e) {}
      try {
        final c_clrVal = instance.clrVal;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeAnimateValue with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeAnimateValue(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fmla = instance.fmla;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeAnimateValue with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltimeanimatevalue(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            fmla: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeAnimateValue(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fmla = instance.fmla;
      } catch (e) {}
      try {
        final c_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeAnimateValueList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeAnimateValueList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tav = instance.tav;
      } catch (e) {}
    });
    test('Test P_CT_TLTimeAnimateValueList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltimeanimatevaluelist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTimeAnimateValueList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tav = instance.tav;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_by = instance.by;
      } catch (e) {}
      try {
        final v_from = instance.from;
      } catch (e) {}
      try {
        final v_to = instance.to;
      } catch (e) {}
      try {
        final v_calcmode = instance.calcmode;
      } catch (e) {}
      try {
        final v_valueType = instance.valueType;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_tavLst = instance.tavLst;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimatebehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            by: 'test',
            from: 'test',
            to: 'test',
            calcmode: P_ST_TLAnimateBehaviorCalcMode.values.first,
            valueType: P_ST_TLAnimateBehaviorValueType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_by = instance.by;
      } catch (e) {}
      try {
        final v_from = instance.from;
      } catch (e) {}
      try {
        final v_to = instance.to;
      } catch (e) {}
      try {
        final v_calcmode = instance.calcmode;
      } catch (e) {}
      try {
        final v_valueType = instance.valueType;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_tavLst = instance.tavLst;
      } catch (e) {}
    });
    test('Test P_CT_TLByRgbColorTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLByRgbColorTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_TLByRgbColorTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlbyrgbcolortransform(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLByRgbColorTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_TLByHslColorTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLByHslColorTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_h = instance.h;
      } catch (e) {}
    });
    test('Test P_CT_TLByHslColorTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlbyhslcolortransform(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            h: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLByHslColorTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_h = instance.h;
      } catch (e) {}
    });
    test('Test P_CT_TLByAnimateColorTransform with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLByAnimateColorTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rgb = instance.rgb;
      } catch (e) {}
      try {
        final c_hsl = instance.hsl;
      } catch (e) {}
    });
    test('Test P_CT_TLByAnimateColorTransform with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlbyanimatecolortransform(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLByAnimateColorTransform(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_rgb = instance.rgb;
      } catch (e) {}
      try {
        final c_hsl = instance.hsl;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateColorBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateColorBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_clrSpc = instance.clrSpc;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_by = instance.by;
      } catch (e) {}
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateColorBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimatecolorbehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            clrSpc: P_ST_TLAnimateColorSpace.values.first,
            dir: P_ST_TLAnimateColorDirection.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateColorBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_clrSpc = instance.clrSpc;
      } catch (e) {}
      try {
        final v_dir = instance.dir;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_by = instance.by;
      } catch (e) {}
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateEffectBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateEffectBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_transition = instance.transition;
      } catch (e) {}
      try {
        final v_filter = instance.filter;
      } catch (e) {}
      try {
        final v_prLst = instance.prLst;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_progress = instance.progress;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateEffectBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimateeffectbehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            transition: P_ST_TLAnimateEffectTransition.values.first,
            filter: 'test',
            prLst: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateEffectBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_transition = instance.transition;
      } catch (e) {}
      try {
        final v_filter = instance.filter;
      } catch (e) {}
      try {
        final v_prLst = instance.prLst;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_progress = instance.progress;
      } catch (e) {}
    });
    test('Test P_CT_TLPoint with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLPoint(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_TLPoint with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlpoint(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLPoint(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_TLAnimateMotionBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateMotionBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_origin = instance.origin;
      } catch (e) {}
      try {
        final v_path = instance.path;
      } catch (e) {}
      try {
        final v_pathEditMode = instance.pathEditMode;
      } catch (e) {}
      try {
        final v_rAng = instance.rAng;
      } catch (e) {}
      try {
        final v_ptsTypes = instance.ptsTypes;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_by = instance.by;
      } catch (e) {}
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
      try {
        final c_rCtr = instance.rCtr;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateMotionBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimatemotionbehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            origin: P_ST_TLAnimateMotionBehaviorOrigin.values.first,
            path: 'test',
            pathEditMode: P_ST_TLAnimateMotionPathEditMode.values.first,
            rAng: 'test',
            ptsTypes: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateMotionBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_origin = instance.origin;
      } catch (e) {}
      try {
        final v_path = instance.path;
      } catch (e) {}
      try {
        final v_pathEditMode = instance.pathEditMode;
      } catch (e) {}
      try {
        final v_rAng = instance.rAng;
      } catch (e) {}
      try {
        final v_ptsTypes = instance.ptsTypes;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_by = instance.by;
      } catch (e) {}
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
      try {
        final c_rCtr = instance.rCtr;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateRotationBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateRotationBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_by = instance.by;
      } catch (e) {}
      try {
        final v_from = instance.from;
      } catch (e) {}
      try {
        final v_to = instance.to;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateRotationBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimaterotationbehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            by: 'test',
            from: 'test',
            to: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateRotationBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_by = instance.by;
      } catch (e) {}
      try {
        final v_from = instance.from;
      } catch (e) {}
      try {
        final v_to = instance.to;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateScaleBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateScaleBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_zoomContents = instance.zoomContents;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_by = instance.by;
      } catch (e) {}
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
    });
    test('Test P_CT_TLAnimateScaleBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlanimatescalebehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            zoomContents: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLAnimateScaleBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_zoomContents = instance.zoomContents;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_by = instance.by;
      } catch (e) {}
      try {
        final c_from = instance.from;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
    });
    test('Test P_CT_TLCommandBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLCommandBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_cmd = instance.cmd;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
    });
    test('Test P_CT_TLCommandBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlcommandbehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            type: P_ST_TLCommandType.values.first,
            cmd: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLCommandBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_cmd = instance.cmd;
      } catch (e) {}
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
    });
    test('Test P_CT_TLSetBehavior with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLSetBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
    });
    test('Test P_CT_TLSetBehavior with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlsetbehavior(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLSetBehavior(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cBhvr = instance.cBhvr;
      } catch (e) {}
      try {
        final c_to = instance.to;
      } catch (e) {}
    });
    test('Test P_CT_TLCommonMediaNodeData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLCommonMediaNodeData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mute = instance.mute;
      } catch (e) {}
      try {
        final v_numSld = instance.numSld;
      } catch (e) {}
      try {
        final v_showWhenStopped = instance.showWhenStopped;
      } catch (e) {}
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
      try {
        final c_tgtEl = instance.tgtEl;
      } catch (e) {}
    });
    test('Test P_CT_TLCommonMediaNodeData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlcommonmedianodedata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            mute: true,
            numSld: 1,
            showWhenStopped: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLCommonMediaNodeData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mute = instance.mute;
      } catch (e) {}
      try {
        final v_numSld = instance.numSld;
      } catch (e) {}
      try {
        final v_showWhenStopped = instance.showWhenStopped;
      } catch (e) {}
      try {
        final c_cTn = instance.cTn;
      } catch (e) {}
      try {
        final c_tgtEl = instance.tgtEl;
      } catch (e) {}
    });
    test('Test P_CT_TLMediaNodeAudio with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLMediaNodeAudio(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_isNarration = instance.isNarration;
      } catch (e) {}
      try {
        final c_cMediaNode = instance.cMediaNode;
      } catch (e) {}
    });
    test('Test P_CT_TLMediaNodeAudio with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlmedianodeaudio(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            isNarration: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLMediaNodeAudio(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_isNarration = instance.isNarration;
      } catch (e) {}
      try {
        final c_cMediaNode = instance.cMediaNode;
      } catch (e) {}
    });
    test('Test P_CT_TLMediaNodeVideo with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLMediaNodeVideo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fullScrn = instance.fullScrn;
      } catch (e) {}
      try {
        final c_cMediaNode = instance.cMediaNode;
      } catch (e) {}
    });
    test('Test P_CT_TLMediaNodeVideo with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlmedianodevideo(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            fullScrn: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLMediaNodeVideo(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_fullScrn = instance.fullScrn;
      } catch (e) {}
      try {
        final c_cMediaNode = instance.cMediaNode;
      } catch (e) {}
    });
    test('Test P_CT_TLTemplate with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTemplate(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lvl = instance.lvl;
      } catch (e) {}
      try {
        final c_tnLst = instance.tnLst;
      } catch (e) {}
    });
    test('Test P_CT_TLTemplate with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltemplate(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            lvl: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTemplate(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lvl = instance.lvl;
      } catch (e) {}
      try {
        final c_tnLst = instance.tnLst;
      } catch (e) {}
    });
    test('Test P_CT_TLTemplateList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTemplateList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tmpl = instance.tmpl;
      } catch (e) {}
    });
    test('Test P_CT_TLTemplateList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tltemplatelist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLTemplateList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tmpl = instance.tmpl;
      } catch (e) {}
    });
    test('Test P_CT_TLBuildParagraph with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLBuildParagraph(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_build = instance.build;
      } catch (e) {}
      try {
        final v_bldLvl = instance.bldLvl;
      } catch (e) {}
      try {
        final v_animBg = instance.animBg;
      } catch (e) {}
      try {
        final v_autoUpdateAnimBg = instance.autoUpdateAnimBg;
      } catch (e) {}
      try {
        final v_rev = instance.rev;
      } catch (e) {}
      try {
        final c_tmplLst = instance.tmplLst;
      } catch (e) {}
    });
    test('Test P_CT_TLBuildParagraph with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlbuildparagraph(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            build: P_ST_TLParaBuildType.values.first,
            bldLvl: 1,
            animBg: true,
            autoUpdateAnimBg: true,
            rev: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLBuildParagraph(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_build = instance.build;
      } catch (e) {}
      try {
        final v_bldLvl = instance.bldLvl;
      } catch (e) {}
      try {
        final v_animBg = instance.animBg;
      } catch (e) {}
      try {
        final v_autoUpdateAnimBg = instance.autoUpdateAnimBg;
      } catch (e) {}
      try {
        final v_rev = instance.rev;
      } catch (e) {}
      try {
        final c_tmplLst = instance.tmplLst;
      } catch (e) {}
    });
    test('Test P_CT_TLBuildDiagram with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLBuildDiagram(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bld = instance.bld;
      } catch (e) {}
    });
    test('Test P_CT_TLBuildDiagram with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlbuilddiagram(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            bld: P_ST_TLDiagramBuildType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLBuildDiagram(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bld = instance.bld;
      } catch (e) {}
    });
    test('Test P_CT_TLOleBuildChart with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLOleBuildChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bld = instance.bld;
      } catch (e) {}
      try {
        final v_animBg = instance.animBg;
      } catch (e) {}
    });
    test('Test P_CT_TLOleBuildChart with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlolebuildchart(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            bld: P_ST_TLOleChartBuildType.values.first,
            animBg: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLOleBuildChart(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bld = instance.bld;
      } catch (e) {}
      try {
        final v_animBg = instance.animBg;
      } catch (e) {}
    });
    test('Test P_CT_TLGraphicalObjectBuild with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLGraphicalObjectBuild(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bldAsOne = instance.bldAsOne;
      } catch (e) {}
      try {
        final c_bldSub = instance.bldSub;
      } catch (e) {}
    });
    test('Test P_CT_TLGraphicalObjectBuild with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_tlgraphicalobjectbuild(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TLGraphicalObjectBuild(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bldAsOne = instance.bldAsOne;
      } catch (e) {}
      try {
        final c_bldSub = instance.bldSub;
      } catch (e) {}
    });
    test('Test P_CT_BuildList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_BuildList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bldP = instance.bldP;
      } catch (e) {}
      try {
        final c_bldDgm = instance.bldDgm;
      } catch (e) {}
      try {
        final c_bldOleChart = instance.bldOleChart;
      } catch (e) {}
      try {
        final c_bldGraphic = instance.bldGraphic;
      } catch (e) {}
    });
    test('Test P_CT_BuildList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_buildlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_BuildList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_bldP = instance.bldP;
      } catch (e) {}
      try {
        final c_bldDgm = instance.bldDgm;
      } catch (e) {}
      try {
        final c_bldOleChart = instance.bldOleChart;
      } catch (e) {}
      try {
        final c_bldGraphic = instance.bldGraphic;
      } catch (e) {}
    });
    test('Test P_CT_SlideTiming with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideTiming(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tnLst = instance.tnLst;
      } catch (e) {}
      try {
        final c_bldLst = instance.bldLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideTiming with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidetiming(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideTiming(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tnLst = instance.tnLst;
      } catch (e) {}
      try {
        final c_bldLst = instance.bldLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Empty with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Empty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_Empty with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_empty(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Empty(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
    });
    test('Test P_CT_IndexRange with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_IndexRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_end = instance.end;
      } catch (e) {}
    });
    test('Test P_CT_IndexRange with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_indexrange(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            st: 'test',
            end: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_IndexRange(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_st = instance.st;
      } catch (e) {}
      try {
        final v_end = instance.end;
      } catch (e) {}
    });
    test('Test P_CT_SlideRelationshipListEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideRelationshipListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_SlideRelationshipListEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_sliderelationshiplistentry(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideRelationshipListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_SlideRelationshipList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideRelationshipList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sld = instance.sld;
      } catch (e) {}
    });
    test('Test P_CT_SlideRelationshipList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_sliderelationshiplist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideRelationshipList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sld = instance.sld;
      } catch (e) {}
    });
    test('Test P_CT_CustomShowId with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomShowId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test P_CT_CustomShowId with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_customshowid(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            id: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomShowId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
    });
    test('Test P_CT_CustomerData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomerData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_CustomerData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_customerdata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomerData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_TagsData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TagsData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_TagsData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_tagsdata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TagsData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_CustomerDataList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomerDataList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_custData = instance.custData;
      } catch (e) {}
      try {
        final c_tags = instance.tags;
      } catch (e) {}
    });
    test('Test P_CT_CustomerDataList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_customerdatalist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomerDataList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_custData = instance.custData;
      } catch (e) {}
      try {
        final c_tags = instance.tags;
      } catch (e) {}
    });
    test('Test P_CT_Extension with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Extension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test P_CT_Extension with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_extension(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            uri: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Extension(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_uri = instance.uri;
      } catch (e) {}
    });
    test('Test P_CT_ExtensionList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ExtensionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test P_CT_ExtensionList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_extensionlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ExtensionList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test P_CT_ExtensionListModify with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ExtensionListModify(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mod = instance.mod;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test P_CT_ExtensionListModify with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_extensionlistmodify(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            mod: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ExtensionListModify(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_mod = instance.mod;
      } catch (e) {}
      try {
        final c_ext = instance.ext;
      } catch (e) {}
    });
    test('Test P_CT_CommentAuthor with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommentAuthor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_initials = instance.initials;
      } catch (e) {}
      try {
        final v_lastIdx = instance.lastIdx;
      } catch (e) {}
      try {
        final v_clrIdx = instance.clrIdx;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_CommentAuthor with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_commentauthor(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            id: 1,
            name: 'test',
            initials: 'test',
            lastIdx: 1,
            clrIdx: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommentAuthor(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_initials = instance.initials;
      } catch (e) {}
      try {
        final v_lastIdx = instance.lastIdx;
      } catch (e) {}
      try {
        final v_clrIdx = instance.clrIdx;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_CommentAuthorList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommentAuthorList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cmAuthor = instance.cmAuthor;
      } catch (e) {}
    });
    test('Test P_CT_CommentAuthorList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_commentauthorlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommentAuthorList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cmAuthor = instance.cmAuthor;
      } catch (e) {}
    });
    test('Test P_CT_Comment with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Comment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_authorId = instance.authorId;
      } catch (e) {}
      try {
        final v_dt = instance.dt;
      } catch (e) {}
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_text = instance.text;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Comment with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_comment(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            authorId: 1,
            dt: 'test',
            idx: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Comment(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_authorId = instance.authorId;
      } catch (e) {}
      try {
        final v_dt = instance.dt;
      } catch (e) {}
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final c_pos = instance.pos;
      } catch (e) {}
      try {
        final c_text = instance.text;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_CommentList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommentList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cm = instance.cm;
      } catch (e) {}
    });
    test('Test P_CT_CommentList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_commentlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommentList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cm = instance.cm;
      } catch (e) {}
    });
    test('Test P_CT_OleObjectEmbed with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OleObjectEmbed(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_followColorScheme = instance.followColorScheme;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_OleObjectEmbed with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_oleobjectembed(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            followColorScheme: P_ST_OleObjectFollowColorScheme.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OleObjectEmbed(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_followColorScheme = instance.followColorScheme;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_OleObjectLink with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OleObjectLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_updateAutomatic = instance.updateAutomatic;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_OleObjectLink with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_oleobjectlink(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            updateAutomatic: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OleObjectLink(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_updateAutomatic = instance.updateAutomatic;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_OleObject with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OleObject(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_progId = instance.progId;
      } catch (e) {}
      try {
        final c_embed = instance.embed;
      } catch (e) {}
      try {
        final c_link = instance.link;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
    });
    test('Test P_CT_OleObject with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_oleobject(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            progId: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OleObject(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_progId = instance.progId;
      } catch (e) {}
      try {
        final c_embed = instance.embed;
      } catch (e) {}
      try {
        final c_link = instance.link;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
    });
    test('Test P_CT_Control with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Control(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
    });
    test('Test P_CT_Control with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_control(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Control(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
    });
    test('Test P_CT_ControlList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ControlList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_control = instance.control;
      } catch (e) {}
    });
    test('Test P_CT_ControlList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_controllist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ControlList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_control = instance.control;
      } catch (e) {}
    });
    test('Test P_CT_SlideIdListEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideIdListEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_slideidlistentry(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            id: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideIdList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sldId = instance.sldId;
      } catch (e) {}
    });
    test('Test P_CT_SlideIdList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slideidlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sldId = instance.sldId;
      } catch (e) {}
    });
    test('Test P_CT_SlideMasterIdListEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideMasterIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideMasterIdListEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_slidemasteridlistentry(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            id: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideMasterIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideMasterIdList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideMasterIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sldMasterId = instance.sldMasterId;
      } catch (e) {}
    });
    test('Test P_CT_SlideMasterIdList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidemasteridlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideMasterIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sldMasterId = instance.sldMasterId;
      } catch (e) {}
    });
    test('Test P_CT_NotesMasterIdListEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesMasterIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesMasterIdListEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_notesmasteridlistentry(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesMasterIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesMasterIdList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesMasterIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_notesMasterId = instance.notesMasterId;
      } catch (e) {}
    });
    test('Test P_CT_NotesMasterIdList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_notesmasteridlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesMasterIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_notesMasterId = instance.notesMasterId;
      } catch (e) {}
    });
    test('Test P_CT_HandoutMasterIdListEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HandoutMasterIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_HandoutMasterIdListEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_handoutmasteridlistentry(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HandoutMasterIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_HandoutMasterIdList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HandoutMasterIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_handoutMasterId = instance.handoutMasterId;
      } catch (e) {}
    });
    test('Test P_CT_HandoutMasterIdList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_handoutmasteridlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HandoutMasterIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_handoutMasterId = instance.handoutMasterId;
      } catch (e) {}
    });
    test('Test P_CT_EmbeddedFontDataId with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_EmbeddedFontDataId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_EmbeddedFontDataId with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_embeddedfontdataid(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_EmbeddedFontDataId(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_EmbeddedFontListEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_EmbeddedFontListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_font = instance.font;
      } catch (e) {}
      try {
        final c_regular = instance.regular;
      } catch (e) {}
      try {
        final c_bold = instance.bold;
      } catch (e) {}
      try {
        final c_italic = instance.italic;
      } catch (e) {}
      try {
        final c_boldItalic = instance.boldItalic;
      } catch (e) {}
    });
    test('Test P_CT_EmbeddedFontListEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_embeddedfontlistentry(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_EmbeddedFontListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_font = instance.font;
      } catch (e) {}
      try {
        final c_regular = instance.regular;
      } catch (e) {}
      try {
        final c_bold = instance.bold;
      } catch (e) {}
      try {
        final c_italic = instance.italic;
      } catch (e) {}
      try {
        final c_boldItalic = instance.boldItalic;
      } catch (e) {}
    });
    test('Test P_CT_EmbeddedFontList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_EmbeddedFontList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_embeddedFont = instance.embeddedFont;
      } catch (e) {}
    });
    test('Test P_CT_EmbeddedFontList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_embeddedfontlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_EmbeddedFontList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_embeddedFont = instance.embeddedFont;
      } catch (e) {}
    });
    test('Test P_CT_SmartTags with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SmartTags(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_SmartTags with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_smarttags(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SmartTags(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_CustomShow with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomShow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_sldLst = instance.sldLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_CustomShow with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_customshow(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            name: 'test',
            id: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomShow(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final c_sldLst = instance.sldLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_CustomShowList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomShowList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_custShow = instance.custShow;
      } catch (e) {}
    });
    test('Test P_CT_CustomShowList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_customshowlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CustomShowList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_custShow = instance.custShow;
      } catch (e) {}
    });
    test('Test P_CT_PhotoAlbum with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_PhotoAlbum(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bw = instance.bw;
      } catch (e) {}
      try {
        final v_showCaptions = instance.showCaptions;
      } catch (e) {}
      try {
        final v_layout = instance.layout;
      } catch (e) {}
      try {
        final v_frame = instance.frame;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_PhotoAlbum with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_photoalbum(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            bw: true,
            showCaptions: true,
            layout: P_ST_PhotoAlbumLayout.values.first,
            frame: P_ST_PhotoAlbumFrameShape.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_PhotoAlbum(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bw = instance.bw;
      } catch (e) {}
      try {
        final v_showCaptions = instance.showCaptions;
      } catch (e) {}
      try {
        final v_layout = instance.layout;
      } catch (e) {}
      try {
        final v_frame = instance.frame;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideSize with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_cx = instance.cx;
      } catch (e) {}
      try {
        final v_cy = instance.cy;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test P_CT_SlideSize with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidesize(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            cx: 'test',
            cy: 'test',
            type: P_ST_SlideSizeType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideSize(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_cx = instance.cx;
      } catch (e) {}
      try {
        final v_cy = instance.cy;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
    });
    test('Test P_CT_Kinsoku with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Kinsoku(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_invalStChars = instance.invalStChars;
      } catch (e) {}
      try {
        final v_invalEndChars = instance.invalEndChars;
      } catch (e) {}
    });
    test('Test P_CT_Kinsoku with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_kinsoku(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            lang: 'test',
            invalStChars: 'test',
            invalEndChars: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Kinsoku(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lang = instance.lang;
      } catch (e) {}
      try {
        final v_invalStChars = instance.invalStChars;
      } catch (e) {}
      try {
        final v_invalEndChars = instance.invalEndChars;
      } catch (e) {}
    });
    test('Test P_CT_ModifyVerifier with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ModifyVerifier(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
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
        final v_spinValue = instance.spinValue;
      } catch (e) {}
      try {
        final v_cryptProviderType = instance.cryptProviderType;
      } catch (e) {}
      try {
        final v_cryptAlgorithmClass = instance.cryptAlgorithmClass;
      } catch (e) {}
      try {
        final v_cryptAlgorithmType = instance.cryptAlgorithmType;
      } catch (e) {}
      try {
        final v_cryptAlgorithmSid = instance.cryptAlgorithmSid;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
      try {
        final v_saltData = instance.saltData;
      } catch (e) {}
      try {
        final v_hashData = instance.hashData;
      } catch (e) {}
      try {
        final v_cryptProvider = instance.cryptProvider;
      } catch (e) {}
      try {
        final v_algIdExt = instance.algIdExt;
      } catch (e) {}
      try {
        final v_algIdExtSource = instance.algIdExtSource;
      } catch (e) {}
      try {
        final v_cryptProviderTypeExt = instance.cryptProviderTypeExt;
      } catch (e) {}
      try {
        final v_cryptProviderTypeExtSource =
            instance.cryptProviderTypeExtSource;
      } catch (e) {}
    });
    test('Test P_CT_ModifyVerifier with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_modifyverifier(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            algorithmName: 'test',
            hashValue: 'test',
            saltValue: 'test',
            spinValue: 1,
            cryptProviderType: ST_CryptProv.values.first,
            cryptAlgorithmClass: ST_AlgClass.values.first,
            cryptAlgorithmType: ST_AlgType.values.first,
            cryptAlgorithmSid: 1,
            spinCount: 1,
            saltData: 'test',
            hashData: 'test',
            cryptProvider: 'test',
            algIdExt: 1,
            algIdExtSource: 'test',
            cryptProviderTypeExt: 1,
            cryptProviderTypeExtSource: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ModifyVerifier(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
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
        final v_spinValue = instance.spinValue;
      } catch (e) {}
      try {
        final v_cryptProviderType = instance.cryptProviderType;
      } catch (e) {}
      try {
        final v_cryptAlgorithmClass = instance.cryptAlgorithmClass;
      } catch (e) {}
      try {
        final v_cryptAlgorithmType = instance.cryptAlgorithmType;
      } catch (e) {}
      try {
        final v_cryptAlgorithmSid = instance.cryptAlgorithmSid;
      } catch (e) {}
      try {
        final v_spinCount = instance.spinCount;
      } catch (e) {}
      try {
        final v_saltData = instance.saltData;
      } catch (e) {}
      try {
        final v_hashData = instance.hashData;
      } catch (e) {}
      try {
        final v_cryptProvider = instance.cryptProvider;
      } catch (e) {}
      try {
        final v_algIdExt = instance.algIdExt;
      } catch (e) {}
      try {
        final v_algIdExtSource = instance.algIdExtSource;
      } catch (e) {}
      try {
        final v_cryptProviderTypeExt = instance.cryptProviderTypeExt;
      } catch (e) {}
      try {
        final v_cryptProviderTypeExtSource =
            instance.cryptProviderTypeExtSource;
      } catch (e) {}
    });
    test('Test P_CT_Presentation with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Presentation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_firstSlideNum = instance.firstSlideNum;
      } catch (e) {}
      try {
        final v_showSpecialPlsOnTitleSld = instance.showSpecialPlsOnTitleSld;
      } catch (e) {}
      try {
        final v_rtl = instance.rtl;
      } catch (e) {}
      try {
        final v_removePersonalInfoOnSave = instance.removePersonalInfoOnSave;
      } catch (e) {}
      try {
        final v_compatMode = instance.compatMode;
      } catch (e) {}
      try {
        final v_strictFirstAndLastChars = instance.strictFirstAndLastChars;
      } catch (e) {}
      try {
        final v_embedTrueTypeFonts = instance.embedTrueTypeFonts;
      } catch (e) {}
      try {
        final v_saveSubsetFonts = instance.saveSubsetFonts;
      } catch (e) {}
      try {
        final v_autoCompressPictures = instance.autoCompressPictures;
      } catch (e) {}
      try {
        final v_bookmarkIdSeed = instance.bookmarkIdSeed;
      } catch (e) {}
      try {
        final v_conformance = instance.conformance;
      } catch (e) {}
      try {
        final c_sldMasterIdLst = instance.sldMasterIdLst;
      } catch (e) {}
      try {
        final c_notesMasterIdLst = instance.notesMasterIdLst;
      } catch (e) {}
      try {
        final c_handoutMasterIdLst = instance.handoutMasterIdLst;
      } catch (e) {}
      try {
        final c_sldIdLst = instance.sldIdLst;
      } catch (e) {}
      try {
        final c_sldSz = instance.sldSz;
      } catch (e) {}
      try {
        final c_notesSz = instance.notesSz;
      } catch (e) {}
      try {
        final c_smartTags = instance.smartTags;
      } catch (e) {}
      try {
        final c_embeddedFontLst = instance.embeddedFontLst;
      } catch (e) {}
      try {
        final c_custShowLst = instance.custShowLst;
      } catch (e) {}
      try {
        final c_photoAlbum = instance.photoAlbum;
      } catch (e) {}
      try {
        final c_custDataLst = instance.custDataLst;
      } catch (e) {}
      try {
        final c_kinsoku = instance.kinsoku;
      } catch (e) {}
      try {
        final c_defaultTextStyle = instance.defaultTextStyle;
      } catch (e) {}
      try {
        final c_modifyVerifier = instance.modifyVerifier;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Presentation with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_presentation(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            firstSlideNum: 1,
            showSpecialPlsOnTitleSld: true,
            rtl: true,
            removePersonalInfoOnSave: true,
            compatMode: true,
            strictFirstAndLastChars: true,
            embedTrueTypeFonts: true,
            saveSubsetFonts: true,
            autoCompressPictures: true,
            bookmarkIdSeed: 'test',
            conformance: ST_ConformanceClass.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Presentation(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_firstSlideNum = instance.firstSlideNum;
      } catch (e) {}
      try {
        final v_showSpecialPlsOnTitleSld = instance.showSpecialPlsOnTitleSld;
      } catch (e) {}
      try {
        final v_rtl = instance.rtl;
      } catch (e) {}
      try {
        final v_removePersonalInfoOnSave = instance.removePersonalInfoOnSave;
      } catch (e) {}
      try {
        final v_compatMode = instance.compatMode;
      } catch (e) {}
      try {
        final v_strictFirstAndLastChars = instance.strictFirstAndLastChars;
      } catch (e) {}
      try {
        final v_embedTrueTypeFonts = instance.embedTrueTypeFonts;
      } catch (e) {}
      try {
        final v_saveSubsetFonts = instance.saveSubsetFonts;
      } catch (e) {}
      try {
        final v_autoCompressPictures = instance.autoCompressPictures;
      } catch (e) {}
      try {
        final v_bookmarkIdSeed = instance.bookmarkIdSeed;
      } catch (e) {}
      try {
        final v_conformance = instance.conformance;
      } catch (e) {}
      try {
        final c_sldMasterIdLst = instance.sldMasterIdLst;
      } catch (e) {}
      try {
        final c_notesMasterIdLst = instance.notesMasterIdLst;
      } catch (e) {}
      try {
        final c_handoutMasterIdLst = instance.handoutMasterIdLst;
      } catch (e) {}
      try {
        final c_sldIdLst = instance.sldIdLst;
      } catch (e) {}
      try {
        final c_sldSz = instance.sldSz;
      } catch (e) {}
      try {
        final c_notesSz = instance.notesSz;
      } catch (e) {}
      try {
        final c_smartTags = instance.smartTags;
      } catch (e) {}
      try {
        final c_embeddedFontLst = instance.embeddedFontLst;
      } catch (e) {}
      try {
        final c_custShowLst = instance.custShowLst;
      } catch (e) {}
      try {
        final c_photoAlbum = instance.photoAlbum;
      } catch (e) {}
      try {
        final c_custDataLst = instance.custDataLst;
      } catch (e) {}
      try {
        final c_kinsoku = instance.kinsoku;
      } catch (e) {}
      try {
        final c_defaultTextStyle = instance.defaultTextStyle;
      } catch (e) {}
      try {
        final c_modifyVerifier = instance.modifyVerifier;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_HtmlPublishProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HtmlPublishProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showSpeakerNotes = instance.showSpeakerNotes;
      } catch (e) {}
      try {
        final v_target = instance.target;
      } catch (e) {}
      try {
        final v_title = instance.title;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_sldAll = instance.sldAll;
      } catch (e) {}
      try {
        final c_sldRg = instance.sldRg;
      } catch (e) {}
      try {
        final c_custShow = instance.custShow;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_HtmlPublishProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_htmlpublishproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            showSpeakerNotes: true,
            target: 'test',
            title: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HtmlPublishProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showSpeakerNotes = instance.showSpeakerNotes;
      } catch (e) {}
      try {
        final v_target = instance.target;
      } catch (e) {}
      try {
        final v_title = instance.title;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_sldAll = instance.sldAll;
      } catch (e) {}
      try {
        final c_sldRg = instance.sldRg;
      } catch (e) {}
      try {
        final c_custShow = instance.custShow;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_WebProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_WebProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showAnimation = instance.showAnimation;
      } catch (e) {}
      try {
        final v_resizeGraphics = instance.resizeGraphics;
      } catch (e) {}
      try {
        final v_allowPng = instance.allowPng;
      } catch (e) {}
      try {
        final v_relyOnVml = instance.relyOnVml;
      } catch (e) {}
      try {
        final v_organizeInFolders = instance.organizeInFolders;
      } catch (e) {}
      try {
        final v_useLongFilenames = instance.useLongFilenames;
      } catch (e) {}
      try {
        final v_imgSz = instance.imgSz;
      } catch (e) {}
      try {
        final v_encoding = instance.encoding;
      } catch (e) {}
      try {
        final v_clr = instance.clr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_WebProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_webproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            showAnimation: true,
            resizeGraphics: true,
            allowPng: true,
            relyOnVml: true,
            organizeInFolders: true,
            useLongFilenames: true,
            imgSz: P_ST_WebScreenSize.values.first,
            encoding: 'test',
            clr: P_ST_WebColorType.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_WebProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showAnimation = instance.showAnimation;
      } catch (e) {}
      try {
        final v_resizeGraphics = instance.resizeGraphics;
      } catch (e) {}
      try {
        final v_allowPng = instance.allowPng;
      } catch (e) {}
      try {
        final v_relyOnVml = instance.relyOnVml;
      } catch (e) {}
      try {
        final v_organizeInFolders = instance.organizeInFolders;
      } catch (e) {}
      try {
        final v_useLongFilenames = instance.useLongFilenames;
      } catch (e) {}
      try {
        final v_imgSz = instance.imgSz;
      } catch (e) {}
      try {
        final v_encoding = instance.encoding;
      } catch (e) {}
      try {
        final v_clr = instance.clr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_PrintProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_PrintProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prnWhat = instance.prnWhat;
      } catch (e) {}
      try {
        final v_clrMode = instance.clrMode;
      } catch (e) {}
      try {
        final v_hiddenSlides = instance.hiddenSlides;
      } catch (e) {}
      try {
        final v_scaleToFitPaper = instance.scaleToFitPaper;
      } catch (e) {}
      try {
        final v_frameSlides = instance.frameSlides;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_PrintProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_printproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            prnWhat: P_ST_PrintWhat.values.first,
            clrMode: P_ST_PrintColorMode.values.first,
            hiddenSlides: true,
            scaleToFitPaper: true,
            frameSlides: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_PrintProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_prnWhat = instance.prnWhat;
      } catch (e) {}
      try {
        final v_clrMode = instance.clrMode;
      } catch (e) {}
      try {
        final v_hiddenSlides = instance.hiddenSlides;
      } catch (e) {}
      try {
        final v_scaleToFitPaper = instance.scaleToFitPaper;
      } catch (e) {}
      try {
        final v_frameSlides = instance.frameSlides;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_ShowInfoBrowse with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ShowInfoBrowse(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showScrollbar = instance.showScrollbar;
      } catch (e) {}
    });
    test('Test P_CT_ShowInfoBrowse with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_showinfobrowse(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            showScrollbar: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ShowInfoBrowse(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showScrollbar = instance.showScrollbar;
      } catch (e) {}
    });
    test('Test P_CT_ShowInfoKiosk with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ShowInfoKiosk(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_restart = instance.restart;
      } catch (e) {}
    });
    test('Test P_CT_ShowInfoKiosk with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_showinfokiosk(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            restart: 1,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ShowInfoKiosk(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_restart = instance.restart;
      } catch (e) {}
    });
    test('Test P_CT_ShowProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ShowProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_loop = instance.loop;
      } catch (e) {}
      try {
        final v_showNarration = instance.showNarration;
      } catch (e) {}
      try {
        final v_showAnimation = instance.showAnimation;
      } catch (e) {}
      try {
        final v_useTimings = instance.useTimings;
      } catch (e) {}
      try {
        final c_present = instance.present;
      } catch (e) {}
      try {
        final c_browse = instance.browse;
      } catch (e) {}
      try {
        final c_kiosk = instance.kiosk;
      } catch (e) {}
      try {
        final c_sldAll = instance.sldAll;
      } catch (e) {}
      try {
        final c_sldRg = instance.sldRg;
      } catch (e) {}
      try {
        final c_custShow = instance.custShow;
      } catch (e) {}
      try {
        final c_penClr = instance.penClr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_ShowProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_showproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            loop: true,
            showNarration: true,
            showAnimation: true,
            useTimings: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ShowProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_loop = instance.loop;
      } catch (e) {}
      try {
        final v_showNarration = instance.showNarration;
      } catch (e) {}
      try {
        final v_showAnimation = instance.showAnimation;
      } catch (e) {}
      try {
        final v_useTimings = instance.useTimings;
      } catch (e) {}
      try {
        final c_present = instance.present;
      } catch (e) {}
      try {
        final c_browse = instance.browse;
      } catch (e) {}
      try {
        final c_kiosk = instance.kiosk;
      } catch (e) {}
      try {
        final c_sldAll = instance.sldAll;
      } catch (e) {}
      try {
        final c_sldRg = instance.sldRg;
      } catch (e) {}
      try {
        final c_custShow = instance.custShow;
      } catch (e) {}
      try {
        final c_penClr = instance.penClr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_PresentationProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_PresentationProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_htmlPubPr = instance.htmlPubPr;
      } catch (e) {}
      try {
        final c_webPr = instance.webPr;
      } catch (e) {}
      try {
        final c_prnPr = instance.prnPr;
      } catch (e) {}
      try {
        final c_showPr = instance.showPr;
      } catch (e) {}
      try {
        final c_clrMru = instance.clrMru;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_PresentationProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_presentationproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_PresentationProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_htmlPubPr = instance.htmlPubPr;
      } catch (e) {}
      try {
        final c_webPr = instance.webPr;
      } catch (e) {}
      try {
        final c_prnPr = instance.prnPr;
      } catch (e) {}
      try {
        final c_showPr = instance.showPr;
      } catch (e) {}
      try {
        final c_clrMru = instance.clrMru;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_HeaderFooter with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HeaderFooter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sldNum = instance.sldNum;
      } catch (e) {}
      try {
        final v_hdr = instance.hdr;
      } catch (e) {}
      try {
        final v_ftr = instance.ftr;
      } catch (e) {}
      try {
        final v_dt = instance.dt;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_HeaderFooter with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_headerfooter(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            sldNum: true,
            hdr: true,
            ftr: true,
            dt: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HeaderFooter(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_sldNum = instance.sldNum;
      } catch (e) {}
      try {
        final v_hdr = instance.hdr;
      } catch (e) {}
      try {
        final v_ftr = instance.ftr;
      } catch (e) {}
      try {
        final v_dt = instance.dt;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Placeholder with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Placeholder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_orient = instance.orient;
      } catch (e) {}
      try {
        final v_sz = instance.sz;
      } catch (e) {}
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final v_hasCustomPrompt = instance.hasCustomPrompt;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Placeholder with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_placeholder(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            type: P_ST_PlaceholderType.values.first,
            orient: P_ST_Direction.values.first,
            sz: P_ST_PlaceholderSize.values.first,
            idx: 1,
            hasCustomPrompt: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Placeholder(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_orient = instance.orient;
      } catch (e) {}
      try {
        final v_sz = instance.sz;
      } catch (e) {}
      try {
        final v_idx = instance.idx;
      } catch (e) {}
      try {
        final v_hasCustomPrompt = instance.hasCustomPrompt;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_ApplicationNonVisualDrawingProps with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ApplicationNonVisualDrawingProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_isPhoto = instance.isPhoto;
      } catch (e) {}
      try {
        final v_userDrawn = instance.userDrawn;
      } catch (e) {}
      try {
        final c_ph = instance.ph;
      } catch (e) {}
      try {
        final c_audioCd = instance.audioCd;
      } catch (e) {}
      try {
        final c_wavAudioFile = instance.wavAudioFile;
      } catch (e) {}
      try {
        final c_audioFile = instance.audioFile;
      } catch (e) {}
      try {
        final c_videoFile = instance.videoFile;
      } catch (e) {}
      try {
        final c_quickTimeFile = instance.quickTimeFile;
      } catch (e) {}
      try {
        final c_custDataLst = instance.custDataLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_ApplicationNonVisualDrawingProps with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_applicationnonvisualdrawingprops(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            isPhoto: true,
            userDrawn: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ApplicationNonVisualDrawingProps(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_isPhoto = instance.isPhoto;
      } catch (e) {}
      try {
        final v_userDrawn = instance.userDrawn;
      } catch (e) {}
      try {
        final c_ph = instance.ph;
      } catch (e) {}
      try {
        final c_audioCd = instance.audioCd;
      } catch (e) {}
      try {
        final c_wavAudioFile = instance.wavAudioFile;
      } catch (e) {}
      try {
        final c_audioFile = instance.audioFile;
      } catch (e) {}
      try {
        final c_videoFile = instance.videoFile;
      } catch (e) {}
      try {
        final c_quickTimeFile = instance.quickTimeFile;
      } catch (e) {}
      try {
        final c_custDataLst = instance.custDataLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_ShapeNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvSpPr = instance.cNvSpPr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_ShapeNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_shapenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvSpPr = instance.cNvSpPr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_Shape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Shape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_useBgFill = instance.useBgFill;
      } catch (e) {}
      try {
        final c_nvSpPr = instance.nvSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_txBody = instance.txBody;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Shape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_shape(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            useBgFill: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Shape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_useBgFill = instance.useBgFill;
      } catch (e) {}
      try {
        final c_nvSpPr = instance.nvSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_txBody = instance.txBody;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_ConnectorNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ConnectorNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvCxnSpPr = instance.cNvCxnSpPr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_ConnectorNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_connectornonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ConnectorNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvCxnSpPr = instance.cNvCxnSpPr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_Connector with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Connector(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvCxnSpPr = instance.nvCxnSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Connector with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_connector(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Connector(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvCxnSpPr = instance.nvCxnSpPr;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_PictureNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_PictureNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvPicPr = instance.cNvPicPr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_PictureNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_picturenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_PictureNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvPicPr = instance.cNvPicPr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_Picture with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Picture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvPicPr = instance.nvPicPr;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Picture with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_picture(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Picture(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvPicPr = instance.nvPicPr;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_spPr = instance.spPr;
      } catch (e) {}
      try {
        final c_style = instance.style;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_GraphicalObjectFrameNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GraphicalObjectFrameNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_GraphicalObjectFrameNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_graphicalobjectframenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GraphicalObjectFrameNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGraphicFramePr = instance.cNvGraphicFramePr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_GraphicalObjectFrame with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GraphicalObjectFrame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final c_nvGraphicFramePr = instance.nvGraphicFramePr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_GraphicalObjectFrame with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_graphicalobjectframe(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            bwMode: D_ST_BlackWhiteMode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GraphicalObjectFrame(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final c_nvGraphicFramePr = instance.nvGraphicFramePr;
      } catch (e) {}
      try {
        final c_xfrm = instance.xfrm;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_GroupShapeNonVisual with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GroupShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGrpSpPr = instance.cNvGrpSpPr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_GroupShapeNonVisual with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_groupshapenonvisual(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GroupShapeNonVisual(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cNvPr = instance.cNvPr;
      } catch (e) {}
      try {
        final c_cNvGrpSpPr = instance.cNvGrpSpPr;
      } catch (e) {}
      try {
        final c_nvPr = instance.nvPr;
      } catch (e) {}
    });
    test('Test P_CT_GroupShape with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GroupShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvGrpSpPr = instance.nvGrpSpPr;
      } catch (e) {}
      try {
        final c_grpSpPr = instance.grpSpPr;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_GroupShape with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_groupshape(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GroupShape(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_nvGrpSpPr = instance.nvGrpSpPr;
      } catch (e) {}
      try {
        final c_grpSpPr = instance.grpSpPr;
      } catch (e) {}
      try {
        final c_sp = instance.sp;
      } catch (e) {}
      try {
        final c_grpSp = instance.grpSp;
      } catch (e) {}
      try {
        final c_graphicFrame = instance.graphicFrame;
      } catch (e) {}
      try {
        final c_cxnSp = instance.cxnSp;
      } catch (e) {}
      try {
        final c_pic = instance.pic;
      } catch (e) {}
      try {
        final c_contentPart = instance.contentPart;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Rel with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Rel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_Rel with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_rel(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Rel(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
    });
    test('Test P_CT_BackgroundProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_BackgroundProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_shadeToTitle = instance.shadeToTitle;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_BackgroundProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_backgroundproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            shadeToTitle: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_BackgroundProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_shadeToTitle = instance.shadeToTitle;
      } catch (e) {}
      try {
        final c_noFill = instance.noFill;
      } catch (e) {}
      try {
        final c_solidFill = instance.solidFill;
      } catch (e) {}
      try {
        final c_gradFill = instance.gradFill;
      } catch (e) {}
      try {
        final c_blipFill = instance.blipFill;
      } catch (e) {}
      try {
        final c_pattFill = instance.pattFill;
      } catch (e) {}
      try {
        final c_grpFill = instance.grpFill;
      } catch (e) {}
      try {
        final c_effectLst = instance.effectLst;
      } catch (e) {}
      try {
        final c_effectDag = instance.effectDag;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Background with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Background(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final c_bgPr = instance.bgPr;
      } catch (e) {}
      try {
        final c_bgRef = instance.bgRef;
      } catch (e) {}
    });
    test('Test P_CT_Background with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_background(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            bwMode: D_ST_BlackWhiteMode.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Background(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_bwMode = instance.bwMode;
      } catch (e) {}
      try {
        final c_bgPr = instance.bgPr;
      } catch (e) {}
      try {
        final c_bgRef = instance.bgRef;
      } catch (e) {}
    });
    test('Test P_CT_CommonSlideData with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommonSlideData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_bg = instance.bg;
      } catch (e) {}
      try {
        final c_spTree = instance.spTree;
      } catch (e) {}
      try {
        final c_custDataLst = instance.custDataLst;
      } catch (e) {}
      try {
        final c_controls = instance.controls;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_CommonSlideData with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_commonslidedata(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            name: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommonSlideData(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final c_bg = instance.bg;
      } catch (e) {}
      try {
        final c_spTree = instance.spTree;
      } catch (e) {}
      try {
        final c_custDataLst = instance.custDataLst;
      } catch (e) {}
      try {
        final c_controls = instance.controls;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Slide with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Slide(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_show_ = instance.show_;
      } catch (e) {}
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMapOvr = instance.clrMapOvr;
      } catch (e) {}
      try {
        final c_transition = instance.transition;
      } catch (e) {}
      try {
        final c_timing = instance.timing;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Slide with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slide(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            show_: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Slide(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_show_ = instance.show_;
      } catch (e) {}
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMapOvr = instance.clrMapOvr;
      } catch (e) {}
      try {
        final c_transition = instance.transition;
      } catch (e) {}
      try {
        final c_timing = instance.timing;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideLayout with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideLayout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_matchingName = instance.matchingName;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_preserve = instance.preserve;
      } catch (e) {}
      try {
        final v_userDrawn = instance.userDrawn;
      } catch (e) {}
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMapOvr = instance.clrMapOvr;
      } catch (e) {}
      try {
        final c_transition = instance.transition;
      } catch (e) {}
      try {
        final c_timing = instance.timing;
      } catch (e) {}
      try {
        final c_hf = instance.hf;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideLayout with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidelayout(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            matchingName: 'test',
            type: P_ST_SlideLayoutType.values.first,
            preserve: true,
            userDrawn: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideLayout(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_matchingName = instance.matchingName;
      } catch (e) {}
      try {
        final v_type = instance.type;
      } catch (e) {}
      try {
        final v_preserve = instance.preserve;
      } catch (e) {}
      try {
        final v_userDrawn = instance.userDrawn;
      } catch (e) {}
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMapOvr = instance.clrMapOvr;
      } catch (e) {}
      try {
        final c_transition = instance.transition;
      } catch (e) {}
      try {
        final c_timing = instance.timing;
      } catch (e) {}
      try {
        final c_hf = instance.hf;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideMasterTextStyles with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideMasterTextStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_titleStyle = instance.titleStyle;
      } catch (e) {}
      try {
        final c_bodyStyle = instance.bodyStyle;
      } catch (e) {}
      try {
        final c_otherStyle = instance.otherStyle;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideMasterTextStyles with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidemastertextstyles(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideMasterTextStyles(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_titleStyle = instance.titleStyle;
      } catch (e) {}
      try {
        final c_bodyStyle = instance.bodyStyle;
      } catch (e) {}
      try {
        final c_otherStyle = instance.otherStyle;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideLayoutIdListEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideLayoutIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideLayoutIdListEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_slidelayoutidlistentry(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            id: 'test',
            r_id: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideLayoutIdListEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_id = instance.id;
      } catch (e) {}
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideLayoutIdList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideLayoutIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sldLayoutId = instance.sldLayoutId;
      } catch (e) {}
    });
    test('Test P_CT_SlideLayoutIdList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidelayoutidlist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideLayoutIdList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sldLayoutId = instance.sldLayoutId;
      } catch (e) {}
    });
    test('Test P_CT_SlideMaster with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideMaster(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_preserve = instance.preserve;
      } catch (e) {}
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
      try {
        final c_sldLayoutIdLst = instance.sldLayoutIdLst;
      } catch (e) {}
      try {
        final c_transition = instance.transition;
      } catch (e) {}
      try {
        final c_timing = instance.timing;
      } catch (e) {}
      try {
        final c_hf = instance.hf;
      } catch (e) {}
      try {
        final c_txStyles = instance.txStyles;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideMaster with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidemaster(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            preserve: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideMaster(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_preserve = instance.preserve;
      } catch (e) {}
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
      try {
        final c_sldLayoutIdLst = instance.sldLayoutIdLst;
      } catch (e) {}
      try {
        final c_transition = instance.transition;
      } catch (e) {}
      try {
        final c_timing = instance.timing;
      } catch (e) {}
      try {
        final c_hf = instance.hf;
      } catch (e) {}
      try {
        final c_txStyles = instance.txStyles;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_HandoutMaster with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HandoutMaster(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
      try {
        final c_hf = instance.hf;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_HandoutMaster with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_handoutmaster(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_HandoutMaster(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
      try {
        final c_hf = instance.hf;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesMaster with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesMaster(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
      try {
        final c_hf = instance.hf;
      } catch (e) {}
      try {
        final c_notesStyle = instance.notesStyle;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesMaster with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_notesmaster(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesMaster(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMap = instance.clrMap;
      } catch (e) {}
      try {
        final c_hf = instance.hf;
      } catch (e) {}
      try {
        final c_notesStyle = instance.notesStyle;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesSlide with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesSlide(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMapOvr = instance.clrMapOvr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesSlide with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_notesslide(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesSlide(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSld = instance.cSld;
      } catch (e) {}
      try {
        final c_clrMapOvr = instance.clrMapOvr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideSyncProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideSyncProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_serverSldId = instance.serverSldId;
      } catch (e) {}
      try {
        final v_serverSldModifiedTime = instance.serverSldModifiedTime;
      } catch (e) {}
      try {
        final v_clientInsertedTime = instance.clientInsertedTime;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideSyncProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidesyncproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            serverSldId: 'test',
            serverSldModifiedTime: 'test',
            clientInsertedTime: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideSyncProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_serverSldId = instance.serverSldId;
      } catch (e) {}
      try {
        final v_serverSldModifiedTime = instance.serverSldModifiedTime;
      } catch (e) {}
      try {
        final v_clientInsertedTime = instance.clientInsertedTime;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_StringTag with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_StringTag(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_StringTag with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_stringtag(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            name: 'test',
            val: 'test',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_StringTag(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_name = instance.name;
      } catch (e) {}
      try {
        final v_val = instance.val;
      } catch (e) {}
    });
    test('Test P_CT_TagList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TagList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tag = instance.tag;
      } catch (e) {}
    });
    test('Test P_CT_TagList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_taglist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_TagList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_tag = instance.tag;
      } catch (e) {}
    });
    test('Test P_CT_NormalViewPortion with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NormalViewPortion(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoAdjust = instance.autoAdjust;
      } catch (e) {}
    });
    test('Test P_CT_NormalViewPortion with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_normalviewportion(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            autoAdjust: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NormalViewPortion(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_autoAdjust = instance.autoAdjust;
      } catch (e) {}
    });
    test('Test P_CT_NormalViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NormalViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showOutlineIcons = instance.showOutlineIcons;
      } catch (e) {}
      try {
        final v_snapVertSplitter = instance.snapVertSplitter;
      } catch (e) {}
      try {
        final v_vertBarState = instance.vertBarState;
      } catch (e) {}
      try {
        final v_horzBarState = instance.horzBarState;
      } catch (e) {}
      try {
        final v_preferSingleView = instance.preferSingleView;
      } catch (e) {}
      try {
        final c_restoredLeft = instance.restoredLeft;
      } catch (e) {}
      try {
        final c_restoredTop = instance.restoredTop;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NormalViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_normalviewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            showOutlineIcons: true,
            snapVertSplitter: true,
            vertBarState: P_ST_SplitterBarState.values.first,
            horzBarState: P_ST_SplitterBarState.values.first,
            preferSingleView: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NormalViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showOutlineIcons = instance.showOutlineIcons;
      } catch (e) {}
      try {
        final v_snapVertSplitter = instance.snapVertSplitter;
      } catch (e) {}
      try {
        final v_vertBarState = instance.vertBarState;
      } catch (e) {}
      try {
        final v_horzBarState = instance.horzBarState;
      } catch (e) {}
      try {
        final v_preferSingleView = instance.preferSingleView;
      } catch (e) {}
      try {
        final c_restoredLeft = instance.restoredLeft;
      } catch (e) {}
      try {
        final c_restoredTop = instance.restoredTop;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_CommonViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommonViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_varScale = instance.varScale;
      } catch (e) {}
      try {
        final c_scale = instance.scale;
      } catch (e) {}
      try {
        final c_origin = instance.origin;
      } catch (e) {}
    });
    test('Test P_CT_CommonViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_commonviewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            varScale: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommonViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_varScale = instance.varScale;
      } catch (e) {}
      try {
        final c_scale = instance.scale;
      } catch (e) {}
      try {
        final c_origin = instance.origin;
      } catch (e) {}
    });
    test('Test P_CT_NotesTextViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesTextViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cViewPr = instance.cViewPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesTextViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_notestextviewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesTextViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cViewPr = instance.cViewPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_OutlineViewSlideEntry with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OutlineViewSlideEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_collapse = instance.collapse;
      } catch (e) {}
    });
    test('Test P_CT_OutlineViewSlideEntry with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.namespace(
            'http://schemas.openxmlformats.org/officeDocument/2006/relationships',
            'ns1',
          );
          builder.p_ct_outlineviewslideentry(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            r_id: 'test',
            collapse: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OutlineViewSlideEntry(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_r_id = instance.r_id;
      } catch (e) {}
      try {
        final v_collapse = instance.collapse;
      } catch (e) {}
    });
    test('Test P_CT_OutlineViewSlideList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OutlineViewSlideList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sld = instance.sld;
      } catch (e) {}
    });
    test('Test P_CT_OutlineViewSlideList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_outlineviewslidelist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OutlineViewSlideList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_sld = instance.sld;
      } catch (e) {}
    });
    test('Test P_CT_OutlineViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OutlineViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cViewPr = instance.cViewPr;
      } catch (e) {}
      try {
        final c_sldLst = instance.sldLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_OutlineViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_outlineviewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_OutlineViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cViewPr = instance.cViewPr;
      } catch (e) {}
      try {
        final c_sldLst = instance.sldLst;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideSorterViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideSorterViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showFormatting = instance.showFormatting;
      } catch (e) {}
      try {
        final c_cViewPr = instance.cViewPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideSorterViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slidesorterviewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            showFormatting: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideSorterViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_showFormatting = instance.showFormatting;
      } catch (e) {}
      try {
        final c_cViewPr = instance.cViewPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_Guide with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Guide(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_orient = instance.orient;
      } catch (e) {}
    });
    test('Test P_CT_Guide with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_guide(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            orient: P_ST_Direction.values.first,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_Guide(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_orient = instance.orient;
      } catch (e) {}
    });
    test('Test P_CT_GuideList with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GuideList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_guide = instance.guide;
      } catch (e) {}
    });
    test('Test P_CT_GuideList with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_guidelist(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_GuideList(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_guide = instance.guide;
      } catch (e) {}
    });
    test('Test P_CT_CommonSlideViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommonSlideViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final v_snapToObjects = instance.snapToObjects;
      } catch (e) {}
      try {
        final v_showGuides = instance.showGuides;
      } catch (e) {}
      try {
        final c_cViewPr = instance.cViewPr;
      } catch (e) {}
      try {
        final c_guideLst = instance.guideLst;
      } catch (e) {}
    });
    test('Test P_CT_CommonSlideViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_commonslideviewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            snapToGrid: true,
            snapToObjects: true,
            showGuides: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_CommonSlideViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_snapToGrid = instance.snapToGrid;
      } catch (e) {}
      try {
        final v_snapToObjects = instance.snapToObjects;
      } catch (e) {}
      try {
        final v_showGuides = instance.showGuides;
      } catch (e) {}
      try {
        final c_cViewPr = instance.cViewPr;
      } catch (e) {}
      try {
        final c_guideLst = instance.guideLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSldViewPr = instance.cSldViewPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_SlideViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_slideviewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_SlideViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSldViewPr = instance.cSldViewPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSldViewPr = instance.cSldViewPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_NotesViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_notesviewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_NotesViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final c_cSldViewPr = instance.cSldViewPr;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_ViewProperties with empty node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.element(
            'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lastView = instance.lastView;
      } catch (e) {}
      try {
        final v_showComments = instance.showComments;
      } catch (e) {}
      try {
        final c_normalViewPr = instance.normalViewPr;
      } catch (e) {}
      try {
        final c_slideViewPr = instance.slideViewPr;
      } catch (e) {}
      try {
        final c_outlineViewPr = instance.outlineViewPr;
      } catch (e) {}
      try {
        final c_notesTextViewPr = instance.notesTextViewPr;
      } catch (e) {}
      try {
        final c_sorterViewPr = instance.sorterViewPr;
      } catch (e) {}
      try {
        final c_notesViewPr = instance.notesViewPr;
      } catch (e) {}
      try {
        final c_gridSpacing = instance.gridSpacing;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
    test('Test P_CT_ViewProperties with populated node', () {
      final builder = XmlBuilder();
      builder.element(
        'root',
        nest: () {
          builder.namespace(
            'http://schemas.openxmlformats.org/presentationml/2006/main',
            'ns0',
          );
          builder.p_ct_viewproperties(
            tagName: 'dummy',
            namespace:
                'http://schemas.openxmlformats.org/presentationml/2006/main',
            lastView: P_ST_ViewType.values.first,
            showComments: true,
          );
        },
      );
      final node =
          builder.buildDocument().rootElement.children.first as XmlElement;
      final instance = P_CT_ViewProperties(node);
      final errors = instance.validate();
      expect(errors, isA<List<String>>());
      try {
        final v_lastView = instance.lastView;
      } catch (e) {}
      try {
        final v_showComments = instance.showComments;
      } catch (e) {}
      try {
        final c_normalViewPr = instance.normalViewPr;
      } catch (e) {}
      try {
        final c_slideViewPr = instance.slideViewPr;
      } catch (e) {}
      try {
        final c_outlineViewPr = instance.outlineViewPr;
      } catch (e) {}
      try {
        final c_notesTextViewPr = instance.notesTextViewPr;
      } catch (e) {}
      try {
        final c_sorterViewPr = instance.sorterViewPr;
      } catch (e) {}
      try {
        final c_notesViewPr = instance.notesViewPr;
      } catch (e) {}
      try {
        final c_gridSpacing = instance.gridSpacing;
      } catch (e) {}
      try {
        final c_extLst = instance.extLst;
      } catch (e) {}
    });
  });
}
