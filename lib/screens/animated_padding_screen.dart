import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedPaddingScreen extends StatelessWidget {
  const AnimatedPaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPadding')),
      body: Center(
        child: AnimatedPadding(
          duration: const Duration(seconds: 2),
          padding: const EdgeInsets.only(
            left: 40.0,
            right: 32.0,
            bottom: 64.0,
            top: 128,
          ),
          child: const Logo(),
        ),
      ),
    );
  }
}
