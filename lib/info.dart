import 'package:flutter/material.dart';

class Info extends InheritedWidget {
  final int? score;

  const Info({
    Key? key,
    required this.score,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant Info oldWidget) {
    return score != oldWidget.score;
  }

  static Info? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Info>();
  }
}
