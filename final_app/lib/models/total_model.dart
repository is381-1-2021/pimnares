import 'package:flutter/material.dart';

class TotalModel extends ChangeNotifier {
  double total = 0;

  double get getTotal => this.total;

  set setTotal(double total) {
    this.total = total;
    notifyListeners();
  } 
  
}