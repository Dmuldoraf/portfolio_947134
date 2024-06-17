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
              child: Column(
            children: [
              Text('Routing', style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => {Navigator.pushNamed(context, '/about')},
                  child: Text(
                    'About',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, '/curriculum')},
                  child: Text(
                    'Curiculum',
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () => {Navigator.pushNamed(context, '/project_one')},
                  child: Text(
                    'Projects',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ))
            ],
          )),
        ));
  }
}
