import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/material_skeleton_page/material_skeleton_page.dart';
import 'package:flutter/material.dart';

class AppBarAppPage extends StatelessWidget {
  const AppBarAppPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBarMaterial(
      leadingWidget: null,
      // toolbarHeight: MyUIConst.myToolbarHeight / 2,
      title: title,
      extendBodyBehindAppBar: false,
    );
  }
}

//IconButton(
//                   onPressed: () {
//                     if (GoRouter.of(context).canPop()) {
//                       GoRouter.of(context).pop();
//                     } else {
//                       GoRouter.of(context).pushReplacementNamed(routes.root);
//                     }
//                   },
//                   icon: Icon(
//                     Icons.arrow_back_outlined,
//                     color: MyColors.primary,
//                   ),
//                 ),
