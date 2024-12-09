
import 'package:data_layout/index.dart';

class BlocFactory {
  const BlocFactory._();

  //TODO: перенести все блоки в будущем в DI

  // static final _getIt = GetIt.I;
  //
  // T get<T extends Object>() => _getIt.get<T>();
  //
  //Реализация паттерна Singleton
  static final instance = BlocFactory._();


  void initialize() {
    //initialize DI data_layout
    ServiceProvider.instance.initialize();

    //через registerFactory так как каждый раз нужно создавать новую реалтзауию
    // _getIt.registerFactory<MainBloc>(MainBloc());
  }
}
