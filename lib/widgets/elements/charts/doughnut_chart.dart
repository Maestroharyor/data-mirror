import 'package:data_mirror/theme/theme_constants.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:awesome_circular_chart/awesome_circular_chart.dart';

class DoughnutChart extends StatelessWidget {
  final double percent;
  final String label;
  final double chartSize;
  final double labelSize;
  final double holeRadius;
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      GlobalKey<AnimatedCircularChartState>();
  late final Size _chartSize;

  DoughnutChart(
      {Key? key,
      required this.percent,
      required this.label,
      required this.chartSize,
      this.labelSize = 30.0,
      this.holeRadius = 40})
      : super(key: key) {
    _chartSize = Size(chartSize, chartSize);
  }

  @override
  Widget build(BuildContext context) {
    final List<CircularStackEntry> initialChartData = [
      CircularStackEntry(
        <CircularSegmentEntry>[
          CircularSegmentEntry(
            percent,
            ThemeConstants.primaryColor,
            rankKey: 'completed',
          ),
          CircularSegmentEntry(
            100 - percent,
            ThemeConstants.hoverColor,
            rankKey: 'remaining',
          ),
        ],
        rankKey: 'progress',
      ),
    ];

    return AnimatedCircularChart(
      key: _chartKey,
      size: _chartSize,
      initialChartData: initialChartData,
      chartType: CircularChartType.Radial,
      edgeStyle: SegmentEdgeStyle.round,
      percentageValues: true,
      holeRadius: holeRadius,
      holeLabel: label,
      labelStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: labelSize,
      ),
    );
  }
}
