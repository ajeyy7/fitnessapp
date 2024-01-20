import 'package:flutter/material.dart';

class Exersicepref extends ChangeNotifier{
  bool _isYoga=true;
  bool get isYoga=>_isYoga;
  void selectPref(bool isYoga){
    _isYoga=isYoga;
    notifyListeners();
  }
}