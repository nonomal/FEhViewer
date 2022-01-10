import 'package:json_annotation/json_annotation.dart';
import "gallery_torrent.dart";
import "simple_tag.dart";
import "tag_group.dart";
import "gallery_comment.dart";
import "gallery_image.dart";
part 'gallery_item.g.dart';

@JsonSerializable()
class GalleryItem {
  GalleryItem();

  String? gid;
  String? token;
  String? showKey;
  String? url;
  String? imgUrl;
  String? imgUrlL;
  num? imgHeight;
  num? imgWidth;
  String? japaneseTitle;
  String? englishTitle;
  String? category;
  String? uploader;
  String? posted;
  String? language;
  String? filecount;
  num? rating;
  String? ratingCount;
  String? torrentcount;
  List<GalleryTorrent>? torrents;
  num? filesize;
  String? filesizeText;
  String? visible;
  String? parent;
  num? ratingFallBack;
  String? numberOfReviews;
  String? postTime;
  String? favoritedCount;
  String? favTitle;
  String? favcat;
  bool? localFav;
  List<SimpleTag>? simpleTags;
  List? tagsFromApi;
  String? translated;
  List<TagGroup>? tagGroup;
  List<GalleryComment>? galleryComment;
  List<GalleryImage>? galleryImages;
  String? apikey;
  String? apiuid;
  bool? isRatinged;
  String? colorRating;
  String? archiverLink;
  String? torrentLink;
  num? lastViewTime;
  num? pageOfList;
  
  factory GalleryItem.fromJson(Map<String,dynamic> json) => _$GalleryItemFromJson(json);
  Map<String, dynamic> toJson() => _$GalleryItemToJson(this);
}
