import 'package:flutter/material.dart';
import 'components/mock_web_view.dart'
    if (dart.library.io) '../web_view/components/non_web_platform_webview.dart'
    if (dart.library.html) '../web_view/components/web_platform_webview.dart';

class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    // FlutterNativeSplash.remove();

    return webView(path: url);
  }
}
