// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_torrent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryTorrent _$GalleryTorrentFromJson(Map<String, dynamic> json) =>
    GalleryTorrent()
      ..hash = json['hash'] as String?
      ..added = json['added'] as String?
      ..name = json['name'] as String?
      ..tsize = json['tsize'] as String?
      ..fsize = json['fsize'] as String?
      ..posted = json['posted'] as String?
      ..sizeText = json['sizeText'] as String?
      ..seeds = json['seeds'] as String?
      ..peerd = json['peerd'] as String?
      ..downloads = json['downloads'] as String?
      ..uploader = json['uploader'] as String?;

Map<String, dynamic> _$GalleryTorrentToJson(GalleryTorrent instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'added': instance.added,
      'name': instance.name,
      'tsize': instance.tsize,
      'fsize': instance.fsize,
      'posted': instance.posted,
      'sizeText': instance.sizeText,
      'seeds': instance.seeds,
      'peerd': instance.peerd,
      'downloads': instance.downloads,
      'uploader': instance.uploader,
    };
