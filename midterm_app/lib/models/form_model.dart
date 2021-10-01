import 'package:flutter/material.dart';

class FormModel extends ChangeNotifier {
  String? _urname;
  String? _urmail;
  String? _header;
  String? _detail;

  get urname => this._urname;

  set urname(value) {
    this._urname = value;
    notifyListeners();
  }

  get mail => this._urmail;

  set mail(value) {
    this._urmail = value;
    notifyListeners();
  }

  get header => this._header;

  set header(value) {
    this._header = value;
    notifyListeners();
  }

  get detail => this._detail;

  set detail(value) {
    this._detail = value;
    notifyListeners();
  }
}
