import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple[200]!,
              Colors.orange[200]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Skills',
            style: GoogleFonts.russoOne(
                textStyle: Theme.of(context).textTheme.headlineLarge),
          ),
          const SizedBox(
            height: 100,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // FIXME - Row is quickly overflowing
              children: [
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
                  width: 100,
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
                DatabaseColumn(),
                const VerticalDivider(
                  width: 100,
                ),
                OperatingColumn(),
              ],
            ),
          ),
        ]));
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
