import 'dart:io';

import 'package:fehviewer/component/models/index.dart';
import 'package:fehviewer/fehviewer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsNotifier extends StateNotifier<Settings> {
  SettingsNotifier(super.state, this.ref);
  final Ref ref;

  void setJpnTitle(bool val) {
    state = state.copyWith(jpnTitle: val);
    hiveHelper.setSettings(state);
  }

  void setTagTranslation(bool val) {
    state = state.copyWith(tagTranslation: val);
    hiveHelper.setSettings(state);
  }

  void setSiteEx(bool val) {
    state = state.copyWith(siteEx: val);
    hiveHelper.setSettings(state);
  }

  void setCoverBlur(bool val) {
    state = state.copyWith(coverBlur: val);
    hiveHelper.setSettings(state);
  }

  void setLongPressSelFav(bool val) {
    state = state.copyWith(longPressSelFav: val);
    hiveHelper.setSettings(state);
  }

  void setPureDarkTheme(bool val) {
    state = state.copyWith(pureDarkTheme: val);
    hiveHelper.setSettings(state);
  }

  void setCheckClipboardLink(bool val) {
    state = state.copyWith(checkClipboardLink: val);
    hiveHelper.setSettings(state);
  }

  void setCommentTranslation(bool val) {
    state = state.copyWith(commentTranslation: val);
    hiveHelper.setSettings(state);
  }

  void setAutoLockTimeOut(int val) {
    state = state.copyWith(autoLockTimeOut: val);
    hiveHelper.setSettings(state);
  }

  void setVibrate(bool val) {
    state = state.copyWith(vibrate: val);
    hiveHelper.setSettings(state);
  }

  void setDebugMode(bool val) {
    state = state.copyWith(debugMode: val);
    hiveHelper.setSettings(state);
  }

  void setDebugCount(int val) {
    state = state.copyWith(debugCount: val);
    hiveHelper.setSettings(state);
  }
}

final settingsProvider =
    StateNotifierProvider<SettingsNotifier, Settings>((ref) {
  return SettingsNotifier(hiveHelper.getSettings() ?? const Settings(), ref);
});

final themePlatformProvider = Provider<ThemePlatform>((ref) {
  return ThemePlatform.cupertino;

  final themePlatform =
      ref.watch(settingsProvider.select((s) => s.themePlatform));
  if (themePlatform == ThemePlatform.auto) {
    return Platform.isIOS || Platform.isMacOS
        ? ThemePlatform.cupertino
        : ThemePlatform.material;
  } else {
    return themePlatform;
  }
});
