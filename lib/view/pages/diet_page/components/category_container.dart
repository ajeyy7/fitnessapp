import 'package:flutter/material.dart';

class Category_container extends StatelessWidget {
  const Category_container({super.key, required this.txt, required this.icon});
  final String txt;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.indigo.shade900
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            children: [
              Icon(icon,color: Colors.indigo.shade50),
              SizedBox(height: 5),
              Text(txt,style: TextStyle(color: Colors.grey.shade50),),
            ],
          ),
        ),
      ),
    );
  }
}
