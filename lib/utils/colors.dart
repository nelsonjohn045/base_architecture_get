import 'package:flutter/material.dart';

mixin AppColors {
  static const MaterialColor kSwatch = Colors.orange;
  static const Color kDark = Color.fromRGBO(48, 48, 48, 1.0);
  static const Color kLight = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color kBlackOpaque = Color.fromRGBO(0, 0, 0, 0.4);
  static const Color kGreen = Color.fromRGBO(118, 168, 53, 1.0);
  static const Color kYellow = Color.fromRGBO(236, 181, 39, 1.0);
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
  static int _getColorFromHex(String hexColor) {
    String _hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (_hexColor.length == 6) {
      _hexColor = "FF$_hexColor";
    }
    return int.parse(_hexColor, radix: 16);
  }
}
