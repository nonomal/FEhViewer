import 'package:json_annotation/json_annotation.dart';

part 'favcat.g.dart';

@JsonSerializable()
class Favcat {
  Favcat();

  late String favId;
  late String favTitle;
  num? totNum;
  String? note;
  
  factory Favcat.fromJson(Map<String,dynamic> json) => _$FavcatFromJson(json);
  Map<String, dynamic> toJson() => _$FavcatToJson(this);
}
