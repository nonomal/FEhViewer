// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dns_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DnsConfig _$DnsConfigFromJson(Map<String, dynamic> json) => DnsConfig()
  ..enableDoH = json['enableDoH'] as bool?
  ..enableCustomHosts = json['enableCustomHosts'] as bool?
  ..enableDomainFronting = json['enableDomainFronting'] as bool?
  ..hosts = (json['hosts'] as List<dynamic>?)
      ?.map((e) => DnsCache.fromJson(e as Map<String, dynamic>))
      .toList()
  ..dohCache = (json['dohCache'] as List<dynamic>?)
      ?.map((e) => DnsCache.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$DnsConfigToJson(DnsConfig instance) => <String, dynamic>{
      'enableDoH': instance.enableDoH,
      'enableCustomHosts': instance.enableCustomHosts,
      'enableDomainFronting': instance.enableDomainFronting,
      'hosts': instance.hosts,
      'dohCache': instance.dohCache,
    };
