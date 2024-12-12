import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';

// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

Widget webView({
  required String path,
}) {
  return _WebViewWidget(path: path);
}

//чтобы открывать окно по гиперссылке в новом окне
class _WebViewWidget extends StatefulWidget {
  _WebViewWidget({required this.path, super.key});

  String path;

  @override
  State<_WebViewWidget> createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<_WebViewWidget> {
  double _progressVal = 0.0;
  late final WebViewController _controller;

  late final WebViewCookieManager cookieManager = WebViewCookieManager();

  @override
  void initState() {
    if (!kIsWeb) {
      late final PlatformWebViewControllerCreationParams params;
      if (WebViewPlatform.instance is WebKitWebViewPlatform) {
        params = WebKitWebViewControllerCreationParams(
          allowsInlineMediaPlayback: true,
          mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
        );
      } else {
        params = const PlatformWebViewControllerCreationParams();
      }

      _controller = WebViewController.fromPlatformCreationParams(params);

      if (_controller.platform is AndroidWebViewController) {
        AndroidWebViewController.enableDebugging(true);
        (_controller.platform as AndroidWebViewController)
            .setMediaPlaybackRequiresUserGesture(false);
      }
      const enableDarkMode = """
  if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
    document.documentElement.style.setProperty('--color-scheme', 'dark');
  }
""";

      _controller.runJavaScript(enableDarkMode);

      _controller
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(MyColors.white)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              setState(() {
                _progressVal = progress.toDouble() / 100;
              });
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.path));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_progressVal <= 0.8)
          LinearProgressIndicator(
            minHeight: 4,
            value: _progressVal,
            color: MyColors.primary,
          ),
        Expanded(
          child: WebViewWidget(
            controller: _controller,
          ),
        ),
      ],
    );
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: WebViewWidget(
            controller: _controller,
          ),
        ),
        if (_progressVal <= 0.8)
          Align(
            alignment: Alignment.topCenter,
            child: LinearProgressIndicator(
              minHeight: 4,
              value: _progressVal,
              color: MyColors.primary,
            ),
          ),
      ],
    );
  }
}
