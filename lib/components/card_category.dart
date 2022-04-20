import 'package:flutter/material.dart';

class CardCategory extends StatefulWidget {
  CardCategory(this.pathSvg, {Key? key}) : super(key: key);
  String pathSvg = 'assets/icons/yougoal1.svg';

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  @override
  Widget build(BuildContext context) {
    final card = Container(
      child: Image(
        image: AssetImage(widget.pathSvg),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
    );
    return card;
  }
}
