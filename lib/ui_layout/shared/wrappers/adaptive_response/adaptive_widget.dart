//чтобы принимать в себя разные layout для разных условий и делать проверку внутри

import 'package:flutter/material.dart';

const int _mobileScreenSize = 450;
const int _tabletScreenSize = 960;

class AdaptiveWidget extends StatelessWidget {
  final Widget? mobileScreen;
  final Widget? tabletScreen;
  final Widget? desktopScreen;
  final Widget? otherScreen;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= _mobileScreenSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > _mobileScreenSize &&
      MediaQuery.of(context).size.width <= _tabletScreenSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > _tabletScreenSize;

  const AdaptiveWidget({
    super.key,
    this.mobileScreen,
    this.tabletScreen,
    this.desktopScreen,
    this.otherScreen,
  });

  @override
  Widget build(BuildContext context) {
    if (desktopScreen != null && isDesktop(context)) {
      return desktopScreen!;
    }
    if (tabletScreen != null && isTablet(context)) {
      return tabletScreen!;
    }
    if (mobileScreen != null && isMobile(context)) {
      return mobileScreen!;
    }
    if (otherScreen != null) {
      return otherScreen!;
    }

    throw Exception('Can not watch layout');
  }
}

class AdaptiveDesktopWidget extends StatelessWidget {
  const AdaptiveDesktopWidget({
    super.key,
    this.isPaddingVertical = true,
    required this.child,
  });

  final bool isPaddingVertical;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = AdaptiveWidget.isDesktop(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: isPaddingVertical ? 20 : 0,
      ),
      constraints: BoxConstraints(
        maxWidth: isDesktop ? 760 : double.maxFinite,
      ),
      child: child,
    );
  }
}
