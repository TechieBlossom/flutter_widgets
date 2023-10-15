import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedScaleScreen extends StatelessWidget {
  const AnimatedScaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedScale')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: AnimatedScale(
            duration: Duration(seconds: 2),
            scale: 1.5,
            curve: Curves.bounceOut,
            child: Logo(),
          ),
        ),
      ),
    );
  }
}
