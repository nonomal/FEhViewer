import 'package:json_annotation/json_annotation.dart';

part 'advance_search.g.dart';

@JsonSerializable()
class AdvanceSearch {
  AdvanceSearch();

  late bool searchGalleryName;
  late bool searchGalleryTags;
  late bool searchGalleryDesc;
  late bool searchToreenFilenames;
  late bool onlyShowWhithTorrents;
  late bool searchLowPowerTags;
  late bool searchDownvotedTags;
  late bool searchExpunged;
  late bool searchWithminRating;
  late num minRating;
  late bool searchBetweenpage;
  late String startPage;
  late String endPage;
  late bool disableDFLanguage;
  late bool disableDFUploader;
  late bool disableDFTags;
  late bool favSearchName;
  late bool favSearchTags;
  late bool favSearchNote;
  
  factory AdvanceSearch.fromJson(Map<String,dynamic> json) => _$AdvanceSearchFromJson(json);
  Map<String, dynamic> toJson() => _$AdvanceSearchToJson(this);
}
