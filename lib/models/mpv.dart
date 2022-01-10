import 'package:json_annotation/json_annotation.dart';
import "mvp_image.dart";
part 'mpv.g.dart';

@JsonSerializable()
class Mpv {
  Mpv();

  String? mpvkey;
  num? gid;
  List<MvpImage>? imagelist;
  
  factory Mpv.fromJson(Map<String,dynamic> json) => _$MpvFromJson(json);
  Map<String, dynamic> toJson() => _$MpvToJson(this);
}
