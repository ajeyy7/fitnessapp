import 'dart:async';

import 'package:fitnessapp/view/pages/intro_page/gender_page.dart';
import 'package:flutter/material.dart';

class Splash_Page extends StatelessWidget {
  const Splash_Page({super.key});

  @override

  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Gender_page()));
    });
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150
                ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/applogo.jpg"))
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "fitifi",
                  style: TextStyle(
                    letterSpacing: 5,
                      fontSize: 29,
                      color: Colors.grey.shade50,
                      fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
