import 'package:fitness/components/card_result.dart';

import 'package:flutter/material.dart';

class TabPhoto extends StatefulWidget {
  TabPhoto({Key? key}) : super(key: key);

  @override
  State<TabPhoto> createState() => _TabPhotoState();
}

class _TabPhotoState extends State<TabPhoto> {
  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Average Progress',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                'Good',
                style: TextStyle(color: Color(0xff42D742)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: fullWidth,
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Container(
                  width: fullWidth * 0.62,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff92A3FD), Color(0xffC58BF2)],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '62%',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('May'),
              Text('June'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const Text(
                      'Front Facing',
                      style: TextStyle(
                        color: Color(0xff7B6F72),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CardResult('assets/images/gallery1.png',
                        'assets/images/gallery2.png'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Front Facing',
                      style: TextStyle(
                        color: Color(0xff7B6F72),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CardResult('assets/images/gallery5.png',
                        'assets/images/gallery4.png'),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
