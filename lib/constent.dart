import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPaddingMargin = EdgeInsets.all(20);

TextTheme textTheme = TextTheme(
  //Headline 1-6
  displayLarge: GoogleFonts.poppins(
    fontSize: 34, // font-size: 34px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 51px (51 / 34 = ~1.5)
    letterSpacing: 0.68, // letter-spacing: 0.02em (0.02 * 34)
    color: Colors.black,
  ),
  displayMedium: GoogleFonts.poppins(
    fontSize: 28, // font-size: 28px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 42px (42 / 28 = 1.5)
    letterSpacing: 0.56, // letter-spacing: 0.02em (0.02 * 28)
    color: Colors.black,
  ),
  displaySmall: GoogleFonts.poppins(
    fontSize: 24, // font-size: 24px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 36px (36 / 24 = 1.5)
    letterSpacing: 0.48, // letter-spacing: 0.02em (0.02 * 24)
    color: Colors.black,
  ),
  headlineLarge: GoogleFonts.poppins(
    fontSize: 18, // font-size: 18px
    fontWeight: FontWeight.w700, // font-weight: 600
    height: 1.5, // line-height: 27px (27 / 18 = 1.5)
    letterSpacing: 0.36, // letter-spacing: 0.02em (0.02 * 18)
    color: Colors.black,
  ),
  headlineMedium: GoogleFonts.poppins(
    fontSize: 16, // font-size: 16px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 24px (24 / 16 = 1.5)
    letterSpacing: 0.32, // letter-spacing: 0.02em (0.02 * 16)
    color: Colors.black,
  ),
  headlineSmall: GoogleFonts.poppins(
    fontSize: 14, // font-size: 14px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 21px (21 / 14 = 1.5)
    letterSpacing: 0.28, // letter-spacing: 0.02em (0.02 * 14)
    color: Colors.black,
  ),
  //Paragraph 1-3
  titleLarge: GoogleFonts.poppins(
    fontSize: 18, // font-size: 18px
    fontWeight: FontWeight.w400, // font-weight: 400
    height: 1.5, // line-height: 27px (27 / 18 = 1.5)
    letterSpacing: 0.36,
    color:
        Color.fromRGBO(121, 136, 133, 1), // letter-spacing: 0.02em (0.02 * 18)
  ),
  titleMedium: GoogleFonts.poppins(
    fontSize: 16, // font-size: 16px
    fontWeight: FontWeight.w400, // font-weight: 400
    height: 1.5, // line-height: 24px (24 / 16 = 1.5)
    letterSpacing: 0.5, // letter-spacing: 0.02em (0.02 * 16)
    color: Color.fromRGBO(121, 136, 133, 1),
  ),
  titleSmall: GoogleFonts.poppins(
    fontSize: 12, // font-size: 12px
    fontWeight: FontWeight.w400, // font-weight: 400
    height: 1.5, // line-height: 18px (18 / 12 = 1.5)
    letterSpacing: 0.24,
    color: Color.fromRGBO(121, 136, 133, 1),
  ),
  bodyLarge: GoogleFonts.poppins(
    fontSize: 10, // font-size: 10px
    fontWeight: FontWeight.w600, // font-weight: 600
    height: 1.5, // line-height: 15px (15 / 10 = 1.5)
    color: Color.fromRGBO(0, 0, 0, 1),
  ),
  bodyMedium: GoogleFonts.poppins(
    fontSize: 12, // font-size: 12px
    fontWeight: FontWeight.w400, // font-weight: 400
    height: 1.5, // line-height: 18px (18 / 12 = 1.5)
    color: Colors.black, // color: black
  ),
  bodySmall: GoogleFonts.poppins(
    fontSize: 10, // font-size: 10px
    fontWeight: FontWeight.w400, // font-weight: 400
    height: 1.5, // line-height: 15px (15 / 10 = 1.5)
    color: Colors.black, // color: black
  ),
  labelSmall: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

// ButtonStyle btnStyle(Color textColor, Color bgColor) {
//   return ButtonStyle(
//     foregroundColor: MaterialStateProperty.all(textColor),
//     backgroundColor: MaterialStateProperty.all(bgColor),
//   );
// }
