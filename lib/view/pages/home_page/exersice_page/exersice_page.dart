import 'package:flutter/material.dart';

class Exercise_Page extends StatelessWidget {
  const Exercise_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WORKOUT",
          style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 6),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Row(
            children:List.generate(3, (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade900,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Text("0",style: TextStyle(fontSize: 40,color: Colors.grey.shade50),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.fitness_center,color: Colors.grey.shade50),
                        Text("Kcal",style: TextStyle(color: Colors.grey.shade50))
                      ],
                    )
                  ],
                ),
              ),
            )) ,
          ),
          Container(
            height: 100,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey.shade200,
            ),
          )
        ],
      ),
    );
  }
}
