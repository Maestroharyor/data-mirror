import 'package:data_mirror/widgets/layouts/main_screen_layout.dart';
import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreenLayout(
        body: Center(
            child: Text(
          'Alerts Screen',
        )),
        pageTitle: "Alerts");
  }
}
