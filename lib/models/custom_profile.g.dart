// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomProfile _$CustomProfileFromJson(Map<String, dynamic> json) =>
    CustomProfile()
      ..uuid = json['uuid'] as String
      ..name = json['name'] as String
      ..searchText = json['searchText'] as List<dynamic>?
      ..listTypeValue = json['listTypeValue'] as String?
      ..catsTypeValue = json['catsTypeValue'] as String?
      ..cats = json['cats'] as num?
      ..enableAdvance = json['enableAdvance'] as bool?
      ..advSearchTypeValue = json['advSearchTypeValue'] as String?
      ..advSearch = json['advSearch'] == null
          ? null
          : AdvanceSearch.fromJson(json['advSearch'] as Map<String, dynamic>)
      ..listModeValue = json['listModeValue'] as String?;

Map<String, dynamic> _$CustomProfileToJson(CustomProfile instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'searchText': instance.searchText,
      'listTypeValue': instance.listTypeValue,
      'catsTypeValue': instance.catsTypeValue,
      'cats': instance.cats,
      'enableAdvance': instance.enableAdvance,
      'advSearchTypeValue': instance.advSearchTypeValue,
      'advSearch': instance.advSearch,
      'listModeValue': instance.listModeValue,
    };
