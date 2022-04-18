import 'package:flutter/material.dart';

class TabStatistic extends StatefulWidget {
  TabStatistic({Key? key}) : super(key: key);

  @override
  State<TabStatistic> createState() => _TabStatisticState();
}

class _TabStatisticState extends State<TabStatistic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Statistic'),
    );
  }
}
