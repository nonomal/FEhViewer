// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryList _$GalleryListFromJson(Map<String, dynamic> json) => GalleryList()
  ..gallerys = (json['gallerys'] as List<dynamic>?)
      ?.map((e) => GalleryItem.fromJson(e as Map<String, dynamic>))
      .toList()
  ..maxPage = json['maxPage'] as num?
  ..nextPage = json['nextPage'] as num?
  ..favList = (json['favList'] as List<dynamic>?)
      ?.map((e) => Favcat.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$GalleryListToJson(GalleryList instance) =>
    <String, dynamic>{
      'gallerys': instance.gallerys,
      'maxPage': instance.maxPage,
      'nextPage': instance.nextPage,
      'favList': instance.favList,
    };
