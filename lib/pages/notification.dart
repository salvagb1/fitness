import 'package:fitness/pages/activity_tracker.dart';
import 'package:fitness/pages/welcome_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationFitness extends StatefulWidget {
  const NotificationFitness({Key? key}) : super(key: key);

  @override
  State<NotificationFitness> createState() => _NotificationFitnessState();
}

class _NotificationFitnessState extends State<NotificationFitness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WelcomeHome())),
            icon: SvgPicture.asset('assets/icons/backnavs.svg')),
        title: const Text(
          'Notification',
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
          children: [
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ActivityTracker())),
              child: Row(
                children: [
                  const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/Ellipse1.jpg')),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hey, it's time forlunch",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('About 1 minutes ago'),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
              ),
            ),
            const Divider(
              color: Color(0xffDDDADA),
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellipse2.jpg')),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Don’t miss your lowerbody workout",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('About 3 hours ago'),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const Divider(
              color: Color(0xffDDDADA),
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellipse3.jpg')),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hey, let’s add some meals for your b..",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('About 3 hours ago'),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const Divider(
              color: Color(0xffDDDADA),
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellipse4.jpg')),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Congratulations, You have finished A..",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('29 May'),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const Divider(
              color: Color(0xffDDDADA),
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellipse6.jpg')),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hey, it's time forlunch",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('8 April'),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const Divider(
              color: Color(0xffDDDADA),
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellipse5.jpg')),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Ups, You have missed your Lowerbo...",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('3 April'),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const Divider(
              color: Color(0xffDDDADA),
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
