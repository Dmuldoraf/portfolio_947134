import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  late ScrollController _scrollController;
  double _scrollConrtollerOffset = 0.0;

  _scrollListener() {
    setState(() {
      _scrollConrtollerOffset = _scrollController.offset;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange[200]!,
              Colors.purple[200]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 1.5,
                    child: const Center(
                      child: Text(
                        '💩',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 75,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
            PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 20.0),
              child: FadeAppBar(scrollOffset: _scrollConrtollerOffset),
            )
          ],
        ),
      ),
    );
  }
}

class FadeAppBar extends StatelessWidget {
  final double scrollOffset;
  const FadeAppBar({required this.scrollOffset, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          color: Colors.white
              .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
          child: SafeArea(
            child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'Projects',
                          style: GoogleFonts.russoOne(
                            textStyle: const TextStyle(fontSize: 32, letterSpacing: .5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            )),
          ),
        );
  }
}
