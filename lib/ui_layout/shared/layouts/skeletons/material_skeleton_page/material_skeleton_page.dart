import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:appsy/ui_layout/shared/wrappers/adaptive_response/adaptive_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_bar_material.dart';

class MaterialSkeletonPage extends StatelessWidget {
  const MaterialSkeletonPage({
    super.key,
    required this.body,
    this.titleAppBar,
    this.drawer,
    this.scaffoldKeyPage,
    this.appBar,
    this.leadingAppbar,
    this.padding,
    this.extendBodyBehindAppBar = false,
  });

  final GlobalKey<ScaffoldState>? scaffoldKeyPage;
  final Widget body;
  final String? titleAppBar;
  final Widget? drawer, leadingAppbar;
  final PreferredSizeWidget? appBar;
  final EdgeInsetsGeometry? padding;
  final bool extendBodyBehindAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      key: scaffoldKeyPage,

      extendBodyBehindAppBar: extendBodyBehindAppBar,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: drawer,
      extendBody: true,
      appBar: appBar ??
          (titleAppBar != null
              ? AppBarMaterial(
                  leadingWidget: leadingAppbar,
                  title: titleAppBar!,
                  extendBodyBehindAppBar: extendBodyBehindAppBar,
                )
              : null),
      body: Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: MyUIConst.hlPadding,
              vertical: MyUIConst.vPadding,
            ),
        child: body,
      ),
    );
  }
}

class _DecoratorViewAppbar extends StatefulWidget {
  const _DecoratorViewAppbar({super.key});

  @override
  State<_DecoratorViewAppbar> createState() => _DecoratorViewAppbarState();
}

class _DecoratorViewAppbarState extends State<_DecoratorViewAppbar> {
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      // Скрыть AppBar при прокрутке вниз, показать при прокрутке вверх
      if (_scrollController.offset > 100 && _isAppBarVisible) {
        setState(() {
          _isAppBarVisible = false;
        });
      } else if (_scrollController.offset <= 100 && !_isAppBarVisible) {
        setState(() {
          _isAppBarVisible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
