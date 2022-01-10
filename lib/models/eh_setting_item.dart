import 'package:json_annotation/json_annotation.dart';

part 'eh_setting_item.g.dart';

@JsonSerializable()
class EhSettingItem {
  EhSettingItem();

  String? type;
  String? ser;
  String? value;
  String? name;
  
  factory EhSettingItem.fromJson(Map<String,dynamic> json) => _$EhSettingItemFromJson(json);
  Map<String, dynamic> toJson() => _$EhSettingItemToJson(this);
}
