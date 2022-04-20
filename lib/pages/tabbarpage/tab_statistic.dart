import 'package:fitness/components/graph_modal.dart';
import 'package:fitness/components/linear_charts.dart';

import 'package:flutter/material.dart';

class TabStatistic extends StatefulWidget {
  const TabStatistic({Key? key}) : super(key: key);

  @override
  State<TabStatistic> createState() => _TabStatisticState();
}

class _TabStatisticState extends State<TabStatistic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: Column(
        children: [
          const LinearCharts(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('May'),
              Text('June'),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: const [
                    Text(
                      'Front Facing',
                      style: TextStyle(
                        color: Color(0xff7B6F72),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GraphModal(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
