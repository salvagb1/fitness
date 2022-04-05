import 'package:fitness/pages/whatgoal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
                    height: 95,
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
                          SvgPicture.asset('assets/icons/arrow_right.svg'),
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
