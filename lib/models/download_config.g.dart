// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadConfig _$DownloadConfigFromJson(Map<String, dynamic> json) =>
    DownloadConfig()
      ..preloadImage = json['preloadImage'] as num?
      ..multiDownload = json['multiDownload'] as num?
      ..downloadLocation = json['downloadLocation'] as String?
      ..downloadOrigImage = json['downloadOrigImage'] as bool?
      ..allowMediaScan = json['allowMediaScan'] as bool?;

Map<String, dynamic> _$DownloadConfigToJson(DownloadConfig instance) =>
    <String, dynamic>{
      'preloadImage': instance.preloadImage,
      'multiDownload': instance.multiDownload,
      'downloadLocation': instance.downloadLocation,
      'downloadOrigImage': instance.downloadOrigImage,
      'allowMediaScan': instance.allowMediaScan,
    };
