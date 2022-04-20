import 'package:fitness/components/card_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/button.dart';
import '../../components/linear_charts.dart';
import '../welcome_home.dart';

class MealPlanner extends StatefulWidget {
  const MealPlanner({Key? key}) : super(key: key);

  @override
  State<MealPlanner> createState() => _MealPlannerState();
}

class _MealPlannerState extends State<MealPlanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WelcomeHome())),
            icon: SvgPicture.asset('assets/icons/backnavs.svg')),
        title: const Text(
          'Meal Planner',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 20,
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
                        "Meal Nutritions",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(),
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff9DCEFF),
                          Color(0xff92A3FD),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Weekliy',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset('assets/icons/down.svg'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const LinearCharts(),
            const SizedBox(
              height: 25,
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
                      "Daily Meal Schedule",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const ButtonReu(
                      textbu: 'Check',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Meal Nutritions",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(),
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff9DCEFF),
                          Color(0xff92A3FD),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Breakfast',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset('assets/icons/down.svg'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color(0xffF7F8F8),
                    blurRadius: 10.0,
                  ),
                ],
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/salmon2.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Salmon Niguiri",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Today 7am',
                          style: TextStyle(
                            color: Color(0xff7B6F72),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/reminders.svg',
                    color: const Color(0xffC58BF2),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color(0xffF7F8F8),
                    blurRadius: 10.0,
                  ),
                ],
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/cupmilk.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Lowfat Milk",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Today 8am',
                          style: TextStyle(
                            color: Color(0xff7B6F72),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/reminders2.svg',
                    color: const Color(0xffADA4A5),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Find Something to Eat",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardCategory('assets/images/breakfastcard.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  CardCategory('assets/images/lunchcard2.png'),
                  const SizedBox(
                    width: 10,
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
