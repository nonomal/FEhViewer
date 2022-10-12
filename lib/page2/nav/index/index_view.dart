import 'package:fehviewer/common/provider/settings_provider.dart';
import 'package:fehviewer/fehviewer.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'index_view_cupertino.dart';
import 'index_view_material.dart';

class IndexPage extends HookConsumerWidget {
  const IndexPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themePlatform = ref.watch(themePlatformProvider);
    if (themePlatform == ThemePlatform.cupertino) {
      return const IndexPageCupertino();
    } else {
      return const IndexPageMaterial();
    }
  }
}
