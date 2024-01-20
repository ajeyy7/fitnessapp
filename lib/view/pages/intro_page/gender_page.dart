import 'package:fitnessapp/controller/provider/gender_controller.dart';
import 'package:fitnessapp/view/pages/intro_page/components/buttonz.dart';
import 'package:fitnessapp/view/pages/intro_page/yoga_or_exersice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/image_container.dart';
import 'components/blckbutton.dart';

class Gender_page extends StatelessWidget {
  Gender_page({super.key});

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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Select your gender",
                style: TextStyle(
                    fontSize: 29,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ImageContainer(
              genderimg: Provider.of<GenderController>(context).isMale
                  ? "assets/images/men.png"
                  : "assets/images/women.png",
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlckButton(
                  gendername: "Male",
                  onTap: () {
                    Provider.of<GenderController>(context, listen: false)
                        .selectGender(true);
                  }
                ),
                BlckButton(
                  gendername: "Female",
                  onTap: () {
                    Provider.of<GenderController>(context, listen: false)
                        .selectGender(false);
                  }
                )
              ],
            ),
            ButtonZ(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => YogaorExersice())),
                buttontxt: "Next")
          ],
        ),
      ),
    );
  }
}
