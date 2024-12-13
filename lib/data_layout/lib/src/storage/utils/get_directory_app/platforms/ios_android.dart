import 'dart:io';
import 'package:path_provider/path_provider.dart';

Future<String> directoryApp() async {
  Directory dir = (Platform.isIOS)
      ? await getLibraryDirectory()
      : await getApplicationDocumentsDirectory();

  return dir.path;
}
