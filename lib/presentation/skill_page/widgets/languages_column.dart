import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/skill_column.dart';

class LanguagesColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Languages',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SkillColumn(imgUrl: 'dart', name: 'Dart'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'java', name: 'Java'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'js', name: 'Javascript'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'python', name: 'Python'),
          ],
        ),
      ],
    );
  }
}
