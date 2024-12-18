import 'package:get_it/get_it.dart';
import 'layout_provider.dart';

class ServiceProvider {
  const ServiceProvider._();

  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  //Реализация паттерна Singleton
  static final instance = const ServiceProvider._();

  void initialize() {
    LayoutServiceProvider.instance.initialize();

    ///repository
    // _getIt.registerLazySingleton<AuthRepository>(
    //   () => AuthRepositoryImpl(),
    // );
  }
}
