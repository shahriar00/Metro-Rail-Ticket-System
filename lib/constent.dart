import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPaddingMargin = EdgeInsets.all(20);

TextTheme textTheme = TextTheme(
  headlineLarge: GoogleFonts.roboto(
      fontSize: 48, fontWeight: FontWeight.w700, color: Colors.white),
  headlineMedium: GoogleFonts.poppins(
      fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headlineSmall: GoogleFonts.poppins(fontSize: 46, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.poppins(
      fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  titleMedium: GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
  titleSmall: GoogleFonts.poppins(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  bodyLarge: GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
  bodyMedium: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodySmall: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  labelLarge: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelSmall: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  // bodySmall: GoogleFonts.poppins(
  //     fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  // overline: GoogleFonts.poppins(
  //     fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

ButtonStyle btnStyle(Color textColor, Color bgColor) {
  return ButtonStyle(
    foregroundColor: MaterialStateProperty.all(textColor),
    backgroundColor: MaterialStateProperty.all(bgColor),
  );
}
