import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo_small.png',
      width: 150,
      height: 150,
      color: color,
    );
  }
}
