import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectMonth extends StatelessWidget {
  const SelectMonth({Key? key, required this.month}) : super(key: key);
  final String month;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffF7F8F8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/calendar.svg',
            color: const Color(0xff7B6F72),
          ),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Text(
              "Select Month",
              style: TextStyle(color: Color(0xff7B6F72)),
            ),
          ),
          Text(
            month,
            style: const TextStyle(color: Color(0xff7B6F72)),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/arrow.svg'),
          ),
        ],
      ),
    );
  }
}
