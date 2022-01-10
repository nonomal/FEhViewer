import 'package:json_annotation/json_annotation.dart';

part 'simple_tag.g.dart';

@JsonSerializable()
class SimpleTag {
  SimpleTag();

  String? text;
  String? translat;
  String? color;
  String? backgrondColor;
  
  factory SimpleTag.fromJson(Map<String,dynamic> json) => _$SimpleTagFromJson(json);
  Map<String, dynamic> toJson() => _$SimpleTagToJson(this);
}
