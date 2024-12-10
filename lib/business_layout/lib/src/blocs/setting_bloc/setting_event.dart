part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.init() = _InitSettingEvent;

  const factory SettingEvent.changeLocale({
    required MyLocales newLocale,
  }) = _ChangeLocaleSettingEvent;
}
