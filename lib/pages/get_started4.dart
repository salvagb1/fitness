import 'package:fitness/pages/create_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetStarted4 extends StatefulWidget {
  const GetStarted4({Key? key}) : super(key: key);

  @override
  State<GetStarted4> createState() => _GetStarted4State();
}

class _GetStarted4State extends State<GetStarted4> {
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
                image: AssetImage('assets/images/sleepquality.jpg'),
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
                      'Improve Sleep Quality',
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
                      "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
                      style: TextStyle(fontSize: 16, color: Color(0xff56575a)),
                    ),
                  ),
                  SizedBox(
                    height: 95,
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
              builder: (context) => const CreateAccount(),
            )),
        child: SvgPicture.asset('assets/icons/arrow_right.svg'),
      ),
    );
  }
}
