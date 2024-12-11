import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/wrappers/adaptive_response/adaptive_widget.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:models/index.dart';
import 'package:business_layout/index.dart';
import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/card_app/card_app.dart';
import 'widgets/empty_apps.dart';
import 'widgets/loading_apps.dart';

class GridApps extends StatelessWidget {
  const GridApps({super.key});

  static const double _gap = MyUIConst.vPadding;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = AdaptiveWidget.isDesktop(context);
    final bool isMobile = AdaptiveWidget.isMobile(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: MyUIConst.vPadding,
      ),
      child: BlocBuilder<MainBloc, MainState>(
        buildWhen: (p, c) => c.apps != p.apps || c.isLoading != p.isLoading,
        builder: (context, mainState) {
          if (mainState.isLoading) return LoadingApps();
          if (mainState.apps.isEmpty) return EmptyApps();

          return GridView.builder(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: mainState.apps.length,
              itemBuilder: (BuildContext context, int index) {
                final AppIconModel app = mainState.apps.elementAt(index);

                return Material(
                  color: Colors.transparent,
                  child: FocusedMenuHolder(
                    menuWidth: MediaQuery.of(context).size.width * 0.50,
                    blurSize: 5.0,
                    // menuItemExtent: MyUIConst.vPadding,
                    menuBoxDecoration: BoxDecoration(
                      color: MyColors.greyBlack,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    duration: Duration(milliseconds: 100),
                    animateMenuItems: false,
                    blurBackgroundColor: MyColors.blackLight,
                    openWithTap: false,
                    // Open Focused-Menu on Tap rather than Long Press
                    menuOffset: MyUIConst.vPadding,
                    // Offset value to show menuItem from the selected item
                    bottomOffsetHeight: MyUIConst.vPadding,
                    // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                    menuItems: <FocusedMenuItem>[
                      // Add Each FocusedMenuItem  for Menu Options
                      FocusedMenuItem(
                          backgroundColor: MyColors.blackLight,
                          title: MyText("Open"),
                          trailingIcon: Icon(Icons.open_in_new),
                          onPressed: () {}),
                      FocusedMenuItem(
                          backgroundColor: MyColors.blackLight,
                          title: MyText("Share"),
                          trailingIcon: Icon(Icons.share),
                          onPressed: () {}),
                      FocusedMenuItem(
                          backgroundColor: MyColors.blackLight,
                          title: MyText("Favorite"),
                          trailingIcon: Icon(Icons.favorite_border),
                          onPressed: () {}),
                      FocusedMenuItem(
                          backgroundColor: MyColors.blackLight,
                          title: MyText("Delete"),
                          trailingIcon: Icon(
                            Icons.delete,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {}),
                    ],
                    onPressed: () {},
                    child: CardApp(
                      app,
                      isMobile: isMobile,
                      isDesktop: isDesktop,
                    ),
                  ),
                );
                // return CardApp(
                //   app,
                //   isMobile: isMobile,
                //   isDesktop: isDesktop,
                // );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isDesktop ? 7 : 4,
                mainAxisExtent: 110,
                mainAxisSpacing: _gap, // Отступы между рядами
                crossAxisSpacing: _gap, // Отступы между столбцами
              )

              // SliverGridDelegateWithMaxCrossAxisExtent(
              //   maxCrossAxisExtent: 80, // Максимальная ширина ячейки
              //   mainAxisSpacing: _gap, // Отступы между рядами
              //   crossAxisSpacing: _gap, // Отступы между столбцами
              //   mainAxisExtent: 100,
              // ),
              );
        },
      ),
    );
    // return AlignedGridView.count(
    //   shrinkWrap: true,
    //   primary: false,
    //   crossAxisCount: isDesktop ? 7 : 4,
    //   mainAxisSpacing: _gap,
    //   crossAxisSpacing: _gap,
    //   itemCount: apps.length,
    //   itemBuilder: (context, index) {
    //     final String app = apps.elementAt(index);
    //     return CardApp(
    //       app,
    //       isMobile: isMobile,
    //       isDesktop: isDesktop,
    //     );
    //   },
    // );
    return Column(
      children: [
        Container(
          child: MyText("apps"),
        ),
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
    );
  }
}
