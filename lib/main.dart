import 'package:flutter/material.dart';
import 'presentation/landingPage.dart';

import 'uebungen/uebung1.dart';


void main() {
  // Uebungen mit Ausgabe in Console
  alleAufgabenUebung1();

  // Flutter App
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EgB Uebung',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Landing Page'), // Liegt in lib/presentation/landingPage.dart
    );
  }
}

