import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleScreen extends StatelessWidget {
  const AnimatedDefaultTextStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedDefaultTextStyle')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 256.0,
            top: 64,
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(seconds: 2),
            style: const TextStyle(
              fontSize: 24,
              color: Colors.greenAccent,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
              fontStyle: FontStyle.normal,
              backgroundColor: Colors.redAccent,
            ),
            child: text,
          ),
        ),
      ),
    );
  }

  Widget get text => const SizedBox(
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            'TECHIE\nBLOSSOM',
            textAlign: TextAlign.center,
          ),
        ),
      );
}
