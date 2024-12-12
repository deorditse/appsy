import 'package:appsy/ui_layout/app/localization/generate/l10n.dart';
import 'package:appsy/ui_layout/app/style/text_field_style.dart';
import 'package:appsy/ui_layout/app/style/text_style.dart';
import 'package:appsy/ui_layout/shared/const/ui_const.dart';
import 'package:appsy/ui_layout/shared/layouts/skeletons/cupertino_skeleton_page/cupertino_skeleton_page.dart';
import 'package:appsy/ui_layout/shared/ui/text/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddAppPage extends StatefulWidget {
  const AddAppPage({super.key});

  @override
  State<AddAppPage> createState() => _AddAppPageState();
}

class _AddAppPageState extends State<AddAppPage> {
  final TextEditingController _textController = TextEditingController();

  void onHandleAddApp() {
    // TODO: добавить валидацию url-а
    // if (_textController.text.isEmpty) {
    //   // TODO: вывести сообщение об ошибке
    // } else {
    //   // TODO: отправить запрос на добавление приложения
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MyCupertinoSkeletonPage(
      pinnedAppBar: false,
      titleAppBar: S.of(context).add_app,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MyText(
          //   "url сервиса",
          //   fontSize: MyUIConst.textSizeH3,
          // ),
          // MyUIConst.vSizeBox,
          Padding(
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
                textColor: Theme.of(context).primaryColor,
              ),
              onChanged: (text) {
                setState(() {});
              },
              decoration: MyTextFieldStyle.I.myStyleTextField(
                context,
                hintText: "Вставьте url нужного сервиса",
                suffixIcon: _textController.text.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          child: InkWell(
                            onTap: onHandleAddApp,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          ),
          MyUIConst.vSizeBox,
          MyText(
            "Рекомендации",
            fontSize: MyUIConst.textSizeH3,
          )
        ],
      ),
    );
  }
}
