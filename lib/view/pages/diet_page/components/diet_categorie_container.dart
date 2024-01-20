import 'package:flutter/material.dart';

class Diet_Container extends StatelessWidget {
  final String img;
  final String timee;
  final String kcal;
  final String namee;
  void Function()? onTap;

   Diet_Container(
      {super.key,
        required this.onTap,
      required this.img,
      required this.timee,
      required this.kcal,
      required this.namee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap:onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  offset: Offset(4, 9),
                  blurRadius: 16,
                  spreadRadius: -5,
                  color: Colors.indigo.shade500),
            ],
          ),
          child: Column(
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Container(
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(img), fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.indigo.shade800,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    children: [
                      Text(
                        namee,
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: Colors.indigo.shade900,
                                ),
                                SizedBox(width:7 ),
                                Text(timee),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.local_fire_department_outlined,
                                  color: Colors.indigo.shade900,
                                ),
                                SizedBox(width:7 ),
                                Text("$kcal Calories")
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
