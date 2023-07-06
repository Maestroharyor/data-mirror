import 'package:data_mirror/widgets/layouts/main_screen_layout.dart';
import 'package:flutter/material.dart';

class InternetSpeedScreen extends StatelessWidget {
  const InternetSpeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreenLayout(
        body: Center(
            child: Text(
          'Internet Speed Screen',
        )),
        pageTitle: "Internet Speed");
  }
}
