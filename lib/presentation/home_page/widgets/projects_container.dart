import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orange[200]!,
            Colors.blue[200]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Projects',
            style: GoogleFonts.russoOne(
                textStyle: const TextStyle(
                    fontSize: 60, color: Colors.blue, letterSpacing: .5)),
          ),
          Row(children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add your code to slide the container to the middle
                      },
                      child: Container(
                        width: 600,
                        height: 300,
                        color: Colors.red,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Add your code to slide the container to the middle
                      },
                      child: Container(
                        width: 600,
                        height: 300,
                        color: Colors.green,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Add your code to slide the container to the middle
                      },
                      child: Container(
                        width: 600,
                        height: 300,
                        color: Colors.blue,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Add your code to slide the container to the middle
                      },
                      child: Container(
                        width: 600,
                        height: 300,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
