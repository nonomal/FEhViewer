import 'package:json_annotation/json_annotation.dart';

part 'auto_lock.g.dart';

@JsonSerializable()
class AutoLock {
  AutoLock();

  num? lastLeaveTime;
  bool? isLocking;
  
  factory AutoLock.fromJson(Map<String,dynamic> json) => _$AutoLockFromJson(json);
  Map<String, dynamic> toJson() => _$AutoLockToJson(this);
}
