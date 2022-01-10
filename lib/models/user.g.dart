// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..username = json['username'] as String?
  ..nickName = json['nickName'] as String?
  ..memberId = json['memberId'] as String?
  ..passHash = json['passHash'] as String?
  ..igneous = json['igneous'] as String?
  ..hathPerks = json['hathPerks'] as String?
  ..sk = json['sk'] as String?
  ..avatarUrl = json['avatarUrl'] as String?
  ..favcat = (json['favcat'] as List<dynamic>?)
      ?.map((e) => Favcat.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'username': instance.username,
      'nickName': instance.nickName,
      'memberId': instance.memberId,
      'passHash': instance.passHash,
      'igneous': instance.igneous,
      'hathPerks': instance.hathPerks,
      'sk': instance.sk,
      'avatarUrl': instance.avatarUrl,
      'favcat': instance.favcat,
    };
