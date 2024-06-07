import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;

  const MyAppBar({
    Key? key,
    required this.title,
    this.actions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Startseite',
            style: GoogleFonts.russoOne(
                textStyle: const TextStyle(fontSize: 32, letterSpacing: .5))),
      );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}