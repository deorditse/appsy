import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:appsy/ui_layout/app/style/text_field_style.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/cupertino_skeleton_page.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';

class AddAppPage extends StatelessWidget {
  const AddAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyCupertinoSkeletonPage(
      pinnedAppBar: false,
      titleAppBar: S.of(context).add_app,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: TextField(
              decoration: MyTextFieldStyle.I.myStyleTextField(
                context,
                hintText: "Вставьте url нужного сервиса",
              ),
            ),
          ),
          MyUIConst.vSizeBox,
          MyText(
            "Рекомендации",
            fontSize: MyUIConst.textSizeH3,
          )
        ],
      ),
    );
  }
}
