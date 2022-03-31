import 'package:flutter/material.dart';

class Started extends StatefulWidget {
  const Started({Key? key}) : super(key: key);

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Image(
            image: AssetImage('assets/images/yourgoal.jpg'),
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
                  'Track Your Goal',
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
                  "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
                  style: TextStyle(fontSize: 16, color: Color(0xff56575a)),
                ),
              ),
              const SizedBox(
                height: 140,
              ),
              Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  backgroundColor: const Color(0xff98BAFE),
                  onPressed: () {},
                  child: const Icon(
                    Icons.arrow_right,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
