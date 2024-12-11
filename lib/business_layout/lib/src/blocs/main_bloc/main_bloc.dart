import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/index.dart';

part 'main_event.dart';

part 'main_state.dart';

part 'main_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<MainEvent>(
      (MainEvent event, _) {
        event.when<void>(
          init: _init,
        );
      },
    );
  }

  Future<void> _init() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyWith(
        isLoading: false,
        apps: _apps,
      ));
    } catch (e) {

    }
  }
}

final Set<AppIconModel> _apps = {
  AppIconModel(
    name: "Яндекс почта",
    iconPath:
        "https://mediarost.com/media/com_jbusinessdirectory/pictures/companies/52/cropped-1584357458.jpeg",
    url: "https://mail.yandex.ru/?uid=321242487#inbox",
  ),
  AppIconModel(
    name: "Google",
    iconPath:
        "https://mediarost.com/media/com_jbusinessdirectory/pictures/companies/52/cropped-1584357458.jpeg",
    url: "https://www.google.ru/?hl=ru",
  ),
  AppIconModel(
    name: "Test",
    iconPath:
        "https://mediarost.com/media/com_jbusinessdirectory/pictures/companies/52/cropped-1584357458.jpeg",
    url: "https://mail.yandex.ru/?uid=321242487#inbox",
  ),
};
