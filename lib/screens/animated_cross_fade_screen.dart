import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedCrossFadeScreen extends StatelessWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedCrossFade')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 256.0,
            top: 64,
          ),
          child: AnimatedCrossFade(
            duration: const Duration(seconds: 2),
            reverseDuration: const Duration(seconds: 2),
            firstChild: const Logo(),
            secondChild: secondChild,
            crossFadeState: CrossFadeState.showFirst,
            alignment: Alignment.center,
            firstCurve: Curves.linear,
            secondCurve: Curves.bounceInOut,
          ),
        ),
      ),
    );
  }

  Widget get secondChild => const SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            'TECHIE\nBLOSSOM',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
      );
}
