import 'package:flutter/material.dart';

const _colors = [
  Colors.redAccent,
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.cyanAccent,
  Colors.lightGreenAccent,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.cyan,
  Colors.lightGreen,
];

class AnimatedGridScreen extends StatefulWidget {
  const AnimatedGridScreen({super.key});

  @override
  State<AnimatedGridScreen> createState() => _AnimatedGridScreenState();
}

class _AnimatedGridScreenState extends State<AnimatedGridScreen> {
  final GlobalKey<AnimatedGridState> _gridKey = GlobalKey<AnimatedGridState>();

  AnimatedGridState? get _animatedGrid => _gridKey.currentState;
  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedGrid')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: AnimatedGrid(
                key: _gridKey,
                initialItemCount: count,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemBuilder: (
                  BuildContext context,
                  int index,
                  Animation<double> animation,
                ) =>
                    Box(
                  index: index,
                  animation: animation,
                  color: _colors[index],
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Add'),
                  onPressed: () {
                    setState(() {
                      _animatedGrid?.insertItem(
                        count,
                        duration: const Duration(seconds: 2),
                      );
                    });
                  },
                ),
                ElevatedButton(
                  child: const Text('Delete'),
                  onPressed: () {
                    setState(() {
                      count--;
                      _animatedGrid?.removeItem(
                        count,
                        (_, animation) => const SizedBox(),
                        duration: const Duration(seconds: 2),
                      );
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({
    super.key,
    required this.index,
    required this.animation,
    required this.color,
  });

  final int index;
  final Color color;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      child: ColoredBox(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(child: Text(index.toString())),
        ),
      ),
    );
  }
}
