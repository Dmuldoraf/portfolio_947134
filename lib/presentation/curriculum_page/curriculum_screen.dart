import 'package:flutter/material.dart';

class CurriculumScreen extends StatelessWidget {
  const CurriculumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DecoratedBox(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image:const  AssetImage(
              "assets/flowers.png",
            ),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Curriculum',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 16),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nunc ac nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia. Sed id nisl vitae nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia.',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nunc ac nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia. Sed id nisl vitae nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia.',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                Text(
                  'Course 1: Introduction to Programming',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nunc ac nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia. Sed id nisl vitae nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 8),
                Text(
                  'Course 2: Object-Oriented Programming',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nunc ac nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia. Sed id nisl vitae nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 8),
                Text(
                  'Course 3: Data Structures and Algorithms',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nunc ac nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia. Sed id nisl vitae nunc tincidunt aliquam. Nulla facilisi. Nullam nec nisl id nunc aliquet lacinia.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content:
                            Text('Download functionality not implemented yet.'),
                      ),
                    );
                  },
                  child: Text(
                    'Download Curriculum',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
