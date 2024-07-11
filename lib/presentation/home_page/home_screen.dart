import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/contact_page/contact_screen.dart';
import 'package:portfolio_947134/presentation/home_page/widgets/home_container.dart';
import 'package:portfolio_947134/presentation/projects_page/projects_container.dart';
import 'package:portfolio_947134/presentation/skill_page/skills_container.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
                leading:  const Icon(Icons.home),
                title: Text('Home', style: Theme.of(context).textTheme.bodyMedium,),
                onTap: () {
                  scrollToContainer(0);
                  Navigator.pop(context);
                }),
            ListTile(
                leading:const Icon(Icons.person),
                title: Text('Skills',style: Theme.of(context).textTheme.bodyMedium,),
                onTap: () {
                  scrollToContainer(1);
                  Navigator.pop(context);
                }),
            ListTile(
                leading:const Icon(Icons.work),
                title: Text('Projects',style: Theme.of(context).textTheme.bodyMedium,),
                onTap: () {
                  scrollToContainer(2);
                  Navigator.pop(context);
                }),
            ListTile(
                leading:const Icon(Icons.mail),
                title: Text(
                  'Contact',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {
                  scrollToContainer(3);
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            // FIXME - title and other widgets are not centered
            // expandedHeight: 100.0,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey, width: 1),
            ),
            elevation: 20,
            floating: true,
            snap: true,
            pinned: false,
            centerTitle: true,
            leading: IconButton(
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/flowers.png'),
              ),
              onPressed: () => scrollToContainer(0),
            ),
            title: Center(
              child: MediaQuery.of(context).size.width < 800
                  ? AppBar(
                      title: Text(
                        'Portfolio',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      leading: Builder(
                        builder: (BuildContext context) {
                          return IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          );
                        },
                      ),
                    )
                  : Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              scrollToContainer(0);
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Home',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        const VerticalDivider(
                          color: Colors.white,
                          thickness: 5,
                        ),
                        TextButton(
                            onPressed: () => scrollToContainer(1),
                            child: Text(
                              'Skills',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        const VerticalDivider(
                          color: Colors.white,
                          thickness: 5,
                        ),
                        TextButton(
                            onPressed: () => scrollToContainer(2),
                            child: Text(
                              'Projects',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        TextButton(
                            onPressed: () => scrollToContainer(3),
                            child: Text(
                              'Contact',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        // TODO - Add tailing button for contact and add login button + page
                      ],
                    ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.arrow_downward),
                onPressed: () => scrollToContainer(3),
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
          SliverToBoxAdapter(
            child: ContactForm(),
          ),
        ],
      ),
    );
  }
}
