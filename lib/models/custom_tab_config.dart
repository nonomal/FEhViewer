import 'package:json_annotation/json_annotation.dart';
import "custom_profile.dart";
part 'custom_tab_config.g.dart';

@JsonSerializable()
class CustomTabConfig {
  CustomTabConfig();

  List<CustomProfile>? profiles;
  num? lastIndex;
  
  factory CustomTabConfig.fromJson(Map<String,dynamic> json) => _$CustomTabConfigFromJson(json);
  Map<String, dynamic> toJson() => _$CustomTabConfigToJson(this);
}
