import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'index_provider.dart';

class IndexPageCupertino extends HookConsumerWidget {
  const IndexPageCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listBottomNavigationBarItem =
        ref.watch(bottomBarItemsProvider(context));
    final bottomBarPages = ref.watch(bottomBarPagesProvider(context));
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: listBottomNavigationBarItem,
        onTap: (index) {},
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return bottomBarPages[index];
          },
        );
      },
    );
  }
}
