import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/diet_categorie_container.dart';

class SugarFree extends StatelessWidget {
  const SugarFree({super.key});
  Future<List<Map<String, dynamic>>> loadsugarfree() async {
    final jsonString = await rootBundle.loadString('assets/json/recipe.json');
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // Assuming Dinner is at index 2
    List<Map<String, dynamic>> sugarfreerecepie =
    jsonData['recipes'][3]['recipes'].cast<Map<String, dynamic>>();

    return sugarfreerecepie;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sugarfree Recipes"),
      ),
      body: FutureBuilder(
        future: loadsugarfree(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error loading data: ${snapshot.error}');
            return Center(child: Text("Error loading data"));
          } else {
            List<Map<String, dynamic>> sugarfreerecepie = snapshot.data!;

            return ListView.builder(
              itemCount: sugarfreerecepie.length,
              itemBuilder: (context, index) {
                return Diet_Container(
                  img: sugarfreerecepie[index]['imageUrl'],
                  timee: sugarfreerecepie[index]['timeNeeded'],
                  kcal: sugarfreerecepie[index]['calories'],
                  namee: sugarfreerecepie[index]['name'],
                );
              },
            );
          }
        },
      ),
    );
  }
}
