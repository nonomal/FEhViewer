import 'package:json_annotation/json_annotation.dart';
import "tab_item.dart";
part 'tab_config.g.dart';

@JsonSerializable()
class TabConfig {
  TabConfig();

  late List<TabItem> tabItemList;
  
  factory TabConfig.fromJson(Map<String,dynamic> json) => _$TabConfigFromJson(json);
  Map<String, dynamic> toJson() => _$TabConfigToJson(this);
}
