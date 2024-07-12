import 'package:flutter/material.dart';

class ProjectTwoScreen extends StatefulWidget {
  const ProjectTwoScreen({super.key});

  @override
  State<ProjectTwoScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectTwoScreen> {
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
          color: Colors.orange[100],
          border: const Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 5,
            ),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                              'Chipper Albach Diamant 2000',
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight:
                                    MediaQuery.of(context).size.height * 0.6,
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.9,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image:
                                        AssetImage('assets/mint_5_noise.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 5,
                                  ),
                                ),
                                child: ConstrainedBox(
                                  constraints:  BoxConstraints(
                                    maxHeight: MediaQuery.of(context).size.height * 0.6,
                                    maxWidth: MediaQuery.of(context).size.width * 0.4,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      'The ALbach Diamant 2000 is one of the most powerful all-road self-propelled chipper. I´ve been driving since 2009 with trucks and since 2016 with the Albach Silvator and more than six different Diamant 2000',
                                      style:
                                          Theme.of(context).textTheme.bodyMedium,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child:
                                    Image.asset('assets/hacker_hope_wide.png')),
                          ],
                        ),
                      ],
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
                    'Hacker',
                    style: Theme.of(context).textTheme.headlineMedium,
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
