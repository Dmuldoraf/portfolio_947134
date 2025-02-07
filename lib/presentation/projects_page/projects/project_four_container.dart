import 'package:flutter/material.dart';

class ProjectFourContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage('assets/cyan_5_noise.png'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                  child: Text('Project 4',
                      style: Theme.of(context).textTheme.headlineMedium)),
              Center(
                  child: Text('???',
                      style: Theme.of(context).textTheme.headlineLarge))
            ],
          ),
        ));
  }
}
