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
      automaticallyImplyLeading: true,
      toolbarHeight: toolbarHeight ?? MyUIConst.myToolbarHeight,
      forceMaterialTransparency: true,
      foregroundColor:
          extendBodyBehindAppBar ? Theme.of(context).cardColor : null,
      title: MyText(
        title,
        fontSize: MyUIConst.textSizeH3,
        newFontWeight: FontWeight.w500,
        textAlign: TextAlign.center,
        textColor: extendBodyBehindAppBar ? Theme.of(context).cardColor : null,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
