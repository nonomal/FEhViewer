import 'package:json_annotation/json_annotation.dart';

part 'fav_config.g.dart';

@JsonSerializable()
class FavConfig {
  FavConfig();

  num? lastIndex;
  
  factory FavConfig.fromJson(Map<String,dynamic> json) => _$FavConfigFromJson(json);
  Map<String, dynamic> toJson() => _$FavConfigToJson(this);
}
