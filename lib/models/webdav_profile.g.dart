// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webdav_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebdavProfile _$WebdavProfileFromJson(Map<String, dynamic> json) =>
    WebdavProfile()
      ..url = json['url'] as String
      ..user = json['user'] as String?
      ..password = json['password'] as String?
      ..syncHistory = json['syncHistory'] as bool?
      ..syncReadProgress = json['syncReadProgress'] as bool?;

Map<String, dynamic> _$WebdavProfileToJson(WebdavProfile instance) =>
    <String, dynamic>{
      'url': instance.url,
      'user': instance.user,
      'password': instance.password,
      'syncHistory': instance.syncHistory,
      'syncReadProgress': instance.syncReadProgress,
    };
