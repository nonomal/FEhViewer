import 'package:json_annotation/json_annotation.dart';

part 'commit_vote_res.g.dart';

@JsonSerializable()
class CommitVoteRes {
  CommitVoteRes();

  @JsonKey(name: 'comment_id') num? commentId;
  @JsonKey(name: 'comment_score') num? commentScore;
  @JsonKey(name: 'comment_vote') num? commentVote;
  
  factory CommitVoteRes.fromJson(Map<String,dynamic> json) => _$CommitVoteResFromJson(json);
  Map<String, dynamic> toJson() => _$CommitVoteResToJson(this);
}
