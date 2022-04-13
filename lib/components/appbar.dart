import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarcom extends StatelessWidget {
  const AppBarcom({Key? key, required this.titletext}) : super(key: key);
  final String titletext;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/backnavs.svg')),
      title: Text(
        titletext,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/detailnavs.svg'))
      ],
      centerTitle: true,
    );
  }
}
