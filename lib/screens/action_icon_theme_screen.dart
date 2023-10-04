import 'package:flutter/material.dart';

class ActionIconThemeScreen extends StatelessWidget {
  const ActionIconThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ActionIconTheme(
      data: ActionIconThemeData(
        drawerButtonIconBuilder: (_) => const Icon(Icons.menu),
        endDrawerButtonIconBuilder: (_) => const Icon(Icons.exit_to_app),
        backButtonIconBuilder: (_) =>
            const Icon(Icons.arrow_back_ios_new_rounded, size: 60),
        closeButtonIconBuilder: (_) =>
            const Icon(Icons.close_rounded, size: 60),
      ),
      child: Scaffold(
        drawer: const Drawer(),
        endDrawer: const Drawer(),
        appBar: AppBar(
          title: const Text('Flutter Widgets App'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
