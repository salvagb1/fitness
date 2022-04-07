import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileBtn extends StatefulWidget {
  ProfileBtn({Key? key}) : super(key: key);

  @override
  State<ProfileBtn> createState() => _ProfileBtnState();
}

class _ProfileBtnState extends State<ProfileBtn> {
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
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/notification3.svg'))
        ],
      ),
    );
  }
}