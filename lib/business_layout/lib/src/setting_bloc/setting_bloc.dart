import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.dart';

part 'setting_state.dart';

part 'setting_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  String _baseUrl = '';

  SettingBloc() : super(const SettingState()) {
    on<SettingEvent>(
      (SettingEvent event, _) {
        event.when<void>(
          init: _init,
        );
      },
    );
  }

  void _init() {}
}
