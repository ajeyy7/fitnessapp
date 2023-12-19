import 'package:fitnessapp/view/pages/exersice_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Hello, ",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepOrange.shade600,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "User !",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Explore",style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade900,
                fontWeight: FontWeight.bold),),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Exercise_Page()));
                },
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/exersice.jpg")),
                    borderRadius: BorderRadius.circular(20),
                   // color: Colors.blueGrey.shade200,
                  ),
                  child: Text("     Exercise",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/yoga.jpg")),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey.shade200,
                ),
                child: Text("    Yoga",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
