import 'package:appsy/ui_layout/app/style/theme/index.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:business_layout/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'ui_layout/app/config/router/router_config.dart';
import 'ui_layout/app/config/start_app.dart';
import 'ui_layout/app/localization/generate/l10n.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await startConfigApp();
  runApp(const _AppsyApp());
}

class _AppsyApp extends StatefulWidget {
  const _AppsyApp({super.key});

  @override
  State<_AppsyApp> createState() => _AppsyAppState();
}

class _AppsyAppState extends State<_AppsyApp> {
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SettingBloc()..add(SettingEvent.init()),
        ),
        BlocProvider(
          create: (_) => MainBloc()..add(MainEvent.init()),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp.router(
          title: "Appsy",
          debugShowCheckedModeBanner: false,
          theme: themeDark(context),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (deviceLocale, supportedLocales) {
            //TODO: check bloc
            debugPrint("deviceLocale: $deviceLocale");
            debugPrint("supportedLocales: $supportedLocales");

            return deviceLocale;
          },
          supportedLocales: S.delegate.supportedLocales,
          locale: BlocProvider.of<SettingBloc>(context, listen: true)
              .state
              .currentLocale,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown
            },
          ),
          scaffoldMessengerKey: MyUIConst.snackBarMainKey,
          routerConfig: router,
        );
      }),
    );
  }
}
