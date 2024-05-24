import 'package:flutter/material.dart';

class AboutScreenState extends StatelessWidget {
  const AboutScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Über mich'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/abaut'),
                child: const Text('Über mich'))
          ],
        ),
      ),
    );
  }
}

  