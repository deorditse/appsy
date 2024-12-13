import 'package:data_layout/src/layout_provider.dart';
import 'package:models/index.dart';

import '../../../storage/db_apps/data_base_apps.dart';

class AppRepository {
  static final DBApps _dbApps = LayoutServiceProvider.instance.get<DBApps>();

  const AppRepository._();

  factory AppRepository() => AppRepository._();

  Future<int> addApp(AppIconModel app) async {
    final int status = await _dbApps.addApp(app);
    return status;
  }

  Future<int> deleteApp(String id) async {
    final int status = await _dbApps.deleteApp(id);
    return status;
  }

  Future<int> updateApp(AppIconModel app) async {
    final int status = await _dbApps.updateApp(app);
    return status;
  }

  Future<Set<AppIconModel>> getAllApps() async {
    final apps = await _dbApps.getAllApps();
    return apps;
  }
}
