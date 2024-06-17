import 'package:flutter/material.dart';

class SingleProjectContainer extends StatelessWidget {
  final Widget child;

  SingleProjectContainer({required this.child});

  // Rest of the code...
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.6,
      constraints:const BoxConstraints(
        minHeight: 400,
      ),
          
      width: MediaQuery.of(context).size.width > 800
          ? MediaQuery.of(context).size.width * 0.33
          : 400,
      child: child,
      // Add your container properties here
    );
  }
}
