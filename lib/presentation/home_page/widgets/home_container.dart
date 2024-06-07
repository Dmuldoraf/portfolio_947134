import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/Widgets/navigation_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green[200]!,
                  Colors.purple[200]!,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: AnimatedTextKit(
                      repeatForever: true,
                      pause: const Duration(milliseconds: 300),
                      animatedTexts: [
                        FadeAnimatedText('My name is Giovanni Giorgio',
                            textStyle: GoogleFonts.russoOne(
                                textStyle: const TextStyle(
                                    fontSize: 32,
                                    color: Colors.blue,
                                    letterSpacing: .5))),
                        FadeAnimatedText('but egerybody calls me',
                            textStyle: GoogleFonts.russoOne(
                                textStyle: const TextStyle(
                                    fontSize: 32,
                                    color: Colors.blue,
                                    letterSpacing: .5))),
                        ScaleAnimatedText('Giorgio!',
                            textStyle: GoogleFonts.russoOne(
                                textStyle: const TextStyle(
                                    fontSize: 90,
                                    color: Colors.blue,
                                    letterSpacing: .5))),
                      ],
                    ),
                  ),
                ),
                const NavigationButton(
                    name: 'Curriculum', route: '/curriculum'),
                const NavigationButton(name: 'Skills', route: '/skills'),
                const NavigationButton(name: 'Projekte', route: '/projects'),
                const NavigationButton(name: 'Über mich', route: '/about'),
              ],
            ),
          );
  }
}