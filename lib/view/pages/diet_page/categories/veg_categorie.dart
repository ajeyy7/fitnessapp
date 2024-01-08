import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/diet_categorie_container.dart';

class Veg extends StatelessWidget {
  const Veg({super.key});

  Future<List<Map<String, dynamic>>> loadveg() async {
    final jsonString = await rootBundle.loadString('assets/json/recipe.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // Assuming Dinner is at index 2
    List<Map<String, dynamic>> vegrecipies =
        jsonData['recipes'][5]['recipes'].cast<Map<String, dynamic>>();

    return vegrecipies;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Veg Recipes"),
      ),
      body: FutureBuilder(
        future: loadveg(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error loading data: ${snapshot.error}');
            return Center(child: Text("Error loading data"));
          } else {
            List<Map<String, dynamic>> vegrecipies = snapshot.data!;

            return ListView.builder(
              itemCount: vegrecipies.length,
              itemBuilder: (context, index) {
                return Diet_Container(
                  img: vegrecipies[index]['imageUrl'],
                  timee: vegrecipies[index]['timeNeeded'],
                  kcal: vegrecipies[index]['calories'],
                  namee: vegrecipies[index]['name'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
