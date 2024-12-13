import 'package:data_layout/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/index.dart';

part 'main_event.dart';

part 'main_state.dart';

part 'main_bloc.freezed.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
class MainBloc extends Bloc<MainEvent, MainState> {
  final AppRepository _appRepository = AppRepository();

  MainBloc() : super(const MainState()) {
    on<MainEvent>(
      (MainEvent event, _) {
        event.when<void>(
          init: _init,
          getAllApps: _getAllApps,
          addApp: _addApp,
          updateApp: _updateApp,
          deleteApp: _deleteApp,
          addError: _addError,
        );
      },
    );
  }

  Future<void> _init() async {
    add(MainEvent.getAllApps());
  }

  Future<void> _getAllApps() async {
    try {
      final Set<AppIconModel> apps = await _appRepository.getAllApps();
      emit(state.copyWith(
        isLoading: false,
        apps: apps,
      ));
    } catch (e) {
      add(MainEvent.addError(error: e.toString()));
    }
  }

  Future<void> _addApp(AppIconModel app) async {
    try {
      final Set<AppIconModel> apps = {...state.apps, app};
      emit(state.copyWith(apps: apps));
      final int status = await _appRepository.addApp(app);
    } catch (e) {
      add(MainEvent.addError(error: e.toString()));
    }
  }

  Future<void> _updateApp(AppIconModel app) async {
    final List<AppIconModel> apps = state.apps.toList();
    // Поиск элемента по id
    final int index = apps.indexWhere((item) => item.id == app.id);
    apps[index] = app;
    emit(state.copyWith(apps: apps.toSet()));
    final int status = await _appRepository.updateApp(app);
  }

  Future<void> _deleteApp(String id) async {
    try {
      final Set<AppIconModel> apps = state.apps.toSet();
      apps.removeWhere((app) => app.id == id);
      emit(state.copyWith(apps: apps));
      final int status = await _appRepository.deleteApp(id);
    } catch (e) {
      add(MainEvent.addError(error: e.toString()));
    }
  }

  void _addError(String error) {
    emit(state.copyWith(
      isLoading: false,
      error: ErrorModel(
        code: 5001,
        description: error,
      ),
    ));
  }
}
