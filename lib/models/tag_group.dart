import 'package:json_annotation/json_annotation.dart';
import "gallery_tag.dart";
part 'tag_group.g.dart';

@JsonSerializable()
class TagGroup {
  TagGroup();

  String? tagType;
  late List<GalleryTag> galleryTags;
  
  factory TagGroup.fromJson(Map<String,dynamic> json) => _$TagGroupFromJson(json);
  Map<String, dynamic> toJson() => _$TagGroupToJson(this);
}
