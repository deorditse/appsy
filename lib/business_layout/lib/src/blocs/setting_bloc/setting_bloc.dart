import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/index.dart';

part 'setting_event.dart';

part 'setting_state.dart';

part 'setting_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(const SettingState()) {
    on<SettingEvent>(
      (SettingEvent event, _) {
        event.when<void>(
          init: _init,
          changeLocale: _changeLocale,
        );
      },
    );
  }

  void _init() {
    debugPrint("_init SettingBloc");
    //TODO: check locale from setting / storage
  }

  void _changeLocale(MyLocales newLocale) {
    if (state.currentLocale.languageCode == newLocale.name) return;

    emit(state.copyWith(
      currentLocale: Locale.fromSubtags(languageCode: newLocale.name),
    ));
  }
}
