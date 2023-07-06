import 'package:data_mirror/widgets/layouts/main_screen_layout.dart';
import 'package:flutter/material.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreenLayout(
        body: Center(
            child: Text(
          'Help and Supportr Screen',
        )),
        pageTitle: "Help and Support");
  }
}
