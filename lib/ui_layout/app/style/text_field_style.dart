import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/app/style/text_style.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/wrappers/adaptive_response/adaptive_widget.dart';
import 'package:flutter/material.dart';

class MyTextFieldStyle {
  const MyTextFieldStyle._();

  //через Singleton
  static MyTextFieldStyle get I => MyTextFieldStyle._();

  InputDecoration myStyleTextField(
    BuildContext context, {
    String? labelText,
    String? hintText,
    String? helperText,
    Color? colorBorder,
    double? errorTextSize,
    bool isBorderColor = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Widget? prefixSuffixIcon,
    bool isDisableText = false,
    Color? focusColorBorder,
    bool isEnableTextField = true,
  }) {
    OutlineInputBorder myOutlineInputBorder({Color? color}) =>
        OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          gapPadding: 0,
          borderSide: BorderSide(
            color: color ?? Theme.of(context).primaryColor,
            width: 1,
          ),
        );

    final bool isMobile = AdaptiveWidget.isMobile(context);

    return InputDecoration(
      suffixIcon: (prefixSuffixIcon != null || suffixIcon != null)
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (prefixSuffixIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: prefixSuffixIcon,
                  ),
                if (suffixIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: suffixIcon,
                  ),
              ],
            )
          : null,

      // suffix: prefix,
      // icon: prefixIcon,
      prefixIcon: prefixIcon,

      focusColor: focusColorBorder ?? Theme.of(context).primaryColor,
      // prefixIconColor: ColorStyles.blue,
      // prefixIconColor: ColorStyles.blue,

      contentPadding: EdgeInsets.symmetric(
        horizontal: isMobile ? 12 : 20,
        vertical: isMobile ? 8 : 12,
      ),

      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        borderSide: BorderSide.none,
      ),
      // isDense: true,
      //уменьшает высоту до минимальной

      enabledBorder: myOutlineInputBorder(color: colorBorder),
      disabledBorder: myOutlineInputBorder(color: colorBorder),

      focusedBorder: myOutlineInputBorder(
        color:
            focusColorBorder ?? Theme.of(context).textTheme.bodyMedium!.color,
      ),

      errorBorder: myOutlineInputBorder(color: MyColors.red),

      focusedErrorBorder: myOutlineInputBorder(color: MyColors.red),

      errorStyle: MyTextStyle.I.textStyle(
        textColor: MyColors.red,
        fontSize: errorTextSize ?? MyUIConst.textSizeH6,
        newFontWeight: FontWeight.w400,
      ),
      hintStyle: MyTextStyle.I.textStyle(
        textColor: MyColors.greyDark,
        fontSize: MyUIConst.textSizeH4,
        newFontWeight: FontWeight.w400,
        newFontFamilyName: FontFamilyName.SBSansTextSemibold,
      ),

      labelStyle: MyTextStyle.I.textStyle(
        // textColor: Colors.transparent,
        textColor: MyColors.green,
        fontSize: MyUIConst.textSizeH5,
        newFontWeight: FontWeight.w300,
      ),
      // label: null,

      floatingLabelStyle: MyTextStyle.I.textStyle(
        // textColor: Colors.transparent,
        textColor: focusColorBorder ?? MyColors.green,
        fontSize: MyUIConst.textSizeH5,
      ),

      labelText: labelText,
      //'Введите ключ команды',
      helperText: helperText,
      //'Поле для поиска заметок',
      hintText: hintText,
      fillColor: isEnableTextField
          ? Theme.of(context).cardColor
          : Theme.of(context).scaffoldBackgroundColor,
      //<-- SEE HERE

      filled: true,
      //'123456',
    );
  }
}
