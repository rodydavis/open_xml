import 'package:json_annotation/json_annotation.dart';

import '../classes/images.dart';
import '../classes/slide.dart';
import '../classes/text_value.dart';

import '../template/ppt/slides/two_down_image_caption_title_content.xml.mustache.dart'
    as down;
import '../template/ppt/slides/two_up_image_caption_title_content.xml.mustache.dart'
    as up;

part 'title_content_two_image_caption.g.dart';

@JsonSerializable(createFactory: false)
class SlideTitleContentTwoImageCaption extends Slide {
  SlideTitleContentTwoImageCaption({
    super.name = 'Title, Content and Images',
    this.title,
    this.content,
    this.image1,
    this.image2,
    this.caption1,
    this.caption2,
    super.speakerNotes,
    super.slideNumber,
    this.contentDown = false,
  });

  TextValue? title;
  TextValue? content;
  ImageReference? image1;
  ImageReference? image2;
  TextValue? caption1;
  TextValue? caption2;
  bool? contentDown;

  @override
  int get layoutId => 4; // You'll need to create a custom layout in PowerPoint

  @override
  Map<int, ImageReference?> get imageRefs => {
        ...super.imageRefs,
        1: image1,
        2: image2,
      };

  @override
  Map<String, dynamic> toJson() =>
      _$SlideTitleContentTwoImageCaptionToJson(this);

  @override
  String get source => contentDown == true ? up.template : down.template;
}
