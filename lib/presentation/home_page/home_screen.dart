import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/home_page/widgets/home_container.dart';
import 'package:portfolio_947134/presentation/home_page/widgets/projects_container.dart';
import 'package:portfolio_947134/presentation/skill_page/skills_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();

  void scrollToContainer(int index) {
    final screenHeight = MediaQuery.of(context).size.height;
    debugPrint('Screen Height: $screenHeight');
    debugPrint(index.toString());
    _scrollController.animateTo(screenHeight * index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: false,
            title: Row(
              children: [
                TextButton(
                    onPressed: () => scrollToContainer(0),
                    child: Text(
                      'Home',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )),
                const VerticalDivider(
                  color: Colors.white,
                  thickness: 5,
                ),
                TextButton(
                    onPressed: () => scrollToContainer(1),
                    child: Text(
                      'Skills',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )),
                const VerticalDivider(
                  color: Colors.white,
                  thickness: 5,
                ),
                TextButton(
                    onPressed: () => scrollToContainer(2),
                    child: Text(
                      'Projects',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )),
              ],
            ),
            leading: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.logo_dev),
                  onPressed: () => scrollToContainer(0),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.arrow_downward),
                onPressed: () => scrollToContainer(2),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: HomeContainer(),
          ),
          SliverToBoxAdapter(
            child: SkillsContainer(),
          ),
          SliverToBoxAdapter(
            child: ProjectsContainer(),
          ),
        ],
      ),
    );
  }
}

