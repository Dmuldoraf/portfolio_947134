import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orangeAccent,
                Colors.purpleAccent,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (BuildContext context, bool isScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.deepPurple,
                  iconTheme: const IconThemeData(color: Colors.white),
                  centerTitle: true,
                  title: Text('Appbar',
                      style: GoogleFonts.russoOne(
                          textStyle: const TextStyle(
                              fontSize: 32,
                              color: Colors.blue,
                              letterSpacing: .5))),
                  floating: true,
                  snap: true,
                  bottom: TabBar(
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.red, // Change this to your desired color
                    labelStyle: GoogleFonts.russoOne(
                        textStyle: const TextStyle(
                            fontSize: 14, color: Colors.blue, letterSpacing: .5)),
                    unselectedLabelStyle: GoogleFonts.russoOne(
                        textStyle: const TextStyle(
                            fontSize: 14, color: Colors.blue, letterSpacing: .5)),
                    indicatorColor: Colors.white,
                    indicatorWeight: 5.0,
                    tabs: const [
                      Tab(
                        icon: Icon(Icons.directions_car),
                        text: 'Car',
                      ),
                      Tab(
                        icon: Icon(Icons.directions_transit),
                        text: 'Train',
                      ),
                      Tab(
                        icon: Icon(Icons.directions_bike),
                        text: 'Bike',
                      ),
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
      ),
    );
  }
}
