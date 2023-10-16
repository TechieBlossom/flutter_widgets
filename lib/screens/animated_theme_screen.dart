import 'package:flutter/material.dart';

class AnimatedThemeScreen extends StatelessWidget {
  const AnimatedThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      duration: const Duration(seconds: 3),
      data: ThemeData(
        scaffoldBackgroundColor: Colors.blueAccent,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellowAccent,
          elevation: 4,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text('AnimatedTheme')),
      ),
    );
  }
}
