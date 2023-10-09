import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AlignTransitionScreen extends StatefulWidget {
  const AlignTransitionScreen({super.key});

  @override
  State<AlignTransitionScreen> createState() => _AlignTransitionScreenState();
}

class _AlignTransitionScreenState extends State<AlignTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<AlignmentGeometry> _alignAnimation;
  late Alignment _beginAlignment;
  late Alignment _endAlignment;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _beginAlignment = Alignment.topLeft;
    _endAlignment = Alignment.bottomRight;
    _alignAnimation = AlignmentTween(
      begin: _beginAlignment,
      end: _endAlignment,
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align Transition')),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 64.0,
          right: 64.0,
          bottom: 256.0,
          top: 64,
        ),
        child: AlignTransition(
          alignment: _alignAnimation,
          heightFactor: 2,
          widthFactor: 2,
          child: InkWell(
            onTap: () => setState(
              () => _animationController.forward(),
            ),
            child: const Logo(),
          ),
        ),
      ),
    );
  }
}
