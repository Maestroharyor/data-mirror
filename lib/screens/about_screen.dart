import 'package:data_monitor/widgets/layouts/main_screen_layout.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreenLayout(
        body: Center(
            child: Text(
          'About Screen',
        )),
        pageTitle: "About");
  }
}
