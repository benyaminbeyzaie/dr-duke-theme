// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class DukeShadow {
  ///Use this for cards
  final cardShadow = const BoxShadow(
    color: Colors.black12,
    blurRadius: 15.0,
    offset: Offset(0, 4),
  );

  ///Use this for add shadow to bottom bars
  final bottomBar = const BoxShadow(
    blurRadius: 2,
    spreadRadius: 1,
    color: Colors.black12,
  );
}
