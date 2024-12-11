import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/cupertino_skeleton_page.dart';
import 'package:flutter/material.dart';

class AddAppPage extends StatelessWidget {
  const AddAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: S.of(context).add_app,
      child: MyCupertinoSkeletonPage(
        titleAppBar: S.of(context).add_app,
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
