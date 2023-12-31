import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color blueColor = const Color(0xFF526799);
  static Color orangeColor = const Color(0xFFF37867);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500
  );

  static TextStyle headlineTextStyle = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold
  );

  static TextStyle headlineTextStyle2 = TextStyle(
    fontSize: 23,
    color: textColor,
    fontWeight: FontWeight.bold
  );

  static TextStyle headlineTextStyle3 = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500
  );

    static TextStyle headlineTextStyle4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500
  );
}