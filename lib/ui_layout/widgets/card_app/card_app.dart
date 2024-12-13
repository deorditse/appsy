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
    required this.onTap,
    this.isOnlyIcon = false,
  });

  final bool isMobile, isDesktop, isOnlyIcon;
  final AppIconModel app;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Hero(
              tag: app.name,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
                child: MyImage(
                  // width: double.maxFinite,
                  // height: double.maxFinite,
                  imageUrl:
                      app.iconPath ?? "assets/icons/menu_bottom/projects.svg",
                  fit: BoxFit.cover,
                  placeholder: Container(),
                ),
              ),
            ),
          ),
          if (!isOnlyIcon)
            MyText(
              app.name,
              maxLines: 1,
              fontSize: MyUIConst.textSizeH6,
            ),
        ],
      ),
    );
  }
}
