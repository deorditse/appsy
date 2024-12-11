import 'package:sqflite/sqflite.dart';

abstract class SqfliteTableSchema {
  abstract String nameDB;

  Future<void> onCreateDb(Database db, int version);

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion);
}
