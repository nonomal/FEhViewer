import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'index_provider.dart';

class IndexPageMaterial extends HookConsumerWidget {
  const IndexPageMaterial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(indexProvider);
    final bottomBarPages = ref.watch(bottomBarPagesProvider(context));
    final destinations = ref.watch(destinationsProvider(context));
    return Scaffold(
      body: PageView(
        // physics: const CustomScrollPhysics(),
        controller: state.pageController,
        // physics: const NeverScrollableScrollPhysics(),
        children: bottomBarPages,
        onPageChanged: (index) {
          ref.read(indexProvider.notifier).setIndex(index, context: context);
        },
      ),
      bottomNavigationBar: AnimatedContainer(
        // height:
        //     state.hideNavigationBar ? 0 : 64 + context.mediaQueryPadding.bottom,
        height:
            state.hideNavigationBar ? 0 : 80 + context.mediaQueryPadding.bottom,
        duration: 300.milliseconds,
        curve: Curves.ease,
        child: NavigationBar(
          selectedIndex: state.selectedIndex,
          destinations: destinations,
          onDestinationSelected: (index) {
            ref
                .read(indexProvider.notifier)
                .setIndex(index, context: context, jumpToPage: true);
          },
        ),
      ),
    );
  }
}
