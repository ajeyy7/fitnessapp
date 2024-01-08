import 'package:flutter/material.dart';

class Date_Container extends StatelessWidget {
  Date_Container({super.key});

  List datetime = [
    ["Sun", "8"],
    ["Mon", "9"],
    ["Tue", "10"],
    ["Wed", "11"],
    ["Thu", "12"],
    ["Fri", "13"],
    ["Sat", "14"]
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.indigo.shade200,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 4,
                spreadRadius: 1,
                color: Colors.grey.shade700),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              datetime.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                child: Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 4,
                            spreadRadius: 1,
                            color: Colors.grey.shade800),
                      ],
                      color: Colors.indigo.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Text(
                          datetime[index][0],
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade50),
                        ),
                        Text(
                          datetime[index][1],
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade50),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
