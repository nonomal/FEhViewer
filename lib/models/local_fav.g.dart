// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_fav.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalFav _$LocalFavFromJson(Map<String, dynamic> json) => LocalFav()
  ..gallerys = (json['gallerys'] as List<dynamic>?)
      ?.map((e) => GalleryItem.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$LocalFavToJson(LocalFav instance) => <String, dynamic>{
      'gallerys': instance.gallerys,
    };
