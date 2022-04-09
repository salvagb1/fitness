import 'package:fitness/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivityTracker extends StatefulWidget {
  const ActivityTracker({Key? key}) : super(key: key);

  @override
  State<ActivityTracker> createState() => _ActivityTrackerState();
}

class _ActivityTrackerState extends State<ActivityTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationFitness())),
            icon: SvgPicture.asset('assets/icons/backnavs.svg')),
        title: const Text(
          'Activity Tracker',
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
            Container(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Activity Progress",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Text('Weekliy'),
                      const SizedBox(width: 5),
                      SvgPicture.asset('assets/icons/down.svg'),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff92A3FD)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10.0,
                  ),
                ],
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffF7F8F8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 50,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff92A3FD),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('data')
                    ],
                  ),
                  
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Latest Activity",
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
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
