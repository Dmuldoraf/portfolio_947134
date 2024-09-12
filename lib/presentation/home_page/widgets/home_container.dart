import 'package:flutter/material.dart';
// import 'package:portfolio_947134/presentation/Widgets/navigation_button.dart';
import 'package:portfolio_947134/presentation/home_page/widgets/bio_container.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 1000,
        minWidth: MediaQuery.of(context).size.width,
      ),
      child: Stack(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 1000,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Image.asset('assets/flowers.png',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 1000,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 5,
                    ),
                  ),
                  //color:Colors.green[100]!,
                ),
                child: BioContainer()),
          ),
        ],
      ),
    );
  }
}
