// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryItem _$GalleryItemFromJson(Map<String, dynamic> json) => GalleryItem()
  ..gid = json['gid'] as String?
  ..token = json['token'] as String?
  ..showKey = json['showKey'] as String?
  ..url = json['url'] as String?
  ..imgUrl = json['imgUrl'] as String?
  ..imgUrlL = json['imgUrlL'] as String?
  ..imgHeight = json['imgHeight'] as num?
  ..imgWidth = json['imgWidth'] as num?
  ..japaneseTitle = json['japaneseTitle'] as String?
  ..englishTitle = json['englishTitle'] as String?
  ..category = json['category'] as String?
  ..uploader = json['uploader'] as String?
  ..posted = json['posted'] as String?
  ..language = json['language'] as String?
  ..filecount = json['filecount'] as String?
  ..rating = json['rating'] as num?
  ..ratingCount = json['ratingCount'] as String?
  ..torrentcount = json['torrentcount'] as String?
  ..torrents = (json['torrents'] as List<dynamic>?)
      ?.map((e) => GalleryTorrent.fromJson(e as Map<String, dynamic>))
      .toList()
  ..filesize = json['filesize'] as num?
  ..filesizeText = json['filesizeText'] as String?
  ..visible = json['visible'] as String?
  ..parent = json['parent'] as String?
  ..ratingFallBack = json['ratingFallBack'] as num?
  ..numberOfReviews = json['numberOfReviews'] as String?
  ..postTime = json['postTime'] as String?
  ..favoritedCount = json['favoritedCount'] as String?
  ..favTitle = json['favTitle'] as String?
  ..favcat = json['favcat'] as String?
  ..localFav = json['localFav'] as bool?
  ..simpleTags = (json['simpleTags'] as List<dynamic>?)
      ?.map((e) => SimpleTag.fromJson(e as Map<String, dynamic>))
      .toList()
  ..tagsFromApi = json['tagsFromApi'] as List<dynamic>?
  ..translated = json['translated'] as String?
  ..tagGroup = (json['tagGroup'] as List<dynamic>?)
      ?.map((e) => TagGroup.fromJson(e as Map<String, dynamic>))
      .toList()
  ..galleryComment = (json['galleryComment'] as List<dynamic>?)
      ?.map((e) => GalleryComment.fromJson(e as Map<String, dynamic>))
      .toList()
  ..galleryImages = (json['galleryImages'] as List<dynamic>?)
      ?.map((e) => GalleryImage.fromJson(e as Map<String, dynamic>))
      .toList()
  ..apikey = json['apikey'] as String?
  ..apiuid = json['apiuid'] as String?
  ..isRatinged = json['isRatinged'] as bool?
  ..colorRating = json['colorRating'] as String?
  ..archiverLink = json['archiverLink'] as String?
  ..torrentLink = json['torrentLink'] as String?
  ..lastViewTime = json['lastViewTime'] as num?
  ..pageOfList = json['pageOfList'] as num?;

Map<String, dynamic> _$GalleryItemToJson(GalleryItem instance) =>
    <String, dynamic>{
      'gid': instance.gid,
      'token': instance.token,
      'showKey': instance.showKey,
      'url': instance.url,
      'imgUrl': instance.imgUrl,
      'imgUrlL': instance.imgUrlL,
      'imgHeight': instance.imgHeight,
      'imgWidth': instance.imgWidth,
      'japaneseTitle': instance.japaneseTitle,
      'englishTitle': instance.englishTitle,
      'category': instance.category,
      'uploader': instance.uploader,
      'posted': instance.posted,
      'language': instance.language,
      'filecount': instance.filecount,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
      'torrentcount': instance.torrentcount,
      'torrents': instance.torrents,
      'filesize': instance.filesize,
      'filesizeText': instance.filesizeText,
      'visible': instance.visible,
      'parent': instance.parent,
      'ratingFallBack': instance.ratingFallBack,
      'numberOfReviews': instance.numberOfReviews,
      'postTime': instance.postTime,
      'favoritedCount': instance.favoritedCount,
      'favTitle': instance.favTitle,
      'favcat': instance.favcat,
      'localFav': instance.localFav,
      'simpleTags': instance.simpleTags,
      'tagsFromApi': instance.tagsFromApi,
      'translated': instance.translated,
      'tagGroup': instance.tagGroup,
      'galleryComment': instance.galleryComment,
      'galleryImages': instance.galleryImages,
      'apikey': instance.apikey,
      'apiuid': instance.apiuid,
      'isRatinged': instance.isRatinged,
      'colorRating': instance.colorRating,
      'archiverLink': instance.archiverLink,
      'torrentLink': instance.torrentLink,
      'lastViewTime': instance.lastViewTime,
      'pageOfList': instance.pageOfList,
    };
