import 'package:business_layout/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'ui_layout/app/localization/generate/l10n.dart';
import 'ui_layout/app/localization/l10n/all_locales.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //DI для всех слоев
  BlocFactory.instance.initialize();
  runApp(ChangeNotifierProvider(
      create: (context) => LocaleProvider(), child: const _AppsyApp()));
}

class _AppsyApp extends StatefulWidget {
  const _AppsyApp({super.key});

  @override
  State<_AppsyApp> createState() => _AppsyAppState();
}

class _AppsyAppState extends State<_AppsyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Provider.of<LocaleProvider>(context).locale,
      home: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Text(S.of(context).locale),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<LocaleProvider>(context, listen: false)
                        .setLocale(
                      AllLocale.en,
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
  }
}
