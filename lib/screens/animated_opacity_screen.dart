import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedOpacityScreen extends StatelessWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedOpacity')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 256.0,
            top: 64,
          ),
          child: AnimatedOpacity(
            duration: Duration(seconds: 2),
            opacity: 1,
            child: Logo(),
          ),
        ),
      ),
    );
  }
}
