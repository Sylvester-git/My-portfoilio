import 'package:flutter/material.dart';
import 'constantsExports.dart';
import '../../../packages.dart';

ThemeData apptheme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xFF0E3352),
    textTheme: TextTheme(
        headline4: GoogleFonts.varelaRound(
          fontSize: 40,
          fontWeight: FontWeight.w500,
          color: Appcolors.bcolor,
        ),
        headline6: GoogleFonts.quicksand(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Appcolors.bcolor,
        )),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.pacifico(
        fontSize: 30,
        fontWeight: FontWeight.w300,
        color: Appcolors.bcolor,
      ),
    ),
  );
}
