import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/pages/main_page/pages/app_page/app_page.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/ui/image/my_image.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';
import 'package:models/index.dart';

class CardApp extends StatelessWidget {
  const CardApp(
    this.app, {
    super.key,
    required this.isMobile,
    required this.isDesktop,
  });

  final bool isMobile, isDesktop;
  final AppIconModel app;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // splashColor: Colors.transparent,
      // focusColor: Colors.transparent,
      // hoverColor: Colors.transparent,
      // highlightColor: Colors.transparent,
      onTap: () {
        AppPage.goRoute(
          context,
          appName: app.name,
          url: app.url,
        );
      },
      // onLongPressStart: (details) {
      //   _showContextMenu(context, details.globalPosition);
      // },
      child: Column(
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Hero(
                tag: app.name,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: MyImage(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    imageUrl:
                        app.iconPath ?? "assets/icons/menu_bottom/projects.svg",
                    fit: BoxFit.cover,
                    placeholder: Container(),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: MyUIConst.vPadding / 2,
          // ),
          MyText(
            app.name,
            maxLines: 1,
            fontSize: MyUIConst.textSizeH6,

            // newFontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
