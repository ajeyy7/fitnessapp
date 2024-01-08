// dinner_page.dart

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../components/diet_categorie_container.dart';

class DinnerPage extends StatelessWidget {
  // Load dinner recipes from the JSON file
  Future<List<Map<String, dynamic>>> loadDinnerRecipes() async {
    final jsonString = await rootBundle.loadString('assets/json/recipe.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // Assuming Dinner is at index 2
    List<Map<String, dynamic>> dinnerRecipes =
        jsonData['recipes'][2]['recipes'].cast<Map<String, dynamic>>();

    return dinnerRecipes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dinner Recipes"),
      ),
      body: FutureBuilder(
        future: loadDinnerRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error loading data: ${snapshot.error}');
            return Center(child: Text("Error loading data"));
          } else {
            List<Map<String, dynamic>> dinnerRecipes = snapshot.data!;

            return ListView.builder(
              itemCount: dinnerRecipes.length,
              itemBuilder: (context, index) {
                return Diet_Container(
                  img: dinnerRecipes[index]['imageUrl'],
                  timee: dinnerRecipes[index]['timeNeeded'],
                  kcal: dinnerRecipes[index]['calories'],
                  namee: dinnerRecipes[index]['name'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
