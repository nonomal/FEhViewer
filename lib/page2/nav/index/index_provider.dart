import 'package:fehviewer/fehviewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'index_state.dart';

const double kIconSize = 22.0;
const double kMaterialIconSize = 20.0;

class _BarItem {
  const _BarItem({
    required this.icon,
    required this.label,
    required this.page,
  });

  final IconData icon;
  final String label;
  final Widget page;
}

final bottomBarItemMapProvider =
    StateProvider.family<Map<String, _BarItem>, BuildContext>((ref, context) {
  return <String, _BarItem>{
    EHRoutes.gallery: _BarItem(
      icon: FontAwesomeIcons.layerGroup,
      label: L10n.of(context).tab_gallery,
      page: Container(),
    ),
    EHRoutes.favorite: _BarItem(
      icon: FontAwesomeIcons.solidHeart,
      label: L10n.of(context).tab_favorite,
      page: Container(),
    ),
    // EHRoutes.toplist: _BarItem(
    //   icon: FontAwesomeIcons.listOl,
    //   label: L10n.of(context).tab_toplist,
    //   page: Container(),
    // ),
    EHRoutes.history: _BarItem(
      icon: FontAwesomeIcons.clockRotateLeft,
      label: L10n.of(context).tab_history,
      page: Container(),
    ),
    EHRoutes.download: _BarItem(
      icon: FontAwesomeIcons.download,
      label: L10n.of(context).tab_download,
      page: Container(),
    ),
    EHRoutes.setting: _BarItem(
      icon: FontAwesomeIcons.gear,
      label: L10n.of(context).tab_setting,
      page: Container(),
    ),
  };
});

final bottomBarItemsProvider =
    StateProvider.family<List<BottomNavigationBarItem>, BuildContext>(
        (ref, context) {
  final map = ref.watch(bottomBarItemMapProvider(context));
  return map.values.map((e) {
    return BottomNavigationBarItem(
      icon: Icon(e.icon, size: kIconSize),
      label: e.label,
    );
  }).toList();
});

final bottomBarPagesProvider =
    StateProvider.family<List<Widget>, BuildContext>((ref, context) {
  final map = ref.watch(bottomBarItemMapProvider(context));
  return map.values.map((e) => e.page).toList();
});

final destinationsProvider =
    StateProvider.family<List<NavigationDestination>, BuildContext>(
        (ref, context) {
  final map = ref.watch(bottomBarItemMapProvider(context));
  return map.values.map((e) {
    return NavigationDestination(
      icon: Icon(e.icon, size: kMaterialIconSize),
      label: e.label,
    );
  }).toList();
});

class IndexNotifier extends StateNotifier<IndexState> {
  IndexNotifier() : super(IndexState());

  final Map<int, ScrollController> scrollControllerMap = {};
  bool tapAwait = false;

  Future<void> setIndex(int index,
      {required BuildContext context, bool jumpToPage = false}) async {
    if (index == state.selectedIndex) {
      // logger.d('state.scrollControllerMap len ${scrollControllerMap.length}');
      await doubleTapBar(
        duration: const Duration(milliseconds: 800),
        awaitComplete: false,
        onTap: () {
          scrollControllerMap[state.selectedIndex]
              ?.animateTo(0, duration: 300.milliseconds, curve: Curves.ease);
        },
      );
    }

    if (jumpToPage) {
      state.pageController.jumpToPage(index);
    }
    state = state.copyWith(selectedIndex: index);
  }

  void hideNavigationBar() {
    if (!state.hideNavigationBar) {
      state = state.copyWith(hideNavigationBar: true);
    }
  }

  void showNavigationBar() {
    if (state.hideNavigationBar) {
      state = state.copyWith(hideNavigationBar: false);
    }
  }

  void addScrollController(ScrollController scrollController) {
    scrollControllerMap[state.selectedIndex] = scrollController;
    logger.v('state.scrollControllerMap len ${scrollControllerMap.length}');
  }

  /// 双击bar的处理
  Future<void> doubleTapBar({
    required VoidCallback onTap,
    VoidCallback? onDoubleTap,
    required Duration duration,
    required bool awaitComplete,
  }) async {
    if (!tapAwait) {
      tapAwait = true;

      if (awaitComplete) {
        await Future<void>.delayed(duration);
        if (tapAwait) {
//        loggerNoStack.v('等待结束 执行单击事件');
          tapAwait = false;
          onTap();
        }
      } else {
        onTap();
        await Future<void>.delayed(duration);
        tapAwait = false;
      }
    } else {
      tapAwait = false;
      onDoubleTap?.call();
    }
  }
}

final indexProvider = StateNotifierProvider<IndexNotifier, IndexState>((ref) {
  return IndexNotifier();
});
