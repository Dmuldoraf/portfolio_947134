import 'package:flutter/material.dart';

class ProjectOneContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Colors.redAccent[400]!,
            Colors.orangeAccent[400]!,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Text('Project 1',
                  style: Theme.of(context).textTheme.headlineLarge)),
        ));
  }
}
