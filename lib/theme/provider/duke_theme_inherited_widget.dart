import 'package:flutter/material.dart';

import '../theme.dart';

class DukeThemeInheritedWidget extends InheritedWidget {
  const DukeThemeInheritedWidget(
      {super.key, required this.dukeTheme, required super.child});

  final DukeTheme dukeTheme;

  static DukeThemeInheritedWidget? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DukeThemeInheritedWidget>();
  }

  static DukeThemeInheritedWidget of(BuildContext context) {
    final DukeThemeInheritedWidget? result = maybeOf(context);
    assert(result != null, 'No DukeThemeInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant DukeThemeInheritedWidget oldWidget) {
    return true;
  }
}
