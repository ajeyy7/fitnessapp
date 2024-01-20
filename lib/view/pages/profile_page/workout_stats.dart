import 'package:flutter/material.dart';

class Workout_stats extends StatelessWidget {
   Workout_stats({super.key, required this.count, required this.kcal, required this.icons});
  final String count;
  final String kcal;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.indigo.shade900,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              count,
              style: TextStyle(
                  fontSize: 29, color: Colors.grey.shade50),
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
                Icon(icons,
                    color: Colors.grey.shade50),
                Text(kcal,
                    style: TextStyle(
                        color: Colors.grey.shade50))
              ],
            )
          ],
        ),
      ),
    );
  }
}
