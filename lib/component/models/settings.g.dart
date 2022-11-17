// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      jpnTitle: json['jpn_title'] as bool? ?? false,
      tagTranslation: json['tag_translation'] as bool? ?? false,
      siteEx: json['site_ex'] as bool? ?? false,
      coverBlur: json['cover_blur'] as bool? ?? false,
      longPressSelFav: json['long_press_sel_fav'] as bool? ?? false,
      pureDarkTheme: json['pure_dark_theme'] as bool? ?? false,
      checkClipboardLink: json['check_clipboard_link'] as bool? ?? false,
      commentTranslation: json['comment_translation'] as bool? ?? false,
      autoLockTimeOut: json['auto_lock_time_out'] as int? ?? -1,
      vibrate: json['vibrate'] as bool? ?? true,
      debugMode: json['debug_mode'] as bool? ?? false,
      debugCount: json['debug_count'] as int? ?? 3,
      themePlatform:
          $enumDecodeNullable(_$ThemePlatformEnumMap, json['theme_platform']) ??
              ThemePlatform.cupertino,
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'jpn_title': instance.jpnTitle,
      'tag_translation': instance.tagTranslation,
      'site_ex': instance.siteEx,
      'cover_blur': instance.coverBlur,
      'long_press_sel_fav': instance.longPressSelFav,
      'pure_dark_theme': instance.pureDarkTheme,
      'check_clipboard_link': instance.checkClipboardLink,
      'comment_translation': instance.commentTranslation,
      'auto_lock_time_out': instance.autoLockTimeOut,
      'vibrate': instance.vibrate,
      'debug_mode': instance.debugMode,
      'debug_count': instance.debugCount,
      'theme_platform': _$ThemePlatformEnumMap[instance.themePlatform]!,
    };

const _$ThemePlatformEnumMap = {
  ThemePlatform.cupertino: 'cupertino',
  ThemePlatform.material: 'material',
  ThemePlatform.auto: 'auto',
};
