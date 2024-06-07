import 'package:flutter/material.dart';

class SkillColumn extends StatelessWidget {
  final String imgUrl;
  final String name;

  const SkillColumn({required this.imgUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: Image.asset('assets/skills/$imgUrl.png', fit: BoxFit.cover),
        ),
        const Divider(
          thickness: 16,
          color: Color.fromARGB(0, 255, 255, 255),
        ),
        Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
