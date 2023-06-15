// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'dark_color.dart';
import 'light_color.dart';

abstract class DukeColor {
  factory DukeColor(Brightness brightness) {
    if (brightness == Brightness.light) {
      return lightColor;
    }
    return darkColor;
  }

  DukeColor.create();

  static final LightColor lightColor = LightColor();
  static final DarkColor darkColor = DarkColor();

  //background
  Color get background;
  Color get secondaryBackground;
  Color get tertiaryBackground;

  Color get secondary;
  Color get borderColor;
  Color get lightBorderColor;

  //primary
  Color get primary;
  Color get primaryLight;

  //success
  Color get success;
  Color get successLight;

  //warning
  Color get warning;
  Color get warningLight;

  //error
  Color get error;
  Color get errorLight;

  //neutralText
  Color get neutralText;
  Color get neutralTextLight;

  Color get timeLineBackground;

  Color get divider;

  Color get button;

  Color get shadow;

  Color get onSuccess;
  Color get onWarring;
  Color get onError;
  Color get onPrimary;
  Color get onSecondary;
}
