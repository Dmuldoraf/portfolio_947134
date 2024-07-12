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
        title: Text('About',
            style: GoogleFonts.russoOne(
                textStyle: const TextStyle(
                    fontSize: 32, color: Colors.blue, letterSpacing: .5))),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage:
                    AssetImage('assets/plip_hope1.png'),
              ),
              const SizedBox(height: 20),
              Text(
                'Philipp Lind',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Text(
                'Software Engineer',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nunc vitae nunc.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
