import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AboutScreenState extends StatelessWidget {
  const AboutScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text('Über mich',
            style: GoogleFonts.russoOne(
                textStyle: const TextStyle(
                    fontSize: 32, color: Colors.blue, letterSpacing: .5))),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/flowers.png"), fit: BoxFit.cover),
          ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Placeholder(
                fallbackHeight: 200,
                fallbackWidth: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
