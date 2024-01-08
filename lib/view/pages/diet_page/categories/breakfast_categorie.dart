import 'dart:convert';

import 'package:fitnessapp/view/pages/diet_page/components/diet_categorie_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BreakFast extends StatelessWidget {
  const BreakFast({super.key});

  Future<List<Map<String, dynamic>>> loadbreakfast() async {
    final jsonString = await rootBundle.loadString('assets/json/recipe.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // Assuming Dinner is at index 2
    List<Map<String, dynamic>> breakfastrecipies =
        jsonData['recipes'][0]['recipes'].cast<Map<String, dynamic>>();

    return breakfastrecipies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Breakfast Recipes"),
      ),
      body: FutureBuilder(
        future: loadbreakfast(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error loading data: ${snapshot.error}');
            return Center(child: Text("Error loading data"));
          } else {
            List<Map<String, dynamic>> breakfastrecipe = snapshot.data!;

            return ListView.builder(
              itemCount: breakfastrecipe.length,
              itemBuilder: (context, index) {
                return Diet_Container(
                  img: breakfastrecipe[index]['imageUrl'],
                  timee: breakfastrecipe[index]['timeNeeded'],
                  kcal: breakfastrecipe[index]['calories'],
                  namee: breakfastrecipe[index]['name'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
