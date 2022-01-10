// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagGroup _$TagGroupFromJson(Map<String, dynamic> json) => TagGroup()
  ..tagType = json['tagType'] as String?
  ..galleryTags = (json['galleryTags'] as List<dynamic>)
      .map((e) => GalleryTag.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$TagGroupToJson(TagGroup instance) => <String, dynamic>{
      'tagType': instance.tagType,
      'galleryTags': instance.galleryTags,
    };
