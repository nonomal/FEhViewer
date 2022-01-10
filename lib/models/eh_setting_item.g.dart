// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eh_setting_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EhSettingItem _$EhSettingItemFromJson(Map<String, dynamic> json) =>
    EhSettingItem()
      ..type = json['type'] as String?
      ..ser = json['ser'] as String?
      ..value = json['value'] as String?
      ..name = json['name'] as String?;

Map<String, dynamic> _$EhSettingItemToJson(EhSettingItem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'ser': instance.ser,
      'value': instance.value,
      'name': instance.name,
    };
