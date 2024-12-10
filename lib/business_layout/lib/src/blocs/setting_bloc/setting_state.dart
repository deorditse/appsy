part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(Locale.fromSubtags(languageCode: 'ru')) Locale currentLocale,
  }) = _SettingState;
}
