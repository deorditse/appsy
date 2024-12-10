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
  });

  final bool? isSearchWidget;
  final bool backLine;

  final BuildContext myContext;
  final String title;
  final Widget? actions, leading;
  final double? fontSizeAppBar;
  final String? subTitle;
  final VoidCallback? backVoidCallback;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: false,
      // flexibleSpace: FlexibleSpaceBar(
      //   title: Text("Refresh Example"),
      //   background: Image.network(
      //     "https://via.placeholder.com/400x200",
      //     fit: BoxFit.cover,
      //   ),
      // ),
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leadingWidth: 40,
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
            fontSize: fontSizeAppBar ?? MyUIConst.textSizeH3,
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
          : [
              const SizedBox(width: 40),
            ],
    );
  }
}
