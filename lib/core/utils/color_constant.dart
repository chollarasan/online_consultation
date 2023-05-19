import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray10 = fromHex('#3ff7f7f7');

  static Color blueA402 = fromHex('#247cff');

  static Color blueA40 = fromHex('#267bf7');

  static Color gray501 = fromHex('#f4faff');

  static Color gray400 = fromHex('#bdbcbf');

  static Color blue9 = fromHex('#1a4b8a');

  static Color gray5 = fromHex('#f3f9ff');

  static Color blueGray3 = fromHex('#1696aab0');

  static Color blueGray1 = fromHex('#cdcdcd');

  static Color blueGray4 = fromHex('#8c9093');

  static Color blue40 = fromHex('#2e80fd');

  static Color gray900 = fromHex('#030f26');

  static Color indigo1 = fromHex('#84c0cad6');

  static Color black90 = fromHex('#3f000000');

  static Color gray50 = fromHex('#f6f8fa');

  static Color green = fromHex('#65d25c');

  static Color white7 = fromHex('#ccffffff');

  static Color indigo = fromHex('#c0cad6');

  static Color black = fromHex('#000000');

  static Color blue = fromHex('#599dff');

  static Color gray40 = fromHex('#33bdbcbf');

  static Color blueGray = fromHex('#888888');

  static Color white = fromHex('#ffffff');

  static Color blueA = fromHex('#4c247cff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
