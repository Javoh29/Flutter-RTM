import 'package:flutter/material.dart';

final Color primaryColor = Color(0xff00A85A);
final Color greyColor = Color(0xff6E6F74);

kTextStyle(
    {Color color = Colors.white,
      double size = 14,
      FontWeight fontWeight = FontWeight.normal,
      double letter = 0}) {
  return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
      letterSpacing: letter);
}