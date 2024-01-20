import 'package:fitnessapp/view/components/date_container.dart';
import 'package:fitnessapp/view/pages/favorite_page/favorite_page.dart';
import 'package:fitnessapp/view/pages/home_page/components/picks_for_you.dart';
import 'package:fitnessapp/view/pages/home_page/components/yoga_exersice.dart';
import 'package:fitnessapp/view/pages/home_page/exersice_page/exersice_page.dart';
import 'package:fitnessapp/view/pages/home_page/picks_for_you/picks_for_you.dart';
import 'package:fitnessapp/view/pages/home_page/strech/strech.dart';
import 'package:fitnessapp/view/pages/home_page/yoga_page/yoga_page.dart';
import 'package:fitnessapp/view/pages/profile_page/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hello,",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey.shade50,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 14),
                            Text(
                              "Mr Wick !",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                         Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: InkWell(
                                //splashColor: Colors.indigo.shade400,
                                highlightColor: Colors.black,
                                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),)),
                                child: CircleAvatar(
                                  radius: 23,
                                  backgroundImage:
                                      AssetImage("assets/images/exersce.jpg"),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Date_Container(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Yoga_Exersice(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Exercise_Page()));
                  },
                  imgpath: "assets/images/exersce.jpg",
                  nametxt: "Exersice",
                  txta: '15 Tasks',
                  txtb: '45 Min',
                  txtc: '2300 Kcal',
                  Icona: Icons.task_alt_outlined,
                  Iconb: Icons.timer_outlined,
                  Iconc: Icons.local_fire_department_outlined,
                ),
                Yoga_Exersice(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Yoga_page()));
                  },
                  imgpath: "assets/images/yoga.png",
                  nametxt: "Yoga",
                  txta: '10 Tasks',
                  txtb: '40 Min',
                  txtc: '2500 Kcal',
                  Icona: Icons.task_alt_outlined,
                  Iconb: Icons.timer_outlined,
                  Iconc: Icons.local_fire_department_outlined,
                ),
                TabBar(tabs: [
                  Tab(child:Text(
                    "Picks for you",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade50,
                        fontWeight: FontWeight.bold),
                  ),),
                  Tab(child:Text(
                    "Stretch",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade50,
                        fontWeight: FontWeight.bold),
                  ),)
                ]),
                Container(
                  height: 390,

                  child: TabBarView(children: [
                    Picks_foryou(),
                    Strech()
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
