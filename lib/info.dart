import 'package:flutter/material.dart';

class Info extends InheritedWidget {
  final int score;

  const Info({
    required this.score,
    required Widget child,
    Key? key,
  }) : super(key: key, child: child);

  static Info? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Info>();
  }

  @override
  bool updateShouldNotify(Info old) => score != old.score;
}
