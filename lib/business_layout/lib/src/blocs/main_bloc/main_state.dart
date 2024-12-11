part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(true) bool isLoading,
    @Default({}) Set<AppIconModel> apps,
    ErrorModel? error,
  }) = _MainState;
}
