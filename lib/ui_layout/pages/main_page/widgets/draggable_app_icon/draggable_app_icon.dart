// import 'package:models/index.dart';
// import 'package:flutter/material.dart';
//
// class DraggableAppIcon extends StatelessWidget {
//   final AppIconModel appIcon;
//   final DragTargetAcceptWithDetails<AppIconModel>? onDragAccept;
//   final Function(int newIndex) onDragEnd;
//
//   const DraggableAppIcon({
//     super.key,
//     required this.appIcon,
//     required this.onDragAccept,
//     required this.onDragEnd,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DragTarget<AppIconModel>(
//       onWillAcceptWithDetails: (data) => true,
//       onAcceptWithDetails: onDragAccept,
//       builder: (context, candidateData, rejectedData) {
//         return LongPressDraggable<AppIconModel>(
//           data: appIcon,
//           feedback: Material(
//             color: Colors.transparent,
//             child: IconContainer(icon: appIcon, scale: 1.2),
//           ),
//           childWhenDragging: Opacity(
//             opacity: 0.5,
//             child: IconContainer(icon: appIcon),
//           ),
//           onDragEnd: (details) {
//             if (details.wasAccepted) return;
//             // Calculate the dropped index based on the position
//             final RenderBox box = context.findRenderObject() as RenderBox;
//             final Offset localPosition = box.globalToLocal(details.offset);
//             final int newIndex = (localPosition.dy ~/ box.size.height) * 4 +
//                 (localPosition.dx ~/ (box.size.width / 4)).toInt();
//             onDragEnd(newIndex.clamp(0, 11));
//           },
//           child: AnimatedContainer(
//             duration: const Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//             child: IconContainer(icon: appIcon),
//           ),
//         );
//       },
//     );
//   }
// }
//
// class IconContainer extends StatelessWidget {
//   final AppIconModel icon;
//   final double scale;
//
//   const IconContainer({super.key, required this.icon, this.scale = 1.0});
//
//   @override
//   Widget build(BuildContext context) {
//     return Transform.scale(
//       scale: scale,
//       child: Container(
//         width: 60,
//         height: 60,
//         decoration: BoxDecoration(
//           color: Theme.of(context).primaryColor,
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child:
//             // CardApp(
//             //   appIcon,
//             //   isMobile: isMobile,
//             //   isDesktop: isDesktop,
//             //   onTap: () => onTapApp(context, app),
//             // ),
//
//             Center(
//           child: Text(
//             icon.name,
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ),
//     );
//   }
// }
