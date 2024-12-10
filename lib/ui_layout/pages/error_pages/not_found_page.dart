import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    super.key,
    this.customText,
    this.customDetails,
    this.numberError,
  });

  final String? customText;
  final String? customDetails;
  final String? numberError;

  @override
  Widget build(BuildContext context) {
    return Text(
      "NotFoundPage customText: $customText customDetails: $customDetails numberError: $numberError",
    );
  }
//
// @override
// Widget build(BuildContext context) {
//   return MyMaterialSkeletonPage(
//     padding: EdgeInsets.zero,
//     child: Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets_ai_giga/images/errors/404.jpg'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Stack(
//         children: [
//           MyContainer(
//             width: double.maxFinite,
//             backgroundColor: Colors.transparent,
//             alignment: Alignment.center,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 FittedBox(
//                   child: Text(
//                     numberError ?? '404',
//                     style: myTextStyle(
//                         fontSize: 197,
//                         newFontWeight: FontWeight.w600,
//                         textColor: ColorStylesGigalegal.white,
//                         lineHeight: 0),
//                   ),
//                 ),
//                 // MyUIConstAiGiga.mySizedHeightBetweenContainer,
//                 FittedBox(
//                   child: Text(
//                     customText ?? 'Страница не найдена',
//                     textAlign: TextAlign.center,
//                     style: myTextStyle(
//                       fontSize: 32,
//                       newFontWeight: FontWeight.w600,
//                       textColor: ColorStylesGigalegal.white,
//                     ),
//                   ),
//                 ),
//                 MyUIConst.vSizeBox,
//                 MyUIConst.vSizeBox,
//
//                 MyButton(
//                   onPressed: () {
//                     SkillsCatalogScreen.goRoute(context, scaffoldKey: null);
//                   },
//                   child: Text(
//                     'Вернуться на главную',
//                     style: myTextStyle(
//                       textColor: ColorStylesGigalegal.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Align(
//             alignment: Alignment.topLeft,
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: 20.0,
//                 horizontal: 40,
//               ),
//               child: LogoAiGiga(logoStyle: LogoStyle.dark),
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }
}
