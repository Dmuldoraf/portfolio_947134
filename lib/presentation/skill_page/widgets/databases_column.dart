import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/skill_column.dart';

class DatabaseColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Databases',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SkillColumn(imgUrl: 'timescale', name: 'TimeScaleDB'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'postgresql', name: 'PostgreSQl'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'mysql', name: 'MySQL'),
          ],
        ),
      ],
    );
  }
}
