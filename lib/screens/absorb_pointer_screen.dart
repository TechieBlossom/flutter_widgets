import 'package:flutter/material.dart';
import 'package:flutterwidgets/widgets/logo.dart';

class AbsorbPointerScreen extends StatefulWidget {
  const AbsorbPointerScreen({super.key});

  final absorbing = false;

  @override
  State<AbsorbPointerScreen> createState() => _AbsorbPointerScreenState();
}

class _AbsorbPointerScreenState extends State<AbsorbPointerScreen> {
  @override
  Widget build(BuildContext context) {
    bool absorbing = true;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                AbsorbPointer(
                  absorbing: absorbing,
                  child: const Logo(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              absorbing ? 'ABSORBING' : 'NOT ABSORBING',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
