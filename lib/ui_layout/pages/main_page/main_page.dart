import 'package:models/index.dart';
import 'package:business_layout/index.dart';
import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
      ),
    );
  }
}
