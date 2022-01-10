import 'package:json_annotation/json_annotation.dart';

part 'eh_profile.g.dart';

@JsonSerializable()
class EhProfile {
  EhProfile();

  late String name;
  late num value;
  late bool selected;
  
  factory EhProfile.fromJson(Map<String,dynamic> json) => _$EhProfileFromJson(json);
  Map<String, dynamic> toJson() => _$EhProfileToJson(this);
}
