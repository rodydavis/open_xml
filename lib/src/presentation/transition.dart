import 'package:open_xml/src/pml/pml.g.dart';
import 'package:open_xml/src/pml/pml_builder.g.dart';
import 'package:xml/xml.dart';

export 'package:open_xml/src/pml/pml.g.dart'
    show
        P_ST_TransitionSpeed,
        P_ST_TransitionSideDirectionType,
        P_ST_TransitionCornerDirectionType,
        P_ST_TransitionInOutDirectionType,
        P_ST_Direction,
        P_ST_TLTriggerEvent;

/// Base class for all slide transitions.
abstract class SlideTransition {
  final P_ST_TransitionSpeed? speed;
  final bool? advanceOnClick;
  final int?
  advanceAfterTime; // in milliseconds? No, XML usually expects specific format.
  // Actually, p:transition advTm is in milliseconds? P_CT_SlideTransition says `int? advTm`.
  // Schema says: "Specifies the time, in milliseconds, that the slide is shown before automatically advancing."

  SlideTransition({this.speed, this.advanceOnClick, this.advanceAfterTime});

  void build(XmlBuilder builder) {
    builder.p_ct_slidetransition(
      tagName: 'transition',
      spd: speed,
      advClick: advanceOnClick,
      advTm: advanceAfterTime,
      children: (b) {
        _buildSpecific(b);
      },
    );
  }

  void _buildSpecific(XmlBuilder builder);
}

// --- Directional Transitions (Left, Up, Right, Down) ---

class PushTransition extends SlideTransition {
  final P_ST_TransitionSideDirectionType direction;
  PushTransition({
    this.direction = P_ST_TransitionSideDirectionType.l,
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_sidedirectiontransition(tagName: 'push', dir: direction);
  }
}

class WipeTransition extends SlideTransition {
  final P_ST_TransitionSideDirectionType direction;
  WipeTransition({
    this.direction = P_ST_TransitionSideDirectionType.l,
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_sidedirectiontransition(tagName: 'wipe', dir: direction);
  }
}

// --- Corner / 8-Direction Transitions ---

class CoverTransition extends SlideTransition {
  CoverTransition({super.speed, super.advanceOnClick, super.advanceAfterTime});

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_eightdirectiontransition(tagName: 'cover');
  }
}

class PullTransition extends SlideTransition {
  PullTransition({super.speed, super.advanceOnClick, super.advanceAfterTime});

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_eightdirectiontransition(tagName: 'pull');
  }
}

// --- Orientation Transitions (Horizontal/Vertical) ---

class SplitTransition extends SlideTransition {
  final P_ST_Direction orientation;
  final P_ST_TransitionInOutDirectionType direction;

  SplitTransition({
    this.orientation = P_ST_Direction.vert,
    this.direction = P_ST_TransitionInOutDirectionType.out,
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_splittransition(
      tagName: 'split',
      orient: orientation,
      dir: direction,
    );
  }
}

class BlindsTransition extends SlideTransition {
  final P_ST_Direction orientation;
  BlindsTransition({
    this.orientation = P_ST_Direction.vert,
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_orientationtransition(tagName: 'blinds', dir: orientation);
  }
}

class CheckerTransition extends SlideTransition {
  final P_ST_Direction orientation;
  CheckerTransition({
    this.orientation = P_ST_Direction.vert,
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_orientationtransition(tagName: 'checker', dir: orientation);
  }
}

// --- In/Out Transitions ---

class ZoomTransition extends SlideTransition {
  final P_ST_TransitionInOutDirectionType direction;
  ZoomTransition({
    this.direction = P_ST_TransitionInOutDirectionType.out,
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_inouttransition(tagName: 'zoom', dir: direction);
  }
}

// --- Optional Black Transitions ---

class FadeTransition extends SlideTransition {
  final bool throughBlack;
  FadeTransition({
    this.throughBlack = false,
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_optionalblacktransition(
      tagName: 'fade',
      thruBlk: throughBlack,
    );
  }
}

class CutTransition extends SlideTransition {
  final bool throughBlack;
  CutTransition({
    this.throughBlack = false,
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });

  @override
  void _buildSpecific(XmlBuilder builder) {
    builder.p_ct_optionalblacktransition(tagName: 'cut', thruBlk: throughBlack);
  }
}

// --- Simple Empty Transitions ---

class CircleTransition extends SlideTransition {
  CircleTransition({super.speed, super.advanceOnClick, super.advanceAfterTime});
  @override
  void _buildSpecific(XmlBuilder builder) => builder.element('p:circle');
}

class DissolveTransition extends SlideTransition {
  DissolveTransition({
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });
  @override
  void _buildSpecific(XmlBuilder builder) => builder.element('p:dissolve');
}

class NewsflashTransition extends SlideTransition {
  NewsflashTransition({
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });
  @override
  void _buildSpecific(XmlBuilder builder) => builder.element('p:newsflash');
}

class PlusTransition extends SlideTransition {
  PlusTransition({super.speed, super.advanceOnClick, super.advanceAfterTime});
  @override
  void _buildSpecific(XmlBuilder builder) => builder.element('p:plus');
}

class RandomTransition extends SlideTransition {
  RandomTransition({super.speed, super.advanceOnClick, super.advanceAfterTime});
  @override
  void _buildSpecific(XmlBuilder builder) => builder.element('p:random');
}

class WedgeTransition extends SlideTransition {
  WedgeTransition({super.speed, super.advanceOnClick, super.advanceAfterTime});
  @override
  void _buildSpecific(XmlBuilder builder) => builder.element('p:wedge');
}

class DiamondTransition extends SlideTransition {
  DiamondTransition({
    super.speed,
    super.advanceOnClick,
    super.advanceAfterTime,
  });
  @override
  void _buildSpecific(XmlBuilder builder) => builder.element('p:diamond');
}
