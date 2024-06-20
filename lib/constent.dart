import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPaddingMargin = EdgeInsets.all(20);

TextTheme _textTheme = TextTheme(
  displayLarge: GoogleFonts.poppins(
    fontSize: 34, // font-size: 34px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 51px (51 / 34 = ~1.5)
    letterSpacing: 0.68, // letter-spacing: 0.02em (0.02 * 34)
  ),
  displayMedium: GoogleFonts.poppins(
    fontSize: 28, // font-size: 28px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 42px (42 / 28 = 1.5)
    letterSpacing: 0.56, // letter-spacing: 0.02em (0.02 * 28)
  ),
  displaySmall: GoogleFonts.poppins(
    fontSize: 24, // font-size: 24px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 36px (36 / 24 = 1.5)
    letterSpacing: 0.48, // letter-spacing: 0.02em (0.02 * 24)
  ),
  headlineLarge: GoogleFonts.poppins(
    fontSize: 18, // font-size: 18px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 27px (27 / 18 = 1.5)
    letterSpacing: 0.36, // letter-spacing: 0.02em (0.02 * 18)
  ),
  headlineMedium: GoogleFonts.poppins(
    fontSize: 16, // font-size: 16px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 24px (24 / 16 = 1.5)
    letterSpacing: 0.32, // letter-spacing: 0.02em (0.02 * 16)
  ),
  headlineSmall: GoogleFonts.poppins(
    fontSize: 14, // font-size: 14px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 21px (21 / 14 = 1.5)
    letterSpacing: 0.28, // letter-spacing: 0.02em (0.02 * 14)
  ),
  titleLarge: GoogleFonts.poppins(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  bodySmall: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelSmall: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

// ButtonStyle btnStyle(Color textColor, Color bgColor) {
//   return ButtonStyle(
//     foregroundColor: MaterialStateProperty.all(textColor),
//     backgroundColor: MaterialStateProperty.all(bgColor),
//   );
// }
