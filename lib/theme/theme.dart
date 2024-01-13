// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'data/color/color.dart';
import 'data/radius.dart';
import 'data/shadow.dart';
import 'data/size.dart';
import 'data/spacing.dart';
import 'data/typography.dart';
import 'provider/duke_theme_inherited_widget.dart';
import 'provider/numbers_lan_enum.dart';

class DukeTheme {
  final BuildContext context;
  final DukeColor color;
  final DukeTypography typography;
  final DukeSpacing spacing;
  final NumbersLanEnum numLan;

  DukeTheme({required this.context, required this.numLan})
      : color = DukeColor(Theme.of(context).brightness),
        typography = DukeTypography(context, numLan),
        spacing = DukeSpacing(context);

  final DukeRadius radius = DukeRadius();
  final DukeShadow shadow = DukeShadow();
  final DukeSize size = DukeSize();

  factory DukeTheme.faNum(BuildContext context) {
    return DukeTheme(context: context, numLan: NumbersLanEnum.fa);
  }

  factory DukeTheme.enNum(BuildContext context) {
    return DukeTheme(context: context, numLan: NumbersLanEnum.en);
  }
}

extension CustomTheme on BuildContext {
  DukeTheme get dukeTheme => DukeThemeInheritedWidget.of(this).dukeTheme;
}
