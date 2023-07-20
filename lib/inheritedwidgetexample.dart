import 'dart:math';

import 'package:demo4/info.dart';
import 'package:flutter/material.dart';

class InheritedWidgetExample extends StatelessWidget {
  final Random _random = Random();
  final ValueNotifier<int> _score = ValueNotifier<int>(10);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Info(
            notifier: _score,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.abc_rounded, size: 36, color: Colors.red),
                ValueListenableBuilder(
                  valueListenable: _score,
                  builder: (context, value, child) {
                    return Text(Info.of(context)!.notifier!.value.toString());
                  },
                ),

                // Text(Info.of(context)!.score.toString()),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              _score.value = _random.nextInt(100);
            },
            child: const Text('Change'),
          )
        ],
      ),
    );
  }
}
