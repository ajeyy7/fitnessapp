import 'package:flutter/material.dart';

import '../../../../Database/db.dart';

class Category_Main extends StatelessWidget {
  final index;

  const Category_Main({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var cat = diet[index]["recipes"];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
            Container(
            height: 430,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      cat[index]["imageUrl"]
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cat[index]["name"],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade50,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.timer_outlined, color: Colors.indigo.shade50,),
                    Text("15 Mins", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade50,
                        fontSize: 20),)
                  ],
                ),
                Text("|", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo.shade50,
                    fontSize: 40),),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.local_fire_department_outlined,
                          color: Colors.indigo.shade50,),
                        Text("150 Calories", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade50,
                            fontSize: 20),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ingredients",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade50,
                      fontSize: 27),
                ),
              ],
            ),
          ),
          Text(
            "Pancake mix, Blueberries, Maple syrup, Butter",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade50,
                fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Instructions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade50,
                      fontSize: 27),
                ),
              ],
            ),
          ),
          Text(
              "Prepare pancake batter according to package instructions,Fold in blueberries, Cook pancakes on a griddle.Serve with maple syrup and butter,",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.indigo.shade50,
              fontSize: 20),
        ),
        ],
      ),
    ),)
    ,
    );
  }
}
