import 'package:flutter/material.dart';

class WebView extends StatelessWidget {
  const WebView({
    super.key,
    required this.url,
    required this.onDeactivate,
  });

  final String url;
  final Function(String url)? onDeactivate;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
