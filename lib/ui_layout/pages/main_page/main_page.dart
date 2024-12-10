import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/cupertino_skeleton_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:models/index.dart';
import 'package:business_layout/index.dart';
import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<ScaffoldState> scaffoldMainPageKey = GlobalKey(
  debugLabel: "MainPage",
);

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  //
  // Future<void> callbackTopRefreshIndicator() async {
  //   await Future.delayed(Duration(seconds: 1));
  // }

  @override
  Widget build(BuildContext context) {
    return MyCupertinoSkeletonPage(
      scaffoldKey: scaffoldMainPageKey,
      actionsAppBar: IconButton(
        onPressed: () {},
        icon: Icon(
          FontAwesomeIcons.add,
          color: Theme.of(context).primaryColor,
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
      body: Column(
        children: [
          Text(S.of(context).locale + test),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<SettingBloc>(context).add(
                SettingEvent.changeLocale(newLocale: MyLocales.en),
              );
            },
            child: Text('change'),
          ),
        ],
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(S.of(context).locale),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<SettingBloc>(context).add(
                    SettingEvent.changeLocale(newLocale: MyLocales.en),
                  );
                },
                child: Text('change'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String test = '''
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/cupertino_skeleton_page.dart';
import 'package:models/index.dart';
import 'package:business_layout/index.dart';
import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  //
  // Future<void> callbackTopRefreshIndicator() async {
  //   await Future.delayed(Duration(seconds: 1));
  // }

  @override
  Widget build(BuildContext context) {
    return MyCupertinoSkeletonPage(
      // appBar: ,
      titleAppBar: S.of(context).my_apps,
      // scaffoldKey: MyUIConst.scaffoldKey,
      body: Column(
        children: [
          Text(S.of(context).locale + ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<SettingBloc>(context).add(
                SettingEvent.changeLocale(newLocale: MyLocales.en),
              );
            },
            child: Text('change'),
          ),
        ],
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(S.of(context).locale),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<SettingBloc>(context).add(
                    SettingEvent.changeLocale(newLocale: MyLocales.en),
                  );
                },
                child: Text('change'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


const String test = "";
''';
