import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:appsy/ui_layout/shared/wrappers/adaptive_response/adaptive_widget.dart';
import 'package:flutter/material.dart';

part 'app_bar_material.dart';

class MaterialSkeletonPage extends StatelessWidget {
  const MaterialSkeletonPage({
    super.key,
    required this.body,
    this.titleAppBar,
    this.drawer,
    this.scaffoldKeyPage,
    this.appBar,
    this.leadingAppbar,
    this.padding,
    this.extendBodyBehindAppBar = false,
  });

  final GlobalKey<ScaffoldState>? scaffoldKeyPage;
  final Widget body;
  final String? titleAppBar;
  final Widget? drawer, leadingAppbar;
  final PreferredSizeWidget? appBar;
  final EdgeInsetsGeometry? padding;
  final bool extendBodyBehindAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKeyPage,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: drawer,
      appBar: appBar ??
          (titleAppBar != null
              ? AppBarMaterial(
                  leadingWidget: leadingAppbar,
                  title: titleAppBar!,
                  extendBodyBehindAppBar: extendBodyBehindAppBar,
                )
              : null),
      body: Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: MyUIConst.hlPadding,
              vertical: MyUIConst.vPadding,
            ),
        child: body,
      ),
    );
  }
}
