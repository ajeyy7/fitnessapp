import 'package:fitnessapp/controller/provider/yogaorexersice.dart';
import 'package:fitnessapp/view/pages/intro_page/components/blckbutton.dart';
import 'package:fitnessapp/view/pages/intro_page/components/image_container.dart';
import 'package:fitnessapp/view/pages/intro_page/components/buttonz.dart';
import 'package:fitnessapp/view/pages/intro_page/goal_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YogaorExersice extends StatelessWidget {
  const YogaorExersice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                )),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Which do you prefer: Yoga or "
              "Exercise?",
              style: TextStyle(
                  fontSize: 29,
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ImageContainer(
              genderimg: Provider.of<Exersicepref>(context).isYoga
                  ? "assets/images/yoga.png"
                  : "assets/images/exersce.jpg",
              onTap: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlckButton(
                  gendername: "Yoga",
                  onTap: () {
                    Provider.of<Exersicepref>(context, listen: false)
                        .selectPref(true);
                  }),
              BlckButton(
                  gendername: "Exersice",
                  onTap: () {
                    Provider.of<Exersicepref>(context, listen: false)
                        .selectPref(false);
                  }),
            ],
          ),
          ButtonZ(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Goal_Page()));
              },
              buttontxt: "Next")
        ],
      ),
    );
  }
}
