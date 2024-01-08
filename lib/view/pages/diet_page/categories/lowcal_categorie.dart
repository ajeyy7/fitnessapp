import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/diet_categorie_container.dart';

class Lowcal extends StatelessWidget {
  const Lowcal({super.key});
  Future<List<Map<String, dynamic>>> loadlowcal() async {
    final jsonString = await rootBundle.loadString('assets/json/recipe.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // Assuming Dinner is at index 2
    List<Map<String, dynamic>> lowcalrecipe =
    jsonData['recipes'][4]['recipes'].cast<Map<String, dynamic>>();

    return lowcalrecipe;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LowKcal Recipes"),
      ),
      body: FutureBuilder(
        future: loadlowcal(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error loading data: ${snapshot.error}');
            return Center(child: Text("Error loading data"));
          } else {
            List<Map<String, dynamic>> lowcalrecipie = snapshot.data!;

            return ListView.builder(
              itemCount: lowcalrecipie.length,
              itemBuilder: (context, index) {
                return Diet_Container(
                  img: lowcalrecipie[index]['imageUrl'],
                  timee: lowcalrecipie[index]['timeNeeded'],
                  kcal: lowcalrecipie[index]['calories'],
                  namee: lowcalrecipie[index]['name'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
