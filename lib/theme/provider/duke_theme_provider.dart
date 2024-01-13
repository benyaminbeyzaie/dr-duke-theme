import 'package:dr_duke_theme/theme/provider/duke_theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
import 'numbers_lan_enum.dart';

class DukeThemeProvider extends StatefulWidget {
  const DukeThemeProvider({Key? key, required this.child, required this.numLan})
      : super(key: key);
  final Widget child;
  final NumbersLanEnum numLan;

  @override
  State<DukeThemeProvider> createState() => _DukeThemeProviderState();
}

class _DukeThemeProviderState extends State<DukeThemeProvider> {
  late DukeTheme dukeTheme;

  @override
  Widget build(BuildContext context) {
    switch (widget.numLan) {
      case NumbersLanEnum.fa:
        dukeTheme = DukeTheme.faNum(context);
        break;
      case NumbersLanEnum.en:
        dukeTheme = DukeTheme.enNum(context);
    }
    return DukeThemeInheritedWidget(
      dukeTheme: dukeTheme,
      child: widget.child,
    );
  }

  void setDukeTheme(DukeTheme newTheme) {
    setState(() {
      dukeTheme = newTheme;
    });
  }
}
