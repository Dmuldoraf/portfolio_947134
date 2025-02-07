import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectThreeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage('assets/rose_5_noise.png'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                  child: Text('Project 3',
                      style: Theme.of(context).textTheme.headlineMedium)),
              Center(
                child: InkWell(
                  onTap: () async {
                    final url = Uri.parse(
                        'https://lively-sea-0d8f32c0f.4.azurestaticapps.net/#/login');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url,
                          mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch URL';
                    }
                  },
                  child: Text('???',
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
              ),
            ],
          ),
        ));
  }
}
