import 'package:fitnessapp/view/pages/home_page/exersice_page/components/body_focus.dart';
import 'package:fitnessapp/view/pages/profile_page/workout_stats.dart';
import 'package:flutter/material.dart';

import '../components/picks_for_you.dart';

class Exercise_Page extends StatelessWidget {
  Exercise_Page({super.key});

  List exersicestats = [
    ["12", Icons.sports_gymnastics_outlined, "Workout"],
    ["120", Icons.local_fire_department_outlined, "Calories"],
    ["10:00", Icons.timer_outlined, "Minutes"]
  ];
  List bodyfocus = [
    ["Chest", "assets/images/chest.jpg"],
    ["Arms & shoulder", "assets/images/arms.jpg"],
    ["Lower body", "assets/images/legs.jpg"],
    ["Six pack", "assets/images/sixpack.jpg"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WORKOUT",
          style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 6),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Workout stats  ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade50,
                        fontSize: 17),
                  ),
                  Icon(Icons.data_usage, color: Colors.indigo.shade50),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    3,
                    (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Workout_stats(
                            count: exersicestats[index][0],
                            kcal: exersicestats[index][2],
                            icons: exersicestats[index][1]))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Body Focus  ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade50,
                        fontSize: 17),
                  ),
                  Icon(Icons.accessibility, color: Colors.indigo.shade50),
                ],
              ),
            ),
            Container(
              height: 390,
              width: 390,
              child: GridView.builder(
                  itemCount: bodyfocus.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Body_focus(
                        namee: bodyfocus[index][0],
                        imgg: bodyfocus[index][1],
                      )),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Streching",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade50,
                        fontSize: 17),
                  ),
                  Icon(Icons.accessibility, color: Colors.indigo.shade50),
                ],
              ),
            ),
            Container(
              height: 390,
              width: 390,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Picksforyou(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
