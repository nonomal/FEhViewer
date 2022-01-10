import 'package:json_annotation/json_annotation.dart';
import "advance_search.dart";
part 'custom_profile.g.dart';

@JsonSerializable()
class CustomProfile {
  CustomProfile();

  late String uuid;
  late String name;
  List? searchText;
  String? listTypeValue;
  String? catsTypeValue;
  num? cats;
  bool? enableAdvance;
  String? advSearchTypeValue;
  AdvanceSearch? advSearch;
  String? listModeValue;
  
  factory CustomProfile.fromJson(Map<String,dynamic> json) => _$CustomProfileFromJson(json);
  Map<String, dynamic> toJson() => _$CustomProfileToJson(this);
}
