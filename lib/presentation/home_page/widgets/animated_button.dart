import 'package:flutter/material.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({super.key});
  // TODO - animate it on hover
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: TextButton(
            onPressed: () {
              // Add your button logic here
            },
            child: TextButton(
              child: Text(
                'Button',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () => {},
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.red,
            height: 100,
          ),
        ),
        Positioned(
          top: 150,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.blue,
            height: 100,
          ),
        ),
      ],
    );
  }
}
