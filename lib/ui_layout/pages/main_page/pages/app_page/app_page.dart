import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/cupertino_skeleton_page.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/sliver_app_bar.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:appsy/ui_layout/widgets/web_view/web_view.dart';
import 'package:models/index.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/material_skeleton_page/material_skeleton_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:appsy/ui_layout/pages/routes.dart' as routes;

class AppPage extends StatelessWidget {
  const AppPage({
    super.key,
    required this.appTitle,
    required this.url,
  });

  final String appTitle, url;

  static goRoute(
    BuildContext context, {
    required String appName,
    required String url,
  }) {
    GoRouter.of(context).goNamed(routes.app, pathParameters: {
      "app_name": appName,
    }, queryParameters: {
      "url": url,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: appTitle,
      child: MaterialSkeletonPage(
        // pinnedAppBar: true,
        // isRefreesh: false,

        padding: EdgeInsets.zero,
        titleAppBar: appTitle,
        // isBottomSafeArea: false,
        body: SafeArea(bottom: false, child: WebViewPage(url: url)),
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
import 'package:appsy/ui_layout/pages/routes.dart' as routes;

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
