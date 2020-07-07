import 'package:flutter/material.dart';

const double fontSize = 14.0;
const double scaleFactorNormal = 1;
const double scaleFactorMd = 1.25;
const double scaleFactorLg = 1.875;
const double scaleFactorXl = 3;

Widget appTextNormal({@required String text, Color color, TextAlign align}) =>
    Text(text,
        style: TextStyle(color: color ?? Colors.black87, fontSize: fontSize),
        textScaleFactor: scaleFactorNormal,
        textAlign: align ?? TextAlign.start);
Widget appTextMd({@required String text, Color color, TextAlign align}) =>
    Text(text,
        style: TextStyle(color: color ?? Colors.black87, fontSize: fontSize),
        textScaleFactor: scaleFactorMd,
        textAlign: align ?? TextAlign.start);
Widget appTextLg({@required String text, Color color, TextAlign align}) =>
    Text(text,
        style: TextStyle(color: color ?? Colors.black87, fontSize: fontSize),
        textScaleFactor: scaleFactorLg,
        textAlign: align ?? TextAlign.start);
Widget appTextXl({@required String text, Color color, TextAlign align}) =>
    Text(text,
        style: TextStyle(color: color ?? Colors.black87, fontSize: fontSize),
        textScaleFactor: scaleFactorXl,
        textAlign: align ?? TextAlign.start);
