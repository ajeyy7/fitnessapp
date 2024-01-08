import 'package:flutter/material.dart';

class Picksforyou extends StatelessWidget {
  const Picksforyou({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover
                  ,
                  image: AssetImage('assets/images/wrkoutcover.jpg')),
              color: Colors.indigo.shade900,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(16),bottomRight:Radius.circular(16),),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 4,
                          spreadRadius: 1,
                          color: Colors.indigo.shade500),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(16),bottomRight:Radius.circular(16),),
                  ),
                  child:Column(
                    children: [
                      Text("Belly fat burner"),
                      Text("13 Min")
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
