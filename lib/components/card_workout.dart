import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CardWorkout extends StatefulWidget {
  CardWorkout(this.pathImage, this.text, this.text2, this.pathSvg, {Key? key})
      : super(key: key);
  String pathImage = 'assets/icons/yougoal1.svg';
  String pathSvg = 'assets/icons/yougoal1.svg';
  String text;
  String text2;

  @override
  State<CardWorkout> createState() => _CardWorkoutState();
}

class _CardWorkoutState extends State<CardWorkout> {
  @override
  Widget build(BuildContext context) {
    final card = Row(
      children: [
        Image.asset(widget.pathImage),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.text,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.text2,
                style: const TextStyle(
                  color: Color(0xff7B6F72),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SvgPicture.asset(
          widget.pathSvg,
          color: const Color(0xffC58BF2),
        ),
      ],
    );
    return card;
  }
}
