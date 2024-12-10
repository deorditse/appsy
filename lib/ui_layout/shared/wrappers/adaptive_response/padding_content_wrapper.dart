import 'package:flutter/material.dart';

import 'adaptive_widget.dart';

class PaddingContentWrapper extends StatelessWidget {
  const PaddingContentWrapper({
    super.key,
    required this.child,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
  });

  final double? paddingTop, paddingBottom, paddingLeft, paddingRight;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget(
      desktopScreen: Padding(
        padding: EdgeInsets.only(
          left: paddingLeft ?? 40,
          right: paddingRight ?? 40,
          top: paddingTop ?? 32,
          bottom: paddingBottom ?? 32,
        ),
        child: child,
      ),
      tabletScreen: Padding(
        padding: EdgeInsets.only(
          left: paddingLeft ?? 24,
          right: paddingRight ?? 24,
          top: paddingTop ?? 32,
          bottom: paddingBottom ?? 32,
        ),
        child: child,
      ),
      mobileScreen: Padding(
        padding: EdgeInsets.only(
          left: paddingLeft ?? 16,
          right: paddingRight ?? 16,
          top: paddingTop ?? 20,
          bottom: paddingBottom ?? 20,
        ),
        child: child,
      ),
    );
  }
}
