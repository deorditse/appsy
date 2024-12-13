import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:business_layout/index.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

Future<void> startConfigApp() async {
  //DI для всех слоев
  BlocFactory.instance.initialize();
  // // Настраиваем стиль статус-бара
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarIconBrightness: Brightness.dark, // Темные иконки для светлого фона
  // ));
  // Отключение полноэкранного режима
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.top, // Показываем верхний статус-бар
  ]);

  //Handling URL Paths While Using the push Method with goRouter
  GoRouter.optionURLReflectsImperativeAPIs = true;
  var currentTimeZone = await FlutterNativeTimezone.getLocalTimezone();
  tz.initializeTimeZones();
  var loc = tz.getLocation(currentTimeZone);
  tz.setLocalLocation(loc);
  await initializeDateFormatting();

  //ориентация экрана;
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
}
