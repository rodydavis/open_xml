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

extension type P_CT_SideDirectionTransition(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TransitionSideDirectionType? get dir {
    return node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TransitionSideDirectionType.fromValue(
            node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_CornerDirectionTransition(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TransitionCornerDirectionType? get dir {
    return node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TransitionCornerDirectionType.fromValue(
            node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_EightDirectionTransition(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type P_CT_OrientationTransition(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_Direction? get dir {
    return node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_Direction.fromValue(
            node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_InOutTransition(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TransitionInOutDirectionType? get dir {
    return node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TransitionInOutDirectionType.fromValue(
            node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_OptionalBlackTransition(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get thruBlk {
    return node.getAttribute(
              'thruBlk',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'thruBlk',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'thruBlk',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }
}
extension type P_CT_SplitTransition(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_Direction? get orient {
    return node.getAttribute(
              'orient',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_Direction.fromValue(
            node.getAttribute(
              'orient',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TransitionInOutDirectionType? get dir {
    return node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TransitionInOutDirectionType.fromValue(
            node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_WheelTransition(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get spokes {
    return node.getAttribute(
              'spokes',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'spokes',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_TransitionStartSoundAction(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get loop {
    return node.getAttribute(
              'loop',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'loop',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'loop',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  D_CT_EmbeddedWAVAudioFile? get snd {
    final e = node.getElement(
      'snd',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_EmbeddedWAVAudioFile(e) : null;
  }
}
extension type P_CT_TransitionSoundAction(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_TransitionStartSoundAction? get stSnd {
    final e = node.getElement(
      'stSnd',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TransitionStartSoundAction(e) : null;
  }

  P_CT_Empty? get endSnd {
    final e = node.getElement(
      'endSnd',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }
}
extension type P_CT_SlideTransition(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TransitionSpeed? get spd {
    return node.getAttribute(
              'spd',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TransitionSpeed.fromValue(
            node.getAttribute(
              'spd',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get advClick {
    return node.getAttribute(
              'advClick',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'advClick',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'advClick',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  int? get advTm {
    return node.getAttribute(
              'advTm',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'advTm',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_OrientationTransition? get blinds {
    final e = node.getElement(
      'blinds',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OrientationTransition(e) : null;
  }

  P_CT_OrientationTransition? get checker {
    final e = node.getElement(
      'checker',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OrientationTransition(e) : null;
  }

  P_CT_Empty? get circle {
    final e = node.getElement(
      'circle',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_Empty? get dissolve {
    final e = node.getElement(
      'dissolve',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_OrientationTransition? get comb {
    final e = node.getElement(
      'comb',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OrientationTransition(e) : null;
  }

  P_CT_EightDirectionTransition? get cover {
    final e = node.getElement(
      'cover',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_EightDirectionTransition(e) : null;
  }

  P_CT_OptionalBlackTransition? get cut {
    final e = node.getElement(
      'cut',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OptionalBlackTransition(e) : null;
  }

  P_CT_Empty? get diamond {
    final e = node.getElement(
      'diamond',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_OptionalBlackTransition? get fade {
    final e = node.getElement(
      'fade',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OptionalBlackTransition(e) : null;
  }

  P_CT_Empty? get newsflash {
    final e = node.getElement(
      'newsflash',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_Empty? get plus {
    final e = node.getElement(
      'plus',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_EightDirectionTransition? get pull {
    final e = node.getElement(
      'pull',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_EightDirectionTransition(e) : null;
  }

  P_CT_SideDirectionTransition? get push {
    final e = node.getElement(
      'push',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SideDirectionTransition(e) : null;
  }

  P_CT_Empty? get random {
    final e = node.getElement(
      'random',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_OrientationTransition? get randomBar {
    final e = node.getElement(
      'randomBar',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OrientationTransition(e) : null;
  }

  P_CT_SplitTransition? get split {
    final e = node.getElement(
      'split',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SplitTransition(e) : null;
  }

  P_CT_CornerDirectionTransition? get strips {
    final e = node.getElement(
      'strips',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CornerDirectionTransition(e) : null;
  }

  P_CT_Empty? get wedge {
    final e = node.getElement(
      'wedge',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_WheelTransition? get wheel {
    final e = node.getElement(
      'wheel',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_WheelTransition(e) : null;
  }

  P_CT_SideDirectionTransition? get wipe {
    final e = node.getElement(
      'wipe',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SideDirectionTransition(e) : null;
  }

  P_CT_InOutTransition? get zoom {
    final e = node.getElement(
      'zoom',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_InOutTransition(e) : null;
  }

  P_CT_TransitionSoundAction? get sndAc {
    final e = node.getElement(
      'sndAc',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TransitionSoundAction(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_TLIterateIntervalTime(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type P_CT_TLIterateIntervalPercentage(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type P_CT_TLIterateData(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_IterateType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_IterateType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get backwards {
    return node.getAttribute(
              'backwards',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'backwards',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'backwards',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_TLIterateIntervalTime? get tmAbs {
    final e = node.getElement(
      'tmAbs',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLIterateIntervalTime(e) : null;
  }

  P_CT_TLIterateIntervalPercentage? get tmPct {
    final e = node.getElement(
      'tmPct',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLIterateIntervalPercentage(e) : null;
  }
}
extension type P_CT_TLSubShapeId(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get spid {
    return node.getAttribute(
      'spid',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }
}
extension type P_CT_TLTextTargetElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_IndexRange? get charRg {
    final e = node.getElement(
      'charRg',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_IndexRange(e) : null;
  }

  P_CT_IndexRange? get pRg {
    final e = node.getElement(
      'pRg',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_IndexRange(e) : null;
  }
}
extension type P_CT_TLOleChartTargetElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLChartSubelementType get type {
    return P_ST_TLChartSubelementType.fromValue(
      node.getAttribute(
        'type',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    )!;
  }

  int? get lvl {
    return node.getAttribute(
              'lvl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'lvl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_TLShapeTargetElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get spid {
    return node.getAttribute(
      'spid',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  P_CT_Empty? get bg {
    final e = node.getElement(
      'bg',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_TLSubShapeId? get subSp {
    final e = node.getElement(
      'subSp',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLSubShapeId(e) : null;
  }

  P_CT_TLOleChartTargetElement? get oleChartEl {
    final e = node.getElement(
      'oleChartEl',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLOleChartTargetElement(e) : null;
  }

  P_CT_TLTextTargetElement? get txEl {
    final e = node.getElement(
      'txEl',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTextTargetElement(e) : null;
  }

  D_CT_AnimationElementChoice? get graphicEl {
    final e = node.getElement(
      'graphicEl',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_AnimationElementChoice(e) : null;
  }
}
extension type P_CT_TLTimeTargetElement(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_Empty? get sldTgt {
    final e = node.getElement(
      'sldTgt',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  D_CT_EmbeddedWAVAudioFile? get sndTgt {
    final e = node.getElement(
      'sndTgt',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_EmbeddedWAVAudioFile(e) : null;
  }

  P_CT_TLShapeTargetElement? get spTgt {
    final e = node.getElement(
      'spTgt',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLShapeTargetElement(e) : null;
  }

  P_CT_TLSubShapeId? get inkTgt {
    final e = node.getElement(
      'inkTgt',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLSubShapeId(e) : null;
  }
}
extension type P_CT_TLTriggerTimeNodeID(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }
}
extension type P_CT_TLTriggerRuntimeNode(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLTriggerRuntimeNode get val {
    return P_ST_TLTriggerRuntimeNode.fromValue(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    )!;
  }
}
extension type P_CT_TLTimeCondition(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLTriggerEvent? get evt {
    return node.getAttribute(
              'evt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLTriggerEvent.fromValue(
            node.getAttribute(
              'evt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_TLTimeTargetElement? get tgtEl {
    final e = node.getElement(
      'tgtEl',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeTargetElement(e) : null;
  }

  P_CT_TLTriggerTimeNodeID? get tn {
    final e = node.getElement(
      'tn',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTriggerTimeNodeID(e) : null;
  }

  P_CT_TLTriggerRuntimeNode? get rtn {
    final e = node.getElement(
      'rtn',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTriggerRuntimeNode(e) : null;
  }
}
extension type P_CT_TLTimeConditionList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_TLTimeCondition> get cond {
    return node
        .findElements(
          'cond',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLTimeCondition.new);
  }
}
extension type P_CT_TimeNodeList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_TLTimeNodeParallel> get par {
    return node
        .findElements(
          'par',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLTimeNodeParallel.new);
  }

  Iterable<P_CT_TLTimeNodeSequence> get seq {
    return node
        .findElements(
          'seq',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLTimeNodeSequence.new);
  }

  Iterable<P_CT_TLTimeNodeExclusive> get excl {
    return node
        .findElements(
          'excl',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLTimeNodeExclusive.new);
  }

  Iterable<P_CT_TLAnimateBehavior> get anim {
    return node
        .findElements(
          'anim',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLAnimateBehavior.new);
  }

  Iterable<P_CT_TLAnimateColorBehavior> get animClr {
    return node
        .findElements(
          'animClr',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLAnimateColorBehavior.new);
  }

  Iterable<P_CT_TLAnimateEffectBehavior> get animEffect {
    return node
        .findElements(
          'animEffect',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLAnimateEffectBehavior.new);
  }

  Iterable<P_CT_TLAnimateMotionBehavior> get animMotion {
    return node
        .findElements(
          'animMotion',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLAnimateMotionBehavior.new);
  }

  Iterable<P_CT_TLAnimateRotationBehavior> get animRot {
    return node
        .findElements(
          'animRot',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLAnimateRotationBehavior.new);
  }

  Iterable<P_CT_TLAnimateScaleBehavior> get animScale {
    return node
        .findElements(
          'animScale',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLAnimateScaleBehavior.new);
  }

  Iterable<P_CT_TLCommandBehavior> get cmd {
    return node
        .findElements(
          'cmd',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLCommandBehavior.new);
  }

  Iterable<P_CT_TLSetBehavior> get set_ {
    return node
        .findElements(
          'set',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLSetBehavior.new);
  }

  Iterable<P_CT_TLMediaNodeAudio> get audio {
    return node
        .findElements(
          'audio',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLMediaNodeAudio.new);
  }

  Iterable<P_CT_TLMediaNodeVideo> get video {
    return node
        .findElements(
          'video',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLMediaNodeVideo.new);
  }
}
extension type P_CT_TLCommonTimeNodeData(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  int? get presetID {
    return node.getAttribute(
              'presetID',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'presetID',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TLTimeNodePresetClassType? get presetClass {
    return node.getAttribute(
              'presetClass',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLTimeNodePresetClassType.fromValue(
            node.getAttribute(
              'presetClass',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  int? get presetSubtype {
    return node.getAttribute(
              'presetSubtype',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'presetSubtype',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get autoRev {
    return node.getAttribute(
              'autoRev',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoRev',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoRev',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_ST_TLTimeNodeRestartType? get restart {
    return node.getAttribute(
              'restart',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLTimeNodeRestartType.fromValue(
            node.getAttribute(
              'restart',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TLTimeNodeFillType? get fill {
    return node.getAttribute(
              'fill',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLTimeNodeFillType.fromValue(
            node.getAttribute(
              'fill',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TLTimeNodeSyncType? get syncBehavior {
    return node.getAttribute(
              'syncBehavior',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLTimeNodeSyncType.fromValue(
            node.getAttribute(
              'syncBehavior',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get tmFilter {
    return node.getAttribute(
      'tmFilter',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get evtFilter {
    return node.getAttribute(
      'evtFilter',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  bool? get display {
    return node.getAttribute(
              'display',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'display',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'display',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_ST_TLTimeNodeMasterRelation? get masterRel {
    return node.getAttribute(
              'masterRel',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLTimeNodeMasterRelation.fromValue(
            node.getAttribute(
              'masterRel',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  int? get bldLvl {
    return node.getAttribute(
              'bldLvl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'bldLvl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  int? get grpId {
    return node.getAttribute(
              'grpId',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'grpId',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get afterEffect {
    return node.getAttribute(
              'afterEffect',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'afterEffect',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'afterEffect',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_ST_TLTimeNodeType? get nodeType {
    return node.getAttribute(
              'nodeType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLTimeNodeType.fromValue(
            node.getAttribute(
              'nodeType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get nodePh {
    return node.getAttribute(
              'nodePh',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'nodePh',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'nodePh',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_TLTimeConditionList? get stCondLst {
    final e = node.getElement(
      'stCondLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeConditionList(e) : null;
  }

  P_CT_TLTimeConditionList? get endCondLst {
    final e = node.getElement(
      'endCondLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeConditionList(e) : null;
  }

  P_CT_TLTimeCondition? get endSync {
    final e = node.getElement(
      'endSync',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeCondition(e) : null;
  }

  P_CT_TLIterateData? get iterate {
    final e = node.getElement(
      'iterate',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLIterateData(e) : null;
  }

  P_CT_TimeNodeList? get childTnLst {
    final e = node.getElement(
      'childTnLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TimeNodeList(e) : null;
  }

  P_CT_TimeNodeList? get subTnLst {
    final e = node.getElement(
      'subTnLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TimeNodeList(e) : null;
  }
}
extension type P_CT_TLTimeNodeParallel(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_TLCommonTimeNodeData? get cTn {
    final e = node.getElement(
      'cTn',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonTimeNodeData(e) : null;
  }
}
extension type P_CT_TLTimeNodeSequence(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get concurrent {
    return node.getAttribute(
              'concurrent',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'concurrent',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'concurrent',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_ST_TLPreviousActionType? get prevAc {
    return node.getAttribute(
              'prevAc',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLPreviousActionType.fromValue(
            node.getAttribute(
              'prevAc',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TLNextActionType? get nextAc {
    return node.getAttribute(
              'nextAc',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLNextActionType.fromValue(
            node.getAttribute(
              'nextAc',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_TLCommonTimeNodeData? get cTn {
    final e = node.getElement(
      'cTn',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonTimeNodeData(e) : null;
  }

  P_CT_TLTimeConditionList? get prevCondLst {
    final e = node.getElement(
      'prevCondLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeConditionList(e) : null;
  }

  P_CT_TLTimeConditionList? get nextCondLst {
    final e = node.getElement(
      'nextCondLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeConditionList(e) : null;
  }
}
extension type P_CT_TLTimeNodeExclusive(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_TLCommonTimeNodeData? get cTn {
    final e = node.getElement(
      'cTn',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonTimeNodeData(e) : null;
  }
}
extension type P_CT_TLBehaviorAttributeNameList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<String> get attrName {
    return node
        .findElements(
          'attrName',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map((e) => e.innerText);
  }
}
extension type P_CT_TLCommonBehaviorData(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLBehaviorAdditiveType? get additive {
    return node.getAttribute(
              'additive',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLBehaviorAdditiveType.fromValue(
            node.getAttribute(
              'additive',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TLBehaviorAccumulateType? get accumulate {
    return node.getAttribute(
              'accumulate',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLBehaviorAccumulateType.fromValue(
            node.getAttribute(
              'accumulate',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TLBehaviorTransformType? get xfrmType {
    return node.getAttribute(
              'xfrmType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLBehaviorTransformType.fromValue(
            node.getAttribute(
              'xfrmType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get from {
    return node.getAttribute(
      'from',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get to {
    return node.getAttribute(
      'to',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get by {
    return node.getAttribute(
      'by',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get rctx {
    return node.getAttribute(
      'rctx',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_ST_TLBehaviorOverrideType? get override {
    return node.getAttribute(
              'override',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLBehaviorOverrideType.fromValue(
            node.getAttribute(
              'override',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_TLCommonTimeNodeData? get cTn {
    final e = node.getElement(
      'cTn',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonTimeNodeData(e) : null;
  }

  P_CT_TLTimeTargetElement? get tgtEl {
    final e = node.getElement(
      'tgtEl',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeTargetElement(e) : null;
  }

  P_CT_TLBehaviorAttributeNameList? get attrNameLst {
    final e = node.getElement(
      'attrNameLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLBehaviorAttributeNameList(e) : null;
  }
}
extension type P_CT_TLAnimVariantBooleanVal(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool get val {
    return node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'val',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }
}
extension type P_CT_TLAnimVariantIntegerVal(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get val {
    return int.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    );
  }
}
extension type P_CT_TLAnimVariantFloatVal(_i1.XmlElement node)
    implements _i1.XmlElement {
  double get val {
    return double.parse(
      node.getAttribute(
        'val',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    );
  }
}
extension type P_CT_TLAnimVariantStringVal(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }
}
extension type P_CT_TLAnimVariant(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_TLAnimVariantBooleanVal? get boolVal {
    final e = node.getElement(
      'boolVal',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLAnimVariantBooleanVal(e) : null;
  }

  P_CT_TLAnimVariantIntegerVal? get intVal {
    final e = node.getElement(
      'intVal',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLAnimVariantIntegerVal(e) : null;
  }

  P_CT_TLAnimVariantFloatVal? get fltVal {
    final e = node.getElement(
      'fltVal',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLAnimVariantFloatVal(e) : null;
  }

  P_CT_TLAnimVariantStringVal? get strVal {
    final e = node.getElement(
      'strVal',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLAnimVariantStringVal(e) : null;
  }

  D_CT_Color? get clrVal {
    final e = node.getElement(
      'clrVal',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }
}
extension type P_CT_TLTimeAnimateValue(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get fmla {
    return node.getAttribute(
      'fmla',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_TLAnimVariant? get val {
    final e = node.getElement(
      'val',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLAnimVariant(e) : null;
  }
}
extension type P_CT_TLTimeAnimateValueList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_TLTimeAnimateValue> get tav {
    return node
        .findElements(
          'tav',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLTimeAnimateValue.new);
  }
}
extension type P_CT_TLAnimateBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get by {
    return node.getAttribute(
      'by',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get from {
    return node.getAttribute(
      'from',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get to {
    return node.getAttribute(
      'to',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_ST_TLAnimateBehaviorCalcMode? get calcmode {
    return node.getAttribute(
              'calcmode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLAnimateBehaviorCalcMode.fromValue(
            node.getAttribute(
              'calcmode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TLAnimateBehaviorValueType? get valueType {
    return node.getAttribute(
              'valueType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLAnimateBehaviorValueType.fromValue(
            node.getAttribute(
              'valueType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_TLCommonBehaviorData? get cBhvr {
    final e = node.getElement(
      'cBhvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonBehaviorData(e) : null;
  }

  P_CT_TLTimeAnimateValueList? get tavLst {
    final e = node.getElement(
      'tavLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeAnimateValueList(e) : null;
  }
}
extension type P_CT_TLByRgbColorTransform(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type P_CT_TLByHslColorTransform(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get h {
    return node.getAttribute(
      'h',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }
}
extension type P_CT_TLByAnimateColorTransform(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_TLByRgbColorTransform? get rgb {
    final e = node.getElement(
      'rgb',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLByRgbColorTransform(e) : null;
  }

  P_CT_TLByHslColorTransform? get hsl {
    final e = node.getElement(
      'hsl',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLByHslColorTransform(e) : null;
  }
}
extension type P_CT_TLAnimateColorBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLAnimateColorSpace? get clrSpc {
    return node.getAttribute(
              'clrSpc',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLAnimateColorSpace.fromValue(
            node.getAttribute(
              'clrSpc',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_TLAnimateColorDirection? get dir {
    return node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLAnimateColorDirection.fromValue(
            node.getAttribute(
              'dir',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_TLCommonBehaviorData? get cBhvr {
    final e = node.getElement(
      'cBhvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonBehaviorData(e) : null;
  }

  P_CT_TLByAnimateColorTransform? get by {
    final e = node.getElement(
      'by',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLByAnimateColorTransform(e) : null;
  }

  D_CT_Color? get from {
    final e = node.getElement(
      'from',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  D_CT_Color? get to {
    final e = node.getElement(
      'to',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }
}
extension type P_CT_TLAnimateEffectBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLAnimateEffectTransition? get transition {
    return node.getAttribute(
              'transition',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLAnimateEffectTransition.fromValue(
            node.getAttribute(
              'transition',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get filter {
    return node.getAttribute(
      'filter',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get prLst {
    return node.getAttribute(
      'prLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_TLCommonBehaviorData? get cBhvr {
    final e = node.getElement(
      'cBhvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonBehaviorData(e) : null;
  }

  P_CT_TLAnimVariant? get progress {
    final e = node.getElement(
      'progress',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLAnimVariant(e) : null;
  }
}
extension type P_CT_TLPoint(_i1.XmlElement node) implements _i1.XmlElement {}
extension type P_CT_TLAnimateMotionBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLAnimateMotionBehaviorOrigin? get origin {
    return node.getAttribute(
              'origin',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLAnimateMotionBehaviorOrigin.fromValue(
            node.getAttribute(
              'origin',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get path {
    return node.getAttribute(
      'path',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_ST_TLAnimateMotionPathEditMode? get pathEditMode {
    return node.getAttribute(
              'pathEditMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLAnimateMotionPathEditMode.fromValue(
            node.getAttribute(
              'pathEditMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get rAng {
    return node.getAttribute(
      'rAng',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get ptsTypes {
    return node.getAttribute(
      'ptsTypes',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_TLCommonBehaviorData? get cBhvr {
    final e = node.getElement(
      'cBhvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonBehaviorData(e) : null;
  }

  P_CT_TLPoint? get by {
    final e = node.getElement(
      'by',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLPoint(e) : null;
  }

  P_CT_TLPoint? get from {
    final e = node.getElement(
      'from',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLPoint(e) : null;
  }

  P_CT_TLPoint? get to {
    final e = node.getElement(
      'to',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLPoint(e) : null;
  }

  P_CT_TLPoint? get rCtr {
    final e = node.getElement(
      'rCtr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLPoint(e) : null;
  }
}
extension type P_CT_TLAnimateRotationBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get by {
    return node.getAttribute(
      'by',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get from {
    return node.getAttribute(
      'from',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get to {
    return node.getAttribute(
      'to',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_TLCommonBehaviorData? get cBhvr {
    final e = node.getElement(
      'cBhvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonBehaviorData(e) : null;
  }
}
extension type P_CT_TLAnimateScaleBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get zoomContents {
    return node.getAttribute(
              'zoomContents',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'zoomContents',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'zoomContents',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_TLCommonBehaviorData? get cBhvr {
    final e = node.getElement(
      'cBhvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonBehaviorData(e) : null;
  }

  P_CT_TLPoint? get by {
    final e = node.getElement(
      'by',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLPoint(e) : null;
  }

  P_CT_TLPoint? get from {
    final e = node.getElement(
      'from',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLPoint(e) : null;
  }

  P_CT_TLPoint? get to {
    final e = node.getElement(
      'to',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLPoint(e) : null;
  }
}
extension type P_CT_TLCommandBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLCommandType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLCommandType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get cmd {
    return node.getAttribute(
      'cmd',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_TLCommonBehaviorData? get cBhvr {
    final e = node.getElement(
      'cBhvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonBehaviorData(e) : null;
  }
}
extension type P_CT_TLSetBehavior(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_TLCommonBehaviorData? get cBhvr {
    final e = node.getElement(
      'cBhvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonBehaviorData(e) : null;
  }

  P_CT_TLAnimVariant? get to {
    final e = node.getElement(
      'to',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLAnimVariant(e) : null;
  }
}
extension type P_CT_TLCommonMediaNodeData(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get mute {
    return node.getAttribute(
              'mute',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'mute',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'mute',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  int? get numSld {
    return node.getAttribute(
              'numSld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'numSld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showWhenStopped {
    return node.getAttribute(
              'showWhenStopped',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showWhenStopped',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showWhenStopped',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_TLCommonTimeNodeData? get cTn {
    final e = node.getElement(
      'cTn',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonTimeNodeData(e) : null;
  }

  P_CT_TLTimeTargetElement? get tgtEl {
    final e = node.getElement(
      'tgtEl',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTimeTargetElement(e) : null;
  }
}
extension type P_CT_TLMediaNodeAudio(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get isNarration {
    return node.getAttribute(
              'isNarration',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'isNarration',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'isNarration',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_TLCommonMediaNodeData? get cMediaNode {
    final e = node.getElement(
      'cMediaNode',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonMediaNodeData(e) : null;
  }
}
extension type P_CT_TLMediaNodeVideo(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get fullScrn {
    return node.getAttribute(
              'fullScrn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'fullScrn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'fullScrn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_TLCommonMediaNodeData? get cMediaNode {
    final e = node.getElement(
      'cMediaNode',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLCommonMediaNodeData(e) : null;
  }
}
extension type P_CT_TLTemplate(_i1.XmlElement node) implements _i1.XmlElement {
  int? get lvl {
    return node.getAttribute(
              'lvl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'lvl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_TimeNodeList? get tnLst {
    final e = node.getElement(
      'tnLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TimeNodeList(e) : null;
  }
}
extension type P_CT_TLTemplateList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_TLTemplate> get tmpl {
    return node
        .findElements(
          'tmpl',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLTemplate.new);
  }
}
extension type P_CT_TLBuildParagraph(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLParaBuildType? get build {
    return node.getAttribute(
              'build',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLParaBuildType.fromValue(
            node.getAttribute(
              'build',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  int? get bldLvl {
    return node.getAttribute(
              'bldLvl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'bldLvl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get animBg {
    return node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get autoUpdateAnimBg {
    return node.getAttribute(
              'autoUpdateAnimBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoUpdateAnimBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoUpdateAnimBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get rev {
    return node.getAttribute(
              'rev',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rev',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rev',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_TLTemplateList? get tmplLst {
    final e = node.getElement(
      'tmplLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TLTemplateList(e) : null;
  }
}
extension type P_CT_TLBuildDiagram(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLDiagramBuildType? get bld {
    return node.getAttribute(
              'bld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLDiagramBuildType.fromValue(
            node.getAttribute(
              'bld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_TLOleBuildChart(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_TLOleChartBuildType? get bld {
    return node.getAttribute(
              'bld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_TLOleChartBuildType.fromValue(
            node.getAttribute(
              'bld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get animBg {
    return node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'animBg',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }
}
extension type P_CT_TLGraphicalObjectBuild(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_Empty? get bldAsOne {
    final e = node.getElement(
      'bldAsOne',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  D_CT_AnimationGraphicalObjectBuildProperties? get bldSub {
    final e = node.getElement(
      'bldSub',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_AnimationGraphicalObjectBuildProperties(e) : null;
  }
}
extension type P_CT_BuildList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<P_CT_TLBuildParagraph> get bldP {
    return node
        .findElements(
          'bldP',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLBuildParagraph.new);
  }

  Iterable<P_CT_TLBuildDiagram> get bldDgm {
    return node
        .findElements(
          'bldDgm',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLBuildDiagram.new);
  }

  Iterable<P_CT_TLOleBuildChart> get bldOleChart {
    return node
        .findElements(
          'bldOleChart',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLOleBuildChart.new);
  }

  Iterable<P_CT_TLGraphicalObjectBuild> get bldGraphic {
    return node
        .findElements(
          'bldGraphic',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_TLGraphicalObjectBuild.new);
  }
}
extension type P_CT_SlideTiming(_i1.XmlElement node) implements _i1.XmlElement {
  P_CT_TimeNodeList? get tnLst {
    final e = node.getElement(
      'tnLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TimeNodeList(e) : null;
  }

  P_CT_BuildList? get bldLst {
    final e = node.getElement(
      'bldLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_BuildList(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_Empty(_i1.XmlElement node) implements _i1.XmlElement {}
extension type P_CT_IndexRange(_i1.XmlElement node) implements _i1.XmlElement {
  String get st {
    return node.getAttribute(
      'st',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  String get end {
    return node.getAttribute(
      'end',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }
}
extension type P_CT_SlideRelationshipListEntry(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type P_CT_SlideRelationshipList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_SlideRelationshipListEntry> get sld {
    return node
        .findElements(
          'sld',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_SlideRelationshipListEntry.new);
  }
}
extension type P_CT_CustomShowId(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    );
  }
}
extension type P_CT_CustomerData(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type P_CT_TagsData(_i1.XmlElement node) implements _i1.XmlElement {}
extension type P_CT_CustomerDataList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_CustomerData> get custData {
    return node
        .findElements(
          'custData',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_CustomerData.new);
  }

  P_CT_TagsData? get tags {
    final e = node.getElement(
      'tags',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_TagsData(e) : null;
  }
}
extension type P_CT_Extension(_i1.XmlElement node) implements _i1.XmlElement {
  String get uri {
    return node.getAttribute(
      'uri',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }
}
extension type P_CT_ExtensionList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_Extension> get ext {
    return node
        .findElements(
          'ext',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Extension.new);
  }
}
extension type P_CT_ExtensionListModify(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get mod {
    return node.getAttribute(
              'mod',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'mod',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'mod',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  Iterable<P_CT_Extension> get ext {
    return node
        .findElements(
          'ext',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Extension.new);
  }
}
extension type P_CT_CommentAuthor(_i1.XmlElement node)
    implements _i1.XmlElement {
  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    );
  }

  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  String get initials {
    return node.getAttribute(
      'initials',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  int get lastIdx {
    return int.parse(
      node.getAttribute(
        'lastIdx',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    );
  }

  int get clrIdx {
    return int.parse(
      node.getAttribute(
        'clrIdx',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    );
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_CommentAuthorList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_CommentAuthor> get cmAuthor {
    return node
        .findElements(
          'cmAuthor',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_CommentAuthor.new);
  }
}
extension type P_CT_Comment(_i1.XmlElement node) implements _i1.XmlElement {
  int get authorId {
    return int.parse(
      node.getAttribute(
        'authorId',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    );
  }

  String? get dt {
    return node.getAttribute(
      'dt',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String get idx {
    return node.getAttribute(
      'idx',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  D_CT_Point2D? get pos {
    final e = node.getElement(
      'pos',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_Point2D(e) : null;
  }

  String? get text {
    final e = node.getElement(
      'text',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? e.innerText : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_CommentList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<P_CT_Comment> get cm {
    return node
        .findElements(
          'cm',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Comment.new);
  }
}
extension type P_CT_OleObjectEmbed(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_OleObjectFollowColorScheme? get followColorScheme {
    return node.getAttribute(
              'followColorScheme',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_OleObjectFollowColorScheme.fromValue(
            node.getAttribute(
              'followColorScheme',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_OleObjectLink(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get updateAutomatic {
    return node.getAttribute(
              'updateAutomatic',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'updateAutomatic',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'updateAutomatic',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_OleObject(_i1.XmlElement node) implements _i1.XmlElement {
  String? get progId {
    return node.getAttribute(
      'progId',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_OleObjectEmbed? get embed {
    final e = node.getElement(
      'embed',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OleObjectEmbed(e) : null;
  }

  P_CT_OleObjectLink? get link {
    final e = node.getElement(
      'link',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OleObjectLink(e) : null;
  }

  P_CT_Picture? get pic {
    final e = node.getElement(
      'pic',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Picture(e) : null;
  }
}
extension type P_CT_Control(_i1.XmlElement node) implements _i1.XmlElement {
  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }

  P_CT_Picture? get pic {
    final e = node.getElement(
      'pic',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Picture(e) : null;
  }
}
extension type P_CT_ControlList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<P_CT_Control> get control {
    return node
        .findElements(
          'control',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Control.new);
  }
}
extension type P_CT_SlideIdListEntry(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_SlideIdList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<P_CT_SlideIdListEntry> get sldId {
    return node
        .findElements(
          'sldId',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_SlideIdListEntry.new);
  }
}
extension type P_CT_SlideMasterIdListEntry(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_SlideMasterIdList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_SlideMasterIdListEntry> get sldMasterId {
    return node
        .findElements(
          'sldMasterId',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_SlideMasterIdListEntry.new);
  }
}
extension type P_CT_NotesMasterIdListEntry(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_NotesMasterIdList(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_NotesMasterIdListEntry? get notesMasterId {
    final e = node.getElement(
      'notesMasterId',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_NotesMasterIdListEntry(e) : null;
  }
}
extension type P_CT_HandoutMasterIdListEntry(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_HandoutMasterIdList(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_HandoutMasterIdListEntry? get handoutMasterId {
    final e = node.getElement(
      'handoutMasterId',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_HandoutMasterIdListEntry(e) : null;
  }
}
extension type P_CT_EmbeddedFontDataId(_i1.XmlElement node)
    implements _i1.XmlElement {}
extension type P_CT_EmbeddedFontListEntry(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TextFont? get font {
    final e = node.getElement(
      'font',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_TextFont(e) : null;
  }

  P_CT_EmbeddedFontDataId? get regular {
    final e = node.getElement(
      'regular',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_EmbeddedFontDataId(e) : null;
  }

  P_CT_EmbeddedFontDataId? get bold {
    final e = node.getElement(
      'bold',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_EmbeddedFontDataId(e) : null;
  }

  P_CT_EmbeddedFontDataId? get italic {
    final e = node.getElement(
      'italic',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_EmbeddedFontDataId(e) : null;
  }

  P_CT_EmbeddedFontDataId? get boldItalic {
    final e = node.getElement(
      'boldItalic',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_EmbeddedFontDataId(e) : null;
  }
}
extension type P_CT_EmbeddedFontList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_EmbeddedFontListEntry> get embeddedFont {
    return node
        .findElements(
          'embeddedFont',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_EmbeddedFontListEntry.new);
  }
}
extension type P_CT_SmartTags(_i1.XmlElement node) implements _i1.XmlElement {}
extension type P_CT_CustomShow(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  int get id {
    return int.parse(
      node.getAttribute(
        'id',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      )!,
    );
  }

  P_CT_SlideRelationshipList? get sldLst {
    final e = node.getElement(
      'sldLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideRelationshipList(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_CustomShowList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_CustomShow> get custShow {
    return node
        .findElements(
          'custShow',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_CustomShow.new);
  }
}
extension type P_CT_PhotoAlbum(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get bw {
    return node.getAttribute(
              'bw',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'bw',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'bw',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get showCaptions {
    return node.getAttribute(
              'showCaptions',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showCaptions',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showCaptions',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_ST_PhotoAlbumLayout? get layout {
    return node.getAttribute(
              'layout',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_PhotoAlbumLayout.fromValue(
            node.getAttribute(
              'layout',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_PhotoAlbumFrameShape? get frame {
    return node.getAttribute(
              'frame',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_PhotoAlbumFrameShape.fromValue(
            node.getAttribute(
              'frame',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_SlideSize(_i1.XmlElement node) implements _i1.XmlElement {
  String get cx {
    return node.getAttribute(
      'cx',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  String get cy {
    return node.getAttribute(
      'cy',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  P_ST_SlideSizeType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_SlideSizeType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_Kinsoku(_i1.XmlElement node) implements _i1.XmlElement {
  String? get lang {
    return node.getAttribute(
      'lang',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String get invalStChars {
    return node.getAttribute(
      'invalStChars',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  String get invalEndChars {
    return node.getAttribute(
      'invalEndChars',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }
}
extension type P_CT_ModifyVerifier(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get algorithmName {
    return node.getAttribute(
      'algorithmName',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get hashValue {
    return node.getAttribute(
      'hashValue',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get saltValue {
    return node.getAttribute(
      'saltValue',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  int? get spinValue {
    return node.getAttribute(
              'spinValue',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'spinValue',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  ST_CryptProv? get cryptProviderType {
    return node.getAttribute(
              'cryptProviderType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? ST_CryptProv.fromValue(
            node.getAttribute(
              'cryptProviderType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  ST_AlgClass? get cryptAlgorithmClass {
    return node.getAttribute(
              'cryptAlgorithmClass',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? ST_AlgClass.fromValue(
            node.getAttribute(
              'cryptAlgorithmClass',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  ST_AlgType? get cryptAlgorithmType {
    return node.getAttribute(
              'cryptAlgorithmType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? ST_AlgType.fromValue(
            node.getAttribute(
              'cryptAlgorithmType',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  int? get cryptAlgorithmSid {
    return node.getAttribute(
              'cryptAlgorithmSid',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cryptAlgorithmSid',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  int? get spinCount {
    return node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'spinCount',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get saltData {
    return node.getAttribute(
      'saltData',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get hashData {
    return node.getAttribute(
      'hashData',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get cryptProvider {
    return node.getAttribute(
      'cryptProvider',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  int? get algIdExt {
    return node.getAttribute(
              'algIdExt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'algIdExt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get algIdExtSource {
    return node.getAttribute(
      'algIdExtSource',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  int? get cryptProviderTypeExt {
    return node.getAttribute(
              'cryptProviderTypeExt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'cryptProviderTypeExt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get cryptProviderTypeExtSource {
    return node.getAttribute(
      'cryptProviderTypeExtSource',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }
}
extension type P_CT_Presentation(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get firstSlideNum {
    return node.getAttribute(
              'firstSlideNum',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'firstSlideNum',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showSpecialPlsOnTitleSld {
    return node.getAttribute(
              'showSpecialPlsOnTitleSld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showSpecialPlsOnTitleSld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showSpecialPlsOnTitleSld',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get rtl {
    return node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'rtl',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get removePersonalInfoOnSave {
    return node.getAttribute(
              'removePersonalInfoOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'removePersonalInfoOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'removePersonalInfoOnSave',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get compatMode {
    return node.getAttribute(
              'compatMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'compatMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'compatMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get strictFirstAndLastChars {
    return node.getAttribute(
              'strictFirstAndLastChars',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'strictFirstAndLastChars',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'strictFirstAndLastChars',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get embedTrueTypeFonts {
    return node.getAttribute(
              'embedTrueTypeFonts',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'embedTrueTypeFonts',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'embedTrueTypeFonts',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get saveSubsetFonts {
    return node.getAttribute(
              'saveSubsetFonts',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'saveSubsetFonts',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'saveSubsetFonts',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get autoCompressPictures {
    return node.getAttribute(
              'autoCompressPictures',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoCompressPictures',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoCompressPictures',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  String? get bookmarkIdSeed {
    return node.getAttribute(
      'bookmarkIdSeed',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  ST_ConformanceClass? get conformance {
    return node.getAttribute(
              'conformance',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? ST_ConformanceClass.fromValue(
            node.getAttribute(
              'conformance',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_SlideMasterIdList? get sldMasterIdLst {
    final e = node.getElement(
      'sldMasterIdLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideMasterIdList(e) : null;
  }

  P_CT_NotesMasterIdList? get notesMasterIdLst {
    final e = node.getElement(
      'notesMasterIdLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_NotesMasterIdList(e) : null;
  }

  P_CT_HandoutMasterIdList? get handoutMasterIdLst {
    final e = node.getElement(
      'handoutMasterIdLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_HandoutMasterIdList(e) : null;
  }

  P_CT_SlideIdList? get sldIdLst {
    final e = node.getElement(
      'sldIdLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideIdList(e) : null;
  }

  P_CT_SlideSize? get sldSz {
    final e = node.getElement(
      'sldSz',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideSize(e) : null;
  }

  D_CT_PositiveSize2D? get notesSz {
    final e = node.getElement(
      'notesSz',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }

  P_CT_SmartTags? get smartTags {
    final e = node.getElement(
      'smartTags',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SmartTags(e) : null;
  }

  P_CT_EmbeddedFontList? get embeddedFontLst {
    final e = node.getElement(
      'embeddedFontLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_EmbeddedFontList(e) : null;
  }

  P_CT_CustomShowList? get custShowLst {
    final e = node.getElement(
      'custShowLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CustomShowList(e) : null;
  }

  P_CT_PhotoAlbum? get photoAlbum {
    final e = node.getElement(
      'photoAlbum',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_PhotoAlbum(e) : null;
  }

  P_CT_CustomerDataList? get custDataLst {
    final e = node.getElement(
      'custDataLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CustomerDataList(e) : null;
  }

  P_CT_Kinsoku? get kinsoku {
    final e = node.getElement(
      'kinsoku',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Kinsoku(e) : null;
  }

  D_CT_TextListStyle? get defaultTextStyle {
    final e = node.getElement(
      'defaultTextStyle',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_TextListStyle(e) : null;
  }

  P_CT_ModifyVerifier? get modifyVerifier {
    final e = node.getElement(
      'modifyVerifier',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ModifyVerifier(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_HtmlPublishProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get showSpeakerNotes {
    return node.getAttribute(
              'showSpeakerNotes',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showSpeakerNotes',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showSpeakerNotes',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  String? get target {
    return node.getAttribute(
      'target',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  String? get title {
    return node.getAttribute(
      'title',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_Empty? get sldAll {
    final e = node.getElement(
      'sldAll',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_IndexRange? get sldRg {
    final e = node.getElement(
      'sldRg',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_IndexRange(e) : null;
  }

  P_CT_CustomShowId? get custShow {
    final e = node.getElement(
      'custShow',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CustomShowId(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_WebProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get showAnimation {
    return node.getAttribute(
              'showAnimation',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showAnimation',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showAnimation',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get resizeGraphics {
    return node.getAttribute(
              'resizeGraphics',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'resizeGraphics',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'resizeGraphics',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get allowPng {
    return node.getAttribute(
              'allowPng',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'allowPng',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'allowPng',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get relyOnVml {
    return node.getAttribute(
              'relyOnVml',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'relyOnVml',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'relyOnVml',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get organizeInFolders {
    return node.getAttribute(
              'organizeInFolders',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'organizeInFolders',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'organizeInFolders',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get useLongFilenames {
    return node.getAttribute(
              'useLongFilenames',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'useLongFilenames',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'useLongFilenames',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_ST_WebScreenSize? get imgSz {
    return node.getAttribute(
              'imgSz',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_WebScreenSize.fromValue(
            node.getAttribute(
              'imgSz',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  String? get encoding {
    return node.getAttribute(
      'encoding',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_ST_WebColorType? get clr {
    return node.getAttribute(
              'clr',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_WebColorType.fromValue(
            node.getAttribute(
              'clr',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_PrintProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_PrintWhat? get prnWhat {
    return node.getAttribute(
              'prnWhat',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_PrintWhat.fromValue(
            node.getAttribute(
              'prnWhat',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_PrintColorMode? get clrMode {
    return node.getAttribute(
              'clrMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_PrintColorMode.fromValue(
            node.getAttribute(
              'clrMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get hiddenSlides {
    return node.getAttribute(
              'hiddenSlides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hiddenSlides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hiddenSlides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get scaleToFitPaper {
    return node.getAttribute(
              'scaleToFitPaper',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'scaleToFitPaper',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'scaleToFitPaper',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get frameSlides {
    return node.getAttribute(
              'frameSlides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'frameSlides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'frameSlides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_ShowInfoBrowse(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get showScrollbar {
    return node.getAttribute(
              'showScrollbar',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showScrollbar',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showScrollbar',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }
}
extension type P_CT_ShowInfoKiosk(_i1.XmlElement node)
    implements _i1.XmlElement {
  int? get restart {
    return node.getAttribute(
              'restart',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'restart',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_ShowProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get loop {
    return node.getAttribute(
              'loop',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'loop',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'loop',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get showNarration {
    return node.getAttribute(
              'showNarration',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showNarration',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showNarration',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get showAnimation {
    return node.getAttribute(
              'showAnimation',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showAnimation',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showAnimation',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get useTimings {
    return node.getAttribute(
              'useTimings',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'useTimings',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'useTimings',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_Empty? get present {
    final e = node.getElement(
      'present',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_ShowInfoBrowse? get browse {
    final e = node.getElement(
      'browse',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ShowInfoBrowse(e) : null;
  }

  P_CT_ShowInfoKiosk? get kiosk {
    final e = node.getElement(
      'kiosk',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ShowInfoKiosk(e) : null;
  }

  P_CT_Empty? get sldAll {
    final e = node.getElement(
      'sldAll',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Empty(e) : null;
  }

  P_CT_IndexRange? get sldRg {
    final e = node.getElement(
      'sldRg',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_IndexRange(e) : null;
  }

  P_CT_CustomShowId? get custShow {
    final e = node.getElement(
      'custShow',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CustomShowId(e) : null;
  }

  D_CT_Color? get penClr {
    final e = node.getElement(
      'penClr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_Color(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_PresentationProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_HtmlPublishProperties? get htmlPubPr {
    final e = node.getElement(
      'htmlPubPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_HtmlPublishProperties(e) : null;
  }

  P_CT_WebProperties? get webPr {
    final e = node.getElement(
      'webPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_WebProperties(e) : null;
  }

  P_CT_PrintProperties? get prnPr {
    final e = node.getElement(
      'prnPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_PrintProperties(e) : null;
  }

  P_CT_ShowProperties? get showPr {
    final e = node.getElement(
      'showPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ShowProperties(e) : null;
  }

  D_CT_ColorMRU? get clrMru {
    final e = node.getElement(
      'clrMru',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ColorMRU(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_HeaderFooter(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get sldNum {
    return node.getAttribute(
              'sldNum',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'sldNum',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'sldNum',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get hdr {
    return node.getAttribute(
              'hdr',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hdr',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hdr',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get ftr {
    return node.getAttribute(
              'ftr',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'ftr',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'ftr',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get dt {
    return node.getAttribute(
              'dt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'dt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'dt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_Placeholder(_i1.XmlElement node) implements _i1.XmlElement {
  P_ST_PlaceholderType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_PlaceholderType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_Direction? get orient {
    return node.getAttribute(
              'orient',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_Direction.fromValue(
            node.getAttribute(
              'orient',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_PlaceholderSize? get sz {
    return node.getAttribute(
              'sz',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_PlaceholderSize.fromValue(
            node.getAttribute(
              'sz',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  int? get idx {
    return node.getAttribute(
              'idx',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? int.tryParse(
            node.getAttribute(
              'idx',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get hasCustomPrompt {
    return node.getAttribute(
              'hasCustomPrompt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'hasCustomPrompt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'hasCustomPrompt',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_ApplicationNonVisualDrawingProps(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get isPhoto {
    return node.getAttribute(
              'isPhoto',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'isPhoto',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'isPhoto',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get userDrawn {
    return node.getAttribute(
              'userDrawn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'userDrawn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'userDrawn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_Placeholder? get ph {
    final e = node.getElement(
      'ph',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Placeholder(e) : null;
  }

  D_CT_AudioCD? get audioCd {
    final e = node.getElement(
      'audioCd',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_AudioCD(e) : null;
  }

  D_CT_EmbeddedWAVAudioFile? get wavAudioFile {
    final e = node.getElement(
      'wavAudioFile',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_EmbeddedWAVAudioFile(e) : null;
  }

  D_CT_AudioFile? get audioFile {
    final e = node.getElement(
      'audioFile',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_AudioFile(e) : null;
  }

  D_CT_VideoFile? get videoFile {
    final e = node.getElement(
      'videoFile',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_VideoFile(e) : null;
  }

  D_CT_QuickTimeFile? get quickTimeFile {
    final e = node.getElement(
      'quickTimeFile',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_QuickTimeFile(e) : null;
  }

  P_CT_CustomerDataList? get custDataLst {
    final e = node.getElement(
      'custDataLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CustomerDataList(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_ShapeNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualDrawingShapeProps? get cNvSpPr {
    final e = node.getElement(
      'cNvSpPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingShapeProps(e) : null;
  }

  P_CT_ApplicationNonVisualDrawingProps? get nvPr {
    final e = node.getElement(
      'nvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ApplicationNonVisualDrawingProps(e) : null;
  }
}
extension type P_CT_Shape(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get useBgFill {
    return node.getAttribute(
              'useBgFill',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'useBgFill',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'useBgFill',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_ShapeNonVisual? get nvSpPr {
    final e = node.getElement(
      'nvSpPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ShapeNonVisual(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  D_CT_TextBody? get txBody {
    final e = node.getElement(
      'txBody',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_TextBody(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_ConnectorNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualConnectorProperties? get cNvCxnSpPr {
    final e = node.getElement(
      'cNvCxnSpPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualConnectorProperties(e) : null;
  }

  P_CT_ApplicationNonVisualDrawingProps? get nvPr {
    final e = node.getElement(
      'nvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ApplicationNonVisualDrawingProps(e) : null;
  }
}
extension type P_CT_Connector(_i1.XmlElement node) implements _i1.XmlElement {
  P_CT_ConnectorNonVisual? get nvCxnSpPr {
    final e = node.getElement(
      'nvCxnSpPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ConnectorNonVisual(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_PictureNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualPictureProperties? get cNvPicPr {
    final e = node.getElement(
      'cNvPicPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualPictureProperties(e) : null;
  }

  P_CT_ApplicationNonVisualDrawingProps? get nvPr {
    final e = node.getElement(
      'nvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ApplicationNonVisualDrawingProps(e) : null;
  }
}
extension type P_CT_Picture(_i1.XmlElement node) implements _i1.XmlElement {
  P_CT_PictureNonVisual? get nvPicPr {
    final e = node.getElement(
      'nvPicPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_PictureNonVisual(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_ShapeProperties? get spPr {
    final e = node.getElement(
      'spPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ShapeProperties(e) : null;
  }

  D_CT_ShapeStyle? get style {
    final e = node.getElement(
      'style',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ShapeStyle(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_GraphicalObjectFrameNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGraphicFrameProperties? get cNvGraphicFramePr {
    final e = node.getElement(
      'cNvGraphicFramePr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualGraphicFrameProperties(e) : null;
  }

  P_CT_ApplicationNonVisualDrawingProps? get nvPr {
    final e = node.getElement(
      'nvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ApplicationNonVisualDrawingProps(e) : null;
  }
}
extension type P_CT_GraphicalObjectFrame(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_ST_BlackWhiteMode? get bwMode {
    return node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? D_ST_BlackWhiteMode.fromValue(
            node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_GraphicalObjectFrameNonVisual? get nvGraphicFramePr {
    final e = node.getElement(
      'nvGraphicFramePr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_GraphicalObjectFrameNonVisual(e) : null;
  }

  D_CT_Transform2D? get xfrm {
    final e = node.getElement(
      'xfrm',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_Transform2D(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_GroupShapeNonVisual(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_NonVisualDrawingProps? get cNvPr {
    final e = node.getElement(
      'cNvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualDrawingProps(e) : null;
  }

  D_CT_NonVisualGroupDrawingShapeProps? get cNvGrpSpPr {
    final e = node.getElement(
      'cNvGrpSpPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NonVisualGroupDrawingShapeProps(e) : null;
  }

  P_CT_ApplicationNonVisualDrawingProps? get nvPr {
    final e = node.getElement(
      'nvPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ApplicationNonVisualDrawingProps(e) : null;
  }
}
extension type P_CT_GroupShape(_i1.XmlElement node) implements _i1.XmlElement {
  P_CT_GroupShapeNonVisual? get nvGrpSpPr {
    final e = node.getElement(
      'nvGrpSpPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_GroupShapeNonVisual(e) : null;
  }

  D_CT_GroupShapeProperties? get grpSpPr {
    final e = node.getElement(
      'grpSpPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_GroupShapeProperties(e) : null;
  }

  Iterable<P_CT_Shape> get sp {
    return node
        .findElements(
          'sp',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Shape.new);
  }

  Iterable<P_CT_GroupShape> get grpSp {
    return node
        .findElements(
          'grpSp',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_GroupShape.new);
  }

  Iterable<P_CT_GraphicalObjectFrame> get graphicFrame {
    return node
        .findElements(
          'graphicFrame',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_GraphicalObjectFrame.new);
  }

  Iterable<P_CT_Connector> get cxnSp {
    return node
        .findElements(
          'cxnSp',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Connector.new);
  }

  Iterable<P_CT_Picture> get pic {
    return node
        .findElements(
          'pic',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Picture.new);
  }

  Iterable<P_CT_Rel> get contentPart {
    return node
        .findElements(
          'contentPart',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Rel.new);
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_Rel(_i1.XmlElement node) implements _i1.XmlElement {}
extension type P_CT_BackgroundProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get shadeToTitle {
    return node.getAttribute(
              'shadeToTitle',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'shadeToTitle',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'shadeToTitle',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  D_CT_NoFillProperties? get noFill {
    final e = node.getElement(
      'noFill',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_NoFillProperties(e) : null;
  }

  D_CT_SolidColorFillProperties? get solidFill {
    final e = node.getElement(
      'solidFill',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_SolidColorFillProperties(e) : null;
  }

  D_CT_GradientFillProperties? get gradFill {
    final e = node.getElement(
      'gradFill',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_GradientFillProperties(e) : null;
  }

  D_CT_BlipFillProperties? get blipFill {
    final e = node.getElement(
      'blipFill',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_BlipFillProperties(e) : null;
  }

  D_CT_PatternFillProperties? get pattFill {
    final e = node.getElement(
      'pattFill',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_PatternFillProperties(e) : null;
  }

  D_CT_GroupFillProperties? get grpFill {
    final e = node.getElement(
      'grpFill',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_GroupFillProperties(e) : null;
  }

  D_CT_EffectList? get effectLst {
    final e = node.getElement(
      'effectLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_EffectList(e) : null;
  }

  D_CT_EffectContainer? get effectDag {
    final e = node.getElement(
      'effectDag',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_EffectContainer(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_Background(_i1.XmlElement node) implements _i1.XmlElement {
  D_ST_BlackWhiteMode? get bwMode {
    return node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? D_ST_BlackWhiteMode.fromValue(
            node.getAttribute(
              'bwMode',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_CT_BackgroundProperties? get bgPr {
    final e = node.getElement(
      'bgPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_BackgroundProperties(e) : null;
  }

  D_CT_StyleMatrixReference? get bgRef {
    final e = node.getElement(
      'bgRef',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_StyleMatrixReference(e) : null;
  }
}
extension type P_CT_CommonSlideData(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_Background? get bg {
    final e = node.getElement(
      'bg',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_Background(e) : null;
  }

  P_CT_GroupShape? get spTree {
    final e = node.getElement(
      'spTree',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_GroupShape(e) : null;
  }

  P_CT_CustomerDataList? get custDataLst {
    final e = node.getElement(
      'custDataLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CustomerDataList(e) : null;
  }

  P_CT_ControlList? get controls {
    final e = node.getElement(
      'controls',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ControlList(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_Slide(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get show_ {
    return node.getAttribute(
              'show',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'show',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'show',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_CommonSlideData? get cSld {
    final e = node.getElement(
      'cSld',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonSlideData(e) : null;
  }

  D_CT_ColorMappingOverride? get clrMapOvr {
    final e = node.getElement(
      'clrMapOvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ColorMappingOverride(e) : null;
  }

  P_CT_SlideTransition? get transition {
    final e = node.getElement(
      'transition',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideTransition(e) : null;
  }

  P_CT_SlideTiming? get timing {
    final e = node.getElement(
      'timing',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideTiming(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_SlideLayout(_i1.XmlElement node) implements _i1.XmlElement {
  String? get matchingName {
    return node.getAttribute(
      'matchingName',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_ST_SlideLayoutType? get type {
    return node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_SlideLayoutType.fromValue(
            node.getAttribute(
              'type',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get preserve {
    return node.getAttribute(
              'preserve',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preserve',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preserve',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get userDrawn {
    return node.getAttribute(
              'userDrawn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'userDrawn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'userDrawn',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_CommonSlideData? get cSld {
    final e = node.getElement(
      'cSld',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonSlideData(e) : null;
  }

  D_CT_ColorMappingOverride? get clrMapOvr {
    final e = node.getElement(
      'clrMapOvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ColorMappingOverride(e) : null;
  }

  P_CT_SlideTransition? get transition {
    final e = node.getElement(
      'transition',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideTransition(e) : null;
  }

  P_CT_SlideTiming? get timing {
    final e = node.getElement(
      'timing',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideTiming(e) : null;
  }

  P_CT_HeaderFooter? get hf {
    final e = node.getElement(
      'hf',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_HeaderFooter(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_SlideMasterTextStyles(_i1.XmlElement node)
    implements _i1.XmlElement {
  D_CT_TextListStyle? get titleStyle {
    final e = node.getElement(
      'titleStyle',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_TextListStyle(e) : null;
  }

  D_CT_TextListStyle? get bodyStyle {
    final e = node.getElement(
      'bodyStyle',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_TextListStyle(e) : null;
  }

  D_CT_TextListStyle? get otherStyle {
    final e = node.getElement(
      'otherStyle',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_TextListStyle(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_SlideLayoutIdListEntry(_i1.XmlElement node)
    implements _i1.XmlElement {
  String? get id {
    return node.getAttribute(
      'id',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_SlideLayoutIdList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_SlideLayoutIdListEntry> get sldLayoutId {
    return node
        .findElements(
          'sldLayoutId',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_SlideLayoutIdListEntry.new);
  }
}
extension type P_CT_SlideMaster(_i1.XmlElement node) implements _i1.XmlElement {
  bool? get preserve {
    return node.getAttribute(
              'preserve',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preserve',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preserve',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_CommonSlideData? get cSld {
    final e = node.getElement(
      'cSld',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonSlideData(e) : null;
  }

  D_CT_ColorMapping? get clrMap {
    final e = node.getElement(
      'clrMap',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ColorMapping(e) : null;
  }

  P_CT_SlideLayoutIdList? get sldLayoutIdLst {
    final e = node.getElement(
      'sldLayoutIdLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideLayoutIdList(e) : null;
  }

  P_CT_SlideTransition? get transition {
    final e = node.getElement(
      'transition',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideTransition(e) : null;
  }

  P_CT_SlideTiming? get timing {
    final e = node.getElement(
      'timing',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideTiming(e) : null;
  }

  P_CT_HeaderFooter? get hf {
    final e = node.getElement(
      'hf',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_HeaderFooter(e) : null;
  }

  P_CT_SlideMasterTextStyles? get txStyles {
    final e = node.getElement(
      'txStyles',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideMasterTextStyles(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_HandoutMaster(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_CommonSlideData? get cSld {
    final e = node.getElement(
      'cSld',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonSlideData(e) : null;
  }

  D_CT_ColorMapping? get clrMap {
    final e = node.getElement(
      'clrMap',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ColorMapping(e) : null;
  }

  P_CT_HeaderFooter? get hf {
    final e = node.getElement(
      'hf',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_HeaderFooter(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_NotesMaster(_i1.XmlElement node) implements _i1.XmlElement {
  P_CT_CommonSlideData? get cSld {
    final e = node.getElement(
      'cSld',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonSlideData(e) : null;
  }

  D_CT_ColorMapping? get clrMap {
    final e = node.getElement(
      'clrMap',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ColorMapping(e) : null;
  }

  P_CT_HeaderFooter? get hf {
    final e = node.getElement(
      'hf',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_HeaderFooter(e) : null;
  }

  D_CT_TextListStyle? get notesStyle {
    final e = node.getElement(
      'notesStyle',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_TextListStyle(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_NotesSlide(_i1.XmlElement node) implements _i1.XmlElement {
  P_CT_CommonSlideData? get cSld {
    final e = node.getElement(
      'cSld',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonSlideData(e) : null;
  }

  D_CT_ColorMappingOverride? get clrMapOvr {
    final e = node.getElement(
      'clrMapOvr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_ColorMappingOverride(e) : null;
  }

  P_CT_ExtensionListModify? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionListModify(e) : null;
  }
}
extension type P_CT_SlideSyncProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  String get serverSldId {
    return node.getAttribute(
      'serverSldId',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  String get serverSldModifiedTime {
    return node.getAttribute(
      'serverSldModifiedTime',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  String get clientInsertedTime {
    return node.getAttribute(
      'clientInsertedTime',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_StringTag(_i1.XmlElement node) implements _i1.XmlElement {
  String get name {
    return node.getAttribute(
      'name',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }

  String get val {
    return node.getAttribute(
      'val',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    )!;
  }
}
extension type P_CT_TagList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<P_CT_StringTag> get tag {
    return node
        .findElements(
          'tag',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_StringTag.new);
  }
}
extension type P_CT_NormalViewPortion(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get autoAdjust {
    return node.getAttribute(
              'autoAdjust',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'autoAdjust',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'autoAdjust',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }
}
extension type P_CT_NormalViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get showOutlineIcons {
    return node.getAttribute(
              'showOutlineIcons',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showOutlineIcons',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showOutlineIcons',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get snapVertSplitter {
    return node.getAttribute(
              'snapVertSplitter',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'snapVertSplitter',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'snapVertSplitter',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_ST_SplitterBarState? get vertBarState {
    return node.getAttribute(
              'vertBarState',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_SplitterBarState.fromValue(
            node.getAttribute(
              'vertBarState',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  P_ST_SplitterBarState? get horzBarState {
    return node.getAttribute(
              'horzBarState',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_SplitterBarState.fromValue(
            node.getAttribute(
              'horzBarState',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get preferSingleView {
    return node.getAttribute(
              'preferSingleView',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'preferSingleView',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'preferSingleView',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_NormalViewPortion? get restoredLeft {
    final e = node.getElement(
      'restoredLeft',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_NormalViewPortion(e) : null;
  }

  P_CT_NormalViewPortion? get restoredTop {
    final e = node.getElement(
      'restoredTop',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_NormalViewPortion(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_CommonViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get varScale {
    return node.getAttribute(
              'varScale',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'varScale',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'varScale',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  D_CT_Scale2D? get scale {
    final e = node.getElement(
      'scale',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_Scale2D(e) : null;
  }

  D_CT_Point2D? get origin {
    final e = node.getElement(
      'origin',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_Point2D(e) : null;
  }
}
extension type P_CT_NotesTextViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_CommonViewProperties? get cViewPr {
    final e = node.getElement(
      'cViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonViewProperties(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_OutlineViewSlideEntry(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get collapse {
    return node.getAttribute(
              'collapse',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'collapse',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'collapse',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }
}
extension type P_CT_OutlineViewSlideList(_i1.XmlElement node)
    implements _i1.XmlElement {
  Iterable<P_CT_OutlineViewSlideEntry> get sld {
    return node
        .findElements(
          'sld',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_OutlineViewSlideEntry.new);
  }
}
extension type P_CT_OutlineViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_CommonViewProperties? get cViewPr {
    final e = node.getElement(
      'cViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonViewProperties(e) : null;
  }

  P_CT_OutlineViewSlideList? get sldLst {
    final e = node.getElement(
      'sldLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OutlineViewSlideList(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_SlideSorterViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get showFormatting {
    return node.getAttribute(
              'showFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showFormatting',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_CommonViewProperties? get cViewPr {
    final e = node.getElement(
      'cViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonViewProperties(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_Guide(_i1.XmlElement node) implements _i1.XmlElement {
  P_ST_Direction? get orient {
    return node.getAttribute(
              'orient',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_Direction.fromValue(
            node.getAttribute(
              'orient',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }
}
extension type P_CT_GuideList(_i1.XmlElement node) implements _i1.XmlElement {
  Iterable<P_CT_Guide> get guide {
    return node
        .findElements(
          'guide',
          namespace:
              'http://schemas.openxmlformats.org/presentationml/2006/main',
        )
        .map(P_CT_Guide.new);
  }
}
extension type P_CT_CommonSlideViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  bool? get snapToGrid {
    return node.getAttribute(
              'snapToGrid',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'snapToGrid',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'snapToGrid',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get snapToObjects {
    return node.getAttribute(
              'snapToObjects',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'snapToObjects',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'snapToObjects',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  bool? get showGuides {
    return node.getAttribute(
              'showGuides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showGuides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showGuides',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_CommonViewProperties? get cViewPr {
    final e = node.getElement(
      'cViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonViewProperties(e) : null;
  }

  P_CT_GuideList? get guideLst {
    final e = node.getElement(
      'guideLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_GuideList(e) : null;
  }
}
extension type P_CT_SlideViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_CommonSlideViewProperties? get cSldViewPr {
    final e = node.getElement(
      'cSldViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonSlideViewProperties(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_NotesViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_CT_CommonSlideViewProperties? get cSldViewPr {
    final e = node.getElement(
      'cSldViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_CommonSlideViewProperties(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}
extension type P_CT_ViewProperties(_i1.XmlElement node)
    implements _i1.XmlElement {
  P_ST_ViewType? get lastView {
    return node.getAttribute(
              'lastView',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) !=
            null
        ? P_ST_ViewType.fromValue(
            node.getAttribute(
              'lastView',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            )!,
          )
        : null;
  }

  bool? get showComments {
    return node.getAttribute(
              'showComments',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            '1' ||
        node.getAttribute(
              'showComments',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'true' ||
        node.getAttribute(
              'showComments',
              namespace:
                  'http://schemas.openxmlformats.org/presentationml/2006/main',
            ) ==
            'on';
  }

  P_CT_NormalViewProperties? get normalViewPr {
    final e = node.getElement(
      'normalViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_NormalViewProperties(e) : null;
  }

  P_CT_SlideViewProperties? get slideViewPr {
    final e = node.getElement(
      'slideViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideViewProperties(e) : null;
  }

  P_CT_OutlineViewProperties? get outlineViewPr {
    final e = node.getElement(
      'outlineViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_OutlineViewProperties(e) : null;
  }

  P_CT_NotesTextViewProperties? get notesTextViewPr {
    final e = node.getElement(
      'notesTextViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_NotesTextViewProperties(e) : null;
  }

  P_CT_SlideSorterViewProperties? get sorterViewPr {
    final e = node.getElement(
      'sorterViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_SlideSorterViewProperties(e) : null;
  }

  P_CT_NotesViewProperties? get notesViewPr {
    final e = node.getElement(
      'notesViewPr',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_NotesViewProperties(e) : null;
  }

  D_CT_PositiveSize2D? get gridSpacing {
    final e = node.getElement(
      'gridSpacing',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? D_CT_PositiveSize2D(e) : null;
  }

  P_CT_ExtensionList? get extLst {
    final e = node.getElement(
      'extLst',
      namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
    );
    return e != null ? P_CT_ExtensionList(e) : null;
  }
}

enum P_ST_TransitionSideDirectionType {
  l('l'),
  u('u'),
  r('r'),
  d('d');

  const P_ST_TransitionSideDirectionType(this.value);

  final String value;

  static P_ST_TransitionSideDirectionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TransitionCornerDirectionType {
  lu('lu'),
  ru('ru'),
  ld('ld'),
  rd('rd');

  const P_ST_TransitionCornerDirectionType(this.value);

  final String value;

  static P_ST_TransitionCornerDirectionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TransitionInOutDirectionType {
  out('out'),
  in_('in');

  const P_ST_TransitionInOutDirectionType(this.value);

  final String value;

  static P_ST_TransitionInOutDirectionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TransitionSpeed {
  slow('slow'),
  med('med'),
  fast('fast');

  const P_ST_TransitionSpeed(this.value);

  final String value;

  static P_ST_TransitionSpeed? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTimeIndefinite {
  indefinite('indefinite');

  const P_ST_TLTimeIndefinite(this.value);

  final String value;

  static P_ST_TLTimeIndefinite? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_IterateType {
  el('el'),
  wd('wd'),
  lt('lt');

  const P_ST_IterateType(this.value);

  final String value;

  static P_ST_IterateType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLChartSubelementType {
  gridLegend('gridLegend'),
  series('series'),
  category('category'),
  ptInSeries('ptInSeries'),
  ptInCategory('ptInCategory');

  const P_ST_TLChartSubelementType(this.value);

  final String value;

  static P_ST_TLChartSubelementType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTriggerRuntimeNode {
  first('first'),
  last('last'),
  all('all');

  const P_ST_TLTriggerRuntimeNode(this.value);

  final String value;

  static P_ST_TLTriggerRuntimeNode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTriggerEvent {
  onBegin('onBegin'),
  onEnd('onEnd'),
  begin('begin'),
  end('end'),
  onClick('onClick'),
  onDblClick('onDblClick'),
  onMouseOver('onMouseOver'),
  onMouseOut('onMouseOut'),
  onNext('onNext'),
  onPrev('onPrev'),
  onStopAudio('onStopAudio');

  const P_ST_TLTriggerEvent(this.value);

  final String value;

  static P_ST_TLTriggerEvent? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTimeNodePresetClassType {
  entr('entr'),
  exit('exit'),
  emph('emph'),
  path('path'),
  verb('verb'),
  mediacall('mediacall');

  const P_ST_TLTimeNodePresetClassType(this.value);

  final String value;

  static P_ST_TLTimeNodePresetClassType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTimeNodeRestartType {
  always('always'),
  whenNotActive('whenNotActive'),
  never('never');

  const P_ST_TLTimeNodeRestartType(this.value);

  final String value;

  static P_ST_TLTimeNodeRestartType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTimeNodeFillType {
  remove('remove'),
  freeze('freeze'),
  hold('hold'),
  transition('transition');

  const P_ST_TLTimeNodeFillType(this.value);

  final String value;

  static P_ST_TLTimeNodeFillType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTimeNodeSyncType {
  canSlip('canSlip'),
  locked('locked');

  const P_ST_TLTimeNodeSyncType(this.value);

  final String value;

  static P_ST_TLTimeNodeSyncType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTimeNodeMasterRelation {
  sameClick('sameClick'),
  lastClick('lastClick'),
  nextClick('nextClick');

  const P_ST_TLTimeNodeMasterRelation(this.value);

  final String value;

  static P_ST_TLTimeNodeMasterRelation? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLTimeNodeType {
  clickEffect('clickEffect'),
  withEffect('withEffect'),
  afterEffect('afterEffect'),
  mainSeq('mainSeq'),
  interactiveSeq('interactiveSeq'),
  clickPar('clickPar'),
  withGroup('withGroup'),
  afterGroup('afterGroup'),
  tmRoot('tmRoot');

  const P_ST_TLTimeNodeType(this.value);

  final String value;

  static P_ST_TLTimeNodeType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLNextActionType {
  none('none'),
  seek('seek');

  const P_ST_TLNextActionType(this.value);

  final String value;

  static P_ST_TLNextActionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLPreviousActionType {
  none('none'),
  skipTimed('skipTimed');

  const P_ST_TLPreviousActionType(this.value);

  final String value;

  static P_ST_TLPreviousActionType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLBehaviorAdditiveType {
  base('base'),
  sum('sum'),
  repl('repl'),
  mult('mult'),
  none('none');

  const P_ST_TLBehaviorAdditiveType(this.value);

  final String value;

  static P_ST_TLBehaviorAdditiveType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLBehaviorAccumulateType {
  none('none'),
  always('always');

  const P_ST_TLBehaviorAccumulateType(this.value);

  final String value;

  static P_ST_TLBehaviorAccumulateType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLBehaviorTransformType {
  pt('pt'),
  img('img');

  const P_ST_TLBehaviorTransformType(this.value);

  final String value;

  static P_ST_TLBehaviorTransformType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLBehaviorOverrideType {
  normal('normal'),
  childStyle('childStyle');

  const P_ST_TLBehaviorOverrideType(this.value);

  final String value;

  static P_ST_TLBehaviorOverrideType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLAnimateBehaviorCalcMode {
  discrete('discrete'),
  lin('lin'),
  fmla('fmla');

  const P_ST_TLAnimateBehaviorCalcMode(this.value);

  final String value;

  static P_ST_TLAnimateBehaviorCalcMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLAnimateBehaviorValueType {
  str('str'),
  num_('num'),
  clr('clr');

  const P_ST_TLAnimateBehaviorValueType(this.value);

  final String value;

  static P_ST_TLAnimateBehaviorValueType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLAnimateColorSpace {
  rgb('rgb'),
  hsl('hsl');

  const P_ST_TLAnimateColorSpace(this.value);

  final String value;

  static P_ST_TLAnimateColorSpace? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLAnimateColorDirection {
  cw('cw'),
  ccw('ccw');

  const P_ST_TLAnimateColorDirection(this.value);

  final String value;

  static P_ST_TLAnimateColorDirection? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLAnimateEffectTransition {
  in_('in'),
  out('out'),
  none('none');

  const P_ST_TLAnimateEffectTransition(this.value);

  final String value;

  static P_ST_TLAnimateEffectTransition? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLAnimateMotionBehaviorOrigin {
  parent('parent'),
  layout('layout');

  const P_ST_TLAnimateMotionBehaviorOrigin(this.value);

  final String value;

  static P_ST_TLAnimateMotionBehaviorOrigin? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLAnimateMotionPathEditMode {
  relative('relative'),
  fixed('fixed');

  const P_ST_TLAnimateMotionPathEditMode(this.value);

  final String value;

  static P_ST_TLAnimateMotionPathEditMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLCommandType {
  evt('evt'),
  call('call'),
  verb('verb');

  const P_ST_TLCommandType(this.value);

  final String value;

  static P_ST_TLCommandType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLParaBuildType {
  allAtOnce('allAtOnce'),
  p('p'),
  cust('cust'),
  whole('whole');

  const P_ST_TLParaBuildType(this.value);

  final String value;

  static P_ST_TLParaBuildType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLDiagramBuildType {
  whole('whole'),
  depthByNode('depthByNode'),
  depthByBranch('depthByBranch'),
  breadthByNode('breadthByNode'),
  breadthByLvl('breadthByLvl'),
  cw('cw'),
  cwIn('cwIn'),
  cwOut('cwOut'),
  ccw('ccw'),
  ccwIn('ccwIn'),
  ccwOut('ccwOut'),
  inByRing('inByRing'),
  outByRing('outByRing'),
  up('up'),
  down('down'),
  allAtOnce('allAtOnce'),
  cust('cust');

  const P_ST_TLDiagramBuildType(this.value);

  final String value;

  static P_ST_TLDiagramBuildType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_TLOleChartBuildType {
  allAtOnce('allAtOnce'),
  series('series'),
  category('category'),
  seriesEl('seriesEl'),
  categoryEl('categoryEl');

  const P_ST_TLOleChartBuildType(this.value);

  final String value;

  static P_ST_TLOleChartBuildType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_Direction {
  horz('horz'),
  vert('vert');

  const P_ST_Direction(this.value);

  final String value;

  static P_ST_Direction? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_OleObjectFollowColorScheme {
  none('none'),
  full('full'),
  textAndBackground('textAndBackground');

  const P_ST_OleObjectFollowColorScheme(this.value);

  final String value;

  static P_ST_OleObjectFollowColorScheme? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_PhotoAlbumLayout {
  fitToSlide('fitToSlide'),
  v1pic('1pic'),
  v2pic('2pic'),
  v4pic('4pic'),
  v1picTitle('1picTitle'),
  v2picTitle('2picTitle'),
  v4picTitle('4picTitle');

  const P_ST_PhotoAlbumLayout(this.value);

  final String value;

  static P_ST_PhotoAlbumLayout? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_PhotoAlbumFrameShape {
  frameStyle1('frameStyle1'),
  frameStyle2('frameStyle2'),
  frameStyle3('frameStyle3'),
  frameStyle4('frameStyle4'),
  frameStyle5('frameStyle5'),
  frameStyle6('frameStyle6'),
  frameStyle7('frameStyle7');

  const P_ST_PhotoAlbumFrameShape(this.value);

  final String value;

  static P_ST_PhotoAlbumFrameShape? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_SlideSizeType {
  screen4x3('screen4x3'),
  letter('letter'),
  A4('A4'),
  v35mm('35mm'),
  overhead('overhead'),
  banner('banner'),
  custom('custom'),
  ledger('ledger'),
  A3('A3'),
  B4ISO('B4ISO'),
  B5ISO('B5ISO'),
  B4JIS('B4JIS'),
  B5JIS('B5JIS'),
  hagakiCard('hagakiCard'),
  screen16x9('screen16x9'),
  screen16x10('screen16x10');

  const P_ST_SlideSizeType(this.value);

  final String value;

  static P_ST_SlideSizeType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_WebColorType {
  none('none'),
  browser('browser'),
  presentationText('presentationText'),
  presentationAccent('presentationAccent'),
  whiteTextOnBlack('whiteTextOnBlack'),
  blackTextOnWhite('blackTextOnWhite');

  const P_ST_WebColorType(this.value);

  final String value;

  static P_ST_WebColorType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_WebScreenSize {
  v544x376('544x376'),
  v640x480('640x480'),
  v720x512('720x512'),
  v800x600('800x600'),
  v1024x768('1024x768'),
  v1152x882('1152x882'),
  v1152x900('1152x900'),
  v1280x1024('1280x1024'),
  v1600x1200('1600x1200'),
  v1800x1400('1800x1400'),
  v1920x1200('1920x1200');

  const P_ST_WebScreenSize(this.value);

  final String value;

  static P_ST_WebScreenSize? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_PrintWhat {
  slides('slides'),
  handouts1('handouts1'),
  handouts2('handouts2'),
  handouts3('handouts3'),
  handouts4('handouts4'),
  handouts6('handouts6'),
  handouts9('handouts9'),
  notes('notes'),
  outline('outline');

  const P_ST_PrintWhat(this.value);

  final String value;

  static P_ST_PrintWhat? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_PrintColorMode {
  bw('bw'),
  gray('gray'),
  clr('clr');

  const P_ST_PrintColorMode(this.value);

  final String value;

  static P_ST_PrintColorMode? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_PlaceholderType {
  title('title'),
  body('body'),
  ctrTitle('ctrTitle'),
  subTitle('subTitle'),
  dt('dt'),
  sldNum('sldNum'),
  ftr('ftr'),
  hdr('hdr'),
  obj('obj'),
  chart('chart'),
  tbl('tbl'),
  clipArt('clipArt'),
  dgm('dgm'),
  media('media'),
  sldImg('sldImg'),
  pic('pic');

  const P_ST_PlaceholderType(this.value);

  final String value;

  static P_ST_PlaceholderType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_PlaceholderSize {
  full('full'),
  half('half'),
  quarter('quarter');

  const P_ST_PlaceholderSize(this.value);

  final String value;

  static P_ST_PlaceholderSize? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_SlideLayoutType {
  title('title'),
  tx('tx'),
  twoColTx('twoColTx'),
  tbl('tbl'),
  txAndChart('txAndChart'),
  chartAndTx('chartAndTx'),
  dgm('dgm'),
  chart('chart'),
  txAndClipArt('txAndClipArt'),
  clipArtAndTx('clipArtAndTx'),
  titleOnly('titleOnly'),
  blank('blank'),
  txAndObj('txAndObj'),
  objAndTx('objAndTx'),
  objOnly('objOnly'),
  obj('obj'),
  txAndMedia('txAndMedia'),
  mediaAndTx('mediaAndTx'),
  objOverTx('objOverTx'),
  txOverObj('txOverObj'),
  txAndTwoObj('txAndTwoObj'),
  twoObjAndTx('twoObjAndTx'),
  twoObjOverTx('twoObjOverTx'),
  fourObj('fourObj'),
  vertTx('vertTx'),
  clipArtAndVertTx('clipArtAndVertTx'),
  vertTitleAndTx('vertTitleAndTx'),
  vertTitleAndTxOverChart('vertTitleAndTxOverChart'),
  twoObj('twoObj'),
  objAndTwoObj('objAndTwoObj'),
  twoObjAndObj('twoObjAndObj'),
  cust('cust'),
  secHead('secHead'),
  twoTxTwoObj('twoTxTwoObj'),
  objTx('objTx'),
  picTx('picTx');

  const P_ST_SlideLayoutType(this.value);

  final String value;

  static P_ST_SlideLayoutType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_SplitterBarState {
  minimized('minimized'),
  restored('restored'),
  maximized('maximized');

  const P_ST_SplitterBarState(this.value);

  final String value;

  static P_ST_SplitterBarState? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}

enum P_ST_ViewType {
  sldView('sldView'),
  sldMasterView('sldMasterView'),
  notesView('notesView'),
  handoutView('handoutView'),
  notesMasterView('notesMasterView'),
  outlineView('outlineView'),
  sldSorterView('sldSorterView'),
  sldThumbnailView('sldThumbnailView');

  const P_ST_ViewType(this.value);

  final String value;

  static P_ST_ViewType? fromValue(String s) {
    for (final val in values) {
      if (val.value == s) return val;
    }
    return null;
  }
}
