import 'package:get_it/get_it.dart';
import 'storage/db_apps/data_base_apps.dart';
import 'storage/db_apps/sqflite_db_apps.dart';

class LayoutServiceProvider {
  const LayoutServiceProvider._();

  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  //Реализация паттерна Singleton
  static final instance = const LayoutServiceProvider._();

  void initialize() {
    _getIt.registerLazySingleton<DBApps>(() => SqfliteDBApps());
  }
}
