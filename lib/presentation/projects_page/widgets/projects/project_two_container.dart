import 'package:flutter/material.dart';

class ProjectTwoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage('assets/mint_5_noise.png'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Hacken', style: Theme.of(context).textTheme.headlineMedium),
              ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 300),
                  child: Image.asset('assets/hacker_hope_front.png')),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/project_two');
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
                  'Hack it!',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          )),
        ));
  }
}
