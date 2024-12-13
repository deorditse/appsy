import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appsy/ui_layout/pages/routes.dart' as routes;

class EmptyApps extends StatelessWidget {
  const EmptyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).goNamed(routes.addApp);
      },
      child: Column(
        children: [
          Icon(
            Icons.app_registration_outlined,
            size: 100,
            color: Theme.of(context).primaryColor,
          ),
          MyUIConst.vSizeBox,
          MyText(
            "Тут пока пусто",
            textColor: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }
}
