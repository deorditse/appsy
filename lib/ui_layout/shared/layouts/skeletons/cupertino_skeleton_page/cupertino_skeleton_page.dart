import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
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
    this.drawer,
    this.flexibleSpaceBar,
    this.pinnedAppBar,
    this.isBottomSafeArea = true,
    this.isRefresh = true,
  });

  final Widget? appBar, leadingAppBar, actionsAppBar, widgetAfterBody, drawer;
  final EdgeInsetsGeometry? padding;
  final String? titleAppBar, subTitle;
  final Widget body;
  final bool primary, isBottomSafeArea, isRefresh;
  final bool? pinnedAppBar;
  final Future<void> Function()? callbackTopRefreshIndicator;
  final bool resizeToAvoidBottomInset;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final VoidCallback? backVoidCallback;
  final ObstructingPreferredSizeWidget? navigationBar;
  final FlexibleSpaceBar? flexibleSpaceBar;

  Future<void> _refreshData(context) async {
    if (callbackTopRefreshIndicator != null) {
      await callbackTopRefreshIndicator!();
      return;
    }
    await Future.delayed(Duration(seconds: 1));

    myBottomSnackBar(context, content: S.of(context).update_success);
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        drawer: drawer,
        primary: false,
        key: scaffoldKey,
        body: SafeArea(
          bottom: isBottomSafeArea,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                if (appBar == null && titleAppBar != null)
                  MySliverAppBar(
                    myContext: context,
                    subTitle: subTitle,
                    title: titleAppBar!,
                    leading: leadingAppBar,
                    actions: actionsAppBar,
                    backVoidCallback: backVoidCallback,
                    flexibleSpaceBar: flexibleSpaceBar,
                    pinned: pinnedAppBar,
                  ),
                if (appBar != null) appBar!,
              ];
            },
            body: isRefresh
                ? MyRefreshIndicator(
                    callbackTopRefreshIndicator: () => _refreshData(context),
                    child: _buildBody(),
                  )
                : _buildBody(),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return CustomScrollView(
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
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
    );
  }
}
