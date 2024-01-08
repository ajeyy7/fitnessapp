import 'package:flutter/material.dart';

class Food_Container extends StatelessWidget {
  final String img;

  const Food_Container({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                offset: Offset(-4, 5),
                blurRadius: 6,
                spreadRadius: 1,
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
                  height: 300,
                  width: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
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
                                  color: Colors.indigo.shade900,
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
                height: 70,
                width: 280,
               decoration: BoxDecoration(
                 color: Colors.grey.shade200,
               ),
                child: Column(
                  children: [
                    Text(
                      "Rice Meals",
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
                              Text("5 Min"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department_outlined,
                                color: Colors.indigo.shade900,
                              ),
                              Text("336 kcal")
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
    );
  }
}
