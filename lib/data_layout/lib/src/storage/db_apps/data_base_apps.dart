import 'package:models/index.dart';

abstract class DBApps {
  Future get database;

  Future<void> deleteDB();

  Future<int> addApp(AppIconModel app);

  Future<AppIconModel?> getApp(String id);

  Future<Set<AppIconModel>> getAllApps();

  Future<int> updateApp(AppIconModel app);

  Future<int> deleteApp(String id);

  Future<int> deleteAll();
}
