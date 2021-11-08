import 'package:flutter/material.dart';

class FormModel extends ChangeNotifier {
  String? _firstname;
  String? _lastname;
  String? _catname;
  String? _catbreed;

  num? _catweight;

  get firstName => this._firstname;

  set firstName(value) {
    this._firstname = value;
    notifyListeners();
  }

  get lastName => this._lastname;

  set lastName(value) {
    this._lastname = value;
    notifyListeners();
  }

  get catName => this._catname;

  set catName(value) {
    this._catname = value;
    notifyListeners();
  }

  get catBreed => this._catbreed;

  set catBreed(value) {
    this._catbreed = value;
    notifyListeners();
  }

  get catWeight => this._catweight;

  set catWeight(value) {
    this._catweight = value;
    notifyListeners();
  }
}
