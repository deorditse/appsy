import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/app/style/text_style.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';

enum StyleButton {
  green,
  black,
  blue,
  white,
  disable,
  greenBorder,
  redBorder,
}

enum SizeButton {
  large,
  medium,
  small,
}

typedef OnHoverCallback = Function(bool isHover);

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.child,
    this.text,
    required this.onPressed,
    this.padding,
    this.styleButton = StyleButton.green,
    this.sizeButton = SizeButton.medium,
    this.backgroundColor,
    this.withButton,
    this.hoverColor,
    this.borderRadius = 8,
    this.onHover,
    this.customStyle,
  });

  final StyleButton styleButton;
  final Widget? child;
  final double? withButton;
  final VoidCallback onPressed;
  final OnHoverCallback? onHover;
  final Color? backgroundColor;
  final Color? hoverColor;
  final EdgeInsets? padding;
  final ButtonStyle? customStyle;
  final SizeButton sizeButton;
  final double borderRadius;
  final String? text;

  Color getBackgroundColor(StyleButton styleButton) {
    switch (styleButton) {
      case StyleButton.green:
        return MyColors.green;
      case StyleButton.white:
        return MyColors.white;
      case StyleButton.blue:
        return MyColors.blue;
      case StyleButton.disable:
        return MyColors.greyLight;
      case StyleButton.greenBorder:
        return MyColors.white;
      case StyleButton.redBorder:
        return MyColors.white;
      case StyleButton.black:
        return MyColors.black;
    }
  }

  Color getBackgroundColorOverlay(StyleButton styleButton) {
    switch (styleButton) {
      case StyleButton.green:
        return MyColors.greenDark;
      case StyleButton.white:
        return MyColors.greyLight;
      case StyleButton.blue:
        return MyColors.blueDark;
      case StyleButton.disable:
        return MyColors.grey;
      case StyleButton.greenBorder:
        return MyColors.greyLight;
      case StyleButton.redBorder:
        return MyColors.grey;
      case StyleButton.black:
        return Colors.black;
    }
  }

  Color? getBorderColor(StyleButton styleButton) {
    switch (styleButton) {
      case StyleButton.white:
        return MyColors.black;
      case StyleButton.greenBorder:
        return MyColors.green;
      case StyleButton.redBorder:
        return MyColors.red;

      default:
        return null;
    }
  }

  EdgeInsets getPaddingButton(SizeButton sizeButton) {
    switch (sizeButton) {
      case SizeButton.large:
        return const EdgeInsets.symmetric(horizontal: 30, vertical: 0);
      case SizeButton.medium:
        return const EdgeInsets.symmetric(horizontal: 30, vertical: 0);
      case SizeButton.small:
        return const EdgeInsets.symmetric(horizontal: 15, vertical: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    assert(text != null || child != null);
    return Container(
      constraints: BoxConstraints(minWidth: withButton ?? 0),
      height: 40,
      child: ElevatedButton(
        onHover: onHover,
        onPressed: onPressed,
        style: customStyle ??
            const ButtonStyle().copyWith(
              alignment: Alignment.center,
              padding: WidgetStatePropertyAll(
                  padding ?? getPaddingButton(sizeButton)),
              backgroundColor: WidgetStateProperty.all(
                getBackgroundColor(styleButton),
              ),
              textStyle: WidgetStatePropertyAll(MyTextStyle.I.textStyle()),
              overlayColor: WidgetStatePropertyAll(
                getBackgroundColorOverlay(styleButton),
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  side: getBorderColor(styleButton) != null
                      ? BorderSide(
                          color: getBorderColor(styleButton)!,
                        )
                      : const BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
        child: FittedBox(child: Center(child: child ?? MyText(text!))),
      ),
    );
  }
}
