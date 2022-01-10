import 'package:json_annotation/json_annotation.dart';
import "history_index_gid.dart";
part 'history_index.g.dart';

@JsonSerializable()
class HistoryIndex {
  HistoryIndex();

  num? time;
  List<HistoryIndexGid>? gids;
  
  factory HistoryIndex.fromJson(Map<String,dynamic> json) => _$HistoryIndexFromJson(json);
  Map<String, dynamic> toJson() => _$HistoryIndexToJson(this);
}
