import 'package:flutter/material.dart';

class BackButtonScreen extends StatelessWidget {
  const BackButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BackButton')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(64),
          child: BackButton(
            color: Colors.blueAccent,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.greenAccent,
              ),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              iconColor: MaterialStateProperty.all<Color>(Colors.blue),
              alignment: Alignment.center,
              iconSize: MaterialStateProperty.all<double>(64),
              fixedSize: MaterialStateProperty.all<Size>(
                const Size.fromRadius(64),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
