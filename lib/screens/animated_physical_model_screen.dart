import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedPhysicalModelScreen extends StatelessWidget {
  const AnimatedPhysicalModelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPadding')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 256.0,
            top: 64,
          ),
          child: AnimatedPhysicalModel(
            duration: Duration(seconds: 2),
            shape: BoxShape.circle,
            elevation: 64,
            shadowColor: Colors.blueAccent,
            color: Colors.yellowAccent,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Logo(),
            ),
          ),
        ),
      ),
    );
  }
}
