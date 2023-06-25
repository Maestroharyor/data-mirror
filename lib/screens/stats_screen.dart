import 'package:data_monitor/widgets/layouts/main_screen_layout.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreenLayout(
        body: Center(
            child: Text(
          'Internet Usage Stats',
        )),
        pageTitle: "Internet Usage Stats");
  }
}
