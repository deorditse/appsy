import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    super.key,
    required this.title,
    required this.myContext,
    this.isSearchWidget,
    this.actions,
    this.leading,
    this.fontSizeAppBar,
    this.backLine = false,
    this.subTitle,
    this.backVoidCallback,
    this.flexibleSpaceBar,
    this.pinned,
  });

  final bool? isSearchWidget, pinned;
  final bool backLine;

  final BuildContext myContext;
  final String title;
  final Widget? actions, leading;
  final double? fontSizeAppBar;
  final String? subTitle;
  final VoidCallback? backVoidCallback;
  final FlexibleSpaceBar? flexibleSpaceBar;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      pinned: pinned ?? true,
      flexibleSpace: flexibleSpaceBar,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: leading,
      centerTitle: true,
      expandedHeight: MyUIConst.myToolbarHeight,
      toolbarHeight: MyUIConst.myToolbarHeight,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if (backLine) myBackLineInAppBar(context: context),
          MyText(
            title,
            fontSize: fontSizeAppBar ?? MyUIConst.textSizeH4,
            newFontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          if (subTitle != null)
            FittedBox(
              child: MyText(
                subTitle!,
                fontSize: 10,
                newFontWeight: FontWeight.w300,
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
      actions: actions != null
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: actions,
              )
            ]
          : null,
    );
  }
}
