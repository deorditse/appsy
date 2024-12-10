import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/ui/dialog/my_snacbar.dart';
import 'package:appsy/ui_layout/shared/ui/loading/my_refresh_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'sliver_app_bar.dart';

class MyCupertinoSkeletonPage extends StatelessWidget {
  const MyCupertinoSkeletonPage({
    super.key,
    this.titleAppBar,
    required this.body,
    this.actionsAppBar,
    this.leadingAppBar,
    this.widgetAfterBody,
    this.padding,
    this.primary = true,
    this.subTitle,
    this.appBar,
    this.callbackTopRefreshIndicator,
    this.resizeToAvoidBottomInset = false,
    this.scaffoldKey,
    this.backVoidCallback,
    this.navigationBar,
  });

  final Widget? appBar, leadingAppBar, actionsAppBar, widgetAfterBody;
  final EdgeInsetsGeometry? padding;
  final String? titleAppBar, subTitle;
  final Widget body;
  final bool primary;
  final Future<void> Function()? callbackTopRefreshIndicator;
  final bool resizeToAvoidBottomInset;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final VoidCallback? backVoidCallback;
  final ObstructingPreferredSizeWidget? navigationBar;

  Future<void> _refreshData(context) async {
    if (callbackTopRefreshIndicator != null) {
      callbackTopRefreshIndicator!();
      return;
    }
    await Future.delayed(Duration(seconds: 1));

    myBottomSnackBar(context, content: "Data refreshed!");
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return Scaffold(
      drawer: Drawer(),
      key: scaffoldKey,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              if (appBar == null && titleAppBar != null)
                MySliverAppBar(
                  myContext: context,
                  subTitle: subTitle,
                  title: titleAppBar!,
                  leading: leadingAppBar,
                  actions: actionsAppBar,
                  backVoidCallback: backVoidCallback,
                ),
              if (appBar != null) appBar!,
            ];
          },
          body: MyRefreshIndicator(
            callbackTopRefreshIndicator: () => _refreshData(context),
            child: CustomScrollView(
              shrinkWrap: true,
              primary: primary,
              slivers: [
                // SliverOverlapInjector(
                //   handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                // ),
                SliverPadding(
                  padding: padding ??
                      const EdgeInsets.symmetric(
                        horizontal: MyUIConst.hlPadding,
                        vertical: MyUIConst.vPadding,
                      ),
                  sliver: SliverToBoxAdapter(child: body),
                ),
                if (widgetAfterBody != null)
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      bottom: MyUIConst.vPadding,
                    ),
                    sliver: widgetAfterBody!,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
