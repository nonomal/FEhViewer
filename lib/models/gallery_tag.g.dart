// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryTag _$GalleryTagFromJson(Map<String, dynamic> json) => GalleryTag()
  ..title = json['title'] as String
  ..type = json['type'] as String
  ..tagTranslat = json['tagTranslat'] as String
  ..intro = json['intro'] as String?
  ..vote = json['vote'] as num?;

Map<String, dynamic> _$GalleryTagToJson(GalleryTag instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'tagTranslat': instance.tagTranslat,
      'intro': instance.intro,
      'vote': instance.vote,
    };
