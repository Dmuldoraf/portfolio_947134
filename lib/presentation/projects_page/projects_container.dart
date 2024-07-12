import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 1000,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Image.asset('assets/orange_7_noise.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 1000,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 5,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Projects',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MediaQuery.of(context).size.width > 600 
                    ? Text(
                      '(Hold shift to scroll with mouse wheel)',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ): const Text('')
                  ],
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
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width > 600 ? 42 : 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your code to slide the container to the middle
                        },
                        child: SingleProjectContainer(
                            child: ProjectOneContainer()),
                      ),
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width > 600 ? 42 : 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your code to slide the container to the middle
                        },
                        child: SingleProjectContainer(
                            child: ProjectTwoContainer()),
                      ),
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width > 600 ? 42 : 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your code to slide the container to the middle
                        },
                        child: SingleProjectContainer(
                            child: ProjectThreeContainer()),
                      ),
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width > 600 ? 42 : 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Add your code to slide the container to the middle
                        },
                        child: SingleProjectContainer(
                            child: ProjectFourContainer()),
                      ),
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width > 600 ? 42 : 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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
