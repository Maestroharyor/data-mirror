import 'package:data_mirror/widgets/elements/helper_widgets.dart';
import 'package:data_mirror/widgets/layouts/main_screen_layout.dart';
import 'package:data_mirror/widgets/partials/home/data_consumption.dart';
import 'package:data_mirror/widgets/partials/home/data_consumption2.dart';
import 'package:data_mirror/widgets/partials/home/data_stats.dart';
import 'package:data_mirror/widgets/partials/home/data_summary.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreenLayout(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SpaceWrapper(
                horizontal: 20,
                child: DataSummary(percent: 80),
              ),
              addVerticalSpace(30),
              const SpaceWrapper(
                horizontal: 20,
                child: DataConsumption(),
              ),
              addVerticalSpace(30),
              const SpaceWrapper(
                child: DataStats(),
              ),
              addVerticalSpace(30),
              const SpaceWrapper(
                horizontal: 20,
                child: DataConsumption2(),
              ),
              addVerticalSpace(30)
            ],
          ),
        ),
        pageTitle: "Data Mirror");
  }
}
