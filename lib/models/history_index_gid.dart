import 'package:json_annotation/json_annotation.dart';

part 'history_index_gid.g.dart';

@JsonSerializable()
class HistoryIndexGid {
  HistoryIndexGid();

  num? t;
  String? g;
  
  factory HistoryIndexGid.fromJson(Map<String,dynamic> json) => _$HistoryIndexGidFromJson(json);
  Map<String, dynamic> toJson() => _$HistoryIndexGidToJson(this);
}
