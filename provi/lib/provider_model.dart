import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier{
  int _count = 0;

  void increment(){
    _count++;
    notifyListeners();
  }
}