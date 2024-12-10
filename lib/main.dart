import 'package:business_layout/index.dart';
import 'package:models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'ui_layout/app/localization/generate/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //DI для всех слоев
  BlocFactory.instance.initialize();
  runApp(const _AppsyApp());
}

class _AppsyApp extends StatelessWidget {
  const _AppsyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingBloc()..add(SettingEvent.init()),
      child: Builder(builder: (context) {
        return MaterialApp(
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
          home: Builder(builder: (context) {
            return Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    Text(S.of(context).locale),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<SettingBloc>(context).add(
                          SettingEvent.changeLocale(newLocale: MyLocales.en),
                        );
                      },
                      child: Text('change'),
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      }),
    );
  }
}
