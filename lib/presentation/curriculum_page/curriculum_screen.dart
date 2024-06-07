import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Unbenannt.png"), //moving_creep1.gif
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Startseite',
                  style: GoogleFonts.russoOne(
                    textStyle: const TextStyle(
                      fontSize: 32,
                      color: Color.fromARGB(255, 75, 28, 83),
                      letterSpacing: .5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
