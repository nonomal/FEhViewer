// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_tab_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomTabConfig _$CustomTabConfigFromJson(Map<String, dynamic> json) =>
    CustomTabConfig()
      ..profiles = (json['profiles'] as List<dynamic>?)
          ?.map((e) => CustomProfile.fromJson(e as Map<String, dynamic>))
          .toList()
      ..lastIndex = json['lastIndex'] as num?;

Map<String, dynamic> _$CustomTabConfigToJson(CustomTabConfig instance) =>
    <String, dynamic>{
      'profiles': instance.profiles,
      'lastIndex': instance.lastIndex,
    };
