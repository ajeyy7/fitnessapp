import 'package:flutter/material.dart';
import '../../components/bottom_nav.dart';
import 'components/buttonz.dart';
import 'components/focus_area.dart';

class FocusArea extends StatelessWidget {
  const FocusArea({super.key});

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Choose your focus area ?",
                  style: TextStyle(
                      fontSize: 29,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  FocusareaTile(textt: "Arms", index: 0),
                  FocusareaTile(
                    textt: "Abs",
                    index: 1,
                  ),
                  FocusareaTile(
                    textt: "Butt",
                    index: 2,
                  ),
                  FocusareaTile(
                    textt: "Leg",
                    index: 3,
                  ),
                  Container(
                    height: 130,
                    width: double.infinity,
                    child: FocusareaTile(
                      textt: "Full body",
                      index: 4,
                    ),
                  ),
                ],
              ),
              ButtonZ(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Nav()));
              }, buttontxt: "Next")
            ],
          ),
        ),
      ),
    );
  }
}
