import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/skill_column.dart';

class IdesColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'IDEs',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SkillColumn(imgUrl: 'vscode', name: 'VS Code'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'intellij', name: 'IntelliJ'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'pycharm', name: 'PyCharm'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'eclipse', name: 'Ecplise'),
          ],
        ),
      ],
    );
  }
}
