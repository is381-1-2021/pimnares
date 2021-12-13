import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Expense {
  final String expense;
  final int amount;

  Expense(this.expense, this.amount);

  factory Expense.fromJson(
    Map<String, dynamic> json,
  ) {
    return Expense(
      json['expense'] as String,
      json['amount'] as int,
    );
  }
}

class AllExpenses {
  final List<Expense> expenses;

  AllExpenses(this.expenses);

  factory AllExpenses.fromJson(
    List<dynamic> json,
  ) {
    var x = json.map((record) => Expense.fromJson(record)).toList();

    return AllExpenses(x);
  }
  factory AllExpenses.fromSnapshot(QuerySnapshot snapshot) {
    var x = snapshot.docs.map((record) {
      return Expense.fromJson(record.data() as Map<String, dynamic>);
    }).toList();

    return AllExpenses(x);
  }
}
