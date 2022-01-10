import 'package:json_annotation/json_annotation.dart';

part 'eh_config.g.dart';

@JsonSerializable()
class EhConfig {
  EhConfig();

  late bool jpnTitle;
  bool? tagTranslat;
  String? tagTranslatVer;
  late String favoritesOrder;
  bool? siteEx;
  bool? galleryImgBlur;
  bool? favPicker;
  bool? favLongTap;
  String? lastFavcat;
  String? lastShowFavcat;
  String? lastShowFavTitle;
  late String listMode;
  bool? safeMode;
  late num catFilter;
  late num maxHistory;
  bool? searchBarComp;
  bool? pureDarkTheme;
  late String viewModel;
  bool? clipboardLink;
  bool? commentTrans;
  num? autoLockTimeOut;
  bool? showPageInterval;
  String? orientation;
  bool? vibrate;
  String? tagIntroImgLv;
  bool? debugMode;
  num? debugCount;
  bool? autoRead;
  num? turnPageInv;
  String? toplist;
  bool? tabletLayout;
  bool? enableTagTranslateCDN;
  bool? autoSelectProfile;
  bool? tapToTurnPageAnimations;
  String? selectProfile;
  bool? linkRedirect;
  bool? fixedHeightOfListItems;
  
  factory EhConfig.fromJson(Map<String,dynamic> json) => _$EhConfigFromJson(json);
  Map<String, dynamic> toJson() => _$EhConfigToJson(this);
}
