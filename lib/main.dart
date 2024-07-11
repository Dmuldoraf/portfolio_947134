import 'package:flutter/material.dart';
import 'package:portfolio_947134/firebase_options.dart';
import 'package:portfolio_947134/presentation/about_page/abaout_screen.dart';
import 'package:portfolio_947134/presentation/curriculum_page/curriculum_screen.dart';
import 'package:portfolio_947134/presentation/home_page/home_screen.dart';
import 'package:portfolio_947134/presentation/projects_page/projects_screen.dart';
import 'package:portfolio_947134/presentation/skill_page/empty_screen.dart';
import 'package:portfolio_947134/themes.dart';
import 'package:firebase_core/firebase_core.dart';

/* 
Meine Website:
https://portfolio-egb.web.app/
*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EgB Praktikum',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreenState(),
        '/curriculum': (context) => const CurriculumScreen(),
        '/skills': (context) => const SkillScreen(),
        '/project_one': (context) => const ProjectScreen(),
      },
    );
  }
}


/* 
https://portfolio-ak-ba4da.web.app/ 
https://www.qualcugu.com/
 */