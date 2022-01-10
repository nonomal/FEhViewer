// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile()
  ..ehConfig = EhConfig.fromJson(json['ehConfig'] as Map<String, dynamic>)
  ..user = User.fromJson(json['user'] as Map<String, dynamic>)
  ..lastLogin = json['lastLogin'] as String
  ..locale = json['locale'] as String
  ..theme = json['theme'] as String
  ..searchText = json['searchText'] as List<dynamic>
  ..localFav = LocalFav.fromJson(json['localFav'] as Map<String, dynamic>)
  ..enableAdvanceSearch = json['enableAdvanceSearch'] as bool
  ..advanceSearch =
      AdvanceSearch.fromJson(json['advanceSearch'] as Map<String, dynamic>)
  ..dnsConfig = DnsConfig.fromJson(json['dnsConfig'] as Map<String, dynamic>)
  ..downloadConfig =
      DownloadConfig.fromJson(json['downloadConfig'] as Map<String, dynamic>)
  ..autoLock = AutoLock.fromJson(json['autoLock'] as Map<String, dynamic>)
  ..webdav = json['webdav'] == null
      ? null
      : WebdavProfile.fromJson(json['webdav'] as Map<String, dynamic>)
  ..favConfig = json['favConfig'] == null
      ? null
      : FavConfig.fromJson(json['favConfig'] as Map<String, dynamic>)
  ..customTabConfig = json['customTabConfig'] == null
      ? null
      : CustomTabConfig.fromJson(
          json['customTabConfig'] as Map<String, dynamic>);

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'ehConfig': instance.ehConfig,
      'user': instance.user,
      'lastLogin': instance.lastLogin,
      'locale': instance.locale,
      'theme': instance.theme,
      'searchText': instance.searchText,
      'localFav': instance.localFav,
      'enableAdvanceSearch': instance.enableAdvanceSearch,
      'advanceSearch': instance.advanceSearch,
      'dnsConfig': instance.dnsConfig,
      'downloadConfig': instance.downloadConfig,
      'autoLock': instance.autoLock,
      'webdav': instance.webdav,
      'favConfig': instance.favConfig,
      'customTabConfig': instance.customTabConfig,
    };
