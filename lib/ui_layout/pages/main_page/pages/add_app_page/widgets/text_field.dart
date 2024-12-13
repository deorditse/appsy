import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/shared/utils/debounce.dart';
import 'package:models/index.dart';
import 'package:flutter/material.dart';
import 'package:appsy/ui_layout/app/style/text_field_style.dart';
import 'package:appsy/ui_layout/app/style/text_style.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';

import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

typedef AppCallback = Function(AppIconModel? app);

class TextFieldAddApp extends StatefulWidget {
  const TextFieldAddApp({
    super.key,
    required this.appCallback,
  });

  final AppCallback appCallback;

  @override
  State<TextFieldAddApp> createState() => _TextFieldAddAppState();
}

class _TextFieldAddAppState extends State<TextFieldAddApp> {
  final TextEditingController _textController = TextEditingController();
  static final _debouncer = const Debouncer(milliseconds: 300);

  void onValidateUrl(String text) {
    final bool _validURL = Uri.parse(text).isAbsolute;

    if (_validURL) {
      _debouncer.run(() {
        if (text.isNotEmpty) {
          widget.appCallback(_apps.elementAt(1));
        }
      });
    } else {
      widget.appCallback(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MyUIConst.vPadding),
      child: TextField(
        key: const Key('fieldText'),
        keyboardType: TextInputType.url,
        controller: _textController,
        cursorColor: Theme.of(context).primaryColor,
        maxLines: 1,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.singleLineFormatter,
        ],
        style: MyTextStyle.I.textStyle(
          fontSize: MyUIConst.textSizeH4,
        ),
        onChanged: onValidateUrl,
        decoration: MyTextFieldStyle.I.myStyleTextField(
          context,
          hintText: "Вставьте url нужного сервиса",
          suffixIcon: _textController.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    _textController.clear();
                    setState(() {});
                    // widget.appCallback(_apps.elementAt(1));
                  },
                  icon: Icon(
                    FontAwesomeIcons.close,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : null,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }
}

final Set<AppIconModel> _apps = {
  AppIconModel(
    name: "Яндекс почта",
    iconPath:
        "https://mediarost.com/media/com_jbusinessdirectory/pictures/companies/52/cropped-1584357458.jpeg",
    url: "https://mail.yandex.ru/?uid=321242487#inbox",
    id: "Яндекс почта",
  ),
  AppIconModel(
    name: "Google",
    id: "Google",
    iconPath:
        "https://mediarost.com/media/com_jbusinessdirectory/pictures/companies/52/cropped-1584357458.jpeg",
    url: "https://www.google.ru/?hl=ru",
  ),
  AppIconModel(
    id: "Test",
    name: "Test",
    iconPath:
        "https://mediarost.com/media/com_jbusinessdirectory/pictures/companies/52/cropped-1584357458.jpeg",
    url: "https://mail.yandex.ru/?uid=321242487#inbox",
  ),
};
