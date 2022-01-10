// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eh_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EhSettings _$EhSettingsFromJson(Map<String, dynamic> json) => EhSettings()
  ..profilelist = (json['profilelist'] as List<dynamic>)
      .map((e) => EhProfile.fromJson(e as Map<String, dynamic>))
      .toList()
  ..profileSelected = json['profile_selected'] as String?
  ..defaultProfile = json['default_profile'] as String?
  ..loadImageThroughHAtH = json['load_image_through_hAtH'] as String?
  ..loadBrowsingCountry = json['load_browsing_country'] as String?
  ..imageSize = json['image_size'] as String?
  ..imageSizeHorizontal = json['image_size_horizontal'] as String?
  ..imageSizeVertical = json['image_size_vertical'] as String?
  ..galleryNameDisplay = json['gallery_name_display'] as String?
  ..archiverSettings = json['archiver_settings'] as String?
  ..frontPageSettings = json['front_page_settings'] as String?
  ..ctDoujinshi = json['ct_doujinshi'] as String?
  ..ctManga = json['ct_manga'] as String?
  ..ctArtistcg = json['ct_artistcg'] as String?
  ..ctGamecg = json['ct_gamecg'] as String?
  ..ctWestern = json['ct_western'] as String?
  ..ctNonH = json['ct_non_h'] as String?
  ..ctImageset = json['ct_imageset'] as String?
  ..ctCosplay = json['ct_cosplay'] as String?
  ..ctAsianporn = json['ct_asianporn'] as String?
  ..ctMisc = json['ct_misc'] as String?
  ..favorites = (json['favorites'] as List<dynamic>)
      .map((e) => EhSettingItem.fromJson(e as Map<String, dynamic>))
      .toList()
  ..sortOrderFavorites = json['sort_order_favorites'] as String?
  ..ratings = json['ratings'] as String?
  ..xn = (json['xn'] as List<dynamic>)
      .map((e) => EhSettingItem.fromJson(e as Map<String, dynamic>))
      .toList()
  ..xl = (json['xl'] as List<dynamic>)
      .map((e) => EhSettingItem.fromJson(e as Map<String, dynamic>))
      .toList()
  ..tagFilteringThreshold = json['tag_filtering_threshold'] as String?
  ..tagWatchingThreshold = json['tag_watching_threshold'] as String?
  ..excludedUploaders = json['excluded_uploaders'] as String?
  ..xuQuotaUsing = json['xu_quota_using'] as num?
  ..xuQuotaMax = json['xu_quota_max'] as num?
  ..searchResultCount = json['search_result_count'] as String?
  ..mouseOverThumbnails = json['mouse_over_thumbnails'] as String?
  ..thumbnailSize = json['thumbnail_size'] as String?
  ..thumbnailRows = json['thumbnail_rows'] as String?
  ..thumbnailScaling = json['thumbnail_Scaling'] as String?
  ..viewportOverride = json['viewport_override'] as String?
  ..sortOrderComments = json['sort_order_comments'] as String?
  ..showCommentVotes = json['show_comment_votes'] as String?
  ..sortOrderTags = json['sort_order_tags'] as String?
  ..showGalleryPageNumbers = json['show_gallery_page_numbers'] as String?
  ..hentaiAtHomeLocalNetworkHost =
      json['hentaiAtHome_local_network_host'] as String?
  ..originalImages = json['original_images'] as String?
  ..alwaysUseMpv = json['always_use_mpv'] as String?
  ..mpvStyle = json['mpv_style'] as String?
  ..mpvThumbnailPane = json['mpv_thumbnail_pane'] as String?;

Map<String, dynamic> _$EhSettingsToJson(EhSettings instance) =>
    <String, dynamic>{
      'profilelist': instance.profilelist,
      'profile_selected': instance.profileSelected,
      'default_profile': instance.defaultProfile,
      'load_image_through_hAtH': instance.loadImageThroughHAtH,
      'load_browsing_country': instance.loadBrowsingCountry,
      'image_size': instance.imageSize,
      'image_size_horizontal': instance.imageSizeHorizontal,
      'image_size_vertical': instance.imageSizeVertical,
      'gallery_name_display': instance.galleryNameDisplay,
      'archiver_settings': instance.archiverSettings,
      'front_page_settings': instance.frontPageSettings,
      'ct_doujinshi': instance.ctDoujinshi,
      'ct_manga': instance.ctManga,
      'ct_artistcg': instance.ctArtistcg,
      'ct_gamecg': instance.ctGamecg,
      'ct_western': instance.ctWestern,
      'ct_non_h': instance.ctNonH,
      'ct_imageset': instance.ctImageset,
      'ct_cosplay': instance.ctCosplay,
      'ct_asianporn': instance.ctAsianporn,
      'ct_misc': instance.ctMisc,
      'favorites': instance.favorites,
      'sort_order_favorites': instance.sortOrderFavorites,
      'ratings': instance.ratings,
      'xn': instance.xn,
      'xl': instance.xl,
      'tag_filtering_threshold': instance.tagFilteringThreshold,
      'tag_watching_threshold': instance.tagWatchingThreshold,
      'excluded_uploaders': instance.excludedUploaders,
      'xu_quota_using': instance.xuQuotaUsing,
      'xu_quota_max': instance.xuQuotaMax,
      'search_result_count': instance.searchResultCount,
      'mouse_over_thumbnails': instance.mouseOverThumbnails,
      'thumbnail_size': instance.thumbnailSize,
      'thumbnail_rows': instance.thumbnailRows,
      'thumbnail_Scaling': instance.thumbnailScaling,
      'viewport_override': instance.viewportOverride,
      'sort_order_comments': instance.sortOrderComments,
      'show_comment_votes': instance.showCommentVotes,
      'sort_order_tags': instance.sortOrderTags,
      'show_gallery_page_numbers': instance.showGalleryPageNumbers,
      'hentaiAtHome_local_network_host': instance.hentaiAtHomeLocalNetworkHost,
      'original_images': instance.originalImages,
      'always_use_mpv': instance.alwaysUseMpv,
      'mpv_style': instance.mpvStyle,
      'mpv_thumbnail_pane': instance.mpvThumbnailPane,
    };
