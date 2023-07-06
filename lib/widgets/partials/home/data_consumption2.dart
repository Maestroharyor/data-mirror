import 'package:data_mirror/theme/theme_constants.dart';
import 'package:data_mirror/widgets/elements/charts/doughnut_chart.dart';
import 'package:data_mirror/widgets/elements/helper_widgets.dart';
import 'package:flutter/material.dart';

class DataConsumption2 extends StatelessWidget {
  const DataConsumption2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_upward),
                Column(
                  children: [
                    Text(
                      'Upload',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF989898),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.24,
                      ),
                    ),
                    Text(
                      '60 GB',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF130D26),
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.40,
                      ),
                    )
                  ],
                )
              ],
            ),
            addHorizontalSpace(20),
            DoughnutChart(
              percent: 20,
              label: "20GB",
              chartSize: 100,
              labelSize: 12,
              holeRadius: 20,
            ),
            addHorizontalSpace(15),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_downward),
                Column(
                  children: [
                    Text(
                      'Download',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF989898),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.24,
                      ),
                    ),
                    Text(
                      '60 GB',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF130D26),
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.40,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
