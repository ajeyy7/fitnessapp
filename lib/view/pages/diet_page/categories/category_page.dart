import 'package:fitnessapp/view/pages/diet_page/categories/category_main.dart';
import 'package:flutter/material.dart';
import '../../../../Database/db.dart';
import '../components/diet_categorie_container.dart';

class Category_page extends StatelessWidget {
  Category_page({super.key, this.index});

  final index;

  @override
  Widget build(BuildContext context) {
    var cat = diet[index]["recipes"];
    return Scaffold(
        appBar: AppBar(

          title: Text(diet[index]["category"]),
        ),
        body: ListView.builder(
            itemCount: cat.length,
            itemBuilder: (context, index) => Diet_Container(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Category_Main(index: index),));
                },
                img: cat[index]["imageUrl"],
                timee: cat[index]["timeNeeded"],
                kcal: cat[index]["calories"],
                namee: cat[index]["name"])));
  }
}
