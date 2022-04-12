import 'package:flutter/material.dart';

class CardGallery extends StatefulWidget {
  CardGallery(this.pathSvg, {Key? key}) : super(key: key);
  String pathSvg = 'assets/icons/yougoal1.svg';

  @override
  State<CardGallery> createState() => _CardGalleryState();
}

class _CardGalleryState extends State<CardGallery> {
  @override
  Widget build(BuildContext context) {
    final card = Container(
      child: Image(image: AssetImage(widget.pathSvg)),
      width: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
    );
    return card;
  }
}
