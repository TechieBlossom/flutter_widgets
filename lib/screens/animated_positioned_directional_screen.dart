import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedPositionedDirectionalScreen extends StatelessWidget {
  const AnimatedPositionedDirectionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPositionedDirectional')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: 200,
            height: 200,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Stack(
                children: [
                  AnimatedPositionedDirectional(
                    duration: Duration(seconds: 2),
                    start: 0,
                    top: 0,
                    child: Logo(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
