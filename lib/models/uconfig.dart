import 'package:json_annotation/json_annotation.dart';
import "eh_profile.dart";
part 'uconfig.g.dart';

@JsonSerializable()
class Uconfig {
  Uconfig();

  late List<EhProfile> profilelist;
  late String profileSelected;
  num? nameDisplay;
  num? thumbnailSize;
  num? thumbnailRows;
  
  factory Uconfig.fromJson(Map<String,dynamic> json) => _$UconfigFromJson(json);
  Map<String, dynamic> toJson() => _$UconfigToJson(this);
}
