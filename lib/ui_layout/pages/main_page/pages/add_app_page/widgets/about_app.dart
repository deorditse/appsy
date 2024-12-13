import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/app/style/text_field_style.dart';
import 'package:appsy/ui_layout/app/style/text_style.dart';
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

class AboutApp extends StatefulWidget {
  const AboutApp({
    super.key,
    required this.app,
  });

  final AppIconModel app;

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  void addApp(context) {
    BlocProvider.of<MainBloc>(context).add(MainEvent.addApp(
        app: widget.app.copyWith(
      name: _nameController.text,
      url: _urlController.text,
    )));

    GoRouter.of(context).pop();
  }

  late final TextEditingController _nameController;
  late final TextEditingController _urlController;

  @override
  void initState() {
    _nameController = TextEditingController(text: widget.app.name);
    _urlController = TextEditingController(text: widget.app.url);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AboutApp oldWidget) {
    if (oldWidget.app != widget.app) {
      setState(() {
        _nameController.text = widget.app.name;
        _urlController.text = widget.app.url;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = AdaptiveWidget.isDesktop(context);
    final bool isMobile = AdaptiveWidget.isMobile(context);
    if (widget.app.error != null) {
      return Center(
          child: MyText(
        widget.app.error!.description + widget.app.error!.guid,
        textColor: MyColors.red,
      ));
    }
    return Card(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CardApp(
                  widget.app,
                  isOnlyIcon: true,
                  isMobile: isMobile,
                  isDesktop: isDesktop,
                  onTap: () {},
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: MyUIConst.hlPadding,
                      vertical: MyUIConst.vPadding / 1.1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextField(
                          controller: _nameController,
                          style: MyTextStyle.I.textStyle(),
                          decoration: MyTextFieldStyle.I
                              .myStyleTextFieldWithoutBorder(context),
                        ),
                        TextField(
                          controller: _urlController,
                          decoration: MyTextFieldStyle.I
                              .myStyleTextFieldWithoutBorder(context),
                          style: MyTextStyle.I.textStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          MyTextButton(
            isInfinityWidth: true,
            fontSizeNew: MyUIConst.textSizeH5,
            text: "Добавить в меню приложений",
            onPressed: () => addApp(context),
          ),
        ],
      ),
    );
  }
}
