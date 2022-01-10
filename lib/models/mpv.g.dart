// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mpv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mpv _$MpvFromJson(Map<String, dynamic> json) => Mpv()
  ..mpvkey = json['mpvkey'] as String?
  ..gid = json['gid'] as num?
  ..imagelist = (json['imagelist'] as List<dynamic>?)
      ?.map((e) => MvpImage.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$MpvToJson(Mpv instance) => <String, dynamic>{
      'mpvkey': instance.mpvkey,
      'gid': instance.gid,
      'imagelist': instance.imagelist,
    };
