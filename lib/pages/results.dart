import 'package:fitness/components/appbar.dart';
import 'package:fitness/pages/tabbarpage/tab_photo.dart';
import 'package:fitness/pages/tabbarpage/tab_statistic.dart';
import 'package:fitness/pages/welcome_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResultFitness extends StatefulWidget {
  const ResultFitness({Key? key}) : super(key: key);

  @override
  State<ResultFitness> createState() => _ResultFitnessState();
}

class _ResultFitnessState extends State<ResultFitness>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        /* appBar: const PreferredSize(
          child: AppBarcom(titletext: 'Result'),
          preferredSize: Size.fromHeight(50), 
          ),*/
        /* appBar: AppBarcom(
          titletext: 'Result',
          toolbarHeight: 65,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffF7F8F8),
              ),
              padding: const EdgeInsets.all(10),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff9DCEFF),
                      Color(0xff92A3FD),
                    ],
                  ),
                ),
                unselectedLabelColor: const Color(0xffADA4A5),
                tabs: const [
                  Tab(
                    text: 'Photo',
                  ),
                  Tab(text: 'Statidtic'),
                ],
              ),
            ),
          ),
        ), */
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WelcomeHome())),
              icon: SvgPicture.asset('assets/icons/backnavs.svg')),
          title: const Text(
            'Result',
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
          toolbarHeight: AppBar().preferredSize.height + 40,
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 20),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffF7F8F8),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff9DCEFF),
                      Color(0xff92A3FD),
                    ],
                  ),
                ),
                unselectedLabelColor: const Color(0xffADA4A5),
                tabs: const [
                  Tab(
                    child: Text('Photo'),
                  ),
                  Tab(
                    child: Text('Statistic'),
                  )
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            TabPhoto(),
            const TabStatistic(),
          ],
        ),
      ),
    );
  }
}
