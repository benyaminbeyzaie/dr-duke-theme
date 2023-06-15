// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'data/color/color.dart';
import 'data/radius.dart';
import 'data/shadow.dart';
import 'data/size.dart';
import 'data/spacing.dart';
import 'data/typography.dart';

class DukeTheme {
  final BuildContext context;
  final DukeColor color;
  final DukeTypography typography;
  final DukeSpacing spacing;

  DukeTheme(this.context)
      : color = DukeColor(Theme.of(context).brightness),
        typography = DukeTypography(context),
        spacing = DukeSpacing(context);

  final DukeRadius radius = DukeRadius();
  final DukeShadow shadow = DukeShadow();
  final DukeSize size = DukeSize();
}

extension CustomTheme on BuildContext {
  DukeTheme get dukeTheme => DukeTheme(this);
}
