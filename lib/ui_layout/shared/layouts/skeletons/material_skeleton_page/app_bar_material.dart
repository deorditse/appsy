part of 'material_skeleton_page.dart';

class AppBarMaterial extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMaterial({
    super.key,
    required this.leadingWidget,
    required this.title,
    required this.extendBodyBehindAppBar,
    this.toolbarHeight,
  });

  final Widget? leadingWidget;
  final String title;
  final bool extendBodyBehindAppBar;
  final double? toolbarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // elevation: 0,
      automaticallyImplyLeading: true,
      leading: leadingWidget ??
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: FittedBox(
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
            ),
          ),
      toolbarHeight: toolbarHeight ?? MyUIConst.myToolbarHeight,
      backgroundColor: MyColors.blackLight,
      forceMaterialTransparency: extendBodyBehindAppBar,
      // surfaceTintColor: Colors.transparent,
      foregroundColor:
          extendBodyBehindAppBar ? Theme.of(context).cardColor : null,
      title: MyText(
        title,
        fontSize: MyUIConst.textSizeH4,
        newFontWeight: FontWeight.w500,
        textAlign: TextAlign.center,
        textColor: extendBodyBehindAppBar ? Theme.of(context).cardColor : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(MyUIConst.myToolbarHeight);
}
