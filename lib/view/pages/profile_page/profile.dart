import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  List profiletile = [
    [Icons.person, "EditProfile"],
    [Icons.notifications, "Remainder"],
    [Icons.timer, "Rest Timer"],
    [Icons.monitor_weight, "Height | Weight"],
    [Icons.monitor_weight, "Target Weight"],
    [Icons.favorite, "Share with Friends"],
    [Icons.feedback, "Feedback"],
    [Icons.security, "Privacy Policy"],
    [Icons.logout, "LogOut"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/exersce.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                child: Row(
                  children: [
                    Text("Settings ",
                        style:
                            TextStyle(color: Colors.grey.shade50, fontSize: 18)),
                    Icon(
                      Icons.settings,
                      color: Colors.grey.shade50,
                    )
                  ],
                ),
              ),
              Container(
                height: 540,
                width: 390,
                child: ListView.builder(
                  itemCount: profiletile.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                    child: Container(
                      height: 80,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.indigo.shade900,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  profiletile[index][0],
                                  color: Colors.grey.shade50,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  profiletile[index][1],
                                  style: TextStyle(color: Colors.grey.shade50),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey.shade50,
                            )
                          ],
                        ),
                      ),
                    ),
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
