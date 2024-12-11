import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';
import '../../model/db.dart';
import '../../model/table.dart';
import 'const.dart';
import "package:path/path.dart" as p;

class SqfliteDB extends DbSchema {
  const SqfliteDB._();

  //Singleton
  static final SqfliteDB db = SqfliteDB._();

  static Database? _database;

  @override
  Database? get database => _database;

  @override
  Future<String?> initDB({required SqfliteTableSchema table}) async {
    try {
      final String path = await getDBPath();

      _database = await openDatabase(
        path,
        version: 1,
        singleInstance: true,
        onOpen: (db) {
          Logger().log(Level.info, "open db $db");
        },
        onCreate: table.onCreateDb,
        onUpgrade: table.onUpgrade,
      );
      return null;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> getDBPath() async {
    //    Directory dir = (Platform.isIOS) ? await getLibraryDirectory() : await getApplicationDocumentsDirectory();
    //    String path = '${dir.path}/appsy.db';
    var databasesPath = await getDatabasesPath();
    return p.join(databasesPath, DBConst.FILENAME_CLIENT_DB);
  }

  @override
  Future<void> deleteDB() async {
    final String path = await getDBPath();

    await deleteDatabase(path);
  }
}
