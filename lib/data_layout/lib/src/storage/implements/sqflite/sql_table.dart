import '../../model/table.dart';
import 'package:sqflite/sqflite.dart';
import 'const.dart';

class AppTable implements SqfliteTableSchema {
  static final AppTable table = AppTable();

  @override
  String nameDB = "apps";

  @override
  Future<void> onCreateDb(Database db, int version) async {
    var batch = db.batch();
    _createParams(batch);

    await batch.commit();
  }

  static void _createParams(Batch batch) {
    batch.execute('CREATE TABLE Params ('
        'key TEXT,'
        'value TEXT'
        ')');
    batch.execute('CREATE TABLE OffLineData ('
        'key TEXT,'
        'value TEXT'
        ')');
  }

  @override
  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    var batch = db.batch();

    await batch.commit();
  }
}
