import 'package:json_annotation/json_annotation.dart';
import "eh_profile.dart";
import "eh_setting_item.dart";
part 'eh_settings.g.dart';

@JsonSerializable()
class EhSettings {
  EhSettings();

  late List<EhProfile> profilelist;
  @JsonKey(name: 'profile_selected') String? profileSelected;
  @JsonKey(name: 'default_profile') String? defaultProfile;
  @JsonKey(name: 'load_image_through_hAtH') String? loadImageThroughHAtH;
  @JsonKey(name: 'load_browsing_country') String? loadBrowsingCountry;
  @JsonKey(name: 'image_size') String? imageSize;
  @JsonKey(name: 'image_size_horizontal') String? imageSizeHorizontal;
  @JsonKey(name: 'image_size_vertical') String? imageSizeVertical;
  @JsonKey(name: 'gallery_name_display') String? galleryNameDisplay;
  @JsonKey(name: 'archiver_settings') String? archiverSettings;
  @JsonKey(name: 'front_page_settings') String? frontPageSettings;
  @JsonKey(name: 'ct_doujinshi') String? ctDoujinshi;
  @JsonKey(name: 'ct_manga') String? ctManga;
  @JsonKey(name: 'ct_artistcg') String? ctArtistcg;
  @JsonKey(name: 'ct_gamecg') String? ctGamecg;
  @JsonKey(name: 'ct_western') String? ctWestern;
  @JsonKey(name: 'ct_non_h') String? ctNonH;
  @JsonKey(name: 'ct_imageset') String? ctImageset;
  @JsonKey(name: 'ct_cosplay') String? ctCosplay;
  @JsonKey(name: 'ct_asianporn') String? ctAsianporn;
  @JsonKey(name: 'ct_misc') String? ctMisc;
  late List<EhSettingItem> favorites;
  @JsonKey(name: 'sort_order_favorites') String? sortOrderFavorites;
  String? ratings;
  late List<EhSettingItem> xn;
  late List<EhSettingItem> xl;
  @JsonKey(name: 'tag_filtering_threshold') String? tagFilteringThreshold;
  @JsonKey(name: 'tag_watching_threshold') String? tagWatchingThreshold;
  @JsonKey(name: 'excluded_uploaders') String? excludedUploaders;
  @JsonKey(name: 'xu_quota_using') num? xuQuotaUsing;
  @JsonKey(name: 'xu_quota_max') num? xuQuotaMax;
  @JsonKey(name: 'search_result_count') String? searchResultCount;
  @JsonKey(name: 'mouse_over_thumbnails') String? mouseOverThumbnails;
  @JsonKey(name: 'thumbnail_size') String? thumbnailSize;
  @JsonKey(name: 'thumbnail_rows') String? thumbnailRows;
  @JsonKey(name: 'thumbnail_Scaling') String? thumbnailScaling;
  @JsonKey(name: 'viewport_override') String? viewportOverride;
  @JsonKey(name: 'sort_order_comments') String? sortOrderComments;
  @JsonKey(name: 'show_comment_votes') String? showCommentVotes;
  @JsonKey(name: 'sort_order_tags') String? sortOrderTags;
  @JsonKey(name: 'show_gallery_page_numbers') String? showGalleryPageNumbers;
  @JsonKey(name: 'hentaiAtHome_local_network_host') String? hentaiAtHomeLocalNetworkHost;
  @JsonKey(name: 'original_images') String? originalImages;
  @JsonKey(name: 'always_use_mpv') String? alwaysUseMpv;
  @JsonKey(name: 'mpv_style') String? mpvStyle;
  @JsonKey(name: 'mpv_thumbnail_pane') String? mpvThumbnailPane;
  
  factory EhSettings.fromJson(Map<String,dynamic> json) => _$EhSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$EhSettingsToJson(this);
}
