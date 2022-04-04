import 'package:flutter/material.dart';

class WhatGoal extends StatefulWidget {
  const WhatGoal({Key? key}) : super(key: key);

  @override
  State<WhatGoal> createState() => _WhatGoalState();
}

class _WhatGoalState extends State<WhatGoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            SizedBox(
              child: Text(
                'What is your goal?',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              child: Text(
                'In will help us to choose a best',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              child: Text(
                'programa for you',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
