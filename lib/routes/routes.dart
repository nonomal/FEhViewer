import 'package:auto_route/auto_route.dart';
import 'package:fehviewer/page2/nav/index/index_view.dart';
import 'package:fehviewer/page2/splash/splash_view.dart';
import 'package:flutter/cupertino.dart';

import '../route/routes.dart';

part 'routes.gr.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: EHRoutes.root, page: SplashPage, initial: true),
    AutoRoute(path: EHRoutes.home, page: IndexPage),
  ],
)
class AppRouter extends _$AppRouter {}
