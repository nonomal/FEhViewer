// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uconfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Uconfig _$UconfigFromJson(Map<String, dynamic> json) => Uconfig()
  ..profilelist = (json['profilelist'] as List<dynamic>)
      .map((e) => EhProfile.fromJson(e as Map<String, dynamic>))
      .toList()
  ..profileSelected = json['profileSelected'] as String
  ..nameDisplay = json['nameDisplay'] as num?
  ..thumbnailSize = json['thumbnailSize'] as num?
  ..thumbnailRows = json['thumbnailRows'] as num?;

Map<String, dynamic> _$UconfigToJson(Uconfig instance) => <String, dynamic>{
      'profilelist': instance.profilelist,
      'profileSelected': instance.profileSelected,
      'nameDisplay': instance.nameDisplay,
      'thumbnailSize': instance.thumbnailSize,
      'thumbnailRows': instance.thumbnailRows,
    };
