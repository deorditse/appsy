// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:models_ai_giga/models_ai_giga.dart';
// import 'package:auto_route/annotations.dart';
// import 'package:common_solutions_for_different_services/common_solutions_for_different_services.dart'as  comm;
// import 'package:ai_gigalegal/ui_layout/styles_gigalegal/styles_gigalegal.dart';import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import '../web_view/components/mock_web_view.dart'
//     if (dart.library.io) '../web_view/components/non_web_platform_webview.dart'
//     if (dart.library.html) '../web_view/components/web_platform_webview.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:ai_gigalegal/ui_layout/styles_gigalegal/styles_gigalegal.dart';
//
// // Import for Android features.
// import 'package:webview_flutter_android/webview_flutter_android.dart';
//
// // Import for iOS features.
// import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
//
// @RoutePage()
// class WebViewPage extends StatefulWidget {
//   static const String routeName = '/:path';
//
//   final String path;
//
//   const WebViewPage({super.key, @PathParam() required this.path});
//
//   @override
//   State<WebViewPage> createState() => _ViewInstructionState();
// }
//
// class _ViewInstructionState extends State<WebViewPage> {
//   String path = '';
//   WebViewController? _controller;
//   double _progressVal = 0.0;
//
//   late final WebViewCookieManager cookieManager = WebViewCookieManager();
//
//   @override
//   void initState() {
//     // path =
//     //     '${Uri.parse(AppConstAiGiga.sessionStorage[AppConstAiGiga.BASE_URL]!).origin}/${widget.path}';
//
//     path = 'https://demo.l3m.site/auth/realms/my_dev_test/protocol/openid-connect/auth?client_id=account&response_type=code&scope=openid%20profile&redirect_uri=https://gigalegal.ru/ai_giga/';
//     print('path from web_view.dart $path');
//
//     if (!kIsWeb) {
//       // #docregion platform_features
//       late final PlatformWebViewControllerCreationParams params;
//       if (WebViewPlatform.instance is WebKitWebViewPlatform) {
//         params = WebKitWebViewControllerCreationParams(
//           allowsInlineMediaPlayback: true,
//           mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
//         );
//       } else {
//         params = const PlatformWebViewControllerCreationParams();
//       }
//
//       final WebViewController controller =
//           WebViewController.fromPlatformCreationParams(params);
//
//       controller
//         ..setJavaScriptMode(JavaScriptMode.unrestricted)
//         ..setBackgroundColor(const Color(0x00000000))
//         ..setNavigationDelegate(
//           NavigationDelegate(
//             onProgress: (int progress) {
//               setState(() {
//                 _progressVal = progress.toDouble() / 100;
//               });
//             },
//           ),
//         )
//         ..loadRequest(Uri.parse(path));
//
//       // ..loadRequest(Uri.parse('https://flutter.dev'));
//
//       // #docregion platform_features
//       if (controller.platform is AndroidWebViewController) {
//         AndroidWebViewController.enableDebugging(true);
//         (controller.platform as AndroidWebViewController)
//             .setMediaPlaybackRequiresUserGesture(false);
//       }
//
//       _controller = controller;
//     }
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     FlutterNativeSplash.remove();
//
//     return Column(
//       children: [
//         if (_progressVal != 1)
//           LinearProgressIndicator(
//             minHeight: 4,
//             value: _progressVal,
//             color: ColorStylesGigalegal.green,
//           ),
//         Expanded(
//           child: webView(
//             path: path,
//             webViewController: _controller,
//           ),
//         ),
//       ],
//     );
//   }
// }
