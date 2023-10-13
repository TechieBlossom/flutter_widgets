import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.color, this.width = 150, this.height = 150});

  final Color? color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo_small.png',
      width: width,
      height: height,
      color: color,
    );
  }
}
