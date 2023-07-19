import 'dart:math';

import 'package:demo4/info.dart';
import 'package:flutter/material.dart';

class InheritedWidgetExample extends StatefulWidget {
  const InheritedWidgetExample({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetExample> createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
  final Random _random = Random();
  int _score = 10;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Info(
            score: _score,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.abc),
                Builder(
                  builder: (BuildContext context) {
                    return Text(Info.of(context)!.score.toString());
                  },
                ),
                // Text(Info.of(context)!.score.toString()),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                _score = _random.nextInt(100);
              });
            },
            child: const Text('Change'),
          )
        ],
      ),
    );
  }
}
