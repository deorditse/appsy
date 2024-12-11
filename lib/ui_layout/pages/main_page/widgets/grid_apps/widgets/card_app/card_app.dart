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
    return Material(
      child: InkWell(
        onTap: () {
          AppPage.goRoute(
            context,
            appName: app.name,
          );
        },
        child: Hero(
          tag: app.name,
          child: Column(
            children: [
              Flexible(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColors.blackLight,
                  ),
                  child: MyImage(
                    imageUrl:
                        app.iconPath ?? "assets/icons/menu_bottom/projects.svg",
                  ),
                ),
              ),
              MyUIConst.vSizeBox,
              MyText(
                app.name,
                maxLines: 1,
                fontSize: MyUIConst.textSizeH6,
                // newFontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
