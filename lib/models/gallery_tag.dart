import 'package:json_annotation/json_annotation.dart';

part 'gallery_tag.g.dart';

@JsonSerializable()
class GalleryTag {
  GalleryTag();

  late String title;
  late String type;
  late String tagTranslat;
  String? intro;
  num? vote;
  
  factory GalleryTag.fromJson(Map<String,dynamic> json) => _$GalleryTagFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryTagToJson(this);
}
