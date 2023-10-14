import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedFractionallySizedBoxScreen extends StatelessWidget {
  const AnimatedFractionallySizedBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedFractionallySizedBox')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 256.0,
            top: 64,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              AnimatedFractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.3,
                duration: const Duration(seconds: 2),
                alignment: Alignment.centerLeft,
                child: text,
              ),
              const AnimatedFractionallySizedBox(
                widthFactor: 0.4,
                heightFactor: 0.3,
                duration: Duration(seconds: 2),
                alignment: Alignment.centerRight,
                child: Logo(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget get text => const Center(
        child: Text(
          'TECHIE BLOSSOM',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      );
}
