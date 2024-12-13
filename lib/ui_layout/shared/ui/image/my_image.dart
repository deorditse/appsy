import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../loading/my_circular_progress_indicator.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
    required this.imageUrl,
    this.color,
    this.height,
    this.width,
    this.fit,
    this.semanticsLabel,
    this.placeholder,
  });

  final String imageUrl;
  final double? height, width;
  final Color? color;
  final BoxFit? fit;
  final String? semanticsLabel;
  final Widget? placeholder;

  static const Icon _iconError = Icon(Icons.error);

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) return placeholder ?? _iconError;

    if (imageUrl.startsWith('http')) {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        color: color,
        fit: fit ?? BoxFit.contain,
        placeholder: (context, url) =>
            placeholder ?? const MyCircularProgressIndicator(),
        errorWidget: (context, url, error) => _iconError,
      );
    }
    if (imageUrl.contains('.svg')) {
      return SvgPicture.asset(
        imageUrl,
        fit: fit ?? BoxFit.contain,
        height: height,
        width: width,
        color: color,
        semanticsLabel: semanticsLabel,
      );
    }
    return Image.asset(
      imageUrl,
      fit: fit ?? BoxFit.contain,
      height: height,
      width: width,
      color: color,
      semanticLabel: semanticsLabel,
    );
  }
}
