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
          child: Column(
            children: [
              Center(
                  child: Text('Project 1',
                      style: Theme.of(context).textTheme.headlineLarge)),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                constraints:  BoxConstraints(minWidth: 100),
                child: Image.asset('assets/thm_egb.png')),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Praktikum 2',
                      style: Theme.of(context).textTheme.headlineSmall),const SizedBox(width: 10),
                  IconButton(
                    
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.pushNamed(context, '/project_one');
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
