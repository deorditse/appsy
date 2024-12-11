import 'package:models/index.dart';
import 'package:logger/logger.dart';
import "package:path/path.dart" as p;
import 'package:sqflite/sqflite.dart';

const String FILENAME_CLIENT_DB = "Apps.db";
const String DB_NAME = "APPS";

const String _columnId = 'id';
const String _columnName = 'name';
const String _columnIconPath = 'iconPath';
const String _columnUrl = 'url';

class DBProvider {
  //1. Создадим приватный конструктор,
  // который может использоваться только внутри этого класса
  DBProvider._();

  static final DBProvider db = DBProvider._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    await _initDB();
    return _database!;
  }

  Future<String> _getDBPath() async {
    var databasesPath = await getDatabasesPath();
    final res = p.join("$databasesPath/Apps/", FILENAME_CLIENT_DB);
    Logger().log(Level.info, "_getDBPath path: $res");

    return res;
  }

  Future<void> _initDB() async {
    final String path = await _getDBPath();

    _database = await openDatabase(
      path,
      version: 1,
      singleInstance: true,
      onOpen: (db) {
        Logger().log(Level.info, "open db $db");
      },
      onCreate: (Database db, int version) async {
        await db.execute('''CREATE TABLE $DB_NAME (
            $_columnId TEXT,
            $_columnName TEXT,
            $_columnIconPath TEXT,
            $_columnUrl INTEGER
            )''');
      },
    );
  }

  Future<void> deleteDB() async {
    final String path = await _getDBPath();

    await deleteDatabase(path);
  }

  Future<int> addApp(AppIconModel app) async {
    final db = await database;
    return await db.rawInsert(
        '''INSERT INTO $DB_NAME ($_columnId,$_columnName,$_columnIconPath,$_columnUrl) VALUES (?,?,?,?)''',
        [
          app.id,
          app.name,
          app.iconPath,
          app.url,
        ]);
  }

  Future<AppIconModel?> getApp(int id) async {
    final db = await database;
    final List<Map<String, Object?>> res =
        await db.query(DB_NAME, where: "$_columnId = ?", whereArgs: [id]);
    if (res.isEmpty) return null;

    return AppIconModel.fromJson(res.first);
  }

  Future<Set<AppIconModel>> getAllApps() async {
    final db = await database;

    final List<Map<String, Object?>> res = await db.query(DB_NAME);

    Logger().log(Level.warning, res);

    final List<AppIconModel> resCl =
        res.isNotEmpty ? res.map((c) => AppIconModel.fromJson(c)).toList() : [];

    Logger().log(Level.warning, resCl);

    return resCl.toSet();
  }

  Future<int> updateApp(AppIconModel app) async {
    final db = await database;

    var res = await db.update(
      DB_NAME,
      app.toJson(),
      where: "$_columnId = ?",
      whereArgs: [app.id],
    );

    return res;
  }

  Future<int> deleteApp(String id) async {
    final db = await database;
    return db.delete(DB_NAME, where: "$_columnId = ?", whereArgs: [id]);
  }

  Future<int> deleteAll() async {
    final db = await database;
    return db.rawDelete("DELETE FROM $DB_NAME");
  }
}
