import 'package:fitness/components/card_workout.dart';
import 'package:fitness/pages/mealplanner/mealplanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/card_category.dart';
import '../../components/card_gallery.dart';

class BreakFast extends StatefulWidget {
  BreakFast({Key? key}) : super(key: key);

  @override
  State<BreakFast> createState() => _BreakFastState();
}

class _BreakFastState extends State<BreakFast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MealPlanner())),
            icon: SvgPicture.asset('assets/icons/backnavs.svg')),
        title: const Text(
          'Breakfast',
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
            const Text(
              "Category",
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
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardGallery('assets/images/SaladCard.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  CardGallery('assets/images/SaladCard2.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  CardGallery('assets/images/SaladCard3.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  CardGallery('assets/images/SaladCard4.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Recommendation",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              "For Diet",
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
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardCategory('assets/images/FoodCard.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  CardCategory('assets/images/FoodCard3.png'),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Popular",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: CardWorkout(
                'assets/images/pancake.png',
                'Blueberry Pancake',
                'Medium | 30mins | 230kCal',
                'assets/icons/arrow2.svg',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CardWorkout(
              'assets/images/salmon2.png',
              'Blueberry Pancake',
              'Medium | 20mins | 120kCal',
              'assets/icons/arrow2.svg',
            ),
          ],
        ),
      ),
    );
  }
}
