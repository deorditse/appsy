import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';

import '../../wrappers/adaptive_response/adaptive_widget.dart';
import '../image/my_image.dart';

enum ViewSnackBar { error, alert, success }

void myBottomSnackBar(
  BuildContext context, {
  required String content,
  Duration? duration,
  String? iconLabel,
  ViewSnackBar view = ViewSnackBar.success,
}) {
  // String _getIcon() {
  //   if (iconLabel != null) {
  //     return iconLabel;
  //   }
  //
  //   Map<ViewSnackBar, String> viewAndIcon = {
  //     ViewSnackBar.success: 'succes',
  //     ViewSnackBar.alert: 'alert',
  //     ViewSnackBar.error: 'ic_cross_in_circle',
  //   };
  //
  //   return viewAndIcon[view] ?? viewAndIcon.values.first;
  // }

  Color _getColor() {
    Map<ViewSnackBar, Color> viewAndColor = {
      ViewSnackBar.success: Theme.of(context).primaryColor,
      ViewSnackBar.alert: MyColors.orange,
      ViewSnackBar.error: MyColors.red,
    };

    return viewAndColor[view] ?? viewAndColor.values.first;
  }

  final SnackBar snackBar = SnackBar(
    clipBehavior: Clip.hardEdge,
    content: Align(
      alignment: Alignment.bottomRight,
      child: Container(
        constraints: BoxConstraints(
          minWidth: 400,
          maxWidth: !AdaptiveWidget.isDesktop(context)
              ? MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width * 0.5,
        ),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: MyColors.black.withOpacity(0.07), //New
              blurRadius: 11.1,
              offset: const Offset(0, 3),
            )
          ],
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: _getColor(),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // SizedBox(
                  //   height: 32,
                  //   width: 32,
                  //   child: Center(
                  //     child: MyImage(
                  //       imageUrl: 'assets_ai_giga/icons/${(_getIcon())}.svg',
                  //       color: _getColor(),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(width: 14),
                  Flexible(
                      child: MyText(
                    content,
                    newFontWeight: FontWeight.w600,
                    fontSize: MyUIConst.textSizeH4,
                  )),
                  const SizedBox(width: 14),
                ],
              ),
            ),
            IconButton(
                onPressed: () {
                  MyUIConst.snackBarMainKey.currentState?.hideCurrentSnackBar();
                },
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).textTheme.titleSmall!.color,
                )),
          ],
        ),
      ),
    ),
    duration: duration ?? const Duration(seconds: 5),
  );
  MyUIConst.snackBarMainKey
    ..currentState?.hideCurrentSnackBar()
    ..currentState?.showSnackBar(snackBar);
}
