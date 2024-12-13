import 'package:appsy/ui_layout/shared/ui/dialog/my_snacbar.dart';
import 'package:appsy/ui_layout/shared/utils/debounce.dart';
import 'package:appsy/ui_layout/shared/utils/get_site_info.dart';
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

  final FocusNode _focusNode = FocusNode();

  void onValidateUrl(String text) {
    final bool _validURL = Uri.parse(text).isAbsolute;

    if (_validURL) {
      _debouncer.run(() async {
        if (text.isNotEmpty) {
          final AppIconModel app = await GetSiteInfo.buUrl(text);

          widget.appCallback(app);
          _focusNode.unfocus();
        }
      });
    } else {
      if (text.isEmpty) {
        _textController.clear();
        setState(() {});
        widget.appCallback(null);
      } else {
        widget.appCallback(null);
        _debouncer.run(() {
          myBottomSnackBar(
            context,
            content: "Ссылка некорректная",
            view: ViewSnackBar.error,
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MyUIConst.vPadding),
      child: TextField(
        focusNode: _focusNode,
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
        onSubmitted: onValidateUrl,
        onChanged: onValidateUrl,
        decoration: MyTextFieldStyle.I.myStyleTextField(
          context,
          hintText: "Вставьте url нужного сервиса",
          suffixIcon: _textController.text.isNotEmpty
              ? IconButton(
                  onPressed: () => onValidateUrl(""),
                  icon: Icon(
                    FontAwesomeIcons.close,
                    size: 20,
                    color: Theme.of(context).textTheme.bodySmall!.color!,
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
