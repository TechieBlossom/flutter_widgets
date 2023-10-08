import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

const colors = [
  Colors.redAccent,
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.cyanAccent,
  Colors.lightGreenAccent,
  null,
];

class AbsorbPointerScreen extends StatefulWidget {
  const AbsorbPointerScreen({super.key});

  final absorbing = false;

  @override
  State<AbsorbPointerScreen> createState() => _AbsorbPointerScreenState();
}

class _AbsorbPointerScreenState extends State<AbsorbPointerScreen> {
  late Color? color;

  @override
  void initState() {
    super.initState();
    color = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AbsorbPointer(
          absorbing: true,
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: () => setState(() => color = randomColor),
            child: Logo(color: color),
          ),
        ),
      ),
    );
  }

  Color? get randomColor => colors[Random().nextInt(7)];
}
