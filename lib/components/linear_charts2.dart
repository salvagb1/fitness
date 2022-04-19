import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LinearCharts2 extends StatelessWidget {
  const LinearCharts2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = [
      GraphFitness(1, 20),
      GraphFitness(2, 40),
      GraphFitness(3, 60),
      GraphFitness(4, 80),
      GraphFitness(5, 100),
    ];

    List<charts.Series<GraphFitness, int>> seriess = [
      charts.Series<GraphFitness, int>(
        id: 'Lineal',
        domainFn: (v, i) => v.month,
        measureFn: (v, i) => v.percentage,
        data: data,
      ),
    ];

    return Center(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.amber,
        ),
        height: 300,
        child: charts.LineChart(
          seriess,
        ),
      ),
    );
  }
}

class GraphFitness {
  final int month;
  final double percentage;
  GraphFitness(this.month, this.percentage);
}
