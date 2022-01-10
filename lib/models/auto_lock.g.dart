// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_lock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoLock _$AutoLockFromJson(Map<String, dynamic> json) => AutoLock()
  ..lastLeaveTime = json['lastLeaveTime'] as num?
  ..isLocking = json['isLocking'] as bool?;

Map<String, dynamic> _$AutoLockToJson(AutoLock instance) => <String, dynamic>{
      'lastLeaveTime': instance.lastLeaveTime,
      'isLocking': instance.isLocking,
    };
