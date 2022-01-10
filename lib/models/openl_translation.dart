import 'package:json_annotation/json_annotation.dart';

part 'openl_translation.g.dart';

@JsonSerializable()
class OpenlTranslation {
  OpenlTranslation();

  bool? status;
  String? text;
  String? result;
  @JsonKey(name: 'source_lang') String? sourceLang;
  @JsonKey(name: 'target_lang') String? targetLang;
  
  factory OpenlTranslation.fromJson(Map<String,dynamic> json) => _$OpenlTranslationFromJson(json);
  Map<String, dynamic> toJson() => _$OpenlTranslationToJson(this);
}
