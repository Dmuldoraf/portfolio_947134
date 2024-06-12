import 'package:flutter/material.dart';

class ProjectTwoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            Colors.yellowAccent[400]!,
            Colors.greenAccent[400]!,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Text('Project 2',
                  style: Theme.of(context).textTheme.headlineLarge)),
        )
    );
  }
}