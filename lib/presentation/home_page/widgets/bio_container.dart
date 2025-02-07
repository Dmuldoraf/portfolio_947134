import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BioContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 1000,
        minWidth: 400,
      ),
      child: Container(
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
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      speed: const Duration(milliseconds: 100)),
                  TypewriterAnimatedText('Student',
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      speed: const Duration(milliseconds: 100)),
                  TypewriterAnimatedText('Maschinenführer',
                      textStyle: Theme.of(context).textTheme.headlineMedium,
                      speed: const Duration(milliseconds: 100)),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            MediaQuery.of(context).size.width < 1000
                // ############################################## MOBILE ##############################################
                ? Column(
                    children: [
                      Image.asset(
                        'assets/plip_hope1.png',
                        height: 160,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.6,
                          maxWidth: MediaQuery.of(context).size.width * 0.9,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Ich bin Student der Wirtschaftsinformatik an der Technischen Hochschule Mittelhessen und arbeite als Werkstudent bei den Stadtwerken Gießen als Softwareentwickler. Mein Interesse gilt neuen, innovativen und nachhaltigen Projekten. Vor meiner Stelle bei den SWG arbeitete ich bei der Conbee GmbH und m2m Germany GmbH als Entwickler im IoT-Bereich. Außerdem arbeitete ich im Lohnunternehmen Lind als Fahrer eines Diamant 2000 und als LKW-Fahrer.',
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'E-Mail:',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'Philipp.Lind@mnd.thm.de',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                'Matrikelnummer:',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                '947134',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              const SizedBox(height: 16.0),
                              Text(
                                'Studiengang',
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
                      /* const SizedBox(height: 24.0),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Download functionality not implemented yet.'),
                            ),
                          );
                          // TODO - Add download functionality
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: const BorderSide(
                              color: Colors.black, // Border color
                              width: 2.0, // Border width
                            ),
                          ),
                        ),
                        child: Text(
                          'Download CV',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ), */
                    ],
                  )
                // ############################################## DESKTOP ##############################################
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight:
                                  MediaQuery.of(context).size.height * 0.4,
                              maxWidth: MediaQuery.of(context).size.width * 0.4,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/grey_7_noise.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Ich bin Student der Wirtschaftsinformatik an der Technischen Hochschule Mittelhessen und arbeite als Werkstudent bei den Stadtwerken Gießen als Softwareentwickler. Mein Interesse gilt neuen, innovativen und nachhaltigen Projekten. Vor meiner Stelle bei den SWG arbeitete ich bei der Conbee GmbH und m2m Germany GmbH als Entwickler im IoT-Bereich. Außerdem arbeitete ich im Lohnunternehmen Lind als Fahrer eines Diamant 2000 und als LKW-Fahrer.',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Image.asset(
                              'assets/plip_hope1.png',
                              height: 300,
                              width: 300,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'E-Mail:',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                'Philipp.Lind@mnd.thm.de',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          const SizedBox(width: 30.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Matrikelnummer:',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                '947134',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          const SizedBox(width: 30.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Studiengang',
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
                      /*                     const SizedBox(height: 24.0),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Download functionality not implemented yet.'),
                            ),
                          );
                          // TODO - Add download functionality and Button always clips
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: const BorderSide(
                              color: Colors.black, // Border color
                              width: 3.0, // Border width
                            ),
                          ),
                        ),
                        child: Text(
                          'Download CV',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ), */
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class HorizontalStretchedOctagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double width = size.width;
    double height = size.height;
    double cut = height * 0.2; // Adjust the value to get the desired shape

    path.moveTo(cut, 0);
    path.lineTo(width - cut, 0);
    path.lineTo(width, cut);
    path.lineTo(width, height - cut);
    path.lineTo(width - cut, height);
    path.lineTo(cut, height);
    path.lineTo(0, height - cut);
    path.lineTo(0, cut);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
