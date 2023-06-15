// 🐦 Flutter imports:
import 'package:flutter/material.dart';

import 'color/color.dart';

class DukeTypography {
  static const double _xxs = 8.0;
  static const double _xs = 10.0;
  static const double _sm = 12.0;
  static const double _md = 14.0;
  static const double _lg = 16.0;
  static const double _xl = 20.0;

  ///Weight: 700, size: 20.0
  TextStyle? headline;

  ///Weight: 700, size: 16.0
  TextStyle? smallHeadline;

  ///Weight: 700, size: 14.0
  TextStyle? button;

  ///Weight: 600, size: 16.0
  TextStyle? lgTitle;

  ///Weight: 600, size: 14.0
  TextStyle? mdTitle;

  ///Weight: 600, size: 12.0
  TextStyle? smTitle;

  ///Weight: 500, size: 14.0
  TextStyle? mdSubTitle;

  ///Weight: 500, size: 12.0
  TextStyle? smSubTitle;

  ///Weight: 400, size: 14.0, color: neutralTextLight
  TextStyle? mdText;

  ///Weight: 400, size: 12.0, color: neutralText
  TextStyle? smText;

  ///Weight: 400, size: 12.0, color: neutralTextLight
  TextStyle? smTextLight;

  ///Weight: 400, size: 10.0
  TextStyle? xsText;

  ///Weight: 400, size: 8.0
  TextStyle? xxsText;

  static TextStyle? _parent;

  final BuildContext context;

  DukeTypography(this.context) {
    final brightness = Theme.of(context).brightness;
    final color = DukeColor(brightness);

    _parent = TextStyle(
      fontFamily: 'IranSansXFaNum',
      color: color.neutralText,
    );

    xxsText = _parent!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: _xxs,
      color: color.neutralTextLight,
    );
    xsText = _parent!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: _xs,
      color: color.neutralTextLight,
    );
    smText = _parent!.copyWith(fontWeight: FontWeight.w500, fontSize: _sm);
    smTextLight = _parent!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: _sm,
      color: color.neutralTextLight,
    );
    mdText = _parent!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: _md,
      color: color.neutralTextLight,
    );

    smSubTitle = _parent!.copyWith(fontWeight: FontWeight.w500, fontSize: _sm);
    mdSubTitle = _parent!.copyWith(fontWeight: FontWeight.w500, fontSize: _md);

    smTitle = _parent!.copyWith(fontWeight: FontWeight.w600, fontSize: _sm);
    mdTitle = _parent!.copyWith(fontWeight: FontWeight.w600, fontSize: _md);
    lgTitle = _parent!.copyWith(fontWeight: FontWeight.w600, fontSize: _lg);

    button = _parent!.copyWith(
        fontWeight: FontWeight.w700, fontSize: _lg, color: color.background);
    smallHeadline =
        _parent!.copyWith(fontWeight: FontWeight.w700, fontSize: _lg);
    smallHeadline =
        _parent!.copyWith(fontWeight: FontWeight.w700, fontSize: _lg);
    headline = _parent!.copyWith(fontWeight: FontWeight.w700, fontSize: _xl);
  }
}
