import 'package:flutter/material.dart';

class Info extends InheritedNotifier<ValueNotifier<int>> {
  Info({
    required ValueNotifier<int> notifier,
    required Widget child,
  }) : super(notifier: notifier, child: child);

  static Info? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Info>();
  }
}
