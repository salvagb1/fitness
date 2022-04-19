import 'package:flutter/material.dart';

class GraphModal extends StatelessWidget {
  const GraphModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('33%'),
        Expanded(
          child: Container(
            height: 10,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff9DCEFF),
                  Color(0xff92A3FD),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 10,
                  width: 90,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      bottomLeft: Radius.circular(45),
                    ),
                    color: Color(0xffFFC2C2),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Text('67%'),
      ],
    );
  }
}
