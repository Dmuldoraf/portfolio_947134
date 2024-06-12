import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/about_page/abaout_screen.dart';
import 'package:portfolio_947134/presentation/curriculum_page/curriculum_screen.dart';
import 'package:portfolio_947134/presentation/home_page/home_screen.dart';
import 'package:portfolio_947134/presentation/projects_page/projects_screen.dart';
import 'package:portfolio_947134/presentation/skill_page/empty_screen.dart';
import 'package:google_fonts/google_fonts.dart';
/* 
https://portfolio-ak-ba4da.web.app/ 
*/

/* import 'uebungen/uebung1.dart';
import 'uebungen/uebung2.dart'; */

void main() {
  // Uebungen mit Ausgabe in Console
  // alleAufgabenUebung2();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EgB Uebung',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        textTheme: TextTheme(
          //TODO - outsource theme in theme.dart 
          headlineLarge:  GoogleFonts.russoOne(
            fontSize: MediaQuery.of(context).size.width > 600 ? 72 : 36,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: GoogleFonts.russoOne(
            fontSize: MediaQuery.of(context).size.width > 600 ? 36 : 22,
            color: Colors.blue,
            letterSpacing: .5,
          ),
          headlineSmall: GoogleFonts.russoOne(
            fontSize: MediaQuery.of(context).size.width > 600 ? 24 : 16,
            letterSpacing: .5,
          ),
          bodyMedium: GoogleFonts.russoOne(
            fontSize: MediaQuery.of(context).size.width > 600 ? 18 : 12,
            letterSpacing: .5,
          ),
          bodySmall: GoogleFonts.russoOne(
            fontSize: MediaQuery.of(context).size.width > 600 ? 14 : 10,
            letterSpacing: .5,
          ),
        ),
      ),
      initialRoute: '/',
      // TODO - implement responsive design to prevent overflow when resizing the window
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreenState(),
        '/curriculum': (context) => const CurriculumScreen(),
        '/skills': (context) => const SkillScreen(),
        '/project_one': (context) => const ProjectScreen(),
      },
    );
  }
}
