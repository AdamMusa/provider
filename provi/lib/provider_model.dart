import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier{
  int count_a = 0;
  int count_b = 0;

  void increment_a(){
    count_a++;
    notifyListeners();
  }
  void increment_b(){
    count_b++;
    notifyListeners();
  }
  int somme(){
    return count_a + count_b;
  }
}