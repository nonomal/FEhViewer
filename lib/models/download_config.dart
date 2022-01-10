import 'package:json_annotation/json_annotation.dart';

part 'download_config.g.dart';

@JsonSerializable()
class DownloadConfig {
  DownloadConfig();

  num? preloadImage;
  num? multiDownload;
  String? downloadLocation;
  bool? downloadOrigImage;
  bool? allowMediaScan;
  
  factory DownloadConfig.fromJson(Map<String,dynamic> json) => _$DownloadConfigFromJson(json);
  Map<String, dynamic> toJson() => _$DownloadConfigToJson(this);
}
