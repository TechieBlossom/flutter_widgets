import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  static const titleContentPadding = EdgeInsets.only(
    top: 16,
    bottom: 8,
    left: 24,
    right: 24,
  );

  static const iconPadding = EdgeInsets.only(top: 16);

  static final buttons = [
    TextButton(onPressed: () {}, child: const Text('Confirm')),
    TextButton(onPressed: () {}, child: const Text('Retry')),
    // TextButton(onPressed: () {}, child: const Text('Logout')),
    // TextButton(onPressed: () {}, child: const Text('Login')),
    // TextButton(onPressed: () {}, child: const Text('Cancel')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Techie Blossom Alert'),
                  content: const Text(content),
                  titlePadding: titleContentPadding,
                  contentPadding: titleContentPadding,
                  titleTextStyle: Theme.of(context).textTheme.titleMedium,
                  contentTextStyle: Theme.of(context).textTheme.bodySmall,
                  icon: const Icon(Icons.info, size: 48),
                  iconColor: Colors.blueGrey,
                  iconPadding: iconPadding,
                  insetPadding: const EdgeInsets.all(64),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 16,
                  shadowColor: Colors.white,
                  surfaceTintColor: Colors.redAccent,
                  backgroundColor: Colors.white54,
                  actions: buttons,
                  actionsAlignment: MainAxisAlignment.spaceBetween,
                  actionsPadding: const EdgeInsets.all(32),
                  actionsOverflowAlignment: OverflowBarAlignment.center,
                  actionsOverflowDirection: VerticalDirection.up,
                  actionsOverflowButtonSpacing: 12,
                  alignment: Alignment.bottomLeft,
                );
              },
            );
          },
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}

const content =
    "Help you understand concepts of Flutter and Android in easy language.";
