import 'dart:io';

import 'package:logger/logger.dart';
import "package:path/path.dart" as p;
import 'package:sqflite/sqflite.dart';
import 'package:models/models.dart';

import 'const.dart';

const String _columnId = 'id';
const String _columnFirstName = 'firstname';
const String _columnLastName = 'lastname';
const String _columnBlocked = 'blocked';

class DBProvider {
  //1. Создадим приватный конструктор,
  // который может использоваться только внутри этого класса
  DBProvider._();

  static final DBProvider db = DBProvider._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDB();
    return _database!;
  }

  Future<String> getDBPath() async {
    var databasesPath = await getDatabasesPath();
    return p.join(databasesPath, DBConst.FILENAME_CLIENT_DB);
  }

  Future<Database> initDB({bool isDelete = false}) async {
 final String path = await getDBPath();

    return await openDatabase(
      path,
      version: 1,
      singleInstance: true,
      onOpen: (db) {
        Logger().log(Level.info, "open db $db");
      },
      onCreate: (Database db, int version) async {
        await db.execute('''CREATE TABLE ${DBConst.CLIENT_DB} (
            $_columnId INTEGER PRIMARY KEY,
            $_columnFirstName TEXT,
            $_columnLastName TEXT,
            $_columnBlocked INTEGER
            )''');
      },
    );
  }

  Future<void> deleteDB() async {
    final String path = await getDBPath();

    await deleteDatabase(path);
  }

  Future<int> newClient(ClientModel newClient) async {
    final db = await database;
    return await db.rawInsert(
        '''INSERT INTO ${DBConst.CLIENT_DB} ($_columnId,$_columnFirstName,$_columnLastName,$_columnBlocked) VALUES (?,?,?,?)''',
        [
          newClient.id,
          newClient.firstname,
          newClient.lastname,
          newClient.blocked,
        ]);
  }

  Future<ClientModel?> getClient(int id) async {
    final db = await database;
    final List<Map<String, Object?>> res = await db
        .query(DBConst.CLIENT_DB, where: "$_columnId = ?", whereArgs: [id]);
    if (res.isEmpty) return null;

    return ClientModel.fromJson(res.first);
  }

  Future<List<ClientModel>> getAllClients() async {
    final db = await database;
    final List<Map<String, Object?>> res = await db.query(DBConst.CLIENT_DB);
    Logger().log(Level.warning, res);

    final List<ClientModel> resCl =
        res.isNotEmpty ? res.map((c) => ClientModel.fromJson(c)).toList() : [];
    Logger().log(Level.warning, resCl);

    return resCl;
  }

  Future<List<ClientModel>> getBlockedClients() async {
    final db = await database;

    final List<Map<String, Object?>> res = await db
        .rawQuery("SELECT * FROM ${DBConst.CLIENT_DB} WHERE $_columnBlocked=1");

    return res.toList().map((c) => ClientModel.fromJson(c)).toList();
  }

  Future<int> updateClient(ClientModel client) async {
    final db = await database;
    var res = await db.update(DBConst.CLIENT_DB, client.toJson(),
        where: "$_columnId = ?", whereArgs: [client.id]);
    return res;
  }

  Future<int> blockOrUnblock(ClientModel client) async {
    final db = await database;
    final ClientModel blocked = ClientModel(
      id: client.id,
      firstname: client.firstname,
      lastname: client.lastname,
      blocked: client.blocked == 0 ? 1 : 0,
    );
    var res = await db.update(DBConst.CLIENT_DB, blocked.toJson(),
        where: "$_columnId = ?", whereArgs: [client.id]);
    return res;
  }

  Future<int> deleteClient(int id) async {
    final db = await database;
    return db
        .delete(DBConst.CLIENT_DB, where: "$_columnId = ?", whereArgs: [id]);
  }

  Future<int> deleteAll() async {
    final db = await database;
    return db.rawDelete("DELETE * from ${DBConst.CLIENT_DB}");
  }
}
