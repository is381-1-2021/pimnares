import 'package:flutter/material.dart';

class contentFormModel extends ChangeNotifier {
  String? _urname = '';
  String? _urmail = '';
  String? _header = '';
  String? _detail = '';

  get urName => this._urname;

  set urName(value) {
    this._urname = value;
    notifyListeners();
  }

  get urMail => this._urmail;

  set urMail(value) {
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
