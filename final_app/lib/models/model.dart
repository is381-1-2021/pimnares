import 'package:flutter/material.dart';

class ExpenseModel extends ChangeNotifier {
  String? _expense;
  int? _amount;
  
  get expense => this._expense;

  set expense(value) {
    this._expense = value;
    notifyListeners();
  }

  get amount => this._amount;

  set amount(value) {
    this._amount = value;
    notifyListeners();
  }
}
