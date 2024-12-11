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

  void _showContextMenu(BuildContext context, Offset position) async {
    final selectedOption = await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy,
        position.dx + 1,
        position.dy + 1,
      ),
      items: [
        PopupMenuItem(
          value: 'option1',
          child: Text('Option 1'),
        ),
        PopupMenuItem(
          value: 'option2',
          child: Text('Option 2'),
        ),
        PopupMenuItem(
          value: 'option3',
          child: Text('Option 3'),
        ),
      ],
    );

    if (selectedOption != null) {
      // Handle selected option
      print('Selected: $selectedOption');
    }
  }

  @override
  Widget build(BuildContext context) {
    print(app.iconPath);
    return GestureDetector(
      // splashColor: Colors.transparent,
      // focusColor: Colors.transparent,
      // hoverColor: Colors.transparent,
      // highlightColor: Colors.transparent,
      onTap: () {
        AppPage.goRoute(
          context,
          appName: app.name,
        );
      },
      // onLongPressStart: (details) {
      //   _showContextMenu(context, details.globalPosition);
      // },
      child: Column(
        children: [
          Flexible(
            child: Hero(
              tag: app.name,
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                padding: EdgeInsets.all(8),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    // color: MyColors.blackLight,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: MyImage(
                    imageUrl:
                        app.iconPath ?? "assets/icons/menu_bottom/projects.svg",
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
