import 'dart:async';

import 'package:final_app/models/expense_model.dart';
import 'package:final_app/services/expense_service.dart';


class ExpenseController {
  final Services services;
  List<Expense> expenses = List.empty();

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  ExpenseController(this.services);

  Future<List<Expense>> fetchExpenses() async {
    onSyncController.add(true);
    expenses = await services.getExpenses();
    onSyncController.add(false);
    return expenses;
  }
}