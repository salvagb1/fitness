import 'package:fitness/components/card_gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../welcome_home.dart';

class CameraBtn extends StatefulWidget {
  const CameraBtn({Key? key}) : super(key: key);

  @override
  State<CameraBtn> createState() => _CameraBtnState();
}

class _CameraBtnState extends State<CameraBtn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WelcomeHome())),
            icon: SvgPicture.asset('assets/icons/backnavs.svg')),
        title: const Text(
          'Progress Photo',
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
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
        backgroundColor: const Color(0xffC58BF2),
        onPressed: () {},
        child: SvgPicture.asset(
          'assets/icons/camera.svg',
          color: Colors.white,
        ),
      ),
    );
  }
}
