import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:flutter/material.dart';

enum FontFamilyName {
  SBSansText,
  SBSansTextMedium,
  SBSansTextSemibold,
  SBSansTextBold,
}

class MyTextStyle {
  const MyTextStyle._();

  //через Singleton
  static MyTextStyle get I => MyTextStyle._();

  TextStyle textStyle({
    double? fontSize,
    Color? textColor,
    TextDecoration? decoration,
    FontWeight? newFontWeight,
    FontFamilyName newFontFamilyName = FontFamilyName.SBSansText,
    double? lineHeight,
  }) {
    return TextStyle().copyWith(
      fontWeight: newFontWeight ?? FontWeight.w600,
      decoration: decoration,
      color: textColor ?? MyColors.black,
      fontSize: fontSize ?? 12,
      fontFamily: newFontFamilyName.name,
      height: lineHeight,
      fontStyle: FontStyle.normal,
    );
  }
}