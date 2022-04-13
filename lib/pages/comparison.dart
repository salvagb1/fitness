import 'package:fitness/components/appbar.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [Text('hola')],
        ),
      ),
    );
  }
}
