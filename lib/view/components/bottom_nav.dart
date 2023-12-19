import 'package:fitnessapp/controller/provider/providerr.dart';
import 'package:fitnessapp/view/pages/history.dart';
import 'package:fitnessapp/view/pages/home_page.dart';
import 'package:fitnessapp/view/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottom_Nav extends StatelessWidget {
   Bottom_Nav({super.key});
  List <Widget>childrens=[
    HomePage(),
    HistoryPage(),
    Profile(),

  ];

  @override
  Widget build(BuildContext context) {
    var _bottomnavbar=Provider.of<BottomController>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _bottomnavbar.selectedindex,
          type: BottomNavigationBarType.fixed,
          onTap:(index){
            _bottomnavbar.changenavbar(index);
          },


          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.icecream_outlined),label:"Food"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile"),
      ]),
      body:childrens[_bottomnavbar.selectedindex] ,
    );
  }
}
