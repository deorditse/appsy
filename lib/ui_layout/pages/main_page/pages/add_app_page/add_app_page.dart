import 'package:models/index.dart';
import 'package:business_layout/index.dart';
import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/cupertino_skeleton_page.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/about_app.dart';
import 'widgets/recommendations.dart';
import 'widgets/text_field.dart';

class AddAppPage extends StatefulWidget {
  const AddAppPage({super.key});

  @override
  State<AddAppPage> createState() => _AddAppPageState();
}

class _AddAppPageState extends State<AddAppPage> {
  AppIconModel? _app;

  @override
  Widget build(BuildContext context) {
    return MyCupertinoSkeletonPage(
      pinnedAppBar: false,
      titleAppBar: S.of(context).add_app,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyUIConst.vSizeBox,
          TextFieldAddApp(
            appCallback: (newApp) => setState(() {
              _app = newApp;
            }),
          ),
          MyUIConst.vSizeBox,
          AnimatedSize(
            duration: Duration(milliseconds: 300),
            child: _app != null ? AboutApp(app: _app!) : SizedBox.shrink(),
          ),
          MyUIConst.vSizeBox,
          Recommendations(),
        ],
      ),
    );
  }
}
