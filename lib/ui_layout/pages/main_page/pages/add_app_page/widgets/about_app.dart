import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/ui/buttons/my_button.dart';
import 'package:appsy/ui_layout/shared/ui/buttons/my_text_button.dart';
import 'package:appsy/ui_layout/shared/wrappers/adaptive_response/adaptive_widget.dart';
import 'package:appsy/ui_layout/widgets/card_app/card_app.dart';
import 'package:business_layout/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:models/index.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({
    super.key,
    required this.app,
  });

  final AppIconModel app;

  void addApp(context) {
    BlocProvider.of<MainBloc>(context).add(MainEvent.addApp(app: app));

    GoRouter.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = AdaptiveWidget.isDesktop(context);
    final bool isMobile = AdaptiveWidget.isMobile(context);
    return Card(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CardApp(
                  app,
                  isOnlyIcon: true,
                  isMobile: isMobile,
                  isDesktop: isDesktop,
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: MyUIConst.hlPadding,
                    vertical: MyUIConst.vPadding / 1.1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        app.name,
                      ),
                      MyText(
                        app.url,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          MyTextButton(
            isInfinityWidth: true,
            text: "Добавить в меню приложений",
            onPressed: () => addApp(context),
          ),
        ],
      ),
    );
  }
}
