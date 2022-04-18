import 'package:flutter/material.dart';

class CardResult extends StatefulWidget {
  CardResult(this.pathSvg, this.pathSvg2, {Key? key}) : super(key: key);
  String pathSvg = 'assets/icons/yougoal1.svg';
  String pathSvg2 = 'assets/icons/yougoal1.svg';

  @override
  State<CardResult> createState() => _CardResultState();
}

class _CardResultState extends State<CardResult> {
  @override
  Widget build(BuildContext context) {
    final card = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage(widget.pathSvg)),
        const SizedBox(
          width: 15,
        ),
        Image(image: AssetImage(widget.pathSvg2)),
      ],
    );
    return card;
  }
}
