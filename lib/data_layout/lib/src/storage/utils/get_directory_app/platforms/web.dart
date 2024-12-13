import 'package:sqflite/sqflite.dart';

Future<String> directoryApp() async {
  return await getDatabasesPath();
}
