import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../image/my_image.dart';
import 'my_circular_progress_indicator.dart';

class MyRefreshIndicator extends StatefulWidget {
  const MyRefreshIndicator({
    super.key,
    required this.child,
    required this.callbackTopRefreshIndicator,
  });

  final Widget child;
  final Future<void> Function()? callbackTopRefreshIndicator;

  @override
  State<MyRefreshIndicator> createState() => _MyRefreshIndicatorState();
}

class _MyRefreshIndicatorState extends State<MyRefreshIndicator> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: widget.callbackTopRefreshIndicator != null,
      enablePullUp: false,
      header: CustomHeader(
        refreshStyle: RefreshStyle.Follow,
        endRefresh: () async {
          _refreshController.loadComplete();
        },
        builder: (BuildContext context, RefreshStatus? mode) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: MyUIConst.vPadding),
              child: mode == RefreshStatus.canRefresh
                  ? MyImage(
                      imageUrl: 'assets/icons/refresh.svg',
                      semanticsLabel: 'refresh',
                      fit: BoxFit.contain,
                    )
                  : mode == RefreshStatus.refreshing
                      ? const MyCircularProgressIndicator(
                          // strokeWidth: 1.0,
                          // color: ColorStyles.black,
                          )
                      : const Icon(
                          Icons.done,
                          color: MyColors.green,
                          size: 35,
                        ),
            ),
          );
        },
      ),
      controller: _refreshController,
      onRefresh: () async {
        if (widget.callbackTopRefreshIndicator != null) {
          await widget.callbackTopRefreshIndicator!();
          _refreshController.refreshCompleted();
        } else {
          _refreshController.refreshFailed();
        }
      },
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }
}
