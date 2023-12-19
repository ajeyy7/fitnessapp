import 'package:flutter/cupertino.dart';

class BottomController extends ChangeNotifier{
  int selectedindex=0;
  void changenavbar(index){
    selectedindex=index;
    notifyListeners();
  }
}