import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondButton extends StatelessWidget {
  const SecondButton({Key? key, required this.titlebu, required this.titleicon})
      : super(key: key);
  final String titlebu;
  final String titleicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(),
      height: 55,
      width: 300,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titlebu,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SvgPicture.asset(titleicon),
          ],
        ),
      ),
    );
  }
}
