import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:appsy/ui_layout/shared/ui/loading/my_circular_progress_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

//чтобы открывать окно по гиперссылке в новом окне
class WebView extends StatefulWidget {
  const WebView({
    super.key,
    required this.url,
    required this.onDeactivate,
  });

  final String url;
  final Function(String url)? onDeactivate;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  double _progressVal = 0.0;
  late final WebViewController _controller;

  // late final WebViewCookieManager cookieManager = WebViewCookieManager();
  bool isLoading = true;

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
      _controller
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              setState(() {
                _progressVal = progress.toDouble() / 100;
              });
            },
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.url));
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
          child: isLoading
              ? Center(child: MyCircularProgressIndicator())
              : WebViewWidget(controller: _controller),
        ),
      ],
    );
  }

  @override
  Future<void> deactivate() async {
    if (widget.onDeactivate != null) {
      final url = await _controller.currentUrl();
      if ((url ?? "").isNotEmpty) {
        widget.onDeactivate!(url!);
      }
    }
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.clearCache();
    super.dispose();
  }
}
