import 'package:flutter/material.dart';

class ButtonReu extends StatelessWidget {
  const ButtonReu({Key? key, required this.textbu}) : super(key: key);
  final String textbu;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(),
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xff9DCEFF),
              Color(0xff92A3FD),
            ],
          ),
        ),
        child: Center(
          child: Text(
            '$textbu',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
