import 'package:data_monitor/widgets/layouts/main_screen_layout.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreenLayout(
        body: Center(
            child: Text(
          'Settings Screen',
        )),
        pageTitle: "Settings");
  }
}
