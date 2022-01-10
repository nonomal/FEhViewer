// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryImage _$GalleryImageFromJson(Map<String, dynamic> json) => GalleryImage()
  ..largeThumb = json['largeThumb'] as bool?
  ..completeCache = json['completeCache'] as bool?
  ..startPrecache = json['startPrecache'] as bool?
  ..ser = json['ser'] as num
  ..href = json['href'] as String?
  ..imageUrl = json['imageUrl'] as String?
  ..originImageUrl = json['originImageUrl'] as String?
  ..thumbUrl = json['thumbUrl'] as String?
  ..thumbHeight = json['thumbHeight'] as num?
  ..thumbWidth = json['thumbWidth'] as num?
  ..imageHeight = json['imageHeight'] as num?
  ..imageWidth = json['imageWidth'] as num?
  ..offSet = json['offSet'] as num?
  ..sourceId = json['sourceId'] as String?
  ..completeHeight = json['completeHeight'] as bool?
  ..gid = json['gid'] as String?
  ..token = json['token'] as String?
  ..completeDownload = json['completeDownload'] as bool?
  ..filePath = json['filePath'] as String?;

Map<String, dynamic> _$GalleryImageToJson(GalleryImage instance) =>
    <String, dynamic>{
      'largeThumb': instance.largeThumb,
      'completeCache': instance.completeCache,
      'startPrecache': instance.startPrecache,
      'ser': instance.ser,
      'href': instance.href,
      'imageUrl': instance.imageUrl,
      'originImageUrl': instance.originImageUrl,
      'thumbUrl': instance.thumbUrl,
      'thumbHeight': instance.thumbHeight,
      'thumbWidth': instance.thumbWidth,
      'imageHeight': instance.imageHeight,
      'imageWidth': instance.imageWidth,
      'offSet': instance.offSet,
      'sourceId': instance.sourceId,
      'completeHeight': instance.completeHeight,
      'gid': instance.gid,
      'token': instance.token,
      'completeDownload': instance.completeDownload,
      'filePath': instance.filePath,
    };
