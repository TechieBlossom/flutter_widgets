import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AspectRatioScreen extends StatelessWidget {
  const AspectRatioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AspectRatio')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(64),
          child: AspectRatio(
            aspectRatio: 0.3,
            child: Logo(),
          ),
        ),
      ),
    );
  }
}
