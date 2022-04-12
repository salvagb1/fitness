import 'package:fitness/pages/get_started4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetStarted3 extends StatefulWidget {
  const GetStarted3({Key? key}) : super(key: key);

  @override
  State<GetStarted3> createState() => _GetStarted3State();
}

class _GetStarted3State extends State<GetStarted3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 455,
              child: const Image(
                image: AssetImage('assets/images/eatwell.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    child: Text(
                      'Eat Well',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Text(
                      "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
                      style: TextStyle(fontSize: 16, color: Color(0xff56575a)),
                    ),
                  ),
                  SizedBox(
                    height: 115,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff98BAFE),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const GetStarted4(),
            )),
        child: SvgPicture.asset('assets/icons/arrow_right.svg'),
      ),
    );
  }
}
