// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TabConfig _$TabConfigFromJson(Map<String, dynamic> json) => TabConfig()
  ..tabItemList = (json['tabItemList'] as List<dynamic>)
      .map((e) => TabItem.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$TabConfigToJson(TabConfig instance) => <String, dynamic>{
      'tabItemList': instance.tabItemList,
    };
