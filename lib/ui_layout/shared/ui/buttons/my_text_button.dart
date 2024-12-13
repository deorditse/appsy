import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/app/style/text_style.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatefulWidget {
  const MyTextButton({
    super.key,
    this.isInfinityWidth = false,
    required this.text,
    required this.onPressed,
    this.style,
    this.backgroundColor,
    this.icon,
    this.colorHover,
    this.fontSizeNew,
    this.newFontWeight,
    this.textColor,
    this.isPaddingText = true,
    this.paddingText,
    this.isOneMaxLines = true,
    this.alignment,
    this.newFontFamilyName,
  });

  final String text;
  final EdgeInsets? paddingText;
  final VoidCallback onPressed;
  final ButtonStyle? style;
  final Color? backgroundColor;
  final bool isInfinityWidth;
  final Widget? icon;
  final Color? colorHover;
  final Color? textColor;
  final double? fontSizeNew;
  final bool isPaddingText;
  final bool isOneMaxLines;
  final Alignment? alignment;
  final FontWeight? newFontWeight;
  final FontFamilyName? newFontFamilyName;

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: widget.alignment ?? Alignment.center,
      width: widget.isInfinityWidth ? double.infinity : null,
      child: TextButton(
        onHover: (isHov) {
          setState(() {
            isHover = isHov;
          });
        },
        onPressed: widget.onPressed,
        style: widget.style ??
            const ButtonStyle().copyWith(
              overlayColor: widget.backgroundColor != null
                  ? const WidgetStatePropertyAll(Color.fromRGBO(0, 0, 0, 0.05))
                  : null,
              backgroundColor: WidgetStatePropertyAll(
                  widget.backgroundColor ?? Colors.transparent),
              padding: (widget.isPaddingText)
                  ? WidgetStatePropertyAll(
                      widget.paddingText ??
                          const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                    )
                  : const WidgetStatePropertyAll(EdgeInsets.zero),
            ),
        child: (widget.icon != null)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: widget.icon!,
                  ),
                  Flexible(child: FittedBox(child: _text()))
                ],
              )
            : _text(),
      ),
    );
  }

  Widget _text() {
    return MyText(
      widget.text,
      newFontWeight: widget.newFontWeight ?? FontWeight.w400,
      textColor: isHover
          ? (widget.colorHover ??
              Color.alphaBlend(
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.3),
                  Theme.of(context).primaryColor))
          : (widget.textColor ??
              (widget.colorHover ?? Theme.of(context).primaryColor)),
      fontSize: widget.fontSizeNew ?? 12,
      newFontFamilyName: widget.newFontFamilyName ?? FontFamilyName.SBSansText,
      maxLines: widget.isOneMaxLines ? 1 : null,
    );
  }
}
