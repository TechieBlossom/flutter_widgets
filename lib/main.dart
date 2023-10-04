import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Widgets App')),
        body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (context, index) {
            final text = widgets.keys.elementAt(index);
            final page = widgets.values.elementAt(index);
            return ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              ),
              title: Text('${index + 1}. $text'),
            );
          },
        ),
      ),
    );
  }
}
