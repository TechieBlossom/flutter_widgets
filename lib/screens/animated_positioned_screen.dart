import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedPositionedScreen extends StatelessWidget {
  const AnimatedPositionedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedAnimatedPhysicalModel')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 200,
            height: 200,
            child: Stack(
              children: [
                AnimatedPositioned.fromRect(
                  duration: const Duration(seconds: 2),
                  rect: Rect.fromCenter(
                    center: const Offset(50, 50),
                    width: 100,
                    height: 100,
                  ),
                  child: const Logo(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
