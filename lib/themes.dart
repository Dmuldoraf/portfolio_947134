import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colors
  static const Color primaryColor = Color(0xFF6200EE);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xFF000000);

  // Text Styles
  static TextStyle tallHeadingStyle = GoogleFonts.russoOne(
    fontSize: 72,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static TextStyle mediumHeadingStyle = GoogleFonts.russoOne(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: textColor,
  );

  static TextStyle smallHeadingStyle = GoogleFonts.russoOne(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: textColor,
  );

  static TextStyle bodyTextStyle = GoogleFonts.russoOne(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: textColor,
  );

  static TextStyle buttonTextStyle = GoogleFonts.russoOne(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
}