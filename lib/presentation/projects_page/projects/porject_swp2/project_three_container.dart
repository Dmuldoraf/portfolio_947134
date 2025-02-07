import 'package:flutter/material.dart';

class ProjectThreeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage('assets/rose_5_noise.png'),
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
                Center(
                  child: Text('Software\nProjekt 2',
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
                Text('MS Azure',
                    style: Theme.of(context).textTheme.headlineSmall),
                ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 300),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset('assets/patientenakte_login.png'),
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/project_three');
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
                    'Zum SWP2',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
