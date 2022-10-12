import 'package:fehviewer/common/provider/settings_provider.dart';
import 'package:fehviewer/fehviewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      300
          .milliseconds
          .delay()
          .then((value) => ehRouter.replaceNamed(EHRoutes.home));
      return null;
    });
    final themePlatform = ref.watch(themePlatformProvider);
    final Widget container = Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              FontAwesomeIcons.cat,
              size: 150.0,
              color: Colors.grey,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                L10n.of(context).app_title,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );

    // return CupertinoPageScaffold(
    //   child: container,
    // );
    if (themePlatform == ThemePlatform.cupertino) {
      return CupertinoPageScaffold(
        child: container,
      );
    } else {
      return Scaffold(
        body: container,
      );
    }
  }
}
