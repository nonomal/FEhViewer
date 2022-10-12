import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:fehviewer/common/provider/settings_provider.dart';
import 'package:fehviewer/component/theme/theme.dart';
import 'package:fehviewer/fehviewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class MyApp2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    // _autoLockController.resumed();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    // themeService.platformBrightness.value =
    //     WidgetsBinding.instance.window.platformBrightness;
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   super.didChangeAppLifecycleState(state);
  //   if (state != AppLifecycleState.resumed) {
  //     // went to Background
  //     // loggerTime.d('paused');
  //     _autoLockController.paused();
  //   }
  //   if (state == AppLifecycleState.resumed) {
  //     // came back to Foreground
  //     // loggerTime.d('resumed');
  //     _autoLockController.resumed();
  //
  //     _ehConfigService.chkClipboardLink(context);
  //   }
  // }

  Widget cupertinoApp(BuildContext context) {
    return CupertinoApp.router(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => L10n.of(context).app_title,
      routeInformationParser: ehRouter.defaultRouteParser(),
      routeInformationProvider: ehRouter.routeInfoProvider(),
      routerDelegate: AutoRouterDelegate(
        ehRouter,
        navigatorObservers: () => [
          SentryNavigatorObserver(),
          FlutterSmartDialog.observer,
          MainNavigatorObserver(),
        ],
      ),
      builder: FlutterSmartDialog.init(
        styleBuilder: (child) => child,
      ),
      supportedLocales: <Locale>[
        ...L10n.delegate.supportedLocales,
      ],
      localizationsDelegates: const [
        // 本地化的代理类
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (_, Iterable<Locale> supportedLocales) {
        final Locale _locale = window.locale;
      },
    );
  }

  Widget materialApp(BuildContext context) {
    const _brandBlue = Colors.blue;
    return DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      ColorScheme lightColorScheme;
      ColorScheme darkColorScheme;

      if (lightDynamic != null && darkDynamic != null) {
        // On Android S+ devices, use the provided dynamic color scheme.
        // (Recommended) Harmonize the dynamic color scheme' built-in semantic colors.
        lightColorScheme = lightDynamic.harmonized();

        // Repeat for the dark color scheme.
        darkColorScheme = darkDynamic.harmonized();

        // print('_isDemoUsingDynamicColors: true');

        // _isDemoUsingDynamicColors = true; // ignore, only for demo purposes
      } else {
        // Otherwise, use fallback schemes.
        lightColorScheme = ColorScheme.fromSeed(
          seedColor: _brandBlue,
        );
        darkColorScheme = ColorScheme.fromSeed(
          seedColor: _brandBlue,
          brightness: Brightness.dark,
        );
      }

      ThemeConfig.lightColorScheme = lightColorScheme;
      ThemeConfig.lightTheme = ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
        dividerTheme: const DividerThemeData(
          color: Colors.black12,
          thickness: 1,
          space: 0,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: lightColorScheme.surfaceVariant,
        ),
      );

      ThemeConfig.darkColorScheme = darkColorScheme;
      ThemeConfig.darkTheme = ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        dividerTheme: const DividerThemeData(
          color: Colors.white24,
          thickness: 1,
          space: 0,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: darkColorScheme.surfaceVariant,
        ),
      );

      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (BuildContext context) => L10n.of(context).app_title,
        routeInformationParser: ehRouter.defaultRouteParser(),
        routeInformationProvider: ehRouter.routeInfoProvider(),
        routerDelegate: AutoRouterDelegate(
          ehRouter,
          navigatorObservers: () => [
            SentryNavigatorObserver(),
            FlutterSmartDialog.observer,
            MainNavigatorObserver(),
          ],
        ),
        builder: FlutterSmartDialog.init(
          styleBuilder: (child) => child,
        ),
        theme: ThemeConfig.lightTheme,
        darkTheme: ThemeConfig.darkTheme,
        supportedLocales: <Locale>[
          ...L10n.delegate.supportedLocales,
        ],
        localizationsDelegates: const [
          // 本地化的代理类
          L10n.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (_, Iterable<Locale> supportedLocales) {
          final Locale _locale = window.locale;
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(builder: (context, ref, child) {
        final themePlatform = ref.watch(themePlatformProvider);
        final myApp = themePlatform == ThemePlatform.cupertino
            ? cupertinoApp(context)
            : materialApp(context);
        return myApp;
      }),
    );
  }
}
