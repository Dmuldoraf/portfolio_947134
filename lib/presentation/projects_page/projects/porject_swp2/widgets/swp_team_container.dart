import 'package:flutter/material.dart';

class SWP2TeamContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 1000,
        minWidth: MediaQuery.of(context).size.width,
      ),
      child: Stack(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 1000,
              minWidth: MediaQuery.of(context).size.width,
            ),
            // mint_5_noise.png
            // flowers.png
            child: Image.asset('assets/rose_5_noise.png',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 1000,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 5,
                    ),
                  ),
                  //color:Colors.green[100]!,
                ),
                child: Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  child: MediaQuery.of(context).size.width < 1000
                      ? ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height * 0.6,
                            maxWidth: MediaQuery.of(context).size.width * 0.9,
                          ),
                          child: Column(
                            children: [
                              Text('Rollen',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge),
                              const SizedBox(height: 20),
                              Column(
                                children: [
                                  Text('Projektleiter',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  Text('Yuel T.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text('Entwicklungsleiter',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/plip_hope1.gif',
                                        height: 80,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(' Philipp Lind',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                        'assets/plip_hope1.gif',
                                        height: 80,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text('Entwickler',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  Text('Abdul C.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text('Entwicklerin',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  Text('Julia K.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Text('QA Engineer',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                  Text('Kalender D.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium),
                                ],
                              ),
                            ],
                          ))
                      : Column(
                          children: [Placeholder()],
                        ),
                )),
          ),
        ],
      ),
    );
  }
}
