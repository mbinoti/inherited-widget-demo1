import 'dart:math';
import 'package:flutter/material.dart';
import 'package:demo4/info.dart';

class InheritedWidgetExample extends StatelessWidget {
  final Random _random = Random();
  final ValueNotifier<int> _score = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: _score,
        builder: (context, value, _) {
          return Info(
            score: value,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.abc, size: 36, color: Colors.red),
                      const SizedBox(width: 20),
                      Builder(
                        builder: (BuildContext context) {
                          return Text(Info.of(context)!.score.toString());
                        },
                      ),
                    ],
                  ),
                  OutlinedButton(
                    onPressed: () => _score.value = _random.nextInt(100),
                    child: const Text('Change'),
                  )
                ],
              ),
            ),
          );
        });
  }
}
