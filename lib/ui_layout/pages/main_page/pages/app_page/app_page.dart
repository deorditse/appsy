import 'package:models/index.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/material_skeleton_page/material_skeleton_page.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appsy/ui_layout/pages/main_page/routes.dart' as routes;
import 'storage/database_app.dart';

class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
    required this.appTitle,
  });

  final String appTitle;

  static goRoute(
    BuildContext context, {
    required String appName,
  }) {
    GoRouter.of(context).goNamed(routes.app, pathParameters: {
      "app_name": appName,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: appTitle,
      child: MaterialSkeletonPage(
        extendBodyBehindAppBar: true,
        padding: EdgeInsets.zero,
        titleAppBar: appTitle,
        body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.white,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          final res = DBProvider.db.getAllApps();
                          print(res);
                        },
                        child: MyText("getAllApps"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final res = DBProvider.db.addApp(testApp);
                          print(res);
                        },
                        child: MyText("addApp"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final res = DBProvider.db
                              .updateApp(testApp.copyWith(name: "updateApp"));
                          print(res);
                        },
                        child: MyText("updateApp"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final res = DBProvider.db.deleteApp(testApp.id);
                          print(res);
                        },
                        child: MyText("deleteApp"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final res = DBProvider.db.deleteAll();
                          print(res);
                        },
                        child: MyText("deleteDB"),
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

final testApp = AppIconModel(
  name: DateTime.now().toString(),
  iconPath:
      "https://mediarost.com/media/com_jbusinessdirectory/pictures/companies/52/cropped-1584357458.jpeg",
  url: "https://mail.yandex.ru/?uid=321242487#inbox",
  id: "почта Яндекс",
);
final String test = '''
import 'package:appsy/ui_layout/shared/layouts/skeletons/material_skeleton_page/material_skeleton_page.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appsy/ui_layout/pages/main_page/routes.dart' as routes;

class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
    required this.appTitle,
  });

  final String appTitle;

  static goRoute(
    BuildContext context, {
    required String appName,
  }) {
    GoRouter.of(context).goNamed(routes.app, pathParameters: {
      "app_name": appName,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: appTitle,
      child: MaterialSkeletonPage(
        extendBodyBehindAppBar: true,
        padding: EdgeInsets.zero,
        titleAppBar: appTitle,
        body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.white,
            child: Center(
              child: MyText(
                "TODO proxy",
                // textColor: Theme.of(context).cardColor,
              ),
            )),
      ),
    );
  }
}



final const test = ""''';
