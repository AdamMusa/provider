import 'package:flutter/foundation.dart';

class Dec with ChangeNotifier{
  int count_a = 0;
 
  void increment_a(){
    count_a++;
    notifyListeners();
  }
}