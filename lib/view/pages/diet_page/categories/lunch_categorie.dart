import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/diet_categorie_container.dart';

class Lunch extends StatelessWidget {
  const Lunch({super.key});
  Future<List<Map<String, dynamic>>> loadlunch() async {
    final jsonString = await rootBundle.loadString('assets/json/recipe.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // Assuming Dinner is at index 2
    List<Map<String, dynamic>> lunchrecepie =
    jsonData['recipes'][1]['recipes'].cast<Map<String, dynamic>>();

    return lunchrecepie;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lunch Recipes"),
      ),
      body: FutureBuilder(
        future: loadlunch(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error loading data: ${snapshot.error}');
            return Center(child: Text("Error loading data"));
          } else {
            List<Map<String, dynamic>> lunchrecepie = snapshot.data!;

            return ListView.builder(
              itemCount: lunchrecepie.length,
              itemBuilder: (context, index) {
                return Diet_Container(
                  img: lunchrecepie[index]['imageUrl'],
                  timee: lunchrecepie[index]['timeNeeded'],
                  kcal: lunchrecepie[index]['calories'],
                  namee: lunchrecepie[index]['name'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
