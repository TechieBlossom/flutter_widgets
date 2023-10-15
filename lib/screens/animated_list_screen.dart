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

class AnimatedListScreen extends StatefulWidget {
  const AnimatedListScreen({super.key});

  @override
  State<AnimatedListScreen> createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<AnimatedListScreen> {
  final GlobalKey<AnimatedListState> _gridKey = GlobalKey<AnimatedListState>();

  AnimatedListState? get _animatedList => _gridKey.currentState;
  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedList')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: AnimatedList(
                key: _gridKey,
                initialItemCount: count,
                itemBuilder: (
                  BuildContext context,
                  int index,
                  Animation<double> animation,
                ) =>
                    _Box(
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
                      _animatedList?.insertItem(
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
                      _animatedList?.removeItem(
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

class _Box extends StatelessWidget {
  const _Box({
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
