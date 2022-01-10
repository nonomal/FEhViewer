import 'package:json_annotation/json_annotation.dart';

part 'webdav_profile.g.dart';

@JsonSerializable()
class WebdavProfile {
  WebdavProfile();

  late String url;
  String? user;
  String? password;
  bool? syncHistory;
  bool? syncReadProgress;
  
  factory WebdavProfile.fromJson(Map<String,dynamic> json) => _$WebdavProfileFromJson(json);
  Map<String, dynamic> toJson() => _$WebdavProfileToJson(this);
}
