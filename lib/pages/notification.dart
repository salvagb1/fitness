import 'package:fitness/pages/view_notification.dart';
import 'package:fitness/pages/welcome_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<ActivityPerson> _notifications = [
  ActivityPerson('assets/images/Ellipse1.jpg', "Hey, it's time for lunch",
      "About 1 minitus ago"),
  ActivityPerson('assets/images/Ellipse2.jpg',
      "Don't miss your lawerbody workout", "About 1 minitus ago"),
  ActivityPerson('assets/images/Ellipse3.jpg',
      "Hey, let's some meals for your b...", "About 1 minitus ago"),
  ActivityPerson(
      'assets/images/Ellipse4.jpg',
      "Congratulations, You have finishied aaaaaaaaaaaaaaa",
      "About 1 minitus ago"),
  ActivityPerson('assets/images/Ellipse5.jpg', "Hey, it's time for lunch",
      "About 1 minitus ago"),
  ActivityPerson('assets/images/Ellipse6.jpg',
      "Ups, You have missied your Lowerbo...", "About 1 minitus ago"),
];

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
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: _notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ViewNotification())),
            leading: CircleAvatar(
              backgroundImage: AssetImage(_notifications[index].photo),
            ),
            title: Text(_notifications[index].title),
            subtitle: Text(_notifications[index].description),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}

class ActivityPerson {
  late String photo;
  late String title;
  late String description;

  ActivityPerson(this.photo, this.title, this.description);
}
