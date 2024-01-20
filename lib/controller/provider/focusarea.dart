import 'package:flutter/foundation.dart';

class FocusareaProvider extends ChangeNotifier {
  List<bool> sltdstate = [false, false, false, false, false];

  void changeState(int index) {
    sltdstate[index] = !sltdstate[index];
    if (index == 4 && sltdstate[index]) {
      for (int i = 0; i < sltdstate.length; i++) {
        sltdstate[i] = true;
      }
    }
    notifyListeners();
  }
}
