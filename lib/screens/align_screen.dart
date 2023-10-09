import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Align Widget')),
      body: const Padding(
        padding: EdgeInsets.only(
          left: 64.0,
          right: 64.0,
          bottom: 256.0,
          top: 64,
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          heightFactor: 2,
          widthFactor: 1.3,
          child: Logo(),
        ),
      ),
    );
  }
}
