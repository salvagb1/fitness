import 'package:fitness/components/appbar.dart';

import 'package:fitness/components/first_button.dart';
import 'package:fitness/components/select_month.dart';

import 'package:fitness/pages/results.dart';
import 'package:flutter/material.dart';

class ComparasionMonth extends StatefulWidget {
  const ComparasionMonth({Key? key}) : super(key: key);

  @override
  State<ComparasionMonth> createState() => _ComparasionMonthState();
}

class _ComparasionMonthState extends State<ComparasionMonth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          child: AppBarcom(titletext: 'Comparasion'),
          preferredSize: Size.fromHeight(50)),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SelectMonth(month: 'May'),
          const SizedBox(height: 15),
          const SelectMonth(month: 'June'),
          const Expanded(child: SizedBox()),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResultFitness(),
                )),
            child: const FirstButton(titlebu: 'Compare'),
          )
        ],
      ),
    );
  }
}
