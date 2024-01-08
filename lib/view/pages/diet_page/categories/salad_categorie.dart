import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/diet_categorie_container.dart';

class Salad extends StatelessWidget {
  const Salad({super.key});
  Future<List<Map<String, dynamic>>> loadsalad() async {
    final jsonString = await rootBundle.loadString('assets/json/recipe.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // Assuming Dinner is at index 2
    List<Map<String, dynamic>> saladrecipie =
    jsonData['recipes'][6]['recipes'].cast<Map<String, dynamic>>();

    return saladrecipie;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salad Recipes"),
      ),
      body: FutureBuilder(
        future: loadsalad(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error loading data: ${snapshot.error}');
            return Center(child: Text("Error loading data"));
          } else {
            List<Map<String, dynamic>> saladrecipie = snapshot.data!;

            return ListView.builder(
              itemCount: saladrecipie.length,
              itemBuilder: (context, index) {
                return Diet_Container(
                  img: saladrecipie[index]['imageUrl'],
                  timee: saladrecipie[index]['timeNeeded'],
                  kcal: saladrecipie[index]['calories'],
                  namee: saladrecipie[index]['name'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
