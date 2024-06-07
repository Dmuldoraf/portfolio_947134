import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/skill_page/widgets/skill_column.dart';

class FrameworksColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Frameworks',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SkillColumn(imgUrl: 'flutter', name: 'Flutter'),

          ],
        ),
      ],
    );
  }
}
