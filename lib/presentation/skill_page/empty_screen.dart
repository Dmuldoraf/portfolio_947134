import 'package:flutter/material.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool isScrolled) {
            return [
              const SliverAppBar(
                backgroundColor: Colors.deepPurple,
                title: Text('Appbar'),
                floating: true,
                snap: true,
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  labelColor: Colors.white,
                  indicatorWeight: 5.0,
                  tabs: [
                    Tab(icon: Icon(Icons.directions_car, color: Colors.white), text: 'Car'),
                    Tab(icon: Icon(Icons.directions_transit, color: Colors.white), text: 'Train',),
                    Tab(icon: Icon(Icons.directions_bike, color: Colors.white), text: 'Bike',),
                  ],
                ),
              )
            ];
          },
          body: ListView.builder(
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
