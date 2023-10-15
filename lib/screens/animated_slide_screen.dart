import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedSlideScreen extends StatelessWidget {
  const AnimatedSlideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedSlide')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: AnimatedSlide(
            duration: Duration(seconds: 2),
            offset: Offset(-0.2, 0.0),
            child: Logo(),
          ),
        ),
      ),
    );
  }
}
