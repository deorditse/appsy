import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:models/index.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({
    super.key,
    required this.error,
  });

  final ErrorModel error;

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  void initState() {
    if (!MyConstApp.isProdMode) {
      Logger().log(
        Level.error,
        '[error_page] error: code ${widget.error.code} message ${widget.error.description} detail ${widget.error.guid}',
      );
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.error.code == 5001 ||
          widget.error.code == 401 ||
          widget.error.code == 0) {
        //TODO: logout
        // BlocProvider.of<AuthBloc>(context).add(const AuthEvent.logOut());
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text("ErrorPage ${widget.error}");
  }
//
// @override
// Widget build(BuildContext context) {
//   return MyMaterialSkeletonPage(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "${widget.error.code}",
//           style: myTextStyle(
//             fontSize: 120,
//             textColor: ColorStylesGigalegal.black,
//           ),
//         ),
//         const SizedBox(height: 24),
//         Text(
//           "Error: ${widget.error.description}\n"
//           "Guid: ${widget.error.guid}",
//           style: Theme.of(context)
//               .textTheme
//               .displaySmall!
//               .copyWith(color: Colors.black),
//         ),
//         const SizedBox(height: 48),
//         FittedBox(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               MyButton(
//                 styleButton: StyleButton.white,
//                 onPressed: () async {
//                   await Clipboard.setData(ClipboardData(
//                       text: 'Code: ${widget.error.code.toString()}\n\n'
//                           'Message: ${widget.error.description}\n\n'
//                           'Detail: ${widget.error.guid}\n\n'));
//
//                   // FlutterClipboard.copy(
//                   //   'Code: ${code.toString()}\n\n'
//                   //   'Message: $message\n\n'
//                   //   'Detail: $detail\n\n'
//                   //   'StackTrace: $stackTrace',
//                   // );
//
//                   myBottomSnackBar(
//                     context,
//                     content: "Текст ошибки скопирован",
//                   );
//                 },
//                 child: Text(
//                   "Скопировать ошибку",
//                   style: myTextStyle(),
//                 ),
//               ),
//               const SizedBox(width: 10),
//               MyButton(
//                 onPressed: () {
//                   ///обработка ошибок
//                   if (widget.error.code == 200) {
//                     GoRouter.of(context).pop();
//                   } else {
//                     BlocProvider.of<AuthBloc>(context)
//                         .add(const AuthEvent.logOut());
//                     // Future.delayed(
//                     //   Duration.zero,
//                     //   () {
//                     //     AutoRouter.of(context)
//                     //         .replaceAll([const RootRoute()]);
//                     //   },
//                     // );
//                   }
//                 },
//                 child: Text(
//                   'Вернуться на главную',
//                   style: Theme.of(context)
//                       .textTheme
//                       .headlineMedium!
//                       .copyWith(color: ColorStylesGigalegal.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
}
