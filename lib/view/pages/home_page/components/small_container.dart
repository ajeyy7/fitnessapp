import 'package:flutter/material.dart';

class Small_containerr extends StatelessWidget {
  const Small_containerr({super.key, required this.icon, required this.txt, });
  final IconData? icon;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 33,
        width: 83,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 2,
                  spreadRadius: 1,
                  color: Colors.indigo.shade500),
            ],
            color: Colors.indigo.shade200,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              Icon(icon,size:17,color: Colors.indigo.shade900,),
              SizedBox(width:6),
              Text(txt,style: TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,fontSize:11)),
            ],
          ),
        ),
      ),
    );
  }
}
