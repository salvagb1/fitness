import 'package:fitness/pages/notification.dart';
import 'package:fitness/pages/welcome_home.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              child: Image(image: AssetImage('assets/images/welcome.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    child: Text(
                      "Welcome, stefani",
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
                      "You are all set now, let's reach your",
                      style: TextStyle(fontSize: 14, color: Color(0xff56575a)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    child: Text(
                      "goals together with us",
                      style: TextStyle(fontSize: 14, color: Color(0xff56575a)),
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomeHome())),
                      child: const Text(
                        'To Home',
                        style: TextStyle(
                          color: Colors.white,
                        ),
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
