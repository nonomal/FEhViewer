import 'package:json_annotation/json_annotation.dart';

part 'gallery_comment_span.g.dart';

@JsonSerializable()
class GalleryCommentSpan {
  GalleryCommentSpan();

  String? type;
  String? style;
  String? text;
  String? translate;
  String? href;
  String? imageUrl;
  
  factory GalleryCommentSpan.fromJson(Map<String,dynamic> json) => _$GalleryCommentSpanFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryCommentSpanToJson(this);
}
