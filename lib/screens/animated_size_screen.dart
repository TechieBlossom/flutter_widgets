import 'package:flutter/material.dart';

class AnimatedSizeScreen extends StatelessWidget {
  const AnimatedSizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedSize')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: AnimatedSize(
            duration: Duration(seconds: 2),
            child: FlutterLogo(size: 300),
          ),
        ),
      ),
    );
  }
}
