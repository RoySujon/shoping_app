import 'package:flutter/material.dart';

class DtataChange extends ChangeNotifier {
  int x = 0;
  int total = 199;
  incriment() {
    x++;
    notifyListeners();
  }

  decriment() {
    if (x > 0) {
      x--;
    }
    notifyListeners();
  }

  delete() {
    x = 0;
    notifyListeners();
  }
}
