import 'package:fitness/pages/navigatorbtn/activity_btn.dart';
import 'package:fitness/pages/navigatorbtn/camera_btn.dart';
import 'package:fitness/pages/navigatorbtn/home_btn.dart';
import 'package:fitness/pages/navigatorbtn/profile_btn.dart';
import 'package:fitness/pages/navigatorbtn/search_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeHome extends StatefulWidget {
  const WelcomeHome({Key? key}) : super(key: key);

  @override
  State<WelcomeHome> createState() => _WelcomeHomeState();
}

class _WelcomeHomeState extends State<WelcomeHome> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeBtn(),
    ActivityBtn(),
    SearchBtn(),
    CameraBtn(),
    ProfileBtn(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeBtn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        child: SvgPicture.asset('assets/icons/search.svg'),
        backgroundColor: const Color(0xff92A3FD),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomeBtn();
                        currentTab = 0;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/icons/home3.svg',
                      color: currentTab == 0
                          ? const Color(0xffC58BF2)
                          : const Color(0xffADA4A5),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomeBtn();
                        currentTab = 1;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/icons/activity.svg',
                      color: currentTab == 1
                          ? const Color(0xffC58BF2)
                          : const Color(0xffADA4A5),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomeBtn();
                        currentTab = 2;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/icons/camera.svg',
                      color: currentTab == 2
                          ? const Color(0xffC58BF2)
                          : const Color(0xffADA4A5),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomeBtn();
                        currentTab = 3;
                      });
                    },
                    child: SvgPicture.asset(
                      'assets/icons/profile.svg',
                      color: currentTab == 3
                          ? const Color(0xffC58BF2)
                          : const Color(0xffADA4A5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
