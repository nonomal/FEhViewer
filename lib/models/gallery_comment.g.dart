// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryComment _$GalleryCommentFromJson(Map<String, dynamic> json) =>
    GalleryComment()
      ..name = json['name'] as String
      ..time = json['time'] as String
      ..span = (json['span'] as List<dynamic>)
          .map((e) => GalleryCommentSpan.fromJson(e as Map<String, dynamic>))
          .toList()
      ..score = json['score'] as String
      ..vote = json['vote'] as num?
      ..id = json['id'] as String?
      ..canEdit = json['canEdit'] as bool?
      ..canVote = json['canVote'] as bool?
      ..showTranslate = json['showTranslate'] as bool?;

Map<String, dynamic> _$GalleryCommentToJson(GalleryComment instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time,
      'span': instance.span,
      'score': instance.score,
      'vote': instance.vote,
      'id': instance.id,
      'canEdit': instance.canEdit,
      'canVote': instance.canVote,
      'showTranslate': instance.showTranslate,
    };
