import 'package:data_mirror/theme/theme_constants.dart';
import 'package:data_mirror/widgets/elements/charts/doughnut_chart.dart';
import 'package:data_mirror/widgets/elements/helper_widgets.dart';
import 'package:flutter/material.dart';

class DataSummary extends StatelessWidget {
  final double percent;
  const DataSummary({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: ThemeConstants.grey,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1,
              )),
          // padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DoughnutChart(
                percent: percent,
                label: "30%",
                chartSize: 180,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Remaining quota',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF858484),
                      fontSize: 14,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.24,
                    ),
                  ),
                  addVerticalSpace(1),
                  const Text(
                    '120 GB',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF130D26),
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.40,
                    ),
                  ),
                  addVerticalSpace(5),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text("ADD QUOTA",
                        style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          ThemeConstants.primaryColor,
                        ),
                        iconColor: MaterialStateProperty.all(Colors.white)),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
