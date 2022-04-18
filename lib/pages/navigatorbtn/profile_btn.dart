import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../welcome_home.dart';

List<AccountActi> _accountacti = [
  AccountActi(
    'assets/icons/profile2.svg',
    "Personal Data",
  ),
  AccountActi(
    'assets/icons/achievement.svg',
    "Archiviement",
  ),
  AccountActi(
    'assets/icons/graph.svg',
    "Activity History",
  ),
  AccountActi(
    'assets/icons/workout.svg',
    "Workout Progress",
  ),
];

class ProfileBtn extends StatefulWidget {
  const ProfileBtn({Key? key}) : super(key: key);

  @override
  State<ProfileBtn> createState() => _ProfileBtnState();
}

class _ProfileBtnState extends State<ProfileBtn> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WelcomeHome())),
            icon: SvgPicture.asset('assets/icons/backnavs.svg')),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 23,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/detailnavs.svg'))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/latest_pic.jpg')),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Stefani Wong",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Losea fat Program',
                        style: TextStyle(
                          color: Color(0xff7B6F72),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(),
                    height: 35,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff9DCEFF),
                          Color(0xff92A3FD),
                        ],
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Edit',
                        style:
                            TextStyle(fontFamily: 'lato', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '180cm',
                          style:
                              TextStyle(color: Color(0xff92A3FD), fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Height',
                          style: TextStyle(color: Color(0xff7B6F72)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 70,
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '65kg',
                          style:
                              TextStyle(color: Color(0xff92A3FD), fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Weight',
                          style: TextStyle(color: Color(0xff7B6F72)),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 70,
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '22yo',
                          style:
                              TextStyle(color: Color(0xff92A3FD), fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Age',
                          style: TextStyle(color: Color(0xff7B6F72)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
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
                children: [
                  Row(
                    children: const [
                      Text(
                        'Account',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  //otro
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/profile2.svg',
                        color: const Color(0xff92A3FD),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Personal Data",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/achievement.svg',
                        color: const Color(0xff92A3FD),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Archiviement",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/graph.svg',
                        color: const Color(0xff92A3FD),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Activity History",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/workout.svg',
                        color: const Color(0xff92A3FD),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Workout Progress",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                    ],
                  ),

                  //otro
                ],
              ),

              // child: Column(
              //   children: [
              //     Row(
              //       children: const [
              //         Text(
              //           'Accunt',
              //           style: TextStyle(
              //               fontSize: 20, fontWeight: FontWeight.w800),
              //         ),
              //       ],
              //     ),
              //     ListView.builder(
              //       shrinkWrap: true,
              //       itemCount: _accountacti.length,
              //       itemBuilder: (context, index) {
              //         return ListTile(
              //           onTap: () {},
              //           leading: SvgPicture.asset(
              //             _accountacti[index].photo,
              //             color: const Color(0xff92A3FD),
              //           ),
              //           title: Text(_accountacti[index].title),
              //           trailing: IconButton(
              //               onPressed: () {},
              //               icon: SvgPicture.asset('assets/icons/arrow.svg')),
              //         );
              //       },
              //     ),
              //   ],
              // ),
            ),
            const SizedBox(height: 15),
            Container(
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
                children: [
                  Row(
                    children: const [
                      Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/notification3.svg',
                        color: const Color(0xff92A3FD),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Pop-up Notification",
                        ),
                      ),
                      Switch(
                        value: _switch,
                        onChanged: (bool valueIn) {
                          setState(() {
                            _switch = valueIn;
                          });
                        },
                        activeColor: const Color(0xffC58BF2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
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
                children: [
                  Row(
                    children: const [
                      Text(
                        'Other',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/message2.svg',
                        color: const Color(0xff92A3FD),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Contact Us",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/done.svg',
                        color: const Color(0xff92A3FD),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Privacy Policy",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/setting.svg',
                        color: const Color(0xff92A3FD),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: Text(
                          "Settings",
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/arrow.svg'),
                      ),
                    ],
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

class AccountActi {
  late String photo;
  late String title;

  AccountActi(
    this.photo,
    this.title,
  );
}

class OtherActi {
  late String photo;
  late String title;

  OtherActi(
    this.photo,
    this.title,
  );
}
