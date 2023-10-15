import 'package:flutter/material.dart';

class AnimatedModalBarrierScreen extends StatefulWidget {
  const AnimatedModalBarrierScreen({super.key});

  @override
  State<AnimatedModalBarrierScreen> createState() =>
      _AnimatedModalBarrierScreenState();
}

class _AnimatedModalBarrierScreenState extends State<AnimatedModalBarrierScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late AnimatedModalBarrier _animatedModalBarrier;
  late Animation<Color> _colorAnimation;
  bool isBlocking = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _colorAnimation = Tween<Color>(
      begin: Colors.grey.withOpacity(0.5),
      end: Colors.blueAccent.withOpacity(0.7),
    ).animate(_controller);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedIcon'),
      ),
      body: SizedBox(
        height: 400,
        width: 400,
        child: Stack(
          fit: StackFit.expand,
          children: [
            IconButton(
              icon: const Icon(Icons.settings_rounded),
              onPressed: () {
                setState(() => isBlocking = true);
                _controller.reset();
                _controller.forward();
                Future.delayed(const Duration(seconds: 5), () {
                  setState(() {
                    isBlocking = false;
                  });
                });
              },
            ),
            if (isBlocking) _animatedModalBarrier
          ],
        ),
      ),
    );
  }
}
