// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryIndex _$HistoryIndexFromJson(Map<String, dynamic> json) => HistoryIndex()
  ..time = json['time'] as num?
  ..gids = (json['gids'] as List<dynamic>?)
      ?.map((e) => HistoryIndexGid.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$HistoryIndexToJson(HistoryIndex instance) =>
    <String, dynamic>{
      'time': instance.time,
      'gids': instance.gids,
    };
