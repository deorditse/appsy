import 'package:universal_html/html.dart' as html;
import 'dart:math';
import 'dart:ui_web' as ui;
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//чтобы открывать в этом же окне webview браузера
Widget webView({required String path}) {
  return WebPlatformWebView(path: path);
}

class WebPlatformWebView extends StatelessWidget {
  final String path;

  const WebPlatformWebView({
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final id = Random().nextInt.toString();
    print(path);
    //в анализаторе можно отключить кросовку
    ui.platformViewRegistry.registerViewFactory(
      id,
      (int viewId) {
        print(path);
        var iframe = html.IFrameElement()
          ..style.width = '100%'
          ..style.height = '100%'
          ..style.border = 'none'
          ..src = path;
        return iframe;
      },
    );

    return HtmlElementView(viewType: id);
  }
}
