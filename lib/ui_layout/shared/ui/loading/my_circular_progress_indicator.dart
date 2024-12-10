import 'package:appsy/ui_layout/app/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCircularProgressIndicator extends StatelessWidget {
  const MyCircularProgressIndicator({
    super.key,
    this.color,
    this.size,
    this.isMaterial = false,
  });

  final Color? color;
  final double? size;
  final bool isMaterial;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size ?? 30,
        height: size ?? 30,
        child: !isMaterial
            ? CupertinoActivityIndicator(
                radius: 20.0,
                color: color ?? MyColors.green,
              )
            : CircularProgressIndicator(
                color: color ?? MyColors.green,
                strokeWidth: 1.3,
              ),
      ),
    );
  }
}
