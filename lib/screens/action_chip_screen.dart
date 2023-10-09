import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class ActionChipScreen extends StatelessWidget {
  const ActionChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ActionChip(
          label: const Text('TECHIE BLOSSOM'),
          labelStyle: Theme.of(context).textTheme.titleMedium,
          padding: const EdgeInsets.all(0),
          avatar: const Logo(),
          tooltip: 'I am a Chip!',
          side: const BorderSide(color: Colors.lightBlue, width: 4),
          shape: const StadiumBorder(),
          shadowColor: Colors.greenAccent,
          disabledColor: Colors.greenAccent,
          surfaceTintColor: Colors.yellowAccent,
          backgroundColor: Colors.white30,
          color: MaterialStateProperty.resolveWith<Color>(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.greenAccent;
              } else if (states.contains(MaterialState.pressed)) {
                return Colors.deepPurple;
              } else {
                return Colors.white30;
              }
            },
          ),
          elevation: 8,
          pressElevation: 16,
        ),
      ),
    );
  }
}
