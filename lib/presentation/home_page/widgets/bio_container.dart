import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BioContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi!\nIch bin Philipp Lind.",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 50,
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(milliseconds: 900),
              animatedTexts: [
                TypewriterAnimatedText('Entwickler',
                    textStyle: Theme.of(context).textTheme.headlineMedium, speed: const Duration(milliseconds: 100)),
                TypewriterAnimatedText('Student',
                    textStyle: Theme.of(context).textTheme.headlineMedium,speed: const Duration(milliseconds: 100)),
                TypewriterAnimatedText('Kraftfahrer',
                    textStyle: Theme.of(context).textTheme.headlineMedium,speed: const Duration(milliseconds: 100)),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          // TODO - Change background, indent and line breaks
            Stack(
              alignment: Alignment.center,
              children: [
/*                 Image.asset(
                  'assets/text_background1.png',
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.8,
                ), */
                Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.2, right:MediaQuery.of(context).size.width * 0.2),
                  child: Text(
                    'Ich bin Student an der technischen Hochschule Mittelhessen und arbeite in Teilzeit bei den Stadtwerken Gießen als Softwareentwickler. Mein Interesse gilt neuen, innovativen und nachhaltigen Projekten. Vor und zu Beginn meines Studiums arbeitete ich als Fahrer eines Diamant 2000 und LKW-Fahrer.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          
          const SizedBox(height: 16.0),
          MediaQuery.of(context).size.width < 1000
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email:',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Philipp.Lind@mnd.thm.de',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          'Student Number:',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '947134',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          'Subject Area:',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Wirtschaftsinformatik',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email:',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Philipp.Lind@mnd.thm.de',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    const SizedBox(width: 24.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Student Number:',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          '947134',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    SizedBox(width: 24.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subject Area:',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Wirtschaftsinformatik',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
          const SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Download functionality not implemented yet.'),
                ),
              );
              // TODO - Add download functionality
            },
            style: ElevatedButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'Download CV',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
