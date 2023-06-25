import 'package:data_monitor/widgets/layouts/main_screen_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreenLayout(
        body: Center(
            child: Text(
          'Home Screen',
        )),
        pageTitle: "Data Mirror");
  }
}
