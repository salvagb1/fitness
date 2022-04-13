import 'package:fitness/components/appbar.dart';
import 'package:flutter/material.dart';

class ResultFitness extends StatefulWidget {
  const ResultFitness({Key? key}) : super(key: key);

  @override
  State<ResultFitness> createState() => _ResultFitnessState();
}

class _ResultFitnessState extends State<ResultFitness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBarcom(titletext: 'Result'),
        preferredSize: Size.fromHeight(50),
      ),
    );
  }
}
