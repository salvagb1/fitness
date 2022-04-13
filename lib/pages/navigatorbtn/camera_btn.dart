import 'package:fitness/components/appbar.dart';
import 'package:fitness/components/button.dart';
import 'package:fitness/components/card_gallery.dart';
import 'package:fitness/pages/comparison.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CameraBtn extends StatefulWidget {
  const CameraBtn({Key? key}) : super(key: key);

  @override
  State<CameraBtn> createState() => _CameraBtnState();
}

class _CameraBtnState extends State<CameraBtn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: AppBarcom(titletext: 'Progress Photo'),
        preferredSize: Size.fromHeight(50),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                color: const Color(0xffFFC2C2),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Compare my photo",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const ButtonReu(textbu: 'Compare'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(16),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Track Your Progress Each',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'Month With Photo',
                        style: TextStyle(fontWeight: FontWeight.w700),
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
                                Color(0xff9DCEFF),
                                Color(0xff92A3FD),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/images/calendar2.png')
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
                      "Compare my photo",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComparasionMonth(),
                        )),
                    child: const ButtonReu(
                      textbu: 'Compare',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Gallery",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'See More',
                    style: TextStyle(color: Color(0xffADA4A5)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '2 June',
              style: TextStyle(color: Color(0xff7B6F72)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardGallery('assets/images/gallery1.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  CardGallery('assets/images/gallery5.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  CardGallery('assets/images/gallery4.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  CardGallery('assets/images/gallery3.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '5 May',
              style: TextStyle(color: Color(0xff7B6F72)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardGallery('assets/images/gallery2.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  CardGallery('assets/images/gallery7.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  CardGallery('assets/images/gallery6.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  CardGallery('assets/images/gallery8.png'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'btn 2',
        backgroundColor: const Color(0xffC58BF2),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ComparasionMonth())),
        child: SvgPicture.asset(
          'assets/icons/camera.svg',
          color: Colors.white,
        ),
      ),
    );
  }
}
