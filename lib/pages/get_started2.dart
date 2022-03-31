import 'package:fitness/pages/get_started3.dart';
import 'package:flutter/material.dart';

class GetStarted2 extends StatefulWidget {
  const GetStarted2({Key? key}) : super(key: key);

  @override
  State<GetStarted2> createState() => _GetStarted2State();
}

class _GetStarted2State extends State<GetStarted2> {
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
                image: AssetImage('assets/images/getburn.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    child: Text(
                      'Get Burn',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    child: Text(
                      "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
                      style: TextStyle(fontSize: 16, color: Color(0xff56575a)),
                    ),
                  ),
                  const SizedBox(
                    height: 115,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: FloatingActionButton(
                      backgroundColor: const Color(0xff98BAFE),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStarted3())),
                      child: const Icon(
                        Icons.arrow_right,
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
