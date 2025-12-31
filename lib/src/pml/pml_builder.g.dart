// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, camel_case_extensions, unnecessary_this, curly_braces_in_flow_control_structures, prefer_null_aware_operators, unnecessary_non_null_assertion, unnecessary_null_comparison, unused_import, duplicate_import, annotate_overrides
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:xml/xml.dart' as _i1;
import 'package:xml/xml.dart';
import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/shared/shared.g.dart';
import 'package:open_xml/src/dml/dml.g.dart';
import 'package:open_xml/src/wml/wml.g.dart';

extension P_CT_SideDirectionTransition_Builder on _i1.XmlBuilder {
  void p_ct_sidedirectiontransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TransitionSideDirectionType? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, dir);
        },
      );
    } else {
      _buildBody(children, dir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TransitionSideDirectionType? dir,
  ) {
    if (dir != null) this.attribute('dir', dir!.value);
    children?.call(this);
  }
}

extension P_CT_CornerDirectionTransition_Builder on _i1.XmlBuilder {
  void p_ct_cornerdirectiontransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TransitionCornerDirectionType? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, dir);
        },
      );
    } else {
      _buildBody(children, dir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TransitionCornerDirectionType? dir,
  ) {
    if (dir != null)
      this.attribute(
        'dir',
        dir!.value,
      );
    children?.call(this);
  }
}

extension P_CT_EightDirectionTransition_Builder on _i1.XmlBuilder {
  void p_ct_eightdirectiontransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_OrientationTransition_Builder on _i1.XmlBuilder {
  void p_ct_orientationtransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_Direction? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, dir);
        },
      );
    } else {
      _buildBody(children, dir);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, P_ST_Direction? dir) {
    if (dir != null)
      this.attribute(
        'dir',
        dir!.value,
      );
    children?.call(this);
  }
}

extension P_CT_InOutTransition_Builder on _i1.XmlBuilder {
  void p_ct_inouttransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TransitionInOutDirectionType? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, dir);
        },
      );
    } else {
      _buildBody(children, dir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TransitionInOutDirectionType? dir,
  ) {
    if (dir != null)
      this.attribute(
        'dir',
        dir!.value,
      );
    children?.call(this);
  }
}

extension P_CT_OptionalBlackTransition_Builder on _i1.XmlBuilder {
  void p_ct_optionalblacktransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? thruBlk,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, thruBlk);
        },
      );
    } else {
      _buildBody(children, thruBlk);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? thruBlk) {
    if (thruBlk != null)
      this.attribute('thruBlk', thruBlk == true ? 'true' : 'false');
    children?.call(this);
  }
}

extension P_CT_SplitTransition_Builder on _i1.XmlBuilder {
  void p_ct_splittransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_Direction? orient,
    P_ST_TransitionInOutDirectionType? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, orient, dir);
        },
      );
    } else {
      _buildBody(children, orient, dir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_Direction? orient,
    P_ST_TransitionInOutDirectionType? dir,
  ) {
    if (orient != null)
      this.attribute(
        'orient',
        orient!.value,
      );
    if (dir != null)
      this.attribute(
        'dir',
        dir!.value,
      );
    children?.call(this);
  }
}

extension P_CT_WheelTransition_Builder on _i1.XmlBuilder {
  void p_ct_wheeltransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    int? spokes,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, spokes);
        },
      );
    } else {
      _buildBody(children, spokes);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? spokes) {
    if (spokes != null) this.attribute('spokes', spokes.toString());
    children?.call(this);
  }
}

extension P_CT_TransitionStartSoundAction_Builder on _i1.XmlBuilder {
  void p_ct_transitionstartsoundaction({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? loop,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, loop);
        },
      );
    } else {
      _buildBody(children, loop);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? loop) {
    if (loop != null)
      this.attribute(
        'loop',
        loop == true ? 'true' : 'false',
      );
    children?.call(this);
  }
}

extension P_CT_TransitionSoundAction_Builder on _i1.XmlBuilder {
  void p_ct_transitionsoundaction({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideTransition_Builder on _i1.XmlBuilder {
  void p_ct_slidetransition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TransitionSpeed? spd,
    bool? advClick,
    int? advTm,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, spd, advClick, advTm);
        },
      );
    } else {
      _buildBody(children, spd, advClick, advTm);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TransitionSpeed? spd,
    bool? advClick,
    int? advTm,
  ) {
    if (spd != null) this.attribute('spd', spd!.value);
    if (advClick != null)
      this.attribute('advClick', advClick == true ? 'true' : 'false');
    if (advTm != null) this.attribute('advTm', advTm.toString());
    children?.call(this);
  }
}

