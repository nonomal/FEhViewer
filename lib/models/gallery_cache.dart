import 'package:json_annotation/json_annotation.dart';

part 'gallery_cache.g.dart';

@JsonSerializable()
class GalleryCache {
  GalleryCache();

  String? gid;
  num? lastIndex;
  num? lastOffset;
  String? columnModeVal;
  num? time;
  
  factory GalleryCache.fromJson(Map<String,dynamic> json) => _$GalleryCacheFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryCacheToJson(this);
}
