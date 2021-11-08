import 'package:flutter/material.dart';
 
 class FormModel3 extends ChangeNotifier {
  String _nameofkat = '';
  String _breed = '';
  String _age = '';
  String _probelm = '';
  
  get nameofkat => this._nameofkat;

  set nameofkat(value) {
    this._nameofkat = value;
    notifyListeners();
  } 

  get breed => this._breed;

  set breed(value) {
    this._breed = value;
    notifyListeners();
  }

  get age => this._age;

  set age(value) {
    this._age = value;
    notifyListeners();
  }
  get problem => this._probelm;

  set problem(value) {
    this._probelm = value;
    notifyListeners();
  }
}