extension P_CT_TLIterateIntervalTime_Builder on _i1.XmlBuilder {
  void p_ct_tliterateintervaltime({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLIterateIntervalPercentage_Builder on _i1.XmlBuilder {
  void p_ct_tliterateintervalpercentage({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLIterateData_Builder on _i1.XmlBuilder {
  void p_ct_tliteratedata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_IterateType? type,
    bool? backwards,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, backwards);
        },
      );
    } else {
      _buildBody(children, type, backwards);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_IterateType? type,
    bool? backwards,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (backwards != null)
      this.attribute(
        'backwards',
        backwards == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLSubShapeId_Builder on _i1.XmlBuilder {
  void p_ct_tlsubshapeid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? spid,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, spid);
        },
      );
    } else {
      _buildBody(children, spid);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? spid) {
    if (spid != null)
      this.attribute(
        'spid',
        spid,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTextTargetElement_Builder on _i1.XmlBuilder {
  void p_ct_tltexttargetelement({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLOleChartTargetElement_Builder on _i1.XmlBuilder {
  void p_ct_tlolecharttargetelement({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLChartSubelementType? type,
    int? lvl,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, lvl);
        },
      );
    } else {
      _buildBody(children, type, lvl);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLChartSubelementType? type,
    int? lvl,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (lvl != null)
      this.attribute(
        'lvl',
        lvl.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLShapeTargetElement_Builder on _i1.XmlBuilder {
  void p_ct_tlshapetargetelement({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? spid,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, spid);
        },
      );
    } else {
      _buildBody(children, spid);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? spid) {
    if (spid != null)
      this.attribute(
        'spid',
        spid,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTimeTargetElement_Builder on _i1.XmlBuilder {
  void p_ct_tltimetargetelement({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLTriggerTimeNodeID_Builder on _i1.XmlBuilder {
  void p_ct_tltriggertimenodeid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTriggerRuntimeNode_Builder on _i1.XmlBuilder {
  void p_ct_tltriggerruntimenode({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLTriggerRuntimeNode? val,
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
    P_ST_TLTriggerRuntimeNode? val,
  ) {
    if (val != null)
      this.attribute(
        'val',
        val!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTimeCondition_Builder on _i1.XmlBuilder {
  void p_ct_tltimecondition({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLTriggerEvent? evt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, evt);
        },
      );
    } else {
      _buildBody(children, evt);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLTriggerEvent? evt,
  ) {
    if (evt != null)
      this.attribute(
        'evt',
        evt!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTimeConditionList_Builder on _i1.XmlBuilder {
  void p_ct_tltimeconditionlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TimeNodeList_Builder on _i1.XmlBuilder {
  void p_ct_timenodelist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLCommonTimeNodeData_Builder on _i1.XmlBuilder {
  void p_ct_tlcommontimenodedata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? id,
    int? presetID,
    P_ST_TLTimeNodePresetClassType? presetClass,
    int? presetSubtype,
    bool? autoRev,
    P_ST_TLTimeNodeRestartType? restart,
    P_ST_TLTimeNodeFillType? fill,
    P_ST_TLTimeNodeSyncType? syncBehavior,
    String? tmFilter,
    String? evtFilter,
    bool? display,
    P_ST_TLTimeNodeMasterRelation? masterRel,
    int? bldLvl,
    int? grpId,
    bool? afterEffect,
    P_ST_TLTimeNodeType? nodeType,
    bool? nodePh,
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
            presetID,
            presetClass,
            presetSubtype,
            autoRev,
            restart,
            fill,
            syncBehavior,
            tmFilter,
            evtFilter,
            display,
            masterRel,
            bldLvl,
            grpId,
            afterEffect,
            nodeType,
            nodePh,
          );
        },
      );
    } else {
      _buildBody(
        children,
        id,
        presetID,
        presetClass,
        presetSubtype,
        autoRev,
        restart,
        fill,
        syncBehavior,
        tmFilter,
        evtFilter,
        display,
        masterRel,
        bldLvl,
        grpId,
        afterEffect,
        nodeType,
        nodePh,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? id,
    int? presetID,
    P_ST_TLTimeNodePresetClassType? presetClass,
    int? presetSubtype,
    bool? autoRev,
    P_ST_TLTimeNodeRestartType? restart,
    P_ST_TLTimeNodeFillType? fill,
    P_ST_TLTimeNodeSyncType? syncBehavior,
    String? tmFilter,
    String? evtFilter,
    bool? display,
    P_ST_TLTimeNodeMasterRelation? masterRel,
    int? bldLvl,
    int? grpId,
    bool? afterEffect,
    P_ST_TLTimeNodeType? nodeType,
    bool? nodePh,
  ) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (presetID != null)
      this.attribute(
        'presetID',
        presetID.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (presetClass != null)
      this.attribute(
        'presetClass',
        presetClass!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (presetSubtype != null)
      this.attribute(
        'presetSubtype',
        presetSubtype.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (autoRev != null)
      this.attribute(
        'autoRev',
        autoRev == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (restart != null)
      this.attribute(
        'restart',
        restart!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (fill != null)
      this.attribute(
        'fill',
        fill!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (syncBehavior != null)
      this.attribute(
        'syncBehavior',
        syncBehavior!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (tmFilter != null)
      this.attribute(
        'tmFilter',
        tmFilter,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (evtFilter != null)
      this.attribute(
        'evtFilter',
        evtFilter,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (display != null)
      this.attribute(
        'display',
        display == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (masterRel != null)
      this.attribute(
        'masterRel',
        masterRel!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (bldLvl != null)
      this.attribute(
        'bldLvl',
        bldLvl.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (grpId != null)
      this.attribute(
        'grpId',
        grpId.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (afterEffect != null)
      this.attribute(
        'afterEffect',
        afterEffect == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (nodeType != null)
      this.attribute(
        'nodeType',
        nodeType!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (nodePh != null)
      this.attribute(
        'nodePh',
        nodePh == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTimeNodeParallel_Builder on _i1.XmlBuilder {
  void p_ct_tltimenodeparallel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLTimeNodeSequence_Builder on _i1.XmlBuilder {
  void p_ct_tltimenodesequence({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? concurrent,
    P_ST_TLPreviousActionType? prevAc,
    P_ST_TLNextActionType? nextAc,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, concurrent, prevAc, nextAc);
        },
      );
    } else {
      _buildBody(children, concurrent, prevAc, nextAc);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? concurrent,
    P_ST_TLPreviousActionType? prevAc,
    P_ST_TLNextActionType? nextAc,
  ) {
    if (concurrent != null)
      this.attribute(
        'concurrent',
        concurrent == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (prevAc != null)
      this.attribute(
        'prevAc',
        prevAc!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (nextAc != null)
      this.attribute(
        'nextAc',
        nextAc!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTimeNodeExclusive_Builder on _i1.XmlBuilder {
  void p_ct_tltimenodeexclusive({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLBehaviorAttributeNameList_Builder on _i1.XmlBuilder {
  void p_ct_tlbehaviorattributenamelist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLCommonBehaviorData_Builder on _i1.XmlBuilder {
  void p_ct_tlcommonbehaviordata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLBehaviorAdditiveType? additive,
    P_ST_TLBehaviorAccumulateType? accumulate,
    P_ST_TLBehaviorTransformType? xfrmType,
    String? from,
    String? to,
    String? by,
    String? rctx,
    P_ST_TLBehaviorOverrideType? override,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            additive,
            accumulate,
            xfrmType,
            from,
            to,
            by,
            rctx,
            override,
          );
        },
      );
    } else {
      _buildBody(
        children,
        additive,
        accumulate,
        xfrmType,
        from,
        to,
        by,
        rctx,
        override,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLBehaviorAdditiveType? additive,
    P_ST_TLBehaviorAccumulateType? accumulate,
    P_ST_TLBehaviorTransformType? xfrmType,
    String? from,
    String? to,
    String? by,
    String? rctx,
    P_ST_TLBehaviorOverrideType? override,
  ) {
    if (additive != null)
      this.attribute(
        'additive',
        additive!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (accumulate != null)
      this.attribute(
        'accumulate',
        accumulate!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (xfrmType != null)
      this.attribute(
        'xfrmType',
        xfrmType!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (from != null)
      this.attribute(
        'from',
        from,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (to != null)
      this.attribute(
        'to',
        to,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (by != null)
      this.attribute(
        'by',
        by,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (rctx != null)
      this.attribute(
        'rctx',
        rctx,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (override != null)
      this.attribute(
        'override',
        override!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLAnimVariantBooleanVal_Builder on _i1.XmlBuilder {
  void p_ct_tlanimvariantbooleanval({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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
    if (val != null)
      this.attribute(
        'val',
        val == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLAnimVariantIntegerVal_Builder on _i1.XmlBuilder {
  void p_ct_tlanimvariantintegerval({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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
    if (val != null)
      this.attribute(
        'val',
        val.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLAnimVariantFloatVal_Builder on _i1.XmlBuilder {
  void p_ct_tlanimvariantfloatval({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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
    if (val != null)
      this.attribute(
        'val',
        val.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLAnimVariantStringVal_Builder on _i1.XmlBuilder {
  void p_ct_tlanimvariantstringval({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLAnimVariant_Builder on _i1.XmlBuilder {
  void p_ct_tlanimvariant({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLTimeAnimateValue_Builder on _i1.XmlBuilder {
  void p_ct_tltimeanimatevalue({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? fmla,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fmla);
        },
      );
    } else {
      _buildBody(children, fmla);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? fmla) {
    if (fmla != null)
      this.attribute(
        'fmla',
        fmla,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTimeAnimateValueList_Builder on _i1.XmlBuilder {
  void p_ct_tltimeanimatevaluelist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLAnimateBehavior_Builder on _i1.XmlBuilder {
  void p_ct_tlanimatebehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? by,
    String? from,
    String? to,
    P_ST_TLAnimateBehaviorCalcMode? calcmode,
    P_ST_TLAnimateBehaviorValueType? valueType,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, by, from, to, calcmode, valueType);
        },
      );
    } else {
      _buildBody(children, by, from, to, calcmode, valueType);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? by,
    String? from,
    String? to,
    P_ST_TLAnimateBehaviorCalcMode? calcmode,
    P_ST_TLAnimateBehaviorValueType? valueType,
  ) {
    if (by != null)
      this.attribute(
        'by',
        by,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (from != null)
      this.attribute(
        'from',
        from,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (to != null)
      this.attribute(
        'to',
        to,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (calcmode != null)
      this.attribute(
        'calcmode',
        calcmode!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (valueType != null)
      this.attribute(
        'valueType',
        valueType!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLByRgbColorTransform_Builder on _i1.XmlBuilder {
  void p_ct_tlbyrgbcolortransform({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLByHslColorTransform_Builder on _i1.XmlBuilder {
  void p_ct_tlbyhslcolortransform({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? h,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, h);
        },
      );
    } else {
      _buildBody(children, h);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? h) {
    if (h != null)
      this.attribute(
        'h',
        h,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLByAnimateColorTransform_Builder on _i1.XmlBuilder {
  void p_ct_tlbyanimatecolortransform({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLAnimateColorBehavior_Builder on _i1.XmlBuilder {
  void p_ct_tlanimatecolorbehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLAnimateColorSpace? clrSpc,
    P_ST_TLAnimateColorDirection? dir,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, clrSpc, dir);
        },
      );
    } else {
      _buildBody(children, clrSpc, dir);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLAnimateColorSpace? clrSpc,
    P_ST_TLAnimateColorDirection? dir,
  ) {
    if (clrSpc != null)
      this.attribute(
        'clrSpc',
        clrSpc!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (dir != null)
      this.attribute(
        'dir',
        dir!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLAnimateEffectBehavior_Builder on _i1.XmlBuilder {
  void p_ct_tlanimateeffectbehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLAnimateEffectTransition? transition,
    String? filter,
    String? prLst,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, transition, filter, prLst);
        },
      );
    } else {
      _buildBody(children, transition, filter, prLst);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLAnimateEffectTransition? transition,
    String? filter,
    String? prLst,
  ) {
    if (transition != null)
      this.attribute(
        'transition',
        transition!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (filter != null)
      this.attribute(
        'filter',
        filter,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (prLst != null)
      this.attribute(
        'prLst',
        prLst,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLPoint_Builder on _i1.XmlBuilder {
  void p_ct_tlpoint({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLAnimateMotionBehavior_Builder on _i1.XmlBuilder {
  void p_ct_tlanimatemotionbehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLAnimateMotionBehaviorOrigin? origin,
    String? path,
    P_ST_TLAnimateMotionPathEditMode? pathEditMode,
    String? rAng,
    String? ptsTypes,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, origin, path, pathEditMode, rAng, ptsTypes);
        },
      );
    } else {
      _buildBody(children, origin, path, pathEditMode, rAng, ptsTypes);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLAnimateMotionBehaviorOrigin? origin,
    String? path,
    P_ST_TLAnimateMotionPathEditMode? pathEditMode,
    String? rAng,
    String? ptsTypes,
  ) {
    if (origin != null)
      this.attribute(
        'origin',
        origin!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (path != null)
      this.attribute(
        'path',
        path,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (pathEditMode != null)
      this.attribute(
        'pathEditMode',
        pathEditMode!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (rAng != null)
      this.attribute(
        'rAng',
        rAng,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (ptsTypes != null)
      this.attribute(
        'ptsTypes',
        ptsTypes,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLAnimateRotationBehavior_Builder on _i1.XmlBuilder {
  void p_ct_tlanimaterotationbehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? by,
    String? from,
    String? to,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, by, from, to);
        },
      );
    } else {
      _buildBody(children, by, from, to);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? by,
    String? from,
    String? to,
  ) {
    if (by != null)
      this.attribute(
        'by',
        by,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (from != null)
      this.attribute(
        'from',
        from,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (to != null)
      this.attribute(
        'to',
        to,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLAnimateScaleBehavior_Builder on _i1.XmlBuilder {
  void p_ct_tlanimatescalebehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? zoomContents,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, zoomContents);
        },
      );
    } else {
      _buildBody(children, zoomContents);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? zoomContents) {
    if (zoomContents != null)
      this.attribute(
        'zoomContents',
        zoomContents == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLCommandBehavior_Builder on _i1.XmlBuilder {
  void p_ct_tlcommandbehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLCommandType? type,
    String? cmd,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, cmd);
        },
      );
    } else {
      _buildBody(children, type, cmd);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLCommandType? type,
    String? cmd,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cmd != null)
      this.attribute(
        'cmd',
        cmd,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLSetBehavior_Builder on _i1.XmlBuilder {
  void p_ct_tlsetbehavior({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLCommonMediaNodeData_Builder on _i1.XmlBuilder {
  void p_ct_tlcommonmedianodedata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? mute,
    int? numSld,
    bool? showWhenStopped,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, mute, numSld, showWhenStopped);
        },
      );
    } else {
      _buildBody(children, mute, numSld, showWhenStopped);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? mute,
    int? numSld,
    bool? showWhenStopped,
  ) {
    if (mute != null)
      this.attribute(
        'mute',
        mute == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (numSld != null)
      this.attribute(
        'numSld',
        numSld.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (showWhenStopped != null)
      this.attribute(
        'showWhenStopped',
        showWhenStopped == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLMediaNodeAudio_Builder on _i1.XmlBuilder {
  void p_ct_tlmedianodeaudio({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? isNarration,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, isNarration);
        },
      );
    } else {
      _buildBody(children, isNarration);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? isNarration) {
    if (isNarration != null)
      this.attribute(
        'isNarration',
        isNarration == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLMediaNodeVideo_Builder on _i1.XmlBuilder {
  void p_ct_tlmedianodevideo({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? fullScrn,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, fullScrn);
        },
      );
    } else {
      _buildBody(children, fullScrn);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? fullScrn) {
    if (fullScrn != null)
      this.attribute(
        'fullScrn',
        fullScrn == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTemplate_Builder on _i1.XmlBuilder {
  void p_ct_tltemplate({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    int? lvl,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lvl);
        },
      );
    } else {
      _buildBody(children, lvl);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? lvl) {
    if (lvl != null)
      this.attribute(
        'lvl',
        lvl.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLTemplateList_Builder on _i1.XmlBuilder {
  void p_ct_tltemplatelist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TLBuildParagraph_Builder on _i1.XmlBuilder {
  void p_ct_tlbuildparagraph({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLParaBuildType? build,
    int? bldLvl,
    bool? animBg,
    bool? autoUpdateAnimBg,
    bool? rev,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, build, bldLvl, animBg, autoUpdateAnimBg, rev);
        },
      );
    } else {
      _buildBody(children, build, bldLvl, animBg, autoUpdateAnimBg, rev);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLParaBuildType? build,
    int? bldLvl,
    bool? animBg,
    bool? autoUpdateAnimBg,
    bool? rev,
  ) {
    if (build != null)
      this.attribute(
        'build',
        build!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (bldLvl != null)
      this.attribute(
        'bldLvl',
        bldLvl.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (animBg != null)
      this.attribute(
        'animBg',
        animBg == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (autoUpdateAnimBg != null)
      this.attribute(
        'autoUpdateAnimBg',
        autoUpdateAnimBg == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (rev != null)
      this.attribute(
        'rev',
        rev == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLBuildDiagram_Builder on _i1.XmlBuilder {
  void p_ct_tlbuilddiagram({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLDiagramBuildType? bld,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bld);
        },
      );
    } else {
      _buildBody(children, bld);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLDiagramBuildType? bld,
  ) {
    if (bld != null)
      this.attribute(
        'bld',
        bld!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLOleBuildChart_Builder on _i1.XmlBuilder {
  void p_ct_tlolebuildchart({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_TLOleChartBuildType? bld,
    bool? animBg,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bld, animBg);
        },
      );
    } else {
      _buildBody(children, bld, animBg);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_TLOleChartBuildType? bld,
    bool? animBg,
  ) {
    if (bld != null)
      this.attribute(
        'bld',
        bld!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (animBg != null)
      this.attribute(
        'animBg',
        animBg == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TLGraphicalObjectBuild_Builder on _i1.XmlBuilder {
  void p_ct_tlgraphicalobjectbuild({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_BuildList_Builder on _i1.XmlBuilder {
  void p_ct_buildlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideTiming_Builder on _i1.XmlBuilder {
  void p_ct_slidetiming({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_Empty_Builder on _i1.XmlBuilder {
  void p_ct_empty({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_IndexRange_Builder on _i1.XmlBuilder {
  void p_ct_indexrange({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? st,
    String? end,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, st, end);
        },
      );
    } else {
      _buildBody(children, st, end);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? st,
    String? end,
  ) {
    if (st != null)
      this.attribute(
        'st',
        st,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (end != null)
      this.attribute(
        'end',
        end,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_SlideRelationshipListEntry_Builder on _i1.XmlBuilder {
  void p_ct_sliderelationshiplistentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideRelationshipList_Builder on _i1.XmlBuilder {
  void p_ct_sliderelationshiplist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_CustomShowId_Builder on _i1.XmlBuilder {
  void p_ct_customshowid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    int? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? id) {
    if (id != null)
      this.attribute(
        'id',
        id.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_CustomerData_Builder on _i1.XmlBuilder {
  void p_ct_customerdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_TagsData_Builder on _i1.XmlBuilder {
  void p_ct_tagsdata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_CustomerDataList_Builder on _i1.XmlBuilder {
  void p_ct_customerdatalist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_Extension_Builder on _i1.XmlBuilder {
  void p_ct_extension({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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
    if (uri != null)
      this.attribute(
        'uri',
        uri,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_ExtensionList_Builder on _i1.XmlBuilder {
  void p_ct_extensionlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_ExtensionListModify_Builder on _i1.XmlBuilder {
  void p_ct_extensionlistmodify({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? mod,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, mod);
        },
      );
    } else {
      _buildBody(children, mod);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? mod) {
    if (mod != null)
      this.attribute(
        'mod',
        mod == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_CommentAuthor_Builder on _i1.XmlBuilder {
  void p_ct_commentauthor({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    int? id,
    String? name,
    String? initials,
    int? lastIdx,
    int? clrIdx,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id, name, initials, lastIdx, clrIdx);
        },
      );
    } else {
      _buildBody(children, id, name, initials, lastIdx, clrIdx);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? id,
    String? name,
    String? initials,
    int? lastIdx,
    int? clrIdx,
  ) {
    if (id != null)
      this.attribute(
        'id',
        id.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (initials != null)
      this.attribute(
        'initials',
        initials,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (lastIdx != null)
      this.attribute(
        'lastIdx',
        lastIdx.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (clrIdx != null)
      this.attribute(
        'clrIdx',
        clrIdx.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_CommentAuthorList_Builder on _i1.XmlBuilder {
  void p_ct_commentauthorlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_Comment_Builder on _i1.XmlBuilder {
  void p_ct_comment({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    int? authorId,
    String? dt,
    String? idx,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, authorId, dt, idx);
        },
      );
    } else {
      _buildBody(children, authorId, dt, idx);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? authorId,
    String? dt,
    String? idx,
  ) {
    if (authorId != null)
      this.attribute(
        'authorId',
        authorId.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (dt != null)
      this.attribute(
        'dt',
        dt,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (idx != null)
      this.attribute(
        'idx',
        idx,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_CommentList_Builder on _i1.XmlBuilder {
  void p_ct_commentlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_OleObjectEmbed_Builder on _i1.XmlBuilder {
  void p_ct_oleobjectembed({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_OleObjectFollowColorScheme? followColorScheme,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, followColorScheme);
        },
      );
    } else {
      _buildBody(children, followColorScheme);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_OleObjectFollowColorScheme? followColorScheme,
  ) {
    if (followColorScheme != null)
      this.attribute(
        'followColorScheme',
        followColorScheme!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_OleObjectLink_Builder on _i1.XmlBuilder {
  void p_ct_oleobjectlink({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? updateAutomatic,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, updateAutomatic);
        },
      );
    } else {
      _buildBody(children, updateAutomatic);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? updateAutomatic) {
    if (updateAutomatic != null)
      this.attribute(
        'updateAutomatic',
        updateAutomatic == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_OleObject_Builder on _i1.XmlBuilder {
  void p_ct_oleobject({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? progId,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, progId);
        },
      );
    } else {
      _buildBody(children, progId);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? progId) {
    if (progId != null)
      this.attribute(
        'progId',
        progId,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_Control_Builder on _i1.XmlBuilder {
  void p_ct_control({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_ControlList_Builder on _i1.XmlBuilder {
  void p_ct_controllist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideIdListEntry_Builder on _i1.XmlBuilder {
  void p_ct_slideidlistentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_SlideIdList_Builder on _i1.XmlBuilder {
  void p_ct_slideidlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideMasterIdListEntry_Builder on _i1.XmlBuilder {
  void p_ct_slidemasteridlistentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_SlideMasterIdList_Builder on _i1.XmlBuilder {
  void p_ct_slidemasteridlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_NotesMasterIdListEntry_Builder on _i1.XmlBuilder {
  void p_ct_notesmasteridlistentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_NotesMasterIdList_Builder on _i1.XmlBuilder {
  void p_ct_notesmasteridlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_HandoutMasterIdListEntry_Builder on _i1.XmlBuilder {
  void p_ct_handoutmasteridlistentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_HandoutMasterIdList_Builder on _i1.XmlBuilder {
  void p_ct_handoutmasteridlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_EmbeddedFontDataId_Builder on _i1.XmlBuilder {
  void p_ct_embeddedfontdataid({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_EmbeddedFontListEntry_Builder on _i1.XmlBuilder {
  void p_ct_embeddedfontlistentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_EmbeddedFontList_Builder on _i1.XmlBuilder {
  void p_ct_embeddedfontlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SmartTags_Builder on _i1.XmlBuilder {
  void p_ct_smarttags({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_CustomShow_Builder on _i1.XmlBuilder {
  void p_ct_customshow({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? name,
    int? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, id);
        },
      );
    } else {
      _buildBody(children, name, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? name, int? id) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (id != null)
      this.attribute(
        'id',
        id.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_CustomShowList_Builder on _i1.XmlBuilder {
  void p_ct_customshowlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_PhotoAlbum_Builder on _i1.XmlBuilder {
  void p_ct_photoalbum({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? bw,
    bool? showCaptions,
    P_ST_PhotoAlbumLayout? layout,
    P_ST_PhotoAlbumFrameShape? frame,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bw, showCaptions, layout, frame);
        },
      );
    } else {
      _buildBody(children, bw, showCaptions, layout, frame);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? bw,
    bool? showCaptions,
    P_ST_PhotoAlbumLayout? layout,
    P_ST_PhotoAlbumFrameShape? frame,
  ) {
    if (bw != null)
      this.attribute(
        'bw',
        bw == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (showCaptions != null)
      this.attribute(
        'showCaptions',
        showCaptions == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (layout != null)
      this.attribute(
        'layout',
        layout!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (frame != null)
      this.attribute(
        'frame',
        frame!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_SlideSize_Builder on _i1.XmlBuilder {
  void p_ct_slidesize({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? cx,
    String? cy,
    P_ST_SlideSizeType? type,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, cx, cy, type);
        },
      );
    } else {
      _buildBody(children, cx, cy, type);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? cx,
    String? cy,
    P_ST_SlideSizeType? type,
  ) {
    if (cx != null)
      this.attribute(
        'cx',
        cx,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cy != null)
      this.attribute(
        'cy',
        cy,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_Kinsoku_Builder on _i1.XmlBuilder {
  void p_ct_kinsoku({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? lang,
    String? invalStChars,
    String? invalEndChars,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lang, invalStChars, invalEndChars);
        },
      );
    } else {
      _buildBody(children, lang, invalStChars, invalEndChars);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? lang,
    String? invalStChars,
    String? invalEndChars,
  ) {
    if (lang != null)
      this.attribute(
        'lang',
        lang,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (invalStChars != null)
      this.attribute(
        'invalStChars',
        invalStChars,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (invalEndChars != null)
      this.attribute(
        'invalEndChars',
        invalEndChars,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_ModifyVerifier_Builder on _i1.XmlBuilder {
  void p_ct_modifyverifier({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinValue,
    ST_CryptProv? cryptProviderType,
    ST_AlgClass? cryptAlgorithmClass,
    ST_AlgType? cryptAlgorithmType,
    int? cryptAlgorithmSid,
    int? spinCount,
    String? saltData,
    String? hashData,
    String? cryptProvider,
    int? algIdExt,
    String? algIdExtSource,
    int? cryptProviderTypeExt,
    String? cryptProviderTypeExtSource,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            algorithmName,
            hashValue,
            saltValue,
            spinValue,
            cryptProviderType,
            cryptAlgorithmClass,
            cryptAlgorithmType,
            cryptAlgorithmSid,
            spinCount,
            saltData,
            hashData,
            cryptProvider,
            algIdExt,
            algIdExtSource,
            cryptProviderTypeExt,
            cryptProviderTypeExtSource,
          );
        },
      );
    } else {
      _buildBody(
        children,
        algorithmName,
        hashValue,
        saltValue,
        spinValue,
        cryptProviderType,
        cryptAlgorithmClass,
        cryptAlgorithmType,
        cryptAlgorithmSid,
        spinCount,
        saltData,
        hashData,
        cryptProvider,
        algIdExt,
        algIdExtSource,
        cryptProviderTypeExt,
        cryptProviderTypeExtSource,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? algorithmName,
    String? hashValue,
    String? saltValue,
    int? spinValue,
    ST_CryptProv? cryptProviderType,
    ST_AlgClass? cryptAlgorithmClass,
    ST_AlgType? cryptAlgorithmType,
    int? cryptAlgorithmSid,
    int? spinCount,
    String? saltData,
    String? hashData,
    String? cryptProvider,
    int? algIdExt,
    String? algIdExtSource,
    int? cryptProviderTypeExt,
    String? cryptProviderTypeExtSource,
  ) {
    if (algorithmName != null)
      this.attribute(
        'algorithmName',
        algorithmName,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (hashValue != null)
      this.attribute(
        'hashValue',
        hashValue,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (saltValue != null)
      this.attribute(
        'saltValue',
        saltValue,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (spinValue != null)
      this.attribute(
        'spinValue',
        spinValue.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cryptProviderType != null)
      this.attribute(
        'cryptProviderType',
        cryptProviderType!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cryptAlgorithmClass != null)
      this.attribute(
        'cryptAlgorithmClass',
        cryptAlgorithmClass!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cryptAlgorithmType != null)
      this.attribute(
        'cryptAlgorithmType',
        cryptAlgorithmType!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cryptAlgorithmSid != null)
      this.attribute(
        'cryptAlgorithmSid',
        cryptAlgorithmSid.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (spinCount != null)
      this.attribute(
        'spinCount',
        spinCount.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (saltData != null)
      this.attribute(
        'saltData',
        saltData,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (hashData != null)
      this.attribute(
        'hashData',
        hashData,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cryptProvider != null)
      this.attribute(
        'cryptProvider',
        cryptProvider,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (algIdExt != null)
      this.attribute(
        'algIdExt',
        algIdExt.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (algIdExtSource != null)
      this.attribute(
        'algIdExtSource',
        algIdExtSource,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cryptProviderTypeExt != null)
      this.attribute(
        'cryptProviderTypeExt',
        cryptProviderTypeExt.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (cryptProviderTypeExtSource != null)
      this.attribute(
        'cryptProviderTypeExtSource',
        cryptProviderTypeExtSource,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_Presentation_Builder on _i1.XmlBuilder {
  void p_ct_presentation({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    int? firstSlideNum,
    bool? showSpecialPlsOnTitleSld,
    bool? rtl,
    bool? removePersonalInfoOnSave,
    bool? compatMode,
    bool? strictFirstAndLastChars,
    bool? embedTrueTypeFonts,
    bool? saveSubsetFonts,
    bool? autoCompressPictures,
    String? bookmarkIdSeed,
    ST_ConformanceClass? conformance,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            firstSlideNum,
            showSpecialPlsOnTitleSld,
            rtl,
            removePersonalInfoOnSave,
            compatMode,
            strictFirstAndLastChars,
            embedTrueTypeFonts,
            saveSubsetFonts,
            autoCompressPictures,
            bookmarkIdSeed,
            conformance,
          );
        },
      );
    } else {
      _buildBody(
        children,
        firstSlideNum,
        showSpecialPlsOnTitleSld,
        rtl,
        removePersonalInfoOnSave,
        compatMode,
        strictFirstAndLastChars,
        embedTrueTypeFonts,
        saveSubsetFonts,
        autoCompressPictures,
        bookmarkIdSeed,
        conformance,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    int? firstSlideNum,
    bool? showSpecialPlsOnTitleSld,
    bool? rtl,
    bool? removePersonalInfoOnSave,
    bool? compatMode,
    bool? strictFirstAndLastChars,
    bool? embedTrueTypeFonts,
    bool? saveSubsetFonts,
    bool? autoCompressPictures,
    String? bookmarkIdSeed,
    ST_ConformanceClass? conformance,
  ) {
    if (firstSlideNum != null)
      this.attribute(
        'firstSlideNum',
        firstSlideNum.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (showSpecialPlsOnTitleSld != null)
      this.attribute(
        'showSpecialPlsOnTitleSld',
        showSpecialPlsOnTitleSld == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (rtl != null)
      this.attribute(
        'rtl',
        rtl == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (removePersonalInfoOnSave != null)
      this.attribute(
        'removePersonalInfoOnSave',
        removePersonalInfoOnSave == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (compatMode != null)
      this.attribute(
        'compatMode',
        compatMode == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (strictFirstAndLastChars != null)
      this.attribute(
        'strictFirstAndLastChars',
        strictFirstAndLastChars == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (embedTrueTypeFonts != null)
      this.attribute(
        'embedTrueTypeFonts',
        embedTrueTypeFonts == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (saveSubsetFonts != null)
      this.attribute(
        'saveSubsetFonts',
        saveSubsetFonts == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (autoCompressPictures != null)
      this.attribute(
        'autoCompressPictures',
        autoCompressPictures == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (bookmarkIdSeed != null)
      this.attribute(
        'bookmarkIdSeed',
        bookmarkIdSeed,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (conformance != null)
      this.attribute(
        'conformance',
        conformance!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_HtmlPublishProperties_Builder on _i1.XmlBuilder {
  void p_ct_htmlpublishproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? showSpeakerNotes,
    String? target,
    String? title,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, showSpeakerNotes, target, title);
        },
      );
    } else {
      _buildBody(children, showSpeakerNotes, target, title);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? showSpeakerNotes,
    String? target,
    String? title,
  ) {
    if (showSpeakerNotes != null)
      this.attribute(
        'showSpeakerNotes',
        showSpeakerNotes == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (target != null)
      this.attribute(
        'target',
        target,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (title != null)
      this.attribute(
        'title',
        title,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_WebProperties_Builder on _i1.XmlBuilder {
  void p_ct_webproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? showAnimation,
    bool? resizeGraphics,
    bool? allowPng,
    bool? relyOnVml,
    bool? organizeInFolders,
    bool? useLongFilenames,
    P_ST_WebScreenSize? imgSz,
    String? encoding,
    P_ST_WebColorType? clr,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            showAnimation,
            resizeGraphics,
            allowPng,
            relyOnVml,
            organizeInFolders,
            useLongFilenames,
            imgSz,
            encoding,
            clr,
          );
        },
      );
    } else {
      _buildBody(
        children,
        showAnimation,
        resizeGraphics,
        allowPng,
        relyOnVml,
        organizeInFolders,
        useLongFilenames,
        imgSz,
        encoding,
        clr,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? showAnimation,
    bool? resizeGraphics,
    bool? allowPng,
    bool? relyOnVml,
    bool? organizeInFolders,
    bool? useLongFilenames,
    P_ST_WebScreenSize? imgSz,
    String? encoding,
    P_ST_WebColorType? clr,
  ) {
    if (showAnimation != null)
      this.attribute(
        'showAnimation',
        showAnimation == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (resizeGraphics != null)
      this.attribute(
        'resizeGraphics',
        resizeGraphics == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (allowPng != null)
      this.attribute(
        'allowPng',
        allowPng == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (relyOnVml != null)
      this.attribute(
        'relyOnVml',
        relyOnVml == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (organizeInFolders != null)
      this.attribute(
        'organizeInFolders',
        organizeInFolders == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (useLongFilenames != null)
      this.attribute(
        'useLongFilenames',
        useLongFilenames == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (imgSz != null)
      this.attribute(
        'imgSz',
        imgSz!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (encoding != null)
      this.attribute(
        'encoding',
        encoding,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (clr != null)
      this.attribute(
        'clr',
        clr!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_PrintProperties_Builder on _i1.XmlBuilder {
  void p_ct_printproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_PrintWhat? prnWhat,
    P_ST_PrintColorMode? clrMode,
    bool? hiddenSlides,
    bool? scaleToFitPaper,
    bool? frameSlides,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            prnWhat,
            clrMode,
            hiddenSlides,
            scaleToFitPaper,
            frameSlides,
          );
        },
      );
    } else {
      _buildBody(
        children,
        prnWhat,
        clrMode,
        hiddenSlides,
        scaleToFitPaper,
        frameSlides,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_PrintWhat? prnWhat,
    P_ST_PrintColorMode? clrMode,
    bool? hiddenSlides,
    bool? scaleToFitPaper,
    bool? frameSlides,
  ) {
    if (prnWhat != null)
      this.attribute(
        'prnWhat',
        prnWhat!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (clrMode != null)
      this.attribute(
        'clrMode',
        clrMode!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (hiddenSlides != null)
      this.attribute(
        'hiddenSlides',
        hiddenSlides == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (scaleToFitPaper != null)
      this.attribute(
        'scaleToFitPaper',
        scaleToFitPaper == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (frameSlides != null)
      this.attribute(
        'frameSlides',
        frameSlides == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_ShowInfoBrowse_Builder on _i1.XmlBuilder {
  void p_ct_showinfobrowse({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? showScrollbar,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, showScrollbar);
        },
      );
    } else {
      _buildBody(children, showScrollbar);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? showScrollbar) {
    if (showScrollbar != null)
      this.attribute(
        'showScrollbar',
        showScrollbar == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_ShowInfoKiosk_Builder on _i1.XmlBuilder {
  void p_ct_showinfokiosk({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    int? restart,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, restart);
        },
      );
    } else {
      _buildBody(children, restart);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, int? restart) {
    if (restart != null)
      this.attribute(
        'restart',
        restart.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_ShowProperties_Builder on _i1.XmlBuilder {
  void p_ct_showproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? loop,
    bool? showNarration,
    bool? showAnimation,
    bool? useTimings,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, loop, showNarration, showAnimation, useTimings);
        },
      );
    } else {
      _buildBody(children, loop, showNarration, showAnimation, useTimings);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? loop,
    bool? showNarration,
    bool? showAnimation,
    bool? useTimings,
  ) {
    if (loop != null)
      this.attribute(
        'loop',
        loop == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (showNarration != null)
      this.attribute(
        'showNarration',
        showNarration == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (showAnimation != null)
      this.attribute(
        'showAnimation',
        showAnimation == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (useTimings != null)
      this.attribute(
        'useTimings',
        useTimings == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_PresentationProperties_Builder on _i1.XmlBuilder {
  void p_ct_presentationproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_HeaderFooter_Builder on _i1.XmlBuilder {
  void p_ct_headerfooter({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? sldNum,
    bool? hdr,
    bool? ftr,
    bool? dt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, sldNum, hdr, ftr, dt);
        },
      );
    } else {
      _buildBody(children, sldNum, hdr, ftr, dt);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? sldNum,
    bool? hdr,
    bool? ftr,
    bool? dt,
  ) {
    if (sldNum != null)
      this.attribute(
        'sldNum',
        sldNum == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (hdr != null)
      this.attribute(
        'hdr',
        hdr == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (ftr != null)
      this.attribute(
        'ftr',
        ftr == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (dt != null)
      this.attribute(
        'dt',
        dt == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_Placeholder_Builder on _i1.XmlBuilder {
  void p_ct_placeholder({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_PlaceholderType? type,
    P_ST_Direction? orient,
    P_ST_PlaceholderSize? sz,
    int? idx,
    bool? hasCustomPrompt,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, type, orient, sz, idx, hasCustomPrompt);
        },
      );
    } else {
      _buildBody(children, type, orient, sz, idx, hasCustomPrompt);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_PlaceholderType? type,
    P_ST_Direction? orient,
    P_ST_PlaceholderSize? sz,
    int? idx,
    bool? hasCustomPrompt,
  ) {
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (orient != null)
      this.attribute(
        'orient',
        orient!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (sz != null)
      this.attribute(
        'sz',
        sz!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (idx != null)
      this.attribute(
        'idx',
        idx.toString(),
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (hasCustomPrompt != null)
      this.attribute(
        'hasCustomPrompt',
        hasCustomPrompt == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_ApplicationNonVisualDrawingProps_Builder on _i1.XmlBuilder {
  void p_ct_applicationnonvisualdrawingprops({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? isPhoto,
    bool? userDrawn,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, isPhoto, userDrawn);
        },
      );
    } else {
      _buildBody(children, isPhoto, userDrawn);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? isPhoto,
    bool? userDrawn,
  ) {
    if (isPhoto != null)
      this.attribute(
        'isPhoto',
        isPhoto == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (userDrawn != null)
      this.attribute(
        'userDrawn',
        userDrawn == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_ShapeNonVisual_Builder on _i1.XmlBuilder {
  void p_ct_shapenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_Shape_Builder on _i1.XmlBuilder {
  void p_ct_shape({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? useBgFill,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, useBgFill);
        },
      );
    } else {
      _buildBody(children, useBgFill);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? useBgFill) {
    if (useBgFill != null)
      this.attribute(
        'useBgFill',
        useBgFill == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_ConnectorNonVisual_Builder on _i1.XmlBuilder {
  void p_ct_connectornonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_Connector_Builder on _i1.XmlBuilder {
  void p_ct_connector({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_PictureNonVisual_Builder on _i1.XmlBuilder {
  void p_ct_picturenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_Picture_Builder on _i1.XmlBuilder {
  void p_ct_picture({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_GraphicalObjectFrameNonVisual_Builder on _i1.XmlBuilder {
  void p_ct_graphicalobjectframenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_GraphicalObjectFrame_Builder on _i1.XmlBuilder {
  void p_ct_graphicalobjectframe({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    D_ST_BlackWhiteMode? bwMode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bwMode);
        },
      );
    } else {
      _buildBody(children, bwMode);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_BlackWhiteMode? bwMode,
  ) {
    if (bwMode != null)
      this.attribute(
        'bwMode',
        bwMode!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_GroupShapeNonVisual_Builder on _i1.XmlBuilder {
  void p_ct_groupshapenonvisual({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_GroupShape_Builder on _i1.XmlBuilder {
  void p_ct_groupshape({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_Rel_Builder on _i1.XmlBuilder {
  void p_ct_rel({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_BackgroundProperties_Builder on _i1.XmlBuilder {
  void p_ct_backgroundproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? shadeToTitle,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, shadeToTitle);
        },
      );
    } else {
      _buildBody(children, shadeToTitle);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? shadeToTitle) {
    if (shadeToTitle != null)
      this.attribute(
        'shadeToTitle',
        shadeToTitle == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_Background_Builder on _i1.XmlBuilder {
  void p_ct_background({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    D_ST_BlackWhiteMode? bwMode,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, bwMode);
        },
      );
    } else {
      _buildBody(children, bwMode);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    D_ST_BlackWhiteMode? bwMode,
  ) {
    if (bwMode != null)
      this.attribute(
        'bwMode',
        bwMode!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_CommonSlideData_Builder on _i1.XmlBuilder {
  void p_ct_commonslidedata({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_Slide_Builder on _i1.XmlBuilder {
  void p_ct_slide({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? show_,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, show_);
        },
      );
    } else {
      _buildBody(children, show_);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? show_) {
    if (show_ != null)
      this.attribute(
        'show',
        show_ == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_SlideLayout_Builder on _i1.XmlBuilder {
  void p_ct_slidelayout({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? matchingName,
    P_ST_SlideLayoutType? type,
    bool? preserve,
    bool? userDrawn,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, matchingName, type, preserve, userDrawn);
        },
      );
    } else {
      _buildBody(children, matchingName, type, preserve, userDrawn);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? matchingName,
    P_ST_SlideLayoutType? type,
    bool? preserve,
    bool? userDrawn,
  ) {
    if (matchingName != null)
      this.attribute(
        'matchingName',
        matchingName,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (type != null)
      this.attribute(
        'type',
        type!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (preserve != null)
      this.attribute(
        'preserve',
        preserve == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (userDrawn != null)
      this.attribute(
        'userDrawn',
        userDrawn == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_SlideMasterTextStyles_Builder on _i1.XmlBuilder {
  void p_ct_slidemastertextstyles({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideLayoutIdListEntry_Builder on _i1.XmlBuilder {
  void p_ct_slidelayoutidlistentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? id,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, id);
        },
      );
    } else {
      _buildBody(children, id);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, String? id) {
    if (id != null)
      this.attribute(
        'id',
        id,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_SlideLayoutIdList_Builder on _i1.XmlBuilder {
  void p_ct_slidelayoutidlist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideMaster_Builder on _i1.XmlBuilder {
  void p_ct_slidemaster({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? preserve,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, preserve);
        },
      );
    } else {
      _buildBody(children, preserve);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? preserve) {
    if (preserve != null)
      this.attribute(
        'preserve',
        preserve == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_HandoutMaster_Builder on _i1.XmlBuilder {
  void p_ct_handoutmaster({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_NotesMaster_Builder on _i1.XmlBuilder {
  void p_ct_notesmaster({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_NotesSlide_Builder on _i1.XmlBuilder {
  void p_ct_notesslide({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideSyncProperties_Builder on _i1.XmlBuilder {
  void p_ct_slidesyncproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? serverSldId,
    String? serverSldModifiedTime,
    String? clientInsertedTime,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            serverSldId,
            serverSldModifiedTime,
            clientInsertedTime,
          );
        },
      );
    } else {
      _buildBody(
        children,
        serverSldId,
        serverSldModifiedTime,
        clientInsertedTime,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? serverSldId,
    String? serverSldModifiedTime,
    String? clientInsertedTime,
  ) {
    if (serverSldId != null)
      this.attribute(
        'serverSldId',
        serverSldId,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (serverSldModifiedTime != null)
      this.attribute(
        'serverSldModifiedTime',
        serverSldModifiedTime,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (clientInsertedTime != null)
      this.attribute(
        'clientInsertedTime',
        clientInsertedTime,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_StringTag_Builder on _i1.XmlBuilder {
  void p_ct_stringtag({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    String? name,
    String? val,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, name, val);
        },
      );
    } else {
      _buildBody(children, name, val);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    String? name,
    String? val,
  ) {
    if (name != null)
      this.attribute(
        'name',
        name,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (val != null)
      this.attribute(
        'val',
        val,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_TagList_Builder on _i1.XmlBuilder {
  void p_ct_taglist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_NormalViewPortion_Builder on _i1.XmlBuilder {
  void p_ct_normalviewportion({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? autoAdjust,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, autoAdjust);
        },
      );
    } else {
      _buildBody(children, autoAdjust);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? autoAdjust) {
    if (autoAdjust != null)
      this.attribute(
        'autoAdjust',
        autoAdjust == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_NormalViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_normalviewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? showOutlineIcons,
    bool? snapVertSplitter,
    P_ST_SplitterBarState? vertBarState,
    P_ST_SplitterBarState? horzBarState,
    bool? preferSingleView,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(
            children,
            showOutlineIcons,
            snapVertSplitter,
            vertBarState,
            horzBarState,
            preferSingleView,
          );
        },
      );
    } else {
      _buildBody(
        children,
        showOutlineIcons,
        snapVertSplitter,
        vertBarState,
        horzBarState,
        preferSingleView,
      );
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? showOutlineIcons,
    bool? snapVertSplitter,
    P_ST_SplitterBarState? vertBarState,
    P_ST_SplitterBarState? horzBarState,
    bool? preferSingleView,
  ) {
    if (showOutlineIcons != null)
      this.attribute(
        'showOutlineIcons',
        showOutlineIcons == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (snapVertSplitter != null)
      this.attribute(
        'snapVertSplitter',
        snapVertSplitter == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (vertBarState != null)
      this.attribute(
        'vertBarState',
        vertBarState!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (horzBarState != null)
      this.attribute(
        'horzBarState',
        horzBarState!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (preferSingleView != null)
      this.attribute(
        'preferSingleView',
        preferSingleView == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_CommonViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_commonviewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? varScale,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, varScale);
        },
      );
    } else {
      _buildBody(children, varScale);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? varScale) {
    if (varScale != null)
      this.attribute(
        'varScale',
        varScale == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_NotesTextViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_notestextviewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_OutlineViewSlideEntry_Builder on _i1.XmlBuilder {
  void p_ct_outlineviewslideentry({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? collapse,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, collapse);
        },
      );
    } else {
      _buildBody(children, collapse);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? collapse) {
    if (collapse != null)
      this.attribute(
        'collapse',
        collapse == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_OutlineViewSlideList_Builder on _i1.XmlBuilder {
  void p_ct_outlineviewslidelist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_OutlineViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_outlineviewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_SlideSorterViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_slidesorterviewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? showFormatting,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, showFormatting);
        },
      );
    } else {
      _buildBody(children, showFormatting);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, bool? showFormatting) {
    if (showFormatting != null)
      this.attribute(
        'showFormatting',
        showFormatting == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_Guide_Builder on _i1.XmlBuilder {
  void p_ct_guide({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_Direction? orient,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, orient);
        },
      );
    } else {
      _buildBody(children, orient);
    }
  }

  void _buildBody(void Function(XmlBuilder)? children, P_ST_Direction? orient) {
    if (orient != null)
      this.attribute(
        'orient',
        orient!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_GuideList_Builder on _i1.XmlBuilder {
  void p_ct_guidelist({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_CommonSlideViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_commonslideviewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    bool? snapToGrid,
    bool? snapToObjects,
    bool? showGuides,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, snapToGrid, snapToObjects, showGuides);
        },
      );
    } else {
      _buildBody(children, snapToGrid, snapToObjects, showGuides);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    bool? snapToGrid,
    bool? snapToObjects,
    bool? showGuides,
  ) {
    if (snapToGrid != null)
      this.attribute(
        'snapToGrid',
        snapToGrid == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (snapToObjects != null)
      this.attribute(
        'snapToObjects',
        snapToObjects == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (showGuides != null)
      this.attribute(
        'showGuides',
        showGuides == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}

extension P_CT_SlideViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_slideviewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_NotesViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_notesviewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
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

extension P_CT_ViewProperties_Builder on _i1.XmlBuilder {
  void p_ct_viewproperties({
    String? tagName,
    String? namespace =
        'http://schemas.openxmlformats.org/presentationml/2006/main',
    P_ST_ViewType? lastView,
    bool? showComments,
    void Function(XmlBuilder)? children,
  }) {
    if (tagName != null) {
      this.element(
        tagName,
        namespace: namespace,
        nest: () {
          _buildBody(children, lastView, showComments);
        },
      );
    } else {
      _buildBody(children, lastView, showComments);
    }
  }

  void _buildBody(
    void Function(XmlBuilder)? children,
    P_ST_ViewType? lastView,
    bool? showComments,
  ) {
    if (lastView != null)
      this.attribute(
        'lastView',
        lastView!.value,
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    if (showComments != null)
      this.attribute(
        'showComments',
        showComments == true ? 'true' : 'false',
        namespace: 'http://schemas.openxmlformats.org/presentationml/2006/main',
      );
    children?.call(this);
  }
}
