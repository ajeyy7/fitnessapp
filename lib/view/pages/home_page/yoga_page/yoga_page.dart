import 'package:fitnessapp/view/pages/home_page/yoga_page/components/daily_yoga.dart';
import 'package:fitnessapp/view/pages/home_page/yoga_page/components/yoga_categories.dart';
import 'package:fitnessapp/view/pages/home_page/yoga_page/components/yoga_container.dart';
import 'package:flutter/material.dart';

class Yoga_page extends StatelessWidget {
   Yoga_page({super.key});
  @override
  List yogastats=[
    ["12",Icons.accessibility,"classes"],
    ["120",Icons.local_fire_department_outlined,"Kcal"],
    ["10:00",Icons.timer_outlined,"Minutes"]
  ];
   List daily=[
     ["Sunrise Yoga","assets/images/sunrise_yoga.jpg"],
     ["Bedtime Strech","assets/images/bedtime_yoga.jpg"],
   ];
   List yogacategorie=[
     ["Beginner","assets/images/beginner_yoga.jpg"],
     ["Getfit","assets/images/getfit.jpg"],
     ["Flexiblity","assets/images/flexiblity.jpg"],
     ["Relaxation","assets/images/relaxation.jpg"],
   ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    3,
                    (index) => Yoga_Stats(
                      count: yogastats[index][0],
                      kcal:yogastats[index][2] ,
                      icons: yogastats[index][1],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Daily  ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade50,
                        fontSize: 17),
                  ),
                  Icon(Icons.event_repeat_outlined, color: Colors.indigo.shade50),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:  List.generate(2, (index) => Daily_yoga(namee:daily[index][0], imgg: daily[index][1]))
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Categories  ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade50,
                        fontSize: 17),
                  ),
                  Icon(Icons.sort, color: Colors.indigo.shade50),
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
                  itemBuilder: (context, index) => Yoga_categories(namee: yogacategorie[index][0], imgg: yogacategorie[index][1])),
            )
          ],
        ),
      ),
    );
  }
}
