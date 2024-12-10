import 'package:appsy/ui_layout/app/style/text_style.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
    this.text, {
    super.key,
    this.fontSize,
    this.lineHeight,
    this.textColor,
    this.decoration,
    this.newFontWeight,
    this.newFontFamilyName,
    this.textAlign = TextAlign.left,
  });

  final TextAlign textAlign;
  final String text;
  final double? fontSize, lineHeight;
  final Color? textColor;
  final TextDecoration? decoration;
  final FontWeight? newFontWeight;
  final FontFamilyName? newFontFamilyName;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: MyTextStyle.I.textStyle(
        fontSize: fontSize,
        lineHeight: lineHeight,
        textColor: textColor,
        decoration: decoration,
        newFontWeight: newFontWeight,
        newFontFamilyName: newFontFamilyName,
      ),
      textAlign: textAlign,
    );
  }
}
