// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favcat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Favcat _$FavcatFromJson(Map<String, dynamic> json) => Favcat()
  ..favId = json['favId'] as String
  ..favTitle = json['favTitle'] as String
  ..totNum = json['totNum'] as num?
  ..note = json['note'] as String?;

Map<String, dynamic> _$FavcatToJson(Favcat instance) => <String, dynamic>{
      'favId': instance.favId,
      'favTitle': instance.favTitle,
      'totNum': instance.totNum,
      'note': instance.note,
    };
