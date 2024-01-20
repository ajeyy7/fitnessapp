import 'dart:convert';
import 'package:fitnessapp/view/pages/diet_page/categories/category_page.dart';
import 'package:fitnessapp/view/pages/diet_page/components/foodconatiner_shimmer.dart';
import 'package:fitnessapp/view/pages/favorite_page/favorite_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';

import 'components/food_container.dart';

class Diet_page extends StatefulWidget {
  Diet_page({super.key});

  @override
  State<Diet_page> createState() => _Diet_pageState();
}

class _Diet_pageState extends State<Diet_page> {
  List categorylist = [
    [
      Icons.coffee,
      'Breakfast',
    ],
    [
      Icons.rice_bowl,
      'Lunch',
    ],
    [Icons.dinner_dining_rounded, 'Dinner'],
    [Icons.snowing, 'Sugarfree'],
    [Icons.trending_down, 'Low kcal'],
    [Icons.eco_outlined, 'Veg'],
    [Icons.spa_outlined, 'Salad'],
    [Icons.soup_kitchen_outlined, 'Soup'],
  ];

  Future<List<Map<String, dynamic>>> loadgetinspired() async {
    final jsonString =
        await rootBundle.loadString('assets/json/getinspired.json');
    final jsonData = json.decode(jsonString) as List<dynamic>;

    List<Map<String, dynamic>> recipes =
        List<Map<String, dynamic>>.from(jsonData[0]['recipes']);

    return recipes;
  }

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
                  child: Center(
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Favorite_Page())),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
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
            Container(
              height: 390,
              width: double.infinity,
              child: FutureBuilder(
                future: loadgetinspired(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    print('Error loading data: ${snapshot.error}');
                    return Center(child: Text("Error loading data"));
                  } else {
                    List<Map<String, dynamic>> getinspired = snapshot.data!;

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: getinspired.length,
                      itemBuilder: (context, index) {
                          return Food_Container(
                              img: getinspired[index]["imageUrl"],
                              name: getinspired[index]["name"],
                              timeneeded: getinspired[index]["timeNeeded"],
                              calories: getinspired[index]["calories"]);

                      },
                    );
                  }
                },
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

            ///category container

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
                                  builder: (context) => Category_page(
                                        index: index,
                                      )));
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
