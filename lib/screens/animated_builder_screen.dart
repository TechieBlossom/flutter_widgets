import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({super.key});

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedBuilder')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
            bottom: 256.0,
            top: 64,
          ),
          child: Column(
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Logo(
                    width: 100 * _controller.value,
                    height: 100 * _controller.value,
                  );
                },
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('Forward'),
                    onPressed: () => _controller.forward(),
                  ),
                  ElevatedButton(
                    child: const Text('Backward'),
                    onPressed: () => _controller.reverse(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
