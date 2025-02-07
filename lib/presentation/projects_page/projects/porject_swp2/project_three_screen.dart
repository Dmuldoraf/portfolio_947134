import 'package:flutter/material.dart';
import 'package:portfolio_947134/presentation/projects_page/projects/porject_swp2/widgets/swp_team_container.dart';

class ProjectThreeScreen extends StatelessWidget {
  ProjectThreeScreen({super.key});

  final _scrollController = ScrollController();

  void scrollToContainer(BuildContext context, int index) {
    final screenHeight = (MediaQuery.of(context).size.height < 1000
            ? 1000
            : MediaQuery.of(context).size.height)
        .toDouble();
    debugPrint('Screen Height: $screenHeight');
    debugPrint(index.toString());
    // FIXME: Navigation not accurate
    _scrollController.animateTo(screenHeight * index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MediaQuery.of(context).size.width < 800
          ? Drawer(
              child: ListView(
                children: [
                  ListTile(
                      leading: const Icon(Icons.home),
                      title: Text(
                        'Team',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      onTap: () {
                        scrollToContainer(context, 0);
                        Navigator.pop(context);
                      }),
                  ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(
                        'Ziel',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      onTap: () {
                        scrollToContainer(context, 1);
                        Navigator.pop(context);
                      }),
                  ListTile(
                      leading: const Icon(Icons.work),
                      title: Text(
                        'Umsetzung',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      onTap: () {
                        scrollToContainer(context, 2);
                        Navigator.pop(context);
                      }),
                  ListTile(
                      leading: const Icon(Icons.mail),
                      title: Text(
                        'Seite',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      onTap: () {
                        scrollToContainer(context, 3);
                        Navigator.pop(context);
                      }),
                ],
              ),
            )
          : null,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey, width: 1),
            ),
            elevation: 20,
            floating: true,
            snap: true,
            pinned: false,
            centerTitle: true,
            title: Center(
              child: MediaQuery.of(context).size.width < 800
                  ? Text(
                      'Patientenakte',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )
                  : SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                scrollToContainer(context, 0);
                              },
                              child: Text(
                                'Team',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              )),
                          const VerticalDivider(
                            color: Colors.white,
                            thickness: 5,
                          ),
                          TextButton(
                              onPressed: () => scrollToContainer(context, 1),
                              child: Text(
                                'Ziel',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              )),
                          const VerticalDivider(
                            color: Colors.white,
                            thickness: 5,
                          ),
                          TextButton(
                              onPressed: () => scrollToContainer(context, 2),
                              child: Text(
                                'Umsetzung',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              )),
                          TextButton(
                              onPressed: () => scrollToContainer(context, 3),
                              child: Text(
                                'Webseite',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              )),
                          // TODO - Add tailing button for contact and add login button + page
                        ],
                      ),
                    ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.arrow_downward),
                onPressed: () => scrollToContainer(context, 3),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: SWP2TeamContainer(),
          ),
          SliverToBoxAdapter(
            child: SWP2TeamContainer(),
          ),
          SliverToBoxAdapter(
            child: SWP2TeamContainer(),
          ),
          SliverToBoxAdapter(
            child: SWP2TeamContainer(),
          ),
        ],
      ),
    );
  }
}
