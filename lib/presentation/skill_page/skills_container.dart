import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/databases_column.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/frameworks_column.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/ides_column.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/languages_column.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/operating_column.dart';

class SkillsContainer extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 1000,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Image.asset(
            'assets/rose_5_noise.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
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
                    Text(
                      'Skills',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // TODO add 3d rondell effect
                        children: [
                          const VerticalDivider(
                            width: 20,
                          ),
                          LanguagesColumn(),
                          const VerticalDivider(
                            width: 100,
                          ),
                          FrameworksColumn(),
                          const VerticalDivider(
                            width: 100,
                          ),
                          IdesColumn(),
                          const VerticalDivider(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const VerticalDivider(
                            width: 20,
                          ),
                          DatabaseColumn(),
                          const VerticalDivider(
                            width: 100,
                          ),
                          OperatingColumn(),
                          const VerticalDivider(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ])),
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
