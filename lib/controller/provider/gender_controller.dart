import 'package:flutter/material.dart';

class GenderController extends ChangeNotifier{
  bool _isMale=true;
  bool get isMale=>_isMale;


  void selectGender(bool isMale){
    _isMale=isMale;
    notifyListeners();
  }
}