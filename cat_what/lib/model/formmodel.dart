import 'package:flutter/material.dart';
 
 class FormModel2 extends ChangeNotifier {
  String _nameofcat = '';
  String _name = '';
  String _where = '';
  String _tel = '';
  
  get nameofcat => this._nameofcat;

  set nameofcat(value) {
    this._nameofcat = value;
    notifyListeners();
  } 

  get name => this._name;

  set name(value) {
    this._name = value;
    notifyListeners();
  }

  get location => this._where;

  set location(value) {
    this._where = value;
    notifyListeners();
  }
  get tel => this._tel;

  set tel(value) {
    this._tel = value;
    notifyListeners();
  }
}