import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedAlignScreen extends StatelessWidget {
  const AnimatedAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedAlign')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 256.0,
            top: 64,
          ),
          child: AnimatedAlign(
            alignment: Alignment.topLeft,
            duration: Duration(seconds: 2),
            heightFactor: 3,
            widthFactor: 2,
            curve: Curves.elasticInOut,
            child: Logo(),
          ),
        ),
      ),
    );
  }
}
