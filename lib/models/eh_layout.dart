import 'package:json_annotation/json_annotation.dart';

part 'eh_layout.g.dart';

@JsonSerializable()
class EhLayout {
  EhLayout();

  num? sideProportion;
  
  factory EhLayout.fromJson(Map<String,dynamic> json) => _$EhLayoutFromJson(json);
  Map<String, dynamic> toJson() => _$EhLayoutToJson(this);
}
