import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_947134/presentation/projects_page/widgets/projects/project_four_container.dart';
import 'package:portfolio_947134/presentation/projects_page/widgets/projects/project_one_container.dart';
import 'package:portfolio_947134/presentation/projects_page/widgets/projects/project_three_container.dart';
import 'package:portfolio_947134/presentation/projects_page/widgets/projects/project_two_container.dart';
import 'package:portfolio_947134/presentation/projects_page/widgets/single_project_container.dart';

class ProjectsContainer extends StatelessWidget {
  // ScrollBehavior can be set for a specific widget.
  final ScrollController _scrollController = ScrollController();

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
          const SizedBox(
            height: 100,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    // Add your code to slide the container to the middle
                  },
                  child: SingleProjectContainer(child: ProjectOneContainer()),
                ),
                const SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    // Add your code to slide the container to the middle
                  },
                  child: SingleProjectContainer(child: ProjectTwoContainer()),
                ),
                const SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    // Add your code to slide the container to the middle
                  },
                  child: SingleProjectContainer(child: ProjectThreeContainer()),
                ),
                const SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    // Add your code to slide the container to the middle
                  },
                  child: SingleProjectContainer(child: ProjectFourContainer()),
                ),
                const SizedBox(
                  width: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
