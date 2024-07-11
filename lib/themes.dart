import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: Colors.deepPurple,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.russoOne(
        fontSize: 72,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.russoOne(
        fontSize: 36,
        color: Colors.blue,
        letterSpacing: .5,
      ),
      headlineSmall: GoogleFonts.russoOne(
        fontSize: 24,
        color: Colors.blue,
        letterSpacing: .5,
      ),
      bodyMedium: GoogleFonts.russoOne(
        fontSize: 18,
        letterSpacing: .5,
      ),
      bodySmall: GoogleFonts.russoOne(
        fontSize: 14,
        letterSpacing: .5,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 48, 23, 90),
      primary: const Color.fromARGB(255, 48, 23, 90),
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.russoOne(
        fontSize: 72,
        color: Colors.orange,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.russoOne(
        fontSize: 36,
        color: Colors.orange,
        letterSpacing: .5,
      ),
      headlineSmall: GoogleFonts.russoOne(
        fontSize: 24,
        color: Colors.orange,
        letterSpacing: .5,
      ),
      bodyMedium: GoogleFonts.russoOne(
        fontSize: 18,
        letterSpacing: .5,
      ),
      bodySmall: GoogleFonts.russoOne(
        fontSize: 14,
        letterSpacing: .5,
      ),
    ),
  );
}