import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier{
  int count = 0;
  
  void increment_a(){
    count++;
    notifyListeners();
  }
}
