// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eh_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EhProfile _$EhProfileFromJson(Map<String, dynamic> json) => EhProfile()
  ..name = json['name'] as String
  ..value = json['value'] as num
  ..selected = json['selected'] as bool;

Map<String, dynamic> _$EhProfileToJson(EhProfile instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'selected': instance.selected,
    };
