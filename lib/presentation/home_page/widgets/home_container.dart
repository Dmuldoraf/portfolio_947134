import 'package:flutter/material.dart';
// import 'package:portfolio_947134/presentation/Widgets/navigation_button.dart';
import 'package:portfolio_947134/presentation/home_page/widgets/bio_container.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green[200]!,
                  Colors.purple[200]!,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BioContainer(),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Image.asset('assets/unbenannt.png'),
                ),
                /* const NavigationButton(name: 'Skills', route: '/skills'),
                    const NavigationButton(name: 'Projekte', route: '/projects'),
                    const NavigationButton(name: 'Über mich', route: '/about'), */
              ],
            ),
          );
  }
}