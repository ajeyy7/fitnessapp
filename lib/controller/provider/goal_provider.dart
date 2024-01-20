import 'package:flutter/material.dart';

class GoalProvider extends ChangeNotifier {
  String _selectedGoal = "";

  String get selectedGoal => _selectedGoal;

  void choosenGoal(String selectedGoal) {
    _selectedGoal = selectedGoal;
    notifyListeners();
  }
}
