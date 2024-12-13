import 'platforms/interface.dart'
    if (dart.library.io) 'platforms/ios_android.dart'
    if (dart.library.html) 'platforms/web.dart';

sealed class DirectoryApp {
  const DirectoryApp._();

  static String _path = "";

  static Future<String> get path async {
    if (_path.isNotEmpty) return _path;

    _path = await directoryApp();

    return _path;
  }
}
