import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/databases_column.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/frameworks_column.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/ides_column.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/languages_column.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/operating_column.dart';

class SkillsContainer extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DatabaseColumn(),
              const VerticalDivider(
                width: 100,
              ),
              OperatingColumn(),
            ],
          ),
        ]));
  }
}
