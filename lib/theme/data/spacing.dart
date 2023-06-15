// 🐦 Flutter imports:
import 'package:flutter/widgets.dart';

class DukeSpacing {
  ///6.0
  final double xxs = 6.0;

  ///12.0
  final double xs = 12.0;

  ///16.0
  final double sm = 16.0;

  ///24.0
  final double md = 24.0;

  ///36.0
  final double lg = 36.0;

  ///48.0
  final double xl = 48.0;

  ///72.0
  final double xxl = 72.0;

  final BuildContext context;

  ///Padding Widget in the card from edge of card
  final EdgeInsetsGeometry cardContentHorizontalPadding;

  ///Padding whole page from edge of device screen
  ///It's a flexible padding based on screen size
  final EdgeInsetsGeometry screenEdgePadding;

  ///Padding between icons in appBar
  ///Example: icons in action of appBar
  final EdgeInsetsGeometry appBarIconsPadding;

  final EdgeInsetsGeometry zero;

  DukeSpacing(this.context)
      : screenEdgePadding =
            Responsive(context).edgePadding(md: 24.0, lg: 36.0, xxl: 72.0),
        appBarIconsPadding =
            Responsive(context).appBarIconPadding(xxs: 6.0, xs: 12.0, sm: 16.0),
        cardContentHorizontalPadding = Responsive(context)
            .cardContentHorizontalPadding(xxs: 12.0, xs: 16.0, sm: 24.0),
        zero = EdgeInsets.zero;
}

class Responsive {
  final BuildContext context;

  Responsive(this.context);

  double get screenWidth => MediaQuery.of(context).size.width;
  double get screenHeight => MediaQuery.of(context).size.height;
  bool get isMobile => screenWidth < 600;
  bool get isTablet => screenWidth >= 600 && screenWidth < 1200;
  bool get isDesktop => screenWidth >= 1200;

  EdgeInsetsGeometry edgePadding({
    required double md,
    required double lg,
    required double xxl,
  }) {
    if (isMobile) {
      return EdgeInsets.symmetric(horizontal: md);
    }
    if (isTablet) {
      return EdgeInsets.symmetric(horizontal: lg);
    }
    return EdgeInsets.symmetric(horizontal: xxl);
  }

  EdgeInsetsGeometry appBarIconPadding(
      {required double xxs, required double xs, required double sm}) {
    if (isMobile) {
      return EdgeInsets.symmetric(horizontal: xxs);
    }
    if (isTablet) {
      return EdgeInsets.symmetric(horizontal: xs);
    }
    return EdgeInsets.symmetric(horizontal: sm);
  }

  EdgeInsetsGeometry cardContentHorizontalPadding(
      {required double xxs, required double xs, required double sm}) {
    if (isMobile) {
      return EdgeInsets.symmetric(horizontal: xxs);
    }
    if (isTablet) {
      return EdgeInsets.symmetric(horizontal: xs);
    }
    return EdgeInsets.symmetric(horizontal: sm);
  }
}
