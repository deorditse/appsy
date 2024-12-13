import 'package:models/index.dart';
import 'package:business_layout/index.dart';
import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focused_menu/modals.dart';

class AppMenu {
  const AppMenu._();

  factory AppMenu() => AppMenu._();

  List<FocusedMenuItem> apppMenu(
    BuildContext context, {
    required AppIconModel app,
  }) =>
      <FocusedMenuItem>[
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
          onPressed: () {
            BlocProvider.of<MainBloc>(context).add(
              MainEvent.deleteApp(id: app.id),
            );
          },
        ),
      ];
}
