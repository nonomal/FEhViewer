// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleTag _$SimpleTagFromJson(Map<String, dynamic> json) => SimpleTag()
  ..text = json['text'] as String?
  ..translat = json['translat'] as String?
  ..color = json['color'] as String?
  ..backgrondColor = json['backgrondColor'] as String?;

Map<String, dynamic> _$SimpleTagToJson(SimpleTag instance) => <String, dynamic>{
      'text': instance.text,
      'translat': instance.translat,
      'color': instance.color,
      'backgrondColor': instance.backgrondColor,
    };
