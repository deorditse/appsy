import 'package:universal_html/html.dart' as html;
import 'dart:math';
import 'dart:ui_web' as ui;
import 'package:flutter/material.dart';


class WebView extends StatelessWidget {
  const WebView({
    super.key,
    required this.url,
    required this.onDeactivate,
  });

  final String url;
  final Function(String url)? onDeactivate;

  @override
  Widget build(BuildContext context) {
    final id = Random().nextInt.toString();
    print(url);
    //в анализаторе можно отключить кросовку
    ui.platformViewRegistry.registerViewFactory(
      id,
      (int viewId) {
        print(url);
        var iframe = html.IFrameElement()
          ..style.width = '100%'
          ..style.height = '100%'
          ..style.border = 'none'
          ..src = url;
        return iframe;
      },
    );

    return HtmlElementView(viewType: id);
  }
}
