import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedRotationScreen extends StatelessWidget {
  const AnimatedRotationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedRotation')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: AnimatedRotation(
            duration: Duration(seconds: 2),
            turns: 0.5,
            child: Logo(),
          ),
        ),
      ),
    );
  }
}
