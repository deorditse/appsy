import 'package:flutter/material.dart';
import 'components/abstract_web_view.dart'
    if (dart.library.io) '../web_view/components/mobile_platform_webview.dart'
    if (dart.library.html) '../web_view/components/web_platform_webview.dart';

class WebViewPage extends StatelessWidget {
  final String url;
  final Function(String url)? onDeactivate;

  const WebViewPage({
    super.key,
    required this.url,
    required this.onDeactivate,
  });

  @override
  Widget build(BuildContext context) {
    return WebView(url: url, onDeactivate: onDeactivate);
  }
}
