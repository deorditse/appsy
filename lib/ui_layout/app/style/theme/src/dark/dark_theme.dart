import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../text_style.dart';

///______________________Theme  DARK______________________________________

final ThemeData _themeDark = ThemeData(
  fontFamily: FontFamilyName.SBSansText.name,
  brightness: Brightness.dark,
);

ThemeData themeDark(BuildContext context) => _themeDark.copyWith(
      bottomSheetTheme: const BottomSheetThemeData(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      scaffoldBackgroundColor: MyColors.black,
      primaryColor: MyColors.primary,
      cardColor: MyColors.blackLight,
      appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.transparent,
        backgroundColor: MyColors.black,
        toolbarHeight: MyUIConst.myToolbarHeight,
        elevation: 0,
        centerTitle: true,
        titleSpacing: 0,
      ),
      // colorScheme: ColorScheme.fromSeed(seedColor: MyColors.black),
      primaryColorDark: MyColors.primary,
      dividerTheme: const DividerThemeData(
        color: MyColors.grey,
        thickness: 1,
      ),
      primaryTextTheme: _textDark(_themeDark.textTheme),
      cardTheme: const CardTheme(
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: WidgetStateProperty.all(
          const Color(0xFF181818).withOpacity(0.57),
        ),
        radius: const Radius.circular(20),
        thickness: WidgetStateProperty.all(4),
      ),
      tabBarTheme: TabBarTheme(
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        indicatorSize: TabBarIndicatorSize.label,
        tabAlignment: TabAlignment.start,
        dividerHeight: 0,
        unselectedLabelColor: Colors.transparent,
        labelPadding: EdgeInsets.only(right: 20),
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 4.0, color: MyColors.primary),
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      popupMenuTheme: PopupMenuThemeData(
        color: MyColors.blackLight,
        textStyle: MyTextStyle.I.textStyle(),
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),

      //будут использоватьчя базовые темы и перезаписаны только те части которые нам необходимы
      // primaryColor: myColorIsActive,
      // cardColor: myColorIsActive,
      // scaffoldBackgroundColor: Color.fromRGBO(245, 248, 255, 1),
      // appBarTheme: AppBarTheme(
      //   titleTextStyle: myTextStyleFontS8Sans(fontSize: 20, context: null),
      //   toolbarHeight: 40,
      //   elevation: 0,
      //   color: Colors.transparent,
      //   iconTheme: IconThemeData(size: 20),
      // ),
      //
      expansionTileTheme: ExpansionTileThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        collapsedBackgroundColor: MyColors.white,
        childrenPadding: EdgeInsets.zero,
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: MyColors.white,
        collapsedTextColor: MyColors.blackLight,
        collapsedIconColor: MyColors.blackLight,
      ),
      textButtonTheme: TextButtonThemeData(
        style: const ButtonStyle().copyWith(
          foregroundColor: WidgetStateProperty.all(MyColors.primary),
          textStyle: WidgetStateProperty.all(
            MyTextStyle.I.textStyle(
              fontSize: MyUIConst.textSizeH5,
              newFontWeight: FontWeight.w500,
            ),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 10),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          shadowColor: const WidgetStatePropertyAll(Colors.red),
          overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: const ButtonStyle().copyWith(
          elevation: WidgetStateProperty.all(0),

          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
          ),
          backgroundColor: const WidgetStatePropertyAll(MyColors.primary),

          foregroundColor: const WidgetStatePropertyAll(
            MyColors.white,
          ),
          textStyle: WidgetStateProperty.all(
            MyTextStyle.I.textStyle(
              textColor: MyColors.white,
              fontSize: MyUIConst.textSizeH5,
            ),
          ),
          overlayColor:
              const WidgetStatePropertyAll(Color.fromRGBO(0, 0, 0, 0.3)),
          // overlayColor: const MaterialStatePropertyAll(ColorStyles.blueDark),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.transparent,

        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // clipBehavior: Clip.hardEdge,
        elevation: 0,
      ),

      textTheme: _textDark(_themeDark.textTheme),
    );

TextTheme _textDark(TextTheme baseTextThemeLight) {
//base - нащ базовый стиль
  return baseTextThemeLight.copyWith(
    /// h1
    displayLarge: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH1,
      newFontFamilyName: FontFamilyName.SBSansTextSemibold,
    ),

    /// h2
    displayMedium: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH2,
      newFontFamilyName: FontFamilyName.SBSansTextSemibold,
    ),

    /// h3
    displaySmall: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH3 + 2,
      newFontFamilyName: FontFamilyName.SBSansTextSemibold,
    ),

    /// h4
    headlineLarge: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH3 - 2,
      newFontFamilyName: FontFamilyName.SBSansTextSemibold,
    ),

    /// h5
    headlineMedium: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH4,
      newFontFamilyName: FontFamilyName.SBSansTextSemibold,
    ),

    /// h6
    headlineSmall: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH5,
      newFontFamilyName: FontFamilyName.SBSansTextSemibold,
    ),

    /// b1
    titleLarge: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH3 - 2,
      newFontWeight: FontWeight.w600,
    ),

    /// b2
    titleMedium: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH4,
      newFontWeight: FontWeight.w400,
    ),

    /// b3
    titleSmall: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH5,
      newFontWeight: FontWeight.w400,
    ),

    /// b4
    bodyLarge: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH3,
      newFontWeight: FontWeight.w500,
    ),

    /// b5
    bodyMedium: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH5,
      newFontWeight: FontWeight.w500,
    ),

    /// c1
    bodySmall: MyTextStyle.I.textStyle(
      fontSize: MyUIConst.textSizeH6,
      newFontFamilyName: FontFamilyName.SBSansTextSemibold,
    ),
  );
}
