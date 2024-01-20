import 'package:fitnessapp/view/pages/intro_page/components/buttonz.dart';
import 'package:flutter/material.dart';
import 'components/option_tile.dart';
import 'focus_area.dart';

class Goal_Page extends StatelessWidget {
  const Goal_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
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
                "Whats your goal?",
                style: TextStyle(
                    fontSize: 29,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                OptionTile(textt: 'Build Muscle'),
                OptionTile(textt: 'Keep Fit'),
                OptionTile(textt: 'Loose weight'),
              ],
            ),
            ButtonZ(onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FocusArea()));
            }, buttontxt: "Next")
          ],
        ),
      ),
    );
  }
}
