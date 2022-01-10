// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryCache _$GalleryCacheFromJson(Map<String, dynamic> json) => GalleryCache()
  ..gid = json['gid'] as String?
  ..lastIndex = json['lastIndex'] as num?
  ..lastOffset = json['lastOffset'] as num?
  ..columnModeVal = json['columnModeVal'] as String?
  ..time = json['time'] as num?;

Map<String, dynamic> _$GalleryCacheToJson(GalleryCache instance) =>
    <String, dynamic>{
      'gid': instance.gid,
      'lastIndex': instance.lastIndex,
      'lastOffset': instance.lastOffset,
      'columnModeVal': instance.columnModeVal,
      'time': instance.time,
    };
