import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/enum.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Settings({
    @Default(false) bool jpnTitle,
    @Default(false) bool tagTranslation,
    @Default(false) bool siteEx,
    @Default(false) bool coverBlur,
    @Default(false) bool longPressSelFav,
    @Default(false) bool pureDarkTheme,
    @Default(false) bool checkClipboardLink,
    @Default(false) bool commentTranslation,
    @Default(-1) int autoLockTimeOut,
    @Default(true) bool vibrate,
    @Default(false) bool debugMode,
    @Default(3) int debugCount,
    @Default(ThemePlatform.auto) ThemePlatform themePlatform,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
