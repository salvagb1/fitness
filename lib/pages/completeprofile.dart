import 'package:fitness/pages/whatgoal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  TextEditingController w_scale = TextEditingController();
  TextEditingController date_birth = TextEditingController();
  TextEditingController your_height = TextEditingController();

  final _lista = ['Male', 'Woman'];
  final String _vista = 'Choose Gender';

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              child:
                  Image(image: AssetImage('assets/images/completeprofile.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    child: Text(
                      "Let's complete your profile",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    child: Text(
                      "Improve the quality of your sleep ",
                      style: TextStyle(fontSize: 16, color: Color(0xff56575a)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButton(
                    items: _lista.map((String a) {
                      return DropdownMenuItem(
                        value: a,
                        child: Text(a),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    hint: Text(_vista),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xffF7F8F8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/calendar.svg',
                          color: const Color(0xff7B6F72),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextField(
                            controller: date_birth,
                            decoration: const InputDecoration(
                              hintText: 'Date of Birth',
                              hintStyle: TextStyle(color: Color(0xffADA4A5)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xffF7F8F8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/w_scale.svg',
                          color: const Color(0xff7B6F72),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextField(
                            controller: w_scale,
                            decoration: const InputDecoration(
                              hintText: 'Your Weight',
                              hintStyle: TextStyle(color: Color(0xffADA4A5)),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: const BoxDecoration(
                            color: Color(0xffF7F8F8),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/swap.svg',
                                color: const Color(0xff7B6F72),
                              ),
                              Expanded(child: TextField())
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffEEA4CE),
                              Color(0xffC58BF2),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'KG',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WhatGoal(),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow_right.svg',
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff98BAFE)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
