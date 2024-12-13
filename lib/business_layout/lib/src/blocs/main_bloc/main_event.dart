part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.init() = _InitMainEvent;

  const factory MainEvent.getAllApps() = _GetAllAppsMainEvent;

  const factory MainEvent.addApp({
    required AppIconModel app,
  }) = _GetAppMainEvent;

  const factory MainEvent.updateApp({
    required AppIconModel app,
  }) = _UpdateAppMainEvent;

  const factory MainEvent.deleteApp({
    required String id,
  }) = _DeleteAppMainEvent;

  const factory MainEvent.addError({
    required String error,
  }) = _AddErrorMainEvent;
}
