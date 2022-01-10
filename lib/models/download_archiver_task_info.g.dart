// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_archiver_task_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadArchiverTaskInfo _$DownloadArchiverTaskInfoFromJson(
        Map<String, dynamic> json) =>
    DownloadArchiverTaskInfo()
      ..tag = json['tag'] as String?
      ..gid = json['gid'] as String?
      ..type = json['type'] as String?
      ..title = json['title'] as String?
      ..taskId = json['taskId'] as String?
      ..filePath = json['filePath'] as String?
      ..imgUrl = json['imgUrl'] as String?
      ..galleryUrl = json['galleryUrl'] as String?
      ..dowmloadType = json['dowmloadType'] as String?
      ..status = json['status'] as num?
      ..progress = json['progress'] as num?;

Map<String, dynamic> _$DownloadArchiverTaskInfoToJson(
        DownloadArchiverTaskInfo instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'gid': instance.gid,
      'type': instance.type,
      'title': instance.title,
      'taskId': instance.taskId,
      'filePath': instance.filePath,
      'imgUrl': instance.imgUrl,
      'galleryUrl': instance.galleryUrl,
      'dowmloadType': instance.dowmloadType,
      'status': instance.status,
      'progress': instance.progress,
    };
