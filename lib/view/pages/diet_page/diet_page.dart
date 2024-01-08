import 'package:fitnessapp/view/pages/diet_page/categories/breakfast_categorie.dart';
import 'package:fitnessapp/view/pages/diet_page/categories/dinner_categorie.dart';
import 'package:fitnessapp/view/pages/diet_page/categories/lowcal_categorie.dart';
import 'package:fitnessapp/view/pages/diet_page/categories/lunch_categorie.dart';
import 'package:fitnessapp/view/pages/diet_page/categories/salad_categorie.dart';
import 'package:fitnessapp/view/pages/diet_page/categories/soup_categorie.dart';
import 'package:fitnessapp/view/pages/diet_page/categories/sugarfree_categories.dart';
import 'package:fitnessapp/view/pages/diet_page/categories/veg_categorie.dart';
import 'package:flutter/material.dart';

import 'components/food_container.dart';

class Diet_page extends StatelessWidget {
  Diet_page({super.key});

  List categorylist = [
    [Icons.coffee, 'Breakfast', BreakFast()],
    [Icons.rice_bowl, 'Lunch', Lunch()],
    [Icons.dinner_dining_rounded, 'Dinner', DinnerPage()],
    [Icons.eco_outlined, 'Veg', Veg()],
    [Icons.soup_kitchen_outlined, 'Soup', Soup()],
    [Icons.trending_down, 'Low kcal', Lowcal()],
    [Icons.spa_outlined, 'Salad', Salad()],
    [Icons.snowing, 'Sugarfree', SugarFree()],
  ];

  List foodimg = [
    "assets/images/vegies.jpg",
    "assets/images/vegies.jpg",
    "assets/images/vegies.jpg",
    "assets/images/vegies.jpg",
    "assets/images/vegies.jpg",
    "assets/images/vegies.jpg",
    "assets/images/vegies.jpg",
    "assets/images/vegies.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Food",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo.shade400,
                  child: const Center(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.indigo.shade400,
                  child: const Center(
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.indigo.shade400,
                  child: const Center(
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
                    "Get Inspired",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade50,
                        fontSize: 17),
                  ),
                  Icon(Icons.lightbulb, color: Colors.indigo.shade50),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(foodimg.length, (index) {
                  return Food_Container(img: foodimg[index]);
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade50,
                        fontSize: 17),
                  ),
                  Icon(Icons.star, color: Colors.indigo.shade50),
                ],
              ),
            ),
            Container(
              height: 290,
              width: 390,
              child: GridView.builder(
                  itemCount: categorylist.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => categorylist[index][2],
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 5),
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    color: Colors.grey.shade700),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.indigo.shade800),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(categorylist[index][0],
                                      color: Colors.indigo.shade50),
                                  const SizedBox(height: 5),
                                  Text(
                                    categorylist[index][1],
                                    style: TextStyle(
                                        color: Colors.grey.shade50,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
