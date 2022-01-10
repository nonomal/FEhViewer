// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openl_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenlTranslation _$OpenlTranslationFromJson(Map<String, dynamic> json) =>
    OpenlTranslation()
      ..status = json['status'] as bool?
      ..text = json['text'] as String?
      ..result = json['result'] as String?
      ..sourceLang = json['source_lang'] as String?
      ..targetLang = json['target_lang'] as String?;

Map<String, dynamic> _$OpenlTranslationToJson(OpenlTranslation instance) =>
    <String, dynamic>{
      'status': instance.status,
      'text': instance.text,
      'result': instance.result,
      'source_lang': instance.sourceLang,
      'target_lang': instance.targetLang,
    };
