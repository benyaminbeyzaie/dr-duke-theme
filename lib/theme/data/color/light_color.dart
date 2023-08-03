// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'color.dart';

class LightColor extends DukeColor {
  LightColor() : super.create();

  @override
  Color get background => const Color(0xffFFFFFF);

  @override
  Color get secondaryBackground => const Color(0xff7B61FF);

  @override
  Color get tertiaryBackground => const Color(0xff84929F);

  @override
  Color get borderColor => const Color(0xffE9EAEE);

  @override
  Color get lightBorderColor => const Color(0xFFF0F1F5);

  @override
  Color get error => const Color(0xffEC1717);

  @override
  Color get errorLight => const Color(0xffFFF1F3);

  @override
  Color get neutralText => const Color(0xff15181B);

  @override
  Color get neutralTextLight => const Color(0xff6B6E72);

  @override
  Color get onError => Colors.white;

  @override
  Color get onPrimary => Colors.white;

  @override
  Color get onSecondary => Colors.white;

  @override
  Color get onSuccess => Colors.white;

  @override
  Color get onWarring => Colors.white;

  @override
  Color get primary => const Color(0xff0180F6);

  @override
  Color get primaryLight => const Color(0xffF0F8FF);

  @override
  Color get secondary => Colors.white;

  @override
  Color get success => const Color(0xff27AE60);

  @override
  Color get successLight => const Color(0xffDFF3E7);

  @override
  Color get warning => const Color(0xffFFB800);

  @override
  Color get warningLight => const Color(0xFFFFF8E1);

  @override
  Color get divider => const Color(0xffEBECF2);

  @override
  Color get button => const Color(0xffffffff);

  @override
  Color get shadow => const Color(0x8BFEFEFE);

  @override
  Color get timeLineBackground => const Color(0xffF4F6F8);
}
