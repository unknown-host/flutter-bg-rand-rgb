import 'dart:math';
import 'package:flutter/painting.dart';

class RGBO {
  //opacity for RGBO color
  static const opacity = 1.0;

  // static method color for RGB.color()
  static Color color() {
    return Color.fromRGBO(_gen(), _gen(), _gen(), opacity);
  }

  static int _gen() {
    const maxValue = 256;
    return Random().nextInt(maxValue);
  }
}
