import 'package:json_annotation/json_annotation.dart';

part 'mvp_image.g.dart';

@JsonSerializable()
class MvpImage {
  MvpImage();

  String? n;
  String? k;
  String? t;
  
  factory MvpImage.fromJson(Map<String,dynamic> json) => _$MvpImageFromJson(json);
  Map<String, dynamic> toJson() => _$MvpImageToJson(this);
}
