import 'package:json_annotation/json_annotation.dart';
import "favcat.dart";
part 'user.g.dart';

@JsonSerializable()
class User {
  User();

  String? username;
  String? nickName;
  String? memberId;
  String? passHash;
  String? igneous;
  String? hathPerks;
  String? sk;
  String? avatarUrl;
  List<Favcat>? favcat;
  
  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
