// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dns_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DnsCache _$DnsCacheFromJson(Map<String, dynamic> json) => DnsCache()
  ..host = json['host'] as String?
  ..lastResolve = json['lastResolve'] as num?
  ..ttl = json['ttl'] as num?
  ..addrs = json['addrs'] as List<dynamic>?
  ..addr = json['addr'] as String?;

Map<String, dynamic> _$DnsCacheToJson(DnsCache instance) => <String, dynamic>{
      'host': instance.host,
      'lastResolve': instance.lastResolve,
      'ttl': instance.ttl,
      'addrs': instance.addrs,
      'addr': instance.addr,
    };
