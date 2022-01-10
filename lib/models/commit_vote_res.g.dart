// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_vote_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitVoteRes _$CommitVoteResFromJson(Map<String, dynamic> json) =>
    CommitVoteRes()
      ..commentId = json['comment_id'] as num?
      ..commentScore = json['comment_score'] as num?
      ..commentVote = json['comment_vote'] as num?;

Map<String, dynamic> _$CommitVoteResToJson(CommitVoteRes instance) =>
    <String, dynamic>{
      'comment_id': instance.commentId,
      'comment_score': instance.commentScore,
      'comment_vote': instance.commentVote,
    };
