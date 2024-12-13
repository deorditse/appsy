import 'package:appsy/ui_layout/pages/routes.dart' as routes;
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/cupertino_skeleton_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:models/index.dart';
import 'package:business_layout/index.dart';
import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/grid_apps/grid_apps.dart';

final GlobalKey<ScaffoldState> scaffoldMainPageKey = GlobalKey(
  debugLabel: "MainPage",
);

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Future<void> callbackTopRefreshIndicator(BuildContext context) async {
    BlocProvider.of<MainBloc>(context).add(MainEvent.getAllApps());
  }

  @override
  Widget build(BuildContext context) {
    return MyCupertinoSkeletonPage(
      pinnedAppBar: false,
      callbackTopRefreshIndicator: () => callbackTopRefreshIndicator(context),
      drawer: Drawer(),
      scaffoldKey: scaffoldMainPageKey,
      actionsAppBar: Hero(
        tag: S.of(context).add_app,
        child: IconButton(
          onPressed: () {
            GoRouter.of(context).goNamed(routes.addApp);
          },
          icon: Icon(
            FontAwesomeIcons.add,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      leadingAppBar: IconButton(
        onPressed: scaffoldMainPageKey.currentState?.openDrawer,
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
      ),
      titleAppBar: S.of(context).my_apps,

      // scaffoldKey: MyUIConst.scaffoldKey,
      body: GridApps(),
    );
  }
}
