import 'package:fitnessapp/controller/provider/providerr.dart';
import 'package:fitnessapp/view/pages/diet_page/diet_page.dart';
import 'package:fitnessapp/view/pages/home_page/home_page.dart';
import 'package:fitnessapp/view/pages/profile_page/profile.dart';
import 'package:fitnessapp/view/pages/reports_page/reports_page.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottom_Nav extends StatelessWidget {
  Bottom_Nav({super.key});

  List<Widget> childrens = [
    HomePage(),
    Diet_page(),
    Reports(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    var _bottomnavbar = Provider.of<BottomController>(context);
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        items: [
          FlashyTabBarItem(
              activeColor: Colors.indigo.shade900,
              inactiveColor: Colors.grey.shade50,
              icon: Icon(
                Icons.fitbit,
              ),
              title: Text("Home")),
          FlashyTabBarItem(
              activeColor: Colors.indigo.shade900,
              inactiveColor: Colors.grey.shade50,
              icon: Icon(Icons.brunch_dining),
              title: Text("Diet")),
          FlashyTabBarItem(
              activeColor: Colors.indigo.shade900,
              inactiveColor: Colors.grey.shade50,
              icon: Icon(Icons.query_stats),
              title: Text("Reports")),
          FlashyTabBarItem(
              activeColor: Colors.indigo.shade900,
              inactiveColor: Colors.grey.shade50,
              icon: Icon(Icons.person_outlined),
              title: Text("Profile")),
        ],
        selectedIndex: _bottomnavbar.selectedindex,
        iconSize: 28,
        onItemSelected: (index) {
          _bottomnavbar.changenavbar(index);
        },
        backgroundColor: Colors.indigo.shade300,
        animationDuration: Durations.extralong2,
      ),
      body: childrens[_bottomnavbar.selectedindex],
    );
  }
}
