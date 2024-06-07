import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/skill_column.dart';

class OperatingColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Operating Systems',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SkillColumn(imgUrl: 'windows', name: 'Windows'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'ubuntu', name: 'Ubuntu'),
            VerticalDivider(
                thickness: 30, color: Color.fromARGB(0, 255, 255, 255)),
            SkillColumn(imgUrl: 'linux', name: 'Linux'),
          ],
        ),
      ],
    );
  }
}
