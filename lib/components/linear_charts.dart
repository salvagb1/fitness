import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LinearCharts extends StatelessWidget {
  const LinearCharts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
      width: 350,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xffADA4A5),
              );
            },
            drawVerticalLine: false,
          ),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 3),
                const FlSpot(2.5, 4),
                const FlSpot(5, 2.15),
                const FlSpot(8.5, 6),
                const FlSpot(11, 5),
              ],
              isCurved: true,
              gradient: const LinearGradient(colors: [
                Color(0xff9DCEFF),
                Color(0xff92A3FD),
              ]),
            ),
            LineChartBarData(
              spots: [
                const FlSpot(0, 2),
                const FlSpot(4, 1.1),
                const FlSpot(6, 4),
                const FlSpot(8.50, 2.25),
                const FlSpot(11, 4),
              ],
              isCurved: true,
              color: const Color(0xffFFC2C2),
            ),
          ],
        ),
      ),
    );
  }
}
