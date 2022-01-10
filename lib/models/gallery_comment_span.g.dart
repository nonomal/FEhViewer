// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_comment_span.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryCommentSpan _$GalleryCommentSpanFromJson(Map<String, dynamic> json) =>
    GalleryCommentSpan()
      ..type = json['type'] as String?
      ..style = json['style'] as String?
      ..text = json['text'] as String?
      ..translate = json['translate'] as String?
      ..href = json['href'] as String?
      ..imageUrl = json['imageUrl'] as String?;

Map<String, dynamic> _$GalleryCommentSpanToJson(GalleryCommentSpan instance) =>
    <String, dynamic>{
      'type': instance.type,
      'style': instance.style,
      'text': instance.text,
      'translate': instance.translate,
      'href': instance.href,
      'imageUrl': instance.imageUrl,
    };
