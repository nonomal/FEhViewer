import 'package:json_annotation/json_annotation.dart';

part 'gallery_image.g.dart';

@JsonSerializable()
class GalleryImage {
  GalleryImage();

  bool? largeThumb;
  bool? completeCache;
  bool? startPrecache;
  late num ser;
  String? href;
  String? imageUrl;
  String? originImageUrl;
  String? thumbUrl;
  num? thumbHeight;
  num? thumbWidth;
  num? imageHeight;
  num? imageWidth;
  num? offSet;
  String? sourceId;
  bool? completeHeight;
  String? gid;
  String? token;
  bool? completeDownload;
  String? filePath;
  
  factory GalleryImage.fromJson(Map<String,dynamic> json) => _$GalleryImageFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryImageToJson(this);
}
