import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mtn_app/utils/colors.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: yellowColor,
    fontFamily: GoogleFonts.lato.toString(),
    focusColor: yellowColor,
    textTheme: TextTheme(
      displayLarge: TextStyle(
          color: blackColor, fontWeight: FontWeight.bold, fontSize: 18),
      displayMedium: TextStyle(
          color: blackColor, fontWeight: FontWeight.bold, fontSize: 16),
      displaySmall: TextStyle(
          color: greyColor, fontWeight: FontWeight.normal, fontSize: 16),
      bodyLarge: TextStyle(
          color: blackColor, fontWeight: FontWeight.bold, fontSize: 16),
      bodyMedium: TextStyle(
          color: greyColor, fontWeight: FontWeight.normal, fontSize: 14),
      bodySmall: TextStyle(
          color: greyColor, fontWeight: FontWeight.normal, fontSize: 14),
    ),
  );
}

TextStyle quickServiceStyle() {
  return TextStyle(
      color: blackColor, fontWeight: FontWeight.w500, fontSize: 14);
}
