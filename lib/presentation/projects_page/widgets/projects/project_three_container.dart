import 'package:flutter/material.dart';

class ProjectThreeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Colors.cyanAccent[400]!,
              Colors.blueAccent[400]!,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Text('Project 3',
                  style: Theme.of(context).textTheme.headlineLarge)),
        ));
  }
}
