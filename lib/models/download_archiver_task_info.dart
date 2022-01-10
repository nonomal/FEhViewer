import 'package:json_annotation/json_annotation.dart';

part 'download_archiver_task_info.g.dart';

@JsonSerializable()
class DownloadArchiverTaskInfo {
  DownloadArchiverTaskInfo();

  String? tag;
  String? gid;
  String? type;
  String? title;
  String? taskId;
  String? filePath;
  String? imgUrl;
  String? galleryUrl;
  String? dowmloadType;
  num? status;
  num? progress;
  
  factory DownloadArchiverTaskInfo.fromJson(Map<String,dynamic> json) => _$DownloadArchiverTaskInfoFromJson(json);
  Map<String, dynamic> toJson() => _$DownloadArchiverTaskInfoToJson(this);
}
