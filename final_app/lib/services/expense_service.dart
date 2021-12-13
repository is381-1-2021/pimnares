import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_app/models/expense_model.dart';

abstract class Services {
  Future<List<Expense>> getExpenses();
}

class FirebaseServices extends Services {
  @override
  Future<List<Expense>> getExpenses() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore
        .instance
        .collection('expense_list')
        .get();

    var all = AllExpenses.fromSnapshot(snapshot);

    return all.expenses;
  }
}