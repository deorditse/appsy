import 'table.dart';

abstract class DbSchema {
  const DbSchema();

  static int version = 1;

  get database;

  Future initDB({required SqfliteTableSchema table});

  Future<void> deleteDB();
}
