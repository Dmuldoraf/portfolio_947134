import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Startseite'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                child: const Text('Über mich'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/curriculum'),
                child: const Text('Curriculum'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'My name is Giovanni Giorgio',
                      textStyle: const TextStyle(
                          fontFamily: 'Archivo',
                          fontSize: 32,
                          fontWeight: FontWeight.w400),
                    ),
                    FadeAnimatedText(
                      'but egerybody calls me',
                      textStyle: const TextStyle(
                        fontFamily: 'Stencil',
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ScaleAnimatedText(
                      'Giorgio',
                      textStyle: const TextStyle(
                        fontFamily: 'Stencil Std, fantasy',
                        fontSize: 72,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
