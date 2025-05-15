import 'package:json_annotation/json_annotation.dart';

import '../classes/images.dart';
import '../classes/slide.dart';
import '../classes/text_value.dart';
import '../template/ppt/slides/title_content_image_caption.xml.mustache.dart'
    as righttemplate;
import '../template/ppt/slides/title_content_left_image_caption.xml.mustache.dart'
    as lefttemplate;

part 'title_content_image_caption.g.dart';

@JsonSerializable(createFactory: false)
class SlideTitleContentOneImageCaption extends Slide {
  SlideTitleContentOneImageCaption({
    super.name = 'Title, Content and Images',
    this.title,
    this.content,
    this.image,
    this.caption,
    super.speakerNotes,
    super.slideNumber,
    this.contentRight = false,
  });

  TextValue? title;
  TextValue? content;
  ImageReference? image;
  TextValue? caption;
  bool? contentRight;

  @override
  int get layoutId => 4; // You'll need to create a custom layout in PowerPoint

  @override
  Map<int, ImageReference?> get imageRefs => {
        ...super.imageRefs,
        1: image,
      };

  @override
  Map<String, dynamic> toJson() =>
      _$SlideTitleContentOneImageCaptionToJson(this);

  @override
  String get source =>
      contentRight == true ? righttemplate.template : lefttemplate.template;
}
