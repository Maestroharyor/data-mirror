import 'package:data_mirror/theme/theme_constants.dart';
import 'package:data_mirror/widgets/elements/helper_widgets.dart';
import 'package:flutter/material.dart';
import 'package:data_mirror/widgets/elements/charts/data_bar_chart.dart';

class DataStats extends StatefulWidget {
  const DataStats({super.key});

  @override
  State<DataStats> createState() => _DataStatsState();
}

class _DataStatsState extends State<DataStats> {
  String currentTab = "WEEKLY";

  final List<Map<String, dynamic>> tabs = [
    {"title": "DAILY", "widget": Text("Daily")},
    {"title": "WEEKLY", "widget": Text("Weekly")},
    {"title": "MONTHLY", "widget": Text("Monthly")},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: tabs.map((
                tab,
              ) {
                return TextButton(
                  onPressed: () {
                    setState(() {
                      currentTab = tab['title'];
                    });
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                    ),
                    backgroundColor: tab['title'] == currentTab
                        ? MaterialStateProperty.all(ThemeConstants.primaryColor)
                        : MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    tab['title'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: tab['title'] == currentTab
                          ? Colors.white
                          : Color(0xFF050505),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.24,
                    ),
                  ),
                );
              }).toList()),
        ),
        addVerticalSpace(10),
        Container(
          height: 300,
          width: double.infinity,
          child: DataBarChart(),
        ),
        Container(
          height: 1,
          color: Colors.black.withOpacity(.2),
        )
      ],
    );
  }
}
