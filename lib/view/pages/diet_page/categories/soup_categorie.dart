import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/diet_categorie_container.dart';

class Soup extends StatelessWidget {
  const Soup({super.key});
  Future<List<Map<String, dynamic>>> loadsoup() async {
    final jsonString = await rootBundle.loadString('assets/json/recipe.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // Assuming Dinner is at index 2
    List<Map<String, dynamic>> souprecipie =
    jsonData['recipes'][7]['recipes'].cast<Map<String, dynamic>>();

    return souprecipie;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soup Recipes"),
      ),
      body: FutureBuilder(
        future: loadsoup(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error loading data: ${snapshot.error}');
            return Center(child: Text("Error loading data"));
          } else {
            List<Map<String, dynamic>> souprecipie = snapshot.data!;

            return ListView.builder(
              itemCount: souprecipie.length,
              itemBuilder: (context, index) {
                return Diet_Container(
                  img: souprecipie[index]['imageUrl'],
                  timee: souprecipie[index]['timeNeeded'],
                  kcal: souprecipie[index]['calories'],
                  namee: souprecipie[index]['name'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
