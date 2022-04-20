import 'package:fitness/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/button.dart';

class HomeBtn extends StatefulWidget {
  const HomeBtn({Key? key}) : super(key: key);

  @override
  State<HomeBtn> createState() => _HomeBtnState();
}

class _HomeBtnState extends State<HomeBtn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                child: Text(
                  'Welcome Back,',
                  style: TextStyle(
                    color: Color(0xffADA4A5),
                    fontSize: 15.5,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                child: Text(
                  'Stefani Wong',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 23,
                  ),
                ),
              )
            ]),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationFitness())),
            icon: SvgPicture.asset(
              'assets/icons/notification3.svg',
              width: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 3,
                  left: 24,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff9DCEFF),
                      Color(0xff92A3FD),
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'BMI (Body Mass Index)',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'You have a normal weight',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.5,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(),
                            height: 40,
                            width: 105,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xffEEA4CE),
                                  Color(0xffC58BF2),
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Leanr More',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/banner.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Color(0xffF7F8F8),
                      blurRadius: 10.0,
                    ),
                  ],
                  color: const Color(0xffE2E7FF),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Today Target",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ButtonReu(
                        textbu: 'Check',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Activity Status',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Color(0xffF7F8F8),
                      blurRadius: 10.0,
                    ),
                  ],
                  color: const Color(0xffE2E7FF),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Heart Rate',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '78 BPM',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff92A3FD)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(),
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffEEA4CE),
                              Color(0xffC58BF2),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '3mins ago',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(11),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Color(0xffF7F8F8),
                            blurRadius: 10.0,
                          ),
                        ],
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 290,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffF7F8F8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 150,
                                  width: 25,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xffB4C0FE),
                                        Color(0xffC58BF2),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Water Intake',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                '4 Liters',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff92A3FD),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Real time updates',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff7B6F72),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/progress.png',
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '6am - 8am',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                      Text(
                                        '600ml',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffC58BF2),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '6am - 8am',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                      Text(
                                        '600ml',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffC58BF2),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '6am - 8am',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                      Text(
                                        '600ml',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffC58BF2),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '6am - 8am',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                      Text(
                                        '600ml',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffC58BF2),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '6am - 8am',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                      Text(
                                        '600ml',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffC58BF2),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 160,
                          width: 165,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Color(0xffF7F8F8),
                                blurRadius: 10.0,
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sleep',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                '8h 20m',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff92A3FD)),
                              ),
                              Image.asset(
                                'assets/images/sleep.png',
                                width: 120,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 165,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Color(0xffF7F8F8),
                                blurRadius: 10.0,
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Calories',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                '760 kCal',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff92A3FD)),
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/images/calories.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
