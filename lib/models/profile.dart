import 'package:json_annotation/json_annotation.dart';
import "eh_config.dart";
import "user.dart";
import "local_fav.dart";
import "advance_search.dart";
import "dns_config.dart";
import "download_config.dart";
import "auto_lock.dart";
import "webdav_profile.dart";
import "fav_config.dart";
import "custom_tab_config.dart";
part 'profile.g.dart';

@JsonSerializable()
class Profile {
  Profile();

  late EhConfig ehConfig;
  late User user;
  late String lastLogin;
  late String locale;
  late String theme;
  late List searchText;
  late LocalFav localFav;
  late bool enableAdvanceSearch;
  late AdvanceSearch advanceSearch;
  late DnsConfig dnsConfig;
  late DownloadConfig downloadConfig;
  late AutoLock autoLock;
  WebdavProfile? webdav;
  FavConfig? favConfig;
  CustomTabConfig? customTabConfig;
  
  factory Profile.fromJson(Map<String,dynamic> json) => _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
