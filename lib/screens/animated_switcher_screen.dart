import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatelessWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedSwitcher')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedSwitcher(
            duration: const Duration(seconds: 2),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: const Text(
              'BLOSSOM',
              key: Key('2 '),
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
      ),
    );
  }
}
