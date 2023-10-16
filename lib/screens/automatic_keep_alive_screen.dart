import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AutomaticKeepAliveScreen extends StatelessWidget {
  const AutomaticKeepAliveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AutomaticKeepAlive')),
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
