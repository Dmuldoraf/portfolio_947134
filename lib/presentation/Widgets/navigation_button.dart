import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationButton extends StatelessWidget {
  final String name;
  final String route;
  const NavigationButton({super.key, required this.name, required this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, route),
        child: Text(name,
            style:
                GoogleFonts.russoOne(textStyle: const TextStyle(fontSize: 20))),
      ),
    );
  }
}
