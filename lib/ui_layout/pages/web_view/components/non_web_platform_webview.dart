// import 'package:common_solutions_for_different_services/common_solutions_for_different_services.dart'as  comm;
// import 'package:ai_gigalegal/ui_layout/styles_gigalegal/styles_gigalegal.dart';import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// Widget webView(
//     {required String path, required WebViewController? webViewController}) {
//   return comm.AppPlatform.isMobile
//       ? WebViewWidget(controller: webViewController!)
//       : HyperLink(path: path);
// }
//
// //чтобы открывать окно по гиперссылке в новом окне
// class HyperLink extends StatelessWidget {
//   HyperLink({required this.path, Key? key}) : super(key: key);
//   String path;
//   late final Uri _url;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Center(
//         child: Text(
//           path,
//           style: const TextStyle(
//             decoration: TextDecoration.underline,
//             color: Colors.blue,
//           ),
//         ),
//       ),
//       onTap: () async {
//         // await _urlLoad();
//         _url =  Uri.parse(path);
//         launchUrl(_url);
//       },
//     );
//   }
// }
