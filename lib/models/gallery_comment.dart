import 'package:json_annotation/json_annotation.dart';
import "gallery_comment_span.dart";
part 'gallery_comment.g.dart';

@JsonSerializable()
class GalleryComment {
  GalleryComment();

  late String name;
  late String time;
  late List<GalleryCommentSpan> span;
  late String score;
  num? vote;
  String? id;
  bool? canEdit;
  bool? canVote;
  bool? showTranslate;
  
  factory GalleryComment.fromJson(Map<String,dynamic> json) => _$GalleryCommentFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryCommentToJson(this);
}
