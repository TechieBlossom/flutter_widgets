import 'package:flutter/material.dart';

class AboutDialogScreen extends StatelessWidget {
  const AboutDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => showAboutDialog(
            context: context,
            applicationName: 'Flutter Widgets App',
            applicationIcon: Image.asset(
              'assets/logo_small.png',
              width: 50,
              height: 50,
            ),
            applicationLegalese: _legalese,
            applicationVersion: '1.0.0',
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('TNC'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Privacy Policy'),
                  ),
                ],
              ),
            ],
          ),
          child: const Text('Show About Dialog'),
        ),
      ),
    );
  }
}

const _legalese =
    "Help you understand concepts of Flutter and Android in easy language.";
