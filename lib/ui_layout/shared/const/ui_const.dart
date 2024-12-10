import 'package:flutter/material.dart';

sealed class MyUIConst {
  static const double hlPadding = 9;
  static const double vPadding = 15;

  static const SizedBox vSizeBox = SizedBox(height: vPadding);
  static const SizedBox hSizeBox = SizedBox(width: hlPadding);

  static const double textSizeH6 = 12;
  static const double textSizeH5 = 14;
  static const double textSizeH4 = 16;
  static const double textSizeH3 = 22;
  static const double textSizeH2 = 32;
  static const double textSizeH1 = 48;

  // static const double widthDrawer = 250;
  static const double myToolbarHeight = 40;

  static final GlobalKey<ScaffoldMessengerState> snackBarMainKey =
      GlobalKey<ScaffoldMessengerState>();
}